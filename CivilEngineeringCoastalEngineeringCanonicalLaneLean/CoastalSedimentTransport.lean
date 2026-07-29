import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure SedimentTransportPackage where
  sedimentGrainSize : ℝ
  bedShearStress : ℝ
  transportRateFormula : Prop
  bedloadTransport : Prop
  suspendedLoadTransport : Prop
  totalTransportRate : ℝ
  sedimentContinuity : Prop

structure SedimentTransportEvidence (T : SedimentTransportPackage) where
  transportRateFormulaClosed : T.transportRateFormula
  bedloadTransportClosed : T.bedloadTransport
  suspendedLoadTransportClosed : T.suspendedLoadTransport
  totalTransportRateClosed : T.totalTransportRate > 0
  sedimentContinuityClosed : T.sedimentContinuity

def SedimentTransportClosed (T : SedimentTransportPackage) : Prop :=
  T.transportRateFormula ∧ T.bedloadTransport ∧ T.suspendedLoadTransport ∧ T.totalTransportRate > 0 ∧ T.sedimentContinuity

theorem sediment_transport_closed_from_evidence (T : SedimentTransportPackage) (E : SedimentTransportEvidence T) : SedimentTransportClosed T := by
  exact And.intro E.transportRateFormulaClosed (And.intro E.bedloadTransportClosed (And.intro E.suspendedLoadTransportClosed (And.intro E.totalTransportRateClosed E.sedimentContinuityClosed)))

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse