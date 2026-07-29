import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure StormSurgePackage where
  hurricaneParameters : Prop
  windStress : ℝ
  atmosphericPressureDrop : ℝ
  surgeHeight : ℝ
  hydrodynamicModel : Prop
  inundationMapping : Prop
  coastalFloodRisk : Prop

structure StormSurgeEvidence (S : StormSurgePackage) where
  hurricaneParametersClosed : S.hurricaneParameters
  windStressClosed : S.windStress > 0
  atmosphericPressureDropClosed : S.atmosphericPressureDrop > 0
  surgeHeightClosed : S.surgeHeight > 0
  hydrodynamicModelClosed : S.hydrodynamicModel
  inundationMappingClosed : S.inundationMapping
  coastalFloodRiskClosed : S.coastalFloodRisk

def StormSurgeClosed (S : StormSurgePackage) : Prop :=
  S.hurricaneParameters ∧ S.windStress > 0 ∧ S.atmosphericPressureDrop > 0 ∧ S.surgeHeight > 0 ∧ S.hydrodynamicModel ∧ S.inundationMapping ∧ S.coastalFloodRisk

theorem storm_surge_closed_from_evidence (S : StormSurgePackage) (E : StormSurgeEvidence S) : StormSurgeClosed S := by
  exact And.intro E.hurricaneParametersClosed (And.intro E.windStressClosed (And.intro E.atmosphericPressureDropClosed (And.intro E.surgeHeightClosed (And.intro E.hydrodynamicModelClosed (And.intro E.inundationMappingClosed E.coastalFloodRiskClosed)))))

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse