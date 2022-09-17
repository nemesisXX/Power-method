% Choose a random diaganolized matrix
A = [-2 1 4;1 1 1;4 1 -2];
 % initialize the guess for one eigenvector
 v0 = [1,2,1];
 % initialize the iteration times
 N = 100;
 [Lambda_k, v_k] = powerMethod(A,v0,N)
 [V,D] = eig(A)
function [Lambda_k,v_k] = powerMethod(A,v0,N)
        % This method takes in a matrix A (that we want to find the max eigen-values/vectors of 
        %  and an initial guess for the max eigenvectors, v0, and performs N iterations of the Power 
         % Method. The function returns two things: an estimate for the max e-val: Lambda_k
         %  and an estimate for the corresponding e-vector v_k
         %implement an arbitrary matrix
    v_k = v0'/norm(v0); %make sure that our iterates for the e-vec have a 2-norm = 1
    for k = 1:N
        w = A*v_k;
        v_k = w/norm(w);
        Lambda_k = (v_k)'*A*v_k;
    end
end

