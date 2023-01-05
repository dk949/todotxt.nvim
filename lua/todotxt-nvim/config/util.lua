local util = {}

function util.map(t, fn)
  local mapped = {}
  for i, elem in pairs(t) do
    mapped[i] = fn(elem)
  end
  return mapped
end

return util
