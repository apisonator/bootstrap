local M = {}

M.access = function()
  ngx.header['Access-Control-Allow-Origin'] = '*'
end

return M
