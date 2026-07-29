import CivilEngineeringCoastalEngineeringCanonicalLaneLean.ShorelineChange

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure CoastalFlooding where
  stormSurgeModeling : Prop
  waveRunup : Prop
  floodExtentMapping : Prop
  riskAssessment : Prop

structure CoastalFloodingEvidence (C : CoastalFlooding) where
  stormSurgeModelingClosed : C.stormSurgeModeling
  waveRunupClosed : C.waveRunup
  floodExtentMappingClosed : C.floodExtentMapping
  riskAssessmentClosed : C.riskAssessment

def CoastalFloodingClosed (C : CoastalFlooding) : Prop :=
  C.stormSurgeModeling ∧ C.waveRunup ∧ C.floodExtentMapping ∧ C.riskAssessment

theorem coastal_flooding_closed (C : CoastalFlooding) (E : CoastalFloodingEvidence C) :
    CoastalFloodingClosed C := by
  exact And.intro E.stormSurgeModelingClosed
    (And.intro E.waveRunupClosed
      (And.intro E.floodExtentMappingClosed E.riskAssessmentClosed))

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse