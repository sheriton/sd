function client(limit)
    local socket = require("socket")

    -- local limit = 1000
    local i = 0

    local t = socket.gettime()

    local client = socket.connect("localhost",44525)

    while i < limit do

        client:send("r\n")

        local ans, err = client:receive()

        -- if not err then
        --     -- print("Answer: "..ans)
        -- else
        --     print("Error: "..err)
        -- end

        i = i + 1
    end

    client:close()

    return socket.gettime() - t
end