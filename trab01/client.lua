local socket = require("socket")

local client = assert(socket.connect("localhost","44525"))

local line = ""
while line ~= "quit" do
    line = io.read()
    print(line)
    client:send(line)
end

client:disconnect()