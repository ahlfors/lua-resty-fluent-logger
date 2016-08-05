local cmsgpack = require('cmsgpack')

local logger = {}

function logger.new(config)
   local host = config.host or '127.0.0.1'
   local port = config.port or 24224

   local socket = ngx.socket.tcp()
   socket:connect(host, port)

   local obj = {
      socket = socket
   }

   return setmetatable(obj, {__index = logger})
end

function logger:post(tag, data)
   if self.socket then
      return self.socket:send(cmsgpack.pack({tag, ngx.time(), data}))
   else
      return false
   end
end

return logger
