lua-resty-fluent-logger
====

A client for Fluentd. Using nginx cosocket API.

## Installation

```
$ luarocks install lua-resty-fluent-logger
```

## Usage

```lua
-- Require
local resty_fluent = require('resty_fluent')

-- Initialize
local logger = resty_fluent.new({
  host = "127.0.0.1",
  port = 24224,
})

-- Post
logger:post('td.db.table', {
  column = 'data',
})
```

## Licence

[GPL v3](https://github.com/mediba-system/lua-resty-dogstatsd/blob/master/LICENCE)

## Author

* [mediba-system](https://github.com/mediba-system)
* [yoshida-mediba](https://github.com/yoshida-mediba)
