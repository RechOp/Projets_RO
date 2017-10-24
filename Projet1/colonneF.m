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

% m = i + (j-1)*p + (k-1)*p*c + (l-1)*p*c*t;
for i = 1 : p
	for j = 1 : c
		for l = 0 : (d - 1)
        		f(indiceEq(i,j,l*t+1,p,c)=1;
                f(indiceEq(i,j,l*t+t,p,c)=1;
        end
	end
end

lb = zeros(p*c*d*t,1);
ub = ones(p*c*d*t,1);
intcon=1:p*c*dt;