local counter = 1

math.randomseed(os.time())
local random_i = math.random(300, 400)

print("generate random number as prefix: ", random_i)
request = function()
  local path = string.format("/repos/%sowner%d/repo%d/pages/health", tostring(random_i), counter, counter)
  counter = counter + 1
  return wrk.format(nil, path)
end
