# Introduction to Numerical Linear Algebra

 - [Lecture Notes](#lecture-notes)
 - [Syllabus](#syllabus)

# Lecture Notes

Compile lecture notes via

`./create.sh [BUILD-DIRECTORY] [FILENAME] [LECTURETAG]`

The tags for the parameter `LECTURETAG` are defined in `main.tex`

The following versions are created:

 - `handout`, `handout-print`, `inclass`, `inclass-print`, `notes`

where 

 - `inclass`: some content hidden for lecture to develop it by hand
 - `handout`: complete notes (not everything texed yet)
 - `print`: black on white
 - `notes`: hidden content of inclass colored for lecturer

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
  
## Eigenvalus: Theory and Algorithms

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
  





