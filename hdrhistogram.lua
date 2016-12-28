local hdr = require "hdrhistogram.hdr"

local hdrmeta = getmetatable(hdr.new(1,1000,3))

function hdrmeta:stats(percentiles)
  percentiles = percentiles or {10,20,30,40,50,60,70,80,90,100}
  local out = {}
  for i,v in ipairs(percentiles) do
    table.insert(out, ("#% 3d%%  % 6d"):format(v, self:percentile(v)))
  end
  return table.concat(out, "\n")
end

function hdrmeta:latency_stats()
  local out = {
    "# Latency stats",
    hdrhistogram.stats { 50, 75, 90, 95, 99, 99.9, 100 }
  }
  return table.concat(out, "\n")
end

return hdr
