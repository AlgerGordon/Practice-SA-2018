function simp=simpsons(xVec,yVec)
   n=size(xVec,2);
   if mod(n,2)<eps
       yVec=yVec(2:n);
       n=n-1;
   end
   if n>2
       coefVec=([1,4,repmat([2,4],1,(n-3)/2),1]);
   else
       error('Not enough points!');
   end
   
   ySimpVec=yVec*diag(coefVec);
   h=mean(diff(xVec));
   simp=(h/3)*sum(ySimpVec,2);
  
end