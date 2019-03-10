%Input :- ImgInp, key
% ImgInp = Input image which is to be encrypted
% key = the key matrix generated by keyGen

%Output :- Gives the encrypted image using the input key
function [ImgInp] = imageProcess(ImgInp,key)
[n m p] = size(ImgInp);
ind = 1;
for i = 1:n
    for j = 1:m
        for k = 1:p
            ImgInp(i,j,k) = bitxor(ImgInp(i,j,k),key(ind));
        end;
        ind = ind + 1;
    end;
end;
return;