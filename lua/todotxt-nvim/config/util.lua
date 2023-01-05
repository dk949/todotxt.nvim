local util = {}

function util.map(t, fn)
  local mapped = {}
  for i, elem in pairs(t) do
    mapped[i] = fn(elem)
  end
  return mapped
end

function util.mapTasks(tasks)
  local config = require("todotxt-nvim.config")
  return util.map(tasks, config.options.taskDisplayHook)
end

return util
