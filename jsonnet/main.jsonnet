local helmOutput = (import "/dev/stdin");

local patchForObj(obj) =
   if obj.kind == "Deployment" && obj.metadata.name == "mycluster-enterprise-metrics-admin-api" then
      {metadata+: {annotations+: {"com.example.custom": "business-unit-1"}}}
   else
      {};

local modify(obj) = obj + patchForObj(obj);

std.map(modify, helmOutput)