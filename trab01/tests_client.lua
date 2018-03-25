dofile("client1.lua")

print("#\tnumReq\tseconds")

local numReq = 10000
while numReq <= 100000 do
    local e = 0
    while e < 3 do
        print(e.."\t"..numReq.."\t"..client(numReq))
        e = e + 1
    end
    numReq = numReq + 10000
end