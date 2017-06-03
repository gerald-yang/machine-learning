function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%


% following for loop tries to find the minimum error on cross validation set
% with different values of C and sigma

%x1 = [1 2 1]; x2 = [0 4 -1];
%val = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%min_err = 1;

%for tC = val
%	for ts = val
%		model= svmTrain(X, y, tC, @(x1, x2) gaussianKernel(x1, x2, ts));
%		predictions = svmPredict(model, Xval);
%		err = mean(double(predictions ~= yval));
%		if err < min_err
%			min_err = err;
%			C = tC;
%			sigma = ts;
%		endif
%		min_err
%	endfor
%endfor


% with the minimum error
C = 1;
sigma = 0.1;



% =========================================================================

end
