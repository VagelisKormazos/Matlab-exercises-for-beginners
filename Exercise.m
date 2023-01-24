fprintf('Exercise 1:');
%- Indicative Exercises
%1. Create the vector x with elements ...
%a.2, 4, 6, 8, ...
a = [2:2:30];
%b.10, 8, 6, 4, 2, 0, -2, -4
b = [10:-2:-4]
%c.1, 1/2, 1/3, 1/4, 1/5, ...
c = [1:1:15].^(-1)
%d.0, 1/2, 2/3, 3/4, 4/5, ...
d = [1:1:10].*[2:1:11].^-1

fprintf('Exercise 2:');
%2. Create a vector with all odd numbers between 31 and 75.
ex2=[31:2:75]


fprintf('Exercise 3:');
%3. If 
x = [2 5 1 6]
%b. Add 16 to each element.
b = x+16
%c. Calculate the square root of each element
c = x.^0.5
%d. Calculate the square of each element
d= x.^2


fprintf('Exercise 4:');
%4. If x = [3 2 6 8]' and y = [4 1 3 5]' (x and y should be column vectors).
%a.Add the elements of x to y
clear;
 x = [3 2 6 8]'
 y = [4 1 3 5]'
x+y

%b.Elevate each element of x to the power determined by the corresponding element of y.
x.^y
%c.Divide each element of y by the corresponding element of x.
y./x
%d.Multiply each element of x by the corresponding element of y, calling the result "z".
z=x.*y
%e.Add the elements of z and assign the results to a variable "w".
w=sum(z)
%f.Calculate x'*y - w.
x'*y - w
%ans =  0


fprintf('Exercise 5:');
%5. Create a vector x with elements,
%xn = (-1)n+1/(2n-1)
%ans = -1.0000    0.3333   -0.2000    0.1429   -0.1111    0.0909   -0.0769    0.0667   -0.0588    0.0526
%Add the elements of this vector to a new vector
%vector (n = 100).
(-1).^[1:1:10]./(2.*[1:1:10]-1)


fprintf('Exercise 6:');
%6. Carry out the inverse of the series of elements of a given vector x.
x=[0 1 2 3 4]
x = x(length(x):-1:1)
 

fprintf('Exercise 7:');
%Given a vector, t= 1:0.2:2, write down the MATLAB expressions that will correctly
%compute the following:
t= 1:0.2:2
%a) ln(2 + t +t2)
log(2+ t+t.^2)
%b) et(1 + cos(3t))
exp(t).*(1+cos(3.*t))
%c) cos2(t) + sin2(t)
cos(t).^2+sin(t).^2
%d) tan‐1(1)
tan(-1).^1
%e) cot(t)
cot(t)
%f) sec2(t) + cot(t) – 1
sec(t).^2+cot(t)-1


fprintf('Exercise 8:');
%8) Plot the following funcƟons over the interval 0 < x < 4 :
x=[0:0.1:4]
%a) x^3
plot(x,x.^3)
%b) e^x
plot(x,exp(x))
xlabel('x-axis')
ylabel('y-axis')
set(gcf,'NumberTitle','off') %don't show the figure number
set(gcf,'Name','Whatever you want for the figure name') %select the name you want
%title('y = e^x')݁
%c)e^x^2
plot(x,exp(x).^2)


fprintf('Exercise 9:');
%Given the array A = [ 2 4 1 ; 6 7 2 ; 3 5 9], provide the commands
%needed to  
A = [ 2 4 1 ; 6 7 2 ; 3 5 9]
%a) Assign the first row of A to a vector called x1.
a=A(1,:)
%b) Assign the last 2 rows of A to an array called y.
b=A(2:3,:)
b=A(end-1:end,:) 
%c) Compute the sum over the columns of A.
c= sum(A)
%d) Compute the sum over the rows of A.
d=sum(A') %sum(A,2)
%f)Add the last rows in the end of the array.
f=[A ; A(1:2,:)]
%g)Add the sum of the lines to an extra line 
% and the sum of the columns to an extra column
g=[ [ A ; sum(A) ] [ sum(A,2) ; sum(A(:)) ] ]
%e)Αdd the sum of the first 2 lines to an extra line 
 e=[ [ A(1:2,:) ; sum(A(1:2,:))]]


fprintf('Exercise 10:');
%Given the array
A = [2 7 9 7 ; 3 1 5 6 ; 8 1 2 5]
% provide the command that will:
%a) assign the even‐numbered columns of A to an array called B
B=A(:,2:2:end)
%b) assign the odd‐numbered rows to an array called C
C= A(1:2:end,:)
%c) convert A into a 4‐by‐3 array (c = A')
%d) compute the reciprocal of each element of A! (SSSSOOOOOSSSSS)
d = 1./A
%e) compute the square‐root of each element of A
e = sqrt(A)


fprintf('Exercise 11:');
%Given x = 1:10 and y = [3 1 5 6 8 2 9 4 7 0], find the results of the
%following commands:
%a) 
clear;
x = 1:10
y = [3 1 5 6 8 2 9 4 7 0]
(x > 3) & (x < 8)
%return 1 if x>3 or 0 if x<=3 
%b) 
x(x > 5)
%c)
y(x <= 4)
%d) 
x( (x < 2) | (x >= 8) )
%e)
y( (x < 2) | (x >= 8) )
%f)
x(y < 0) 


fprintf('Exercise 12:');

%Given 
 x = [4 1 6] 
% and 
 y = [6 2 7]
% write the script to compute the following
%arrays:
%a) aij = xiyj
%b) bij = xi/yj
%c) ci = xiyi, then add up the elements of c.
%d) dij = xi/(2 + xi + yj)
%e) eij = reciprocal of the lesser of xi and yj

N = length(x);
for j = 1:N
 c(j) = x(j)*y(j);
 for k = 1:N
 a(j,k) = x(j)*y(k);
 b(j,k) = x(j)/y(k);
 d(j,k) = x(j)/(2 + x(j) + y(k));
 e(j,k) = 1/min(x(j),y(k));
 end
end
c = sum(c);
a %disp(a);
b
c
d
e



fprintf('Exercise 13:');
%Given x=[7 6 1 2 0 -1 4 3 -2 0] what are the commands that will execute
%the following operations:
x=[7 6 1 2 0 -1 4 3 -2 0]
%a) Sets the negative values of x to zero.
%x(x<0)
n=length(x);
for i=1:n
    if x(i)<0
        x(i)=0;
    end;
end;
x
%b) Extract the values of x greater than 3 in a vector y.
x=[7 6 1 2 0 -1 4 3 -2 0];
n=length(x);ind=1;
for i=1:n
 if x(i)>3
 y(ind)=x(i);
 ind=ind+1;
 end
end
y
%or 
y=x(x>3)
%c) Add 3 to the values of x that are even.
x=[7 6 1 2 0 -1 4 3 -2 0];
n=length(x);
for i=1:n
 if mod(x(i),2)==0
 x(i)=x(i)+3;
 end
end
x 
%or
x+mod(x+1,2)+mod(x+1,2)+mod(x+1,2)
%d) Set the values of x that are less than the mean to zero.
x=[7 6 1 2 0 -1 4 3 -2 0];
n=length(x);
b=mean(x); %sum(x)/length(x)
b
for i=1:n
 if x(i)< mean(x)
     a=x(i);
     x(i)=0;
     fprintf('%d\t',a);
 end
end
x 
%or
x(x>=sum(x)/length(x))
%e) Set the values of x that is greater than the mean to their
%difference with the mean.
x=[7 6 1 2 0 -1 4 3 -2 0];
n=length(x);;y=mean(x);
for i=1:n
 if x(i)> y
 x(i)=x(i)-y;
 end
end
x 

fprintf('Exercise 14:');
% Write down the commands for each of the following operations:
%a) Create a row vector x of 5 equally spaced elements between 2 and 3.
x=[2:1/4:3]
%b) Add 1 to the second element.
x(2)=x(2)+1 
%c) Create a second row vector y of same dimension with elements equal to the
%successive even integers starting with 4.
y=[4:2:12]
%d) Create the matrix A, whose first row is equal to x, whose second row is a line of
%ones, and whose third row is equal to y.
A=[x;ones(1,5);y] 
%e) Define a row vector z, whose elements are equal to the mean value of the columns
%of A.
z=mean(A) 
%f) Define a column vector zz, whose elements are the sum of the elements in each
%rows of A.
zz=sum(A,2)

fprintf('Exercise 15:');
% Create a vector a with elements an=[(-1)^n.*pi^(2*n)]/(2.*n)!
%1<=n<=100
%(You can use the MATLAB function factorial(n) to compute n!).
clear
for n=1:100
 a(n)=(-1)^n*pi^(2*n)/factorial(2*n);
end
a




















