%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% la matrice f (en fait c une colonne)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% edt RechOp
p = 8;
c = 2;
d = 5;
t = 4;

f = zeros(p*c*d*t,1);

% les indices de f sont 'n' et '1', tel que : {n = i + (j-1)*p + (l-1)*p*c }
% avec i, j et k1 = ((l-1)*t + k) les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k1 (les creneaux, puis les jours de la semaine)

% n = i1 + (j1-1)*p + (l1-1)*p*c
for i1 = 1 : p
	for j1 = 1 : c
		for l1 = 1 : d
			n1 = i1 + (j1-1)*p + ((l-1)*t + 1)*p*c;
			n2 = i1 + (j1-1)*p + ((l-1)*t + t)*p*c;

			f(n1,1) = 1;
			f(n2,1) = 1;
            
        end
	end
end