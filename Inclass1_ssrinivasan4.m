% AW: Looks good 1/1. 

%InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a

% y provide the expected response of 2 because x is saved as 1, which is a numeric. 
% b provides an unexpected response because a is stored as a string, which would not lead to correct mathematical operations when summed.

%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]
% in x2, two numerics are being concatenated, as opposed to two string values being concatenated in a2
% in x2b, the new line character ";", splits the array into two rows and one column as opposed to x2, which is two elements in one row and two columns 

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%in the first instance, a logical value of 0, or False is being returned
%since a does not equal b, which is what the == command checks for
%in the second instance, the value of a is being changed to the value of b
%using the = operator
%in the third instance, a logical value of 1, or True is returned since the
%value of a now equals the value b

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b
% the three elements are being checked against the corresponding element in
% order - first element in a is compared with the first element in b and so
% on. Thus, only the second element returns a value of 1 since the elements
% are identical between teh two arrays

%explain why this gives an error:

b = [2, 3];
a == b
%this is because a and b are no longer the same length

%explain why this does not give an error
b = 2;
a == b 
%in this case, since b is only 1 element, it is checked against all the
%elements in a, returning three logical values
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
%since oneToTen is saved as an array from 1 to 10, by adding 10, it
%concatenates the two arrays together while adding a value of 10 to each
%element of the latter array


% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
%a=2:2:20
%a=oneToTen*2


% 2. odd numbers from one to nineteen
%b=1:2:19
%b=oneToTen*2-1

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
%c=fliplr(oneToTen*2)
%c=fliplr(2:2:20)

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
%the "'" operator transposes the one dimensional array into a columnar
%array with one element per column. fliplr() works by reversing the
%elements of each row of the array, which fails in this case given there is
%only one element per row.

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2
%m1.*m2 does element wise multiplication, whereas m1*m2 is a linear 
%algebraic product of the two matrices 

%explain this command:
m2./m1
%this is a element wise right divide of the two matrices where they have to have the
%same numnber of columns
%extra credit: explain why this command gives a warning:
m2/m1
%in this case, the division would be m2 * inv(m1). the matrix m1 is considered
% and does not have an inverse, thus resulting in the error
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)
%the element in the 2nd row of the 3rd column is being called

rand_nums(2:4,3)
%the elements in the 2nd to 4th row of the 3rd column are being called

rand_nums(1:2,3:4)
%the elements in the first two rows of the 3rd and 4th column are being called

rand_nums(:,2)
%all the rows of the 2nd column are being called
rand_nums(1,:)
%all the columns of the first row are being called
rand_nums(:,[1 3 5])
%all the rows from the from the first, third and fifth columns are being
%called

