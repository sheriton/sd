local socket = require("socket")

local server = assert(socket.bind("*", 44525))

local ip, port = server:getsockname()

print("Please telnet to localhost on port"..port)
print("After connecting, you have 10s to enter a line to be echoed\n")

while 1 do
    local client = server:accept()

    print("client accepted\n")

    local line, err = client:receive()
    while 1 do
        client:settimeout(10)

        line, err = client:receive()

        if not err then 
            print("received: "..line)
        end

        if not line then
            break
        end
    end

    -- client:close()
end