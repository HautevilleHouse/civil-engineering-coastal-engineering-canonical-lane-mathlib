import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure ErosionModelPackage where
  shorelineChangeRate : ℝ
  waveEnergyFlux : ℝ
  sedimentBudget : Prop
  longshoreTransport : Prop
  crossShoreTransport : Prop
  erosionRateFormula : Prop
  beachProfileEvolution : Prop

structure ErosionModelEvidence (E : ErosionModelPackage) where
  sedimentBudgetClosed : E.sedimentBudget
  longshoreTransportClosed : E.longshoreTransport
  crossShoreTransportClosed : E.crossShoreTransport
  erosionRateFormulaClosed : E.erosionRateFormula
  beachProfileEvolutionClosed : E.beachProfileEvolution

def ErosionModelClosed (E : ErosionModelPackage) : Prop :=
  E.sedimentBudget ∧ E.longshoreTransport ∧ E.crossShoreTransport ∧ E.erosionRateFormula ∧ E.beachProfileEvolution

theorem erosion_model_closed_from_evidence (E : ErosionModelPackage) (Ev : ErosionModelEvidence E) : ErosionModelClosed E := by
  exact And.intro Ev.sedimentBudgetClosed (And.intro Ev.longshoreTransportClosed (And.intro Ev.crossShoreTransportClosed (And.intro Ev.erosionRateFormulaClosed Ev.beachProfileEvolutionClosed)))

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse