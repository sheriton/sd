dofile("client1.lua")

print("#\tnumReq\tseconds")

local step = 10^5
local numReq = step
while numReq <= step * 10 do
    local e = 0
    while e < 3 do
        print(e.."\t"..numReq.."\t"..client(numReq))
        e = e + 1
    end
    numReq = numReq + step
end