% edt RechOp
% 1ere partie de la matrice Aeq (il y en aura bcp cette fois)
% edt RechOp

% 1ere partie de la matrice Aeq
p = 8;
c = 2;
d = 5;
t = 4;
dt = d * t;
Aeq = zeros(44, p * c * d*t);
beq = zeros(44,1);

numCeq = 1;

% les indices de Aeq1 sont 'l' et 'm', tels que : {l = i + (j-1) * c;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k
%int m;
%int n;
%int l;

beq(nceq:nceq+p*c-1)=[5;0;0;4;3;3;6;0;0;6;3;3;1;0;0;1];

for i=1:p
    for j=1:c
		for k=1:dt
        		Aeq(numCeq,indiceEq(i,j,k,c,dt))=1;
		end
		numCeq = numCeq + 1;
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2ieme partie de la matrice Aeq
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Les cours de sport ont lieu le jeudi après-midi de 14h à 16h.
%les profs de sport sont (i=7)Melle Gazelle et (i=8)Mr Bigceps

Aeq(numCeq,indiceEq(7,1,15,c,dt))=1;

beq(numCeq)=1;
numCeq = numCeq + 1;

Aeq(numCeq,indiceEq(8,2,15,c,dt))=1;

beq(numCeq)=1;
numCeq = numCeq + 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3ieme partie des contraintes d'egalites
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% les indices de Aeq4 sont 'l' et 'm', tels que : {l = i + (j-1) * c;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


for i=1:p
    for j=1:c
        Aeq(numCeq,indiceEq(i,j,1,c,dt))=1;
		beq(numCeq)=0;
		numCeq=numCeq+1;
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4ieme partie de la matrice Aeq
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for k=1:2
    Aeq(numCeq,lin_index(2,2,k,c,dt))=1;
	beq(numCeq)=0;
	numCeq = numCeq + 1;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% les parties qui suivent correspondent toutes à la contrainte n°10 du poly :

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for j=1:2
	for k=9:12
       	Aeq(numCeq,indiceEq(3,j,k,c,dt))=1;
		beq(numCeq) = 0;
		numCeq = numCeq + 1;
	end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fin de la contrainte n°10 (poly)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%x = intlinprog(f,intcon,A,b,Aeq,beq,lb,ub);

%Promo1=zeros(4,5);
%Promo2=zeros(4,5);
%for i=1:p
%    for j=1:c
%        for l=1:d
%            for m=1:t
%             
%                    if j==1
%                        Promo1(m,l)=i;
%                    elseif j==2
%                         Promo2(m,l)=i;
%                    end
%                end
%            end
%        end
%    end
%end