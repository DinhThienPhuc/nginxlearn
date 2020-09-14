local balancer = require "ngx.balancer"

-- well, usually we calculate the peer's host and port
-- according to some balancing policies instead of using
-- hard-coded values like below
local host = "127.0.0.2"
local port = 8080

local ok, err = balancer.set_current_peer(host, port)
if not ok then
    ngx.log(ngx.ERR, "failed to set the current peer: ", err)
    return ngx.exit(500)
end
