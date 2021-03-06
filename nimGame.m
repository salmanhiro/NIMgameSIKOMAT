function nimGame()
  %inisialisasi vector yang akan dipakai utk converter angka biner
  a = [];
  b = [];
  c = []; 
  
  verifiedStart = false;
  
  maxStone = 1000; %bisa diganti-ganti sesuai keperluan heehi
  
  while(verifiedStart ~= true)
    %Generate 3 random integer in range [1,maxStone]
    %and store it on vector stoneAmount
    stoneAmount = randi(maxStone,1,3);
    
    %rig the game so the player wont have winning position at start huhehe
    if(hitungXOR(stoneAmount(1), stoneAmount(2), stoneAmount(3)) == 0)
      verifiedStart = true;
    end
  end;
  
  %narasi awal permainan
  namaPlayer = input('Huehehee... Selamat datang! Siapa nama anda, wahai penantang?\n');
  fprintf('Selamat datang, wahai %s!\n',namaPlayer);
  fprintf('Raja iblis telah kembali. Ia telah mengurung banyak sekali jiwa dalam kegelapan.\n');
  fprintf('Kau adalah kesatria pemberani yang akan menantang Raja Iblis. Kau adalah harapan terakhir umat manusia..\n');
  fprintf('Namun, Raja Iblis tidak suka kekerasan. Oleh karena itu kau harus mengalahkannya dalam permainan logika.\n');
  fprintf('Raja Iblis menantangmu untuk bermain 3-Heap Nim Game.\n');
  fprintf('Dapatkah kau mengalahkannya untuk menyelamatkan umat manusia dari kegelapan?\n');
  fprintf('Kita mulai saja permainannya. HAHAHA!\n');
  
  fprintf('Peraturan: Siapa yang mengambil batu terakhir yang menang.\n');
  fprintf('Setiap turn kamu hanya dapat mengambil dari 1 heap.\n');
  fprintf('Jangan curang, ini bukan CTF (-_- ").\n');
  
  fprintf('Game dimulai!\n');
  %ini flip-flop antara 0/1. Kalau 1 berarti giliran player yg jalan. Kalau 0 giliran COM.
  giliranJalan = 1;

  %inti gamenya
  while(endGameCondition(stoneAmount(1), stoneAmount(2), stoneAmount(3)) == false)
    fprintf('Kondisi terkini:\n');
    fprintf('HEAP 1: %i\n', stoneAmount(1));
    fprintf('HEAP 2: %i\n', stoneAmount(2));
    fprintf('HEAP 3: %i\n', stoneAmount(3));
    if(giliranJalan == 1)
      fprintf('Giliran %s!\n',namaPlayer);
      chooseHeap = input('Mau ambil dari tumpukan yang mana?\n');
      if((chooseHeap > 3) || (chooseHeap < 0))
        %Kalau input ga valid
        fprintf('Inputmu ga valid. Kamu pikir ini CTF?\n');
        fprintf('Raja Iblis ga suka dicurangi begini, kamu kalah!.\n');
        error('Mission Failed!');
      end
      chooseAmount = input('Oke, mau ambil berapa?');
      if((chooseAmount > stoneAmount(chooseHeap)) || (chooseAmount <= 0))
        %Kalau input ga valid
        fprintf('Inputmu ga valid. Kamu pikir ini CTF?\n');
        fprintf('Raja Iblis ga suka dicurangi begini, kamu kalah!.\n');
        error('Mission Failed!');
      end
      fprintf('Oke, kamu ambil %i batu dari heap ke-%i\nJangan nyesal ya..',chooseAmount,chooseHeap);
      stoneAmount(chooseHeap) = stoneAmount(chooseHeap)-chooseAmount;
      giliranJalan = 0;
    else
      fprintf('Giliran Raja Iblis!\n');
      %insert COM routine here
      giliranJalan = 1;
    end
  end
end
