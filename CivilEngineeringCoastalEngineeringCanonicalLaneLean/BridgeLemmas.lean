import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CoastalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse
