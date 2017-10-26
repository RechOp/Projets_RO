%% Algorithme de *Ford-Fulkerson* pour les flots
%
% Representation du graphe
%
% n == nombre de sommets
%
% m == nombre d'arcs
%
% Vecteur du nombre de successeurs de chaque sommet : NSUC
%
% Vecteur des successeurs de chaque sommet : SUC
%
%% Initialisations
NSUC = uint16([1 2 2 1]);
NPRE = uint16([a remplir]);
n = size(NSUC,2);
X = uint16(1:n); % X contient la liste des sommets de G
m = sum(NSUC);
%
% Vecteur des successeurs de chaque sommet : SUC
SUC = uint16([2 3 4 1 4 1]);
% Vecteur des successeurs de chaque sommet : PRE
PRE = uint16([a remplir]);
%
% Vecteur des capacités max de chaque arc
CAPMAX = [inf 1 4 5 2 3];
CAP = [0 0 0 0 0 0];
%

%
MARQUE = false(1,n); % MARQUE est un vecteur logique
MARQUE(2) = true; % on marque le sommet a == 2 ( b == 1 (b,a) == 1)
%

%


%% Algorithme de FF

bloque = false; 

while ~bloque % Tant que chemin possible 

    %% 1.   Trouver chemin
	chemin = trouverChemin(2,SUC, NSUC, PRE, NPRE, MARQUE, CAP, CAPMAX, 1);
	
	%% 2. Mettre à jour les capicités des flots
    if chemin == -1
		bloque = true;
	else
		alpha = inf;
		ind_cap=[];
		% on parcourt des noeuds par lesquels le chemin passe
		for i = 1:(length(chemin)-1)
			noeud = chemin(i);
			succ = chemin(i+1);
			
			trouve = false;
			prsuc = sum(NSUC(1:noeud-1)) + 1; % prsuc contient l'indice du 1er successeur de i dans SUC
			k = prsuc;
			while ~trouve & k<=prsuc + NSUC(noeud)-1  % on parcours les successeurs
				j = SUC(k);
				if (j == succ) % le flot est dans le bon sens
					trouve = true;
					ind_cap(i) = i + k - prsuc;
					alpha = min(alpha, CAPMAX(ind_cap(i)));
				end
				k = k+1;
			end
			prpre = sum(NPRE(1:noeud-1)) + 1; % prpre contient l'indice du 1er predecesseur de i dans PRE
			k = prpre;
			while ~trouve & k<=prpre + NPRE(noeud)-1  % on parcours les predecesseurs
				j = PRE(k);
				if (j == succ) % le flot est dans le bon sens
					trouve = true;
					ind_cap(i) = i + k - prpre;
					alpha = min(alpha, CAP(ind_cap(i)));
				end
				k = k+1;
			end
		end
		% On augmente les flots
		CAP(ind_cap) = CAP(ind_cap) + alpha;
		CAP(1) = CAP(1) + alpha;
	end
end

