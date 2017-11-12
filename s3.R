#  calculate p[x<0.01] in x~lognormal_distribution by importance sampling
 m = 10000
 k = 0.01
 
 u = runif(m,0,1)
 x = -log(u)
 y=0
 
 idx =0
 for (i in 1:m){
   if(x[i]<k){
     idx = idx+1
     y[idx] = (1/(x[i]*sqrt(2*pi)))*exp(-(log(x[i])^2/2)+x[i])
   }
 }
 
 result = sum(y)/m
 