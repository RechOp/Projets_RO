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
n = size(NSUC,2);
X = uint16(1:n); % X contient la liste des sommets de G
m = sum(NSUC);
%
% Vecteur des successeurs de chaque sommet : SUC
SUC = uint16([2 3 4 1 4 1]);
%
% Vecteur des capacités max de chaque arc
CAPMAX = [inf 1 4 5 2 3];
CAP = [0 0 0 0 0 0];
%
% Vecteur du flot courant phi
phi = 0;
%
MARQUE = false(1,n); % MARQUE est un vecteur logique
MARQUE(2) = true; % on marque le sommet a == 2 ( b == 1 (b,a) == 1)
%
%MARQUES = X(MARQUE); % NONMARQUES contient la liste des sommets non marqués
%


%% Algorithme de FF

bloque =false; 
i = 2; % i est marqué
while ismember(1,NONMARQUES) && ~bloque % Tant que b == 1 non marqué

    %% 1.   MAJ flot courant theta
    alpha = inf;
    vcycle = zeros(1,m); % vecteur cycle des sommets non marqués
    if NSUC(i) ~= 0 % le nombre de successeurs de i est non nul
        prsuc = sum(NSUC(1:i-1)) + 1; % prsuc contient l'indice du 1er successeur de i dans SUC
        k = prsuc;
        j = SUC(k);
        while(~MARQUE(j) && k <= prsuc + NSUC(i)-1)
            %for k = prsuc:prsuc+NSUC(i)-1
            j = SUC(k);
            if CAP(i + k - prsuc) < CAPMAX(i + k - prsuc)
                MARQUE(j)= true;
                
            end
            k=k+1;
        end
        if (k>  prsuc + NSUC(i)-1)
            bloque = true;
        else
            i=j;
        end
    end
end
    theta = theta + alpha*vcycle; %MAJ theta
    %
    %% 2.   Marquer sommets
    liste_candidats_marquage = X(CANDIDATS);
    for l=1:size(liste_candidats_marquage,2)
        i = liste_candidats_marquage(l); % i est non marqué et candidat à être marqué
        if NSUC(i) ~= 0
            % le nombre de successeurs de i est non nul
            prsuc = sum(NSUC(1:i-1)) + 1; % prsuc contient l'indice du 1er successeur de i dans SUC
            for k = prsuc:prsuc+NSUC(i)-1
                j = SUC(k); % j est successeur du sommet i candidat au marquage
                if MARQUE(j) && theta(k) < LONG(k)
                    % i est non marqué , j est marqué, (i,j) est un arc (de numéro k) 
                    % donc on marque i
                    MARQUE(i) = true; % on marque le sommet i
                    NONMARQUES = setdiff(NONMARQUES,i); % on enlève i des sommets non marqués
                end
            end
        end
    end
end
