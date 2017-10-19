% edt RechOp
% 1ere partie de la matrice A
p = 8;
c = 2;
d = 5;
t = 4;
dt = d * t;
A1 = zeros(c * d*t, p * c * d*t);

% les indices de A1 sont 'l' et 'm', tels que : {l = j + (k-1) * c;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k
%int m;
%int n;
%int l;
% l = j1 + (k1 - 1)*c
for j1 = 1 : c
	for k1 = 1 : (dt)
		l = j1 + (k1 - 1) * c;
		
		% m = i + (j-1) * p + (k-1) * p * c
		for i = 1 : p
			for j = 1 : c
				for k = 1 : (dt)

					m = i + ((j - 1) * p) + ((k - 1) * p * c);
					if (k1 == k) & (j1 == j)
						A1(l, m) = 1;
					end

				end
			end
		end

	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% 2ieme partie de la matrice A
A2 = zeros(p * d * t, p * c * d * t);

% les indices de A2 sont 'l' et 'm', tels que : {l = i + (k-1) * p;  m = i + (j-1) * p + (k-1) * p * c}
% avec i, j et k les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k

% l = i1 + (k1 - 1)*p
for i1 = 1 : p
	for k1 = 1 : (dt)
		l = i1 + (k1 - 1)*p;
		
		% m = i + (j-1) * p + (k-1) * p * c
		for i = 1 : p
			for j = 1 : c
				for k = 1 : (dt)

					m = i + ((j-1) * p) + ((k-1) * p * c);
					if (k1 == k) & (i1 == i)
						A2(l, m) = 1;
					end

				end
			end
		end
		
	end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ùù

% edt RechOp
% 3ieme partie de la matrice A
A3 = zeros(p*c*d, p * c * d*t);

% les indices de A1 sont 'n' et 'm', tels que : {n = i + (j-1)*p + (l-1)*p*c ;  m = i + (j-1)*p + (k-1)*p*c + (l-1)*p*c*t}
% avec i, j et k1 = ((l-1)*t + k) les 3 indices de la matrice tridimensionnelle X (ramenée à une seule colonne de taille p*c*d*t (pour faciliter l'mplementation du problème),
% et d'indice m défini comme precedemment); cette notation à pour but de faciliter l'implémentation
% Remarque : de cette façon on incremente d'abord i, puis j, et ensuite k1 (les creneaux, puis les jours de la semaine)

% n = i1 + (j1-1)*p + (l1-1)*p*c
for i1 = 1 : p
	for j1 = 1 : c
		for l1 = 1 : d
			n = i1 + (j1-1)*p + (l1-1)*p*c;
		
			%  m = i + (j-1)*p + (k-1)*p*c + (l-1)*p*c*t
			for i = 1 : p
				for j = 1 : c
					for l = 1 : d
						for k = 1 : t
							
							m = i + (j-1) * p + (k-1) * p * c;
							if (i1 == i) & (j1 == j) & (l1 == l)
								A3(n, m) = 1;
							end

						end
					end
				end
            end
            
        end
	end
end

A = cat(1,A1,A2,A3);

b = ones(size(A,1),1);
