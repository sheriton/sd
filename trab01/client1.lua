local socket = require("socket")


local limit = 100 
local i = 0
while i < limit do

    local client = socket.connect("localhost","44525")

    client:send("r\n")

    local ans, err = client:receive()

    if not err then
        print("Answer: "..ans)
    else
        print("Error: "..err)
    end
end