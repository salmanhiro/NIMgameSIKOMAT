function [source, amount] = stepCOM(num1, num2, num3)
%inisialisasi
source = -1;
amount = -1;
ketemu = false;  
%BRUTE FORCE FUEHEHE
%mulai dari heap pertama dulu
stoneAmount(1) = num1;
stoneAmount(2) = num2;
stoneAmount(3) = num3;
  for i = stoneAmount(1):-1:1
    if(hitungXOR(stoneAmount(1) - i, stoneAmount(2), stoneAmount(3)) == 0)
      source = 1;
      amount = i;
      ketemu = true;
      return;
    end
  end
  if(ketemu == false)
    %coba heap kedua
    for i = stoneAmount(2):-1:1
      if(hitungXOR(stoneAmount(1), stoneAmount(2)-i, stoneAmount(3)) == 0)
        source = 2;
        amount = i;
        ketemu = true;
      end
    end
    if(ketemu == false)
      %kalau masih belum ketemu juga
      for i = stoneAmount(3):-1:1
        if(hitungXOR(stoneAmount(1), stoneAmount(2), stoneAmount(3) - i) == 0)
          source = 3;
          amount = i;
          ketemu = true;
        end
      end
    end
  end
  if(source == -1)
    error('Something wrong...');
  end
end
