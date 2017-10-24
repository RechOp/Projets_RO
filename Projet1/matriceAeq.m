% edt RechOp
% 1ere partie de la matrice Aeq (il y en aura bcp cette fois)
% edt RechOp

% 1ere partie de la matrice Aeq
p = 8;
c = 2;
d = 5;
t = 4;
dt = d * t;
Aeq1 = zeros(p*c, p * c * d*t);

% les indices de Aeq1 sont 'l' et 'm', tels que : {l = i + (j-1) * c;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k
%int m;
%int n;
%int l;

% l = i1 + (j1 - 1) * p
%for i1 = 1 : p
%	for j1 = 1 : c
		
		% m = i + (j-1) * p + (k-1) * p * c
		for j = 1 : c
			for k = 1 : (dt)
				l = j + (k - 1) * c;
				for i = 1 : p
					Aeq1(l, indiceEq(i,j,k,p,c)) = 1;
				end
			end
		end

%	end
%end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% 2ieme partie de la matrice Aeq
Aeq2 = zeros(1, p * c * d * t);

% les indices de Aeq2 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq2(1, indiceEq(7,1,15,p,c)) = 1;
		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 3ieme partie de la matrice Aeq
Aeq3 = zeros(1, p * c * d * t);

% les indices de Aeq3 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq3(1, indiceEq(8,2,15,p,c)) = 1;
		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Aeq4 = zeros(p*c, p * c * d*t);

% les indices de Aeq4 sont 'l' et 'm', tels que : {l = i + (j-1) * c;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% l = i1 + (j1 - 1) * p
for i=1:p
    for j=1:c
		l = i + ((j - 1) * p);
        Aeq4(l,indiceEq(i,j,1,p,c))=1;
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 5ieme partie de la matrice Aeq
Aeq5 = zeros(1, p * c * d * t);

% les indices de Aeq5 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq5(1, indiceEq(2,2,1,p,c)) = 1;
		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 6ieme partie de la matrice Aeq (correspond avec la partie 5 à la contrainte n° 9 dans le poly)
Aeq6 = zeros(1, p * c * d * t);

% les indices de Aeq6 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq6(1, indiceEq(2,2,2,p,c)) = 1;
		end
	end
end





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% les parties qui suivent correspondent toutes à la contrainte n°10 du poly :

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 7ieme partie de la matrice Aeq
Aeq7 = zeros(1, p * c * d * t);

% les indices de Aeq7 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq7(1, indiceEq(3,1,9,p,c)) = 1;

		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ù

% 8ieme partie de la matrice Aeq
Aeq8 = zeros(1, p * c * d * t);

% les indices de Aeq8 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq8(1, indiceEq(3,2,9,p,c)) = 1;

		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 9ieme partie de la matrice Aeq
Aeq9 = zeros(1, p * c * d * t);

% les indices de Aeq9 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq9(1, indiceEq(3,1,10,p,c)) = 1;

		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 10ieme partie de la matrice Aeq
Aeq10 = zeros(1, p * c * d * t);

% les indices de Aeq10 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq10(1, indiceEq(3,2,10,p,c)) = 1;

		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 11ieme partie de la matrice Aeq
Aeq11 = zeros(1, p * c * d * t);

% les indices de Aeq11 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq11(1, indiceEq(3,1,11,p,c)) = 1;
		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ù

% 12ieme partie de la matrice Aeq
Aeq12 = zeros(1, p * c * d * t);

% les indices de Aeq12 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq12(1, indiceEq(3,2,11,p,c)) = 1;

		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 13ieme partie de la matrice Aeq
Aeq13 = zeros(1, p * c * d * t);

% les indices de Aeq13 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq13(1, indiceEq(3,1,12,p,c)) = 1;

		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ù

% 14ieme partie de la matrice Aeq
Aeq14 = zeros(1, p * c * d * t);

% les indices de Aeq14 sont 1 et 'm', tels que : {m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% m = i + (j-1) * p + (k-1) * p * c
for i = 1 : p
	for j = 1 : c
		for k = 1 : (dt)
			Aeq14(1, indiceEq(3,2,12,p,c)) = 1;
		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fin de la contrainte n°10 (poly)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




Aeq = [Aeq1;Aeq2;Aeq3;Aeq4;Aeq5;Aeq6;Aeq7;Aeq8;Aeq9;Aeq10;Aeq11;Aeq12;Aeq13;Aeq14];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Maintenant, la colonne beq
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beq = zeros(size(Aeq,1),1);

beq(1:((p * c) + 2)) = [5 ; 0 ; 0 ; 4 ; 3 ; 3 ; 6 ; 0 ; 0 ; 6 ; 3 ; 3 ; 1 ; 0 ; 0 ; 1 ; 1 ; 1];


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