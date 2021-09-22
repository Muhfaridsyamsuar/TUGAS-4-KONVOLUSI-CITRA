a = input('Tuliskan Nama Anda =  ','s');
b = input('Tuliskan Nim Anda = ');
c = fix(rand(4,4)*100)
save(a,'b','c')

h = [1 1 1;1 4 1; 1 1 1]

[kolom, baris] = size(c);
z = zeros(kolom, baris);
[kolom_h, baris_h] = size(h);

for x = 1 : kolom
    for y = 1 : baris
        for k1 = 1 : kolom_h
            for k2 = 1 : baris_h
                xy = x - 2 + k1;
                yx = y - 2 + k2;
                
                if xy == 0 || yx == 0 || xy == kolom + 1 || yx == kolom + 1
                    z(x,y) = z(x,y) + (h(k1,k2) * 0);
                else
                    z(x,y) = z(x,y) + h(k1,k2) * c(xy, yx)
                end
            end
        end
    end
end