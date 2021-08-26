function [A]= programa2_FB (A,niter)
  %metodo QR
  
  for i=1:niter
    [q,r] = qr(A);
    A = r*q;
  end
end
