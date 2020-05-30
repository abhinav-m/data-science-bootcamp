# Reconstruction from compressed data

Once our data is compressed from N dimension -> K, How do we go back to N dimension?

Recall that Z = U(reduce)' * x ie, K X N * N X 1 which gives us a compressed feature vector K X 1.

Thus to get back the (APPROXIMATE) feature vector, we multiple U(reduce) * Z ie (N X K ) * K X 1 , and get back our X approx ( N X 1 ) vector.

Xapprox ~~ X ( original)