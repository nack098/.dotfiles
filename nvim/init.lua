require('nack.base')
require('nack.highlights')
require('nack.maps')
require('nack.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_linux = has "linux"

if is_mac then
  require('nack.macos')
end
if is_win then
  require('nack.windows')
end
if is_linux then
  require('nack.linux')
end
