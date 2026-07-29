import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure CoastalAdmittedObject where
  shoreline : Type
  coastalTopology : TopologicalSpace shoreline
  coastalDefense : Prop
  waveClimate : Prop
  sedimentTransport : Prop
  coastalProtection : Prop
  conclusion : coastalProtection

def coastalWitnessClosed (O : CoastalAdmittedObject) : Prop :=
  O.coastalProtection

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse
