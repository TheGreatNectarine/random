import Random;import List;import Char;p=putStrLn;u=uncurry;f x=(x\\).(x\\)
 main=mapM(\x->randomRIO(49,54))[1..4]>>=n 0.map chr>>=p.("Tries: "++).show
 e=((partition$u(==)).).zip;h(p,q)=['*'|x<-p]++['+'|x<-(u f)$unzip q]
 n a s=getLine>>=m where{m i|i==s=return a;m i=p(h$e i s)>>n(a+1)s}