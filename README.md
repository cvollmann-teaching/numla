# Introduction to Numerical Linear Algebra

 - [Lecture Notes](#lecture-notes)
 - [Syllabus](#syllabus)
 - [Exercises](#exercises)
 - [Literature](#literature)
 - [Additional Material](#additional-material)
 - [License and Acknowledgement](#license-and-acknowledgement)

# Lecture Notes

Compile lecture notes via

```bash
./create.sh [BUILD-DIRECTORY] [FILENAME] [LECTURETAG]
```

 - The tags for the parameter `LECTURETAG` are defined in `main.tex` with `\lecture{<title>}{<tag>}` command. Namely:
   
   - Math Basics: `basics`
   - Fundamentals of Linear Algebra: `la`
   - Solving Linear Systems (Direct Methods): `sollinsys`
   - Eigenvalues: `eigvals`
   - Singular Value Decomposition: `svd`
   - Solving Linear Systems (Iterative Methods): `iterative`
   - Least Squares Problems: `leastsquares`
   - Vector Spaces: `vectorspaces`
   - Calculus: `nonlinear`

 - The following **versions** are created:

   - `handout`, `handout-print`, `inclass`, `inclass-print`, `notes`

    where 

     - `inclass`: some content hidden for lecture to develop it by hand
     - `handout`: complete notes (not everything texed yet)
     - `print`: black on white
     - `notes`: hidden content of inclass colored for lecturer
 
 - You can find the compiled lectures notes in `numla/pdf`

# Syllabus

Lecture = 90min

## Math Basics (optional)

 - Lecture 0: Statements, Sets, Functions, Numbers, Sequences

## Fundamentals of Linear Algebra

- Lecture 1
  - Introduction to the Course
  - 1.1 Matrices and Vectors
  - 1.2 Span and Image -- Linear Independence and Kernel
- Lecture 2
  - 1.3 Subspaces of F^n --  Basis and Dimension
- Lecture 3
  - 1.4 Inverse Matrices
  - 1.5 The Euclidean Norm
  - 1.6 Orthogonal Vectors and Matrices
- Lecture 4
  - 1.7 The Determinant
  - 1.8 Linear Systems of Equations
- Lecture 5
  - 1.9 More on Image and Kernel

## Solving Linear Systems with Direct Methods

- Lecture 6
  - 2.1 The Idea of “Factor and Solve”
  - 2.2 The Gram-Schmidt Algorithm and the QR decomposition
- Lecture 7
  - 2.3 Gaussian Elimination and the LU Decomposition
- Lecture 8
  - 2.4 The Cholesky Decomposition
  
## Eigenvalues: Theory and Algorithms

- Lecture 9
  - 3.1 Introduction
  - 3.2 Eigenvalues and Eigendecompositon
- Lecture 10
  - 3.3 Eigenvalue Algorithms: Solving the eigenvalue problem
  - 3.4 Example: The PageRank Algorithm from Google

## Singular Values and the Singular Value Decomposition (SVD)

- Lecture 11
  - 4.1 Motivation and Introduction
  - 4.2 Preparing Results
- Lecture 12
  - 4.3 From Reduced to Full SVD
- Lecture 13
  - 4.4 The Geometry of the SVD
  - 4.5 Matrix Condition and Rank
- Lecture 14
  - 4.6 The Truncated SVD and its best Approximation Property
  - 4.7 Numerical Computation of the SVD

## Solving Linear Systems with Iterative Methods

- Lecture 15
  - 5.1 Splitting Methods
- Lecture 16
  - 5.2 Krylov Subspace Methods

## Least Squares Problems

- Lecture 17
  - 6.1 Overview
  - 6.2 The Normal Equation
- Lecture 18
  - 6.3 Solving the Normal Equation
  - 6.4 Regularization and Minimum Norm Least Squares Solution
- Lecture 19+20: Small Tour into Imaging

## Vector Spaces

- Lecture 21
  - 7.1 Introduction
  - 7.2 Revisit: Linear Combination, Linear Independence, Basis
- Lecture 22
  - 7.3 Linear Functions: Kernel, Image, Matrix Representation
  - 7.4 Inner Product Spaces

## Calculus

- Lecture 23
  - 8.1 Motivation
  - 8.2 Continuity and Differentiability
- Lecture 24
  - 8.3 Solving Nonlinear Equations: Taylor Approximation and Newton's Method
  - 8.4 The Chain Rule and Back Propagation
  

# Exercises

 - Exercises for this course are collected in another repo: https://github.com/cvollmann-teaching/exercises/tree/main/database
   - There you can also find a tool to create worksheets.
 - The config .json and template files are located here: `numla/exercises`

# Literature
 - The main sources for this course are:
   1. The classic textbook on numerical linear algebra [10] by Trefethen and Bau (also see the [recent interview](https://www.youtube.com/watch?v=yCLE7lGuhuo)  of the authors celebrating the 25th anniversary of the book)
   2. Gilbert Strang’s book Linear Algebra and Learning from Data [8] (specifically Part I and Part II), which
contains basics of linear algebra, numerical linear algebra and finally an introduction to neural networks.

- Gilbert Strang’s books [7] and [9] provide smooth introductions to Linear Algebra.

- A "bible" for numerical linear algebra is given by [2], which is certainly worth being conducted.

- Besides this, inspiration is also taken from [1] (a classic textbook on numerical mathematics, in German), [5] (lecture
notes on numerical mathematics, in German) and [3] (an accessible book on the numerics of linear systems, in
German).

- We also need some rudimentary knowledge of calculus: A classical textbook on calculus is given by [6] which is
rather technical. The textbook [4] which is written for computer scientist may rather serve as a smooth introduction
to the topic.

- For the Python related parts I strongly recommend the [SciPy lectures](https://scipy-lectures.org/), which provide a very nice introduction to
scientific computing with Python, and practicing.


[1] P. Deuflhard and A. Hohmann. Numerische Mathematik 1. De Gruyter, 2019. URL: https://doi.org/10.1515/9783110614329.

[2] G.H. Golub and C.F. Van Loan. Matrix Computations. The Johns Hopkins University Press, 2013. 

[3] A. Meister. Numerik linearer Gleichungssysteme. Springer Spektrum, Wiesbaden, 2015. URL: https://doi.org/10.1007/978-3-658-07200-1.

[4] M. Oberguggenberger and A. Ostermann. Analysis for Computer Scientists. Springer International Publishing,
Cham, 2018. URL: https://doi.org/10.1007/978-3-319-91155-7.

[5] R. Rannacher. Numerik 0 - Einführung in die Numerische Mathematik. Heidelberg University Publishing, 2017.
URL: https://doi.org/10.17885/heiup.206.281.

[6] W. Rudin. Principles of mathematical analysis. McGraw-Hill, New York, NY, 3. ed. edition, 1976.

[7] G. Strang. Introduction to Linear Algebra. Wellesley-Cambridge Press, 2003. URL: https://math.mit.edu/~gs/linearalgebra/.

[8] G. Strang. Linear Algebra and Learning from Data. Wellesley-Cambridge Press, 2019. URL: https://math.mit.edu/~gs/learningfromdata/.

[9] G. Strang. Linear Algebra for Everyone. Wellesley-Cambridge Press, 2020. URL: https://math.mit.edu/~gs/everyone/.

[10] L.N. Trefethen and D. Bau. Numerical linear algebra. SIAM, Soc. for Industrial and Applied Math., Philadelphia,
1997.

# Additional Material

# License and Acknowledgement


