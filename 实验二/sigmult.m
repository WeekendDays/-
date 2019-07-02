function[f,n]=sigmult(f1,n1,f2,n2)
n=min(min(n1),min(n2)):max(max(n1),max(n2));
x1=zeros(1,length(n)); x2=x1;
x1(find((n>=min(n1))&(n<=max(n1))==1))=f1;
x2(find((n>=min(n2))&(n<=max(n2))==1))=f2;
f=x1.*x2;