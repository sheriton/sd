local socket = require("socket")

local server = assert(socket.bind("*", 44525))

local ip, port = server:getsockname()

print("Please telnet to localhost on port"..port)
print("After connecting, you have 10s to enter a line to be echoed\n")

-- string com 1K (1024 bytes) retornada pelo servidor
local strResult = string.rep("a", 1024)

while 1 do
    local client = server:accept()

    client:settimeout(10)

    local line, err = client:receive()

    if not err then 
        client:send(strResult.."\n")
    end

    client:close()
end