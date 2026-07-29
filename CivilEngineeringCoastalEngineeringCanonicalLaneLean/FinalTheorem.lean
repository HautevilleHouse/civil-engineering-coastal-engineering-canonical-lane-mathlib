import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CivilEngineeringCoastalEngineeringCanonicalLaneLean.CoastalHydrodynamicsBridge

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

def ConstrainedCoastalEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coastal_engineering_endgame (A : AdmissibleClass) :
    ConstrainedCoastalEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse