function client(limit)
    local socket = require("socket")

    -- local limit = 50000 
    local i = 0

    local t = socket.gettime()

    while i < limit do

        local client = socket.connect("localhost",44525)

        client:send("r\n")

        local ans, err = client:receive()

        -- if not err then
        --     -- print("Answer: "..ans)
        -- else
        --     print("Error: "..err)
        -- end

        i = i + 1
    end

    return socket.gettime() - t
end