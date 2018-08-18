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

%theta(2:length(theta)),X(2:length(X),2:length(X(1,:))),y(2:length(y))
[J,grad]=costFunction(theta,X,y);
temp1=J;
theta(1,:)=zeros();
temp2=((lambda/(2*m)).*sum(theta.^2));
J=temp1+temp2;

temp=grad(1);
grad=grad+((lambda/m).*theta());
grad(1)=temp;

% =============================================================

end
