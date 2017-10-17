% edt RechOp
% 1ere partie de la matrice Aeq (il y en aura bcp cette fois)
% edt RechOp

% 1ere partie de la matrice Aeq
p = 2;
c = 2;
d = 2;
t = 2;
dt = d * t;
Aeq1 = zeros(p*c, p * c * d*t);

% les indices de Aeq1 sont 'l' et 'm', tels que : {l = i + (j-1) * c;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k
%int m;
%int n;
%int l;

% l = i1 + (j1 - 1) * c
for i1 = 1 : p
	for j1 = 1 : c
		l = i1 + ((j1 - 1) * c);
		
		% m = i + (j-1) * p + (k-1) * p * c
		for i = 1 : p
			for j = 1 : c
				for k = 1 : (dt)

					m = i + ((j - 1) * p) + ((k - 1) * p * c);
					if (i1 == i) & (j1 == j)
						Aeq1(l, m) = 1;
					end

				end
			end
		end

	end
end


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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 8) & (j == 1) & (k == 15)
				Aeq2(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 9) & (j == 2) & (k == 15)
				Aeq3(1, m) = 1;
			end

		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Aeq4 = zeros(p*c, p * c * d*t);

% les indices de Aeq4 sont 'l' et 'm', tels que : {l = i + (j-1) * c;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k


% l = i1 + (j1 - 1) * c
for i1 = 1 : p
	for j1 = 1 : c
		l = i1 + ((j1 - 1) * c);
		
		% m = i + (j-1) * p + (k-1) * p * c
		for i = 1 : p
			for j = 1 : c
				for k = 1 : (dt)

					m = i + ((j - 1) * p) + ((k - 1) * p * c);
					if (i1 == i) & (j1 == j) & (k == 1)
						Aeq4(l, m) = 1;
					end

				end
			end
		end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 4) & (j == 2) & (k == 1)
				Aeq5(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 4) & (j == 2) & (k == 2)
				Aeq6(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 2) & (j == 1) & (k == 9)
				Aeq7(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 2) & (j == 2) & (k == 9)
				Aeq8(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 2) & (j == 1) & (k == 10)
				Aeq9(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 2) & (j == 2) & (k == 10)
				Aeq10(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 2) & (j == 1) & (k == 11)
				Aeq11(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 2) & (j == 2) & (k == 11)
				Aeq12(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 2) & (j == 1) & (k == 12)
				Aeq13(1, m) = 1;
			end

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

			m = i + ((j-1) * p) + ((k-1) * p * c);
			if (i == 2) & (j == 2) & (k == 12)
				Aeq14(1, m) = 1;
			end

		end
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fin de la contrainte n°10 (poly)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




Aeq = cat(1,Aeq1,Aeq2,Aeq3,Aeq4,Aeq5,Aeq6,Aeq7,Aeq8,Aeq9,Aeq10,Aeq11,Aeq12,Aeq13,Aeq14);

