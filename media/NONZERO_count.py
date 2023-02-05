#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jan 11 08:21:16 2021

@author: vollmann
"""
import numpy as np
import scipy.linalg as linalg

nonzeroesA = []
nonzeroesLU = []
nonzeroesQR = []

N = 100
D = 1000
# Take N samples
for i in range(N):
    # randomly generate symmetric sparse matrix of dimension DxD
    def genRandomSymSparse(D):
        A = np.diag(np.random.rand(D)+1)
        for k in range(int(0.001*D)):
            A[k,:] += np.random.rand(D)
            np.random.shuffle(A)
        A = 0.5*(A + A.transpose())#+np.diag(10*np.ones(D))
        return A      
    A = genRandomSymSparse(D)    
    # NONZEROES OF A
    nonzeroesA += [np.count_nonzero(A)]    
    # NONZEROS OF LU
    lu, piv = linalg.lu_factor(A)
    nonzeroesLU += [np.count_nonzero(lu)]    
    # NONZEROS OF QR
    Q, R = linalg.qr(A)
    nonzeroesQR += [(np.count_nonzero(Q)+np.count_nonzero(R))]

# For sym. matrices we only need to store lower or upper triangle
bench = int(D*(D+1)*0.5)
# Average
nonzeroesA = np.round((np.array(nonzeroesA, dtype=float).sum()/N)/bench*100,2)
nonzeroesLU = np.round((np.array(nonzeroesLU, dtype=float).sum()/N)/bench*100,2)
nonzeroesQR = np.round((np.array(nonzeroesQR, dtype=float).sum()/N)/bench*100,2)

# PLOT
import matplotlib.pyplot as plt
data = {'A': nonzeroesA, 
        'LU': nonzeroesLU, 
        'QR': nonzeroesQR}
names, values = list(data.keys()), list(data.values())

fig, axs = plt.subplots(1, 1, figsize=(9, 3), sharey=True)
plt.bar(names, values)
plt.title("Relative Number of Nonzeroes;  dim = "+str(D)+"x"+str(D)+\
          "; bench = "+str(bench)+"; samples = "+str(N))
plt.savefig("NonzeroesInDirectMethods.png", dpi=300)



# CHOLESKY
    #A = 0.5*(A + A.transpose())+np.diag(100*np.ones(D))
    #L, lower = linalg.cho_factor(A)
    #if lower:
    #    L = np.tril(L)
    #else:
    #    L = np.triu(L)
    #print("NONZEROS L:", np.count_nonzero(L)/(D*(D+1)*0.5)*100, "%")




