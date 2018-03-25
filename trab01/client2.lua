local socket = require("socket")

local client = socket.connect("localhost","44525")

local limit = 10 
local i = 0
while i < limit do

    client:send("r\n")

    local ans, err = client:receive()

    if not err then
        -- print("Answer: "..ans)
    else
        print("Error: "..err)
    end

    i = i + 1
end

client.close()