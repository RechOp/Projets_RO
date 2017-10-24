%l'indice correspondant au triplet d'indices (i,j,k)

function indice = indiceEq(i,j,k,p,c) %l'indice équivalent

indice = 1 + (i - 1) + (j - 1) * p + (k - 1) * p * c;

end