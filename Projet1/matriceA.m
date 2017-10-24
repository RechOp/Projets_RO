% edt RechOp
% 1ere partie de la matrice A
p = 8;
c = 2;
d = 5;
t = 4;
dt = d * t;
A = zeros(280, p * c * d*t);
b = zeros(280,1);

numCin = 1;

% les indices de A1 sont 'l' et 'm', tels que : {l = j + (k-1) * c;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k
%int m;
%int n;
%int l;
% l = j1 + (k1 - 1)*c

%for j1 = 1 : c
%	for k1 = 1 : (dt)
%		l = j1 + (k1 - 1) * c;
		
		% m = i + (j-1) * p + (k-1) * p * c
		for j = 1 : c
			for k = 1 : (dt)
				for i = 1 : p
		        	A(numCin,indiceEq(i,j,k,p,c))=1;
				end
    	    b(numCin)=1;
			numCin = numCin+1;
			end
		end

%	end
%end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% 2ieme partie de la matrice A

% les indices de A2 sont 'l' et 'm', tels que : {l = i + (k-1) * p;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k

% l = i1 + (k1 - 1)*p
%for i1 = 1 : p
%	for k1 = 1 : (dt)
		
		% m = i + (j-1) * p + (k-1) * p * c
		for i = 1 : p
			for k = 1 : (dt)
				for j = 1 : c
		        	A(numCin,indiceEq(i,j,k,p,c))=1;
				end
				b(numCin) = 1;
				numCin = numCin + 1;
			end
		end
		
%	end
%end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ùù

% edt RechOp
% 3ieme partie de la matrice A

% les indices de A1 sont 'n' et 'm', tels que : {n = i + (j-1)*p + (l-1)*p*c ;  m = i + (j-1)*p + (k-1)*p*c + (l-1)*p*c*t}
% avec i, j et k1 = ((l-1)*t + k) les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k1 (les creneaux, puis les jours de la semaine)

% n = i1 + (j1-1)*p + (l1-1)*p*c
%for i1 = 1 : p
%	for j1 = 1 : c
%		for l1 = 1 : d
		
	%  m = i + (j-1)*p + (k-1)*p*c + (l-1)*p*c*t
	for i = 1 : p
		for j = 1 : c
			for l = 1 : d
				for k = (l-1)*t+1:l*t
					A(numCin, indiceEq(i,j,k,p,c)) = 1;
				end
          		if(i==4 || i==5)
					b(numCin)=2;
				else 
					b(numCin)=1;
				end
			numCin = numCin + 1;
			end
		end
    end
            
%        end
%	end
%end
