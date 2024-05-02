# Image-Compression-Using-SVD
1)The code provided performs Singular Value Decomposition (SVD) on an input image and then approximates the original image using truncated SVD with decreasing rank.

# Here's a brief explanation of the theory behind the code:

1)Singular Value Decomposition (SVD): It is a matrix factorization method where a matrix is decomposed into three matrices, U, Σ, and V. For a given matrix A, SVD is represented as A = UΣV^T, where U and V are orthogonal matrices and Σ is a diagonal matrix containing singular values.

2)Rank of a Matrix: The rank of a matrix is the maximum number of linearly independent row or column vectors in the matrix. It is also equal to the number of non-zero singular values in the diagonal matrix Σ of the SVD.

3)Truncated SVD: In the context of image compression or approximation, truncated SVD involves retaining only a subset of the largest singular values and their corresponding columns in the U and V matrices, effectively reducing the rank of the approximation. This results in a compressed representation of the original matrix.

4)Algorithm: The provided code iteratively reduces the rank of the image using truncated SVD. It starts by computing the SVD of the original grayscale image. Then, in each iteration, it reduces the rank by 30% of the previous rank. After truncating the SVD matrices accordingly, it reconstructs the image and displays it. This process is repeated for 10 iterations.

5)Visualization: The code visualizes the original image, the grayscale version of the original image, and subsequent approximations of the image with decreasing ranks. Each subplot shows the reconstructed image along with the corresponding rank approximation.

6)Observation: As the rank decreases, the reconstructed images lose some details compared to the original, demonstrating the trade-off between image quality and compression level.
