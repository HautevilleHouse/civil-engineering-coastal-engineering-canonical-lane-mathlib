import CivilEngineeringCoastalEngineeringCanonicalLaneLean.CoastalStructureDesign

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure ShorelineChange where
  longshoreTransport : Prop
  crossShoreTransport : Prop
  shorelineEvolution : Prop
  nourishmentEffectiveness : Prop

structure ShorelineChangeEvidence (S : ShorelineChange) where
  longshoreTransportClosed : S.longshoreTransport
  crossShoreTransportClosed : S.crossShoreTransport
  shorelineEvolutionClosed : S.shorelineEvolution
  nourishmentEffectivenessClosed : S.nourishmentEffectiveness

def ShorelineChangeClosed (S : ShorelineChange) : Prop :=
  S.longshoreTransport ∧ S.crossShoreTransport ∧ S.shorelineEvolution ∧ S.nourishmentEffectiveness

theorem shoreline_change_closed (S : ShorelineChange) (E : ShorelineChangeEvidence S) :
    ShorelineChangeClosed S := by
  exact And.intro E.longshoreTransportClosed
    (And.intro E.crossShoreTransportClosed
      (And.intro E.shorelineEvolutionClosed E.nourishmentEffectivenessClosed))

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse