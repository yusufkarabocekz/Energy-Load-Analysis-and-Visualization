data = [ 0 2 6
         2 6 5
         6 9 10
         9 12 15
         12 14 12
         14 16 14
         16 18 16
         18 20 18
         20 22 16
         22 23 12
         23 24 6];
    
 P = data(:, 3);  % Yük sutun dizisi
 Dt = data(:, 2); % Talep aralığının sütun dizisi
 W = P'*Dt;  %Toplam enerji, eğrinin altında kalan alan
 
 Pavg = W/sum(Dt);  % ortalama yük
 Peak = max(P);  % Tepe yükü
 LF = Pavg/Peak*100;  % Yüzde yük faktörü
 barcycle(data)
 xlabel('Zaman sa');, ylabel('P, MW'), grid
 
  