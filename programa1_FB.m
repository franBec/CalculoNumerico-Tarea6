function [autovec, autoval]= programa1_FB (A,x0,niter)
    %Cociente de Rayleigh
  
  [m,n] = size(A);
  x = x0;
  for i=1:niter
    r = (x' * A * x)/(x' * x);
    xT = (A - r*eye(n,n))\x;
    x = xT/max(xT);
  end
  
  autovec = x;
  autoval = r;

end