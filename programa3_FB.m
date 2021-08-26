function [Q]= programa3_FB (A)
  %metodo de Gram-Schmidt
  
  [n,m] = size(A);
  Q = zeros(n,m);
  
  Q(:,1) = A(:,1)/norm(A(:,1));
  
  for i=2:m
    v = A(:,i);
    
    for k=1:i-1
      v = v - ((Q(:,k))' * A(:,i)) * Q(:,k);
    end
    
    Q(:,i) = v/norm(v);
  end  
end
