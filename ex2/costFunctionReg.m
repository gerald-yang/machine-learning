function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% cost
pos = find(y==1);
neg = find(y==0);
[m, n] = size(y);

h = 1 ./ (1 + exp(-(X * theta)));
cost = zeros(m, 1);
cost(pos) = log(h(pos));
cost(neg) = log(1 - h(neg));
J = -(sum(cost) / m) + ((lambda / (2 * m)) * sum(theta(2:end) .^2));

% gradient
grad = theta;
theta_size = rows(theta);

grad(1) = (sum((h - y) .* X(:, 1)) / m);
for i = 2:theta_size
	grad(i) = (sum((h - y) .* X(:, i)) / m) + ((lambda * theta(i)) / m);
end


% =============================================================

end
