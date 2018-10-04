function convertToBinary(num1,num2,num3) %hey there, we have 3 num to be converted into array of binary!

i = 1; % jadi awalnya ada i untuk indeks vektor "biner"
j = 1;
k = 1;

reminder1 = rem(num1, 2);
reminder2 = rem(num2, 2);
reminder3 = rem(num3, 2);% bilangan ini kita bagi 2 terus dicari remindernya

biner1(i) = num2str(reminder1(i)); %kita isi vektor "biner" ini dengan remindernya
biner2(j) = num2str(reminder3(j));
biner3(k) = num2str(reminder3(k));

flooring1 = floor(num1/2);
flooring2 = floor(num2/2);
flooring3 = floor(num3/2);

while flooring1 >= 2
  num1 = flooring1;
  flooring1 = floor(num1/2);
  reminder1 = rem(num1, 2);
  i = i + 1;
  biner1(i) = num2str(reminder1);
end
biner1(i + 1) = num2str(flooring1);
biner1 = fliplr(biner1);
vekbin1 = str2num(biner1-'0')

while flooring2 >= 2
  num2 = flooring2;
  flooring2 = floor(num2/2);
  reminder2 = rem(num2, 2);
  j = j + 1;
  biner2(j) = num2str(reminder2);
end
biner2(j + 1) = num2str(flooring2);
biner2 = fliplr(biner2);
vekbin2 = str2num(biner2 -'0')

while flooring3 >= 2
  num3 = flooring3;
  flooring3 = floor(num3/2);
  reminder3 = rem(num3, 2);
  k = k + 1;
 biner3(k) = num2str(reminder3);
end
biner3(k + 1) = num2str(flooring3);
biner3 = fliplr(biner3); % ini vektornya
vekbin3 = str2num(biner3 -'0')

disp(vekbin1)
disp(vekbin2)
disp(vekbin3)

end



% misal 12
% bagi 2, reminder = 0
% biner(1) = 0
% flooring = 6
% masuk while
% num = 6
% flooring = floor(6/2) = 3
% 6 bagi 2, reminder jadi 0
% i jadi 2
% biner(2) = 0
% masih di loop soalnya flooring = 3, >= 2 soalnya 
% num = 3
% floor(3/2)= 1, flooring = 1 jadi
% reminder = rem(3/2) = 1
% i jadi 3
% biner(3) = 1
% keluar loop while soalnya flooring = 1
% biner(3+1) = 1
% nah dari sini kita dapet biner dalam 4 digit, 01011
% kita balik soalnya dia ngisi dari depan, sedangkan biner bacanya dari belakang, jadi 1100
% dipecah digitnya jadi 1 1 0 0 (itu cara mecahnya pake yang -'0')
% dapet representasi biner 12
