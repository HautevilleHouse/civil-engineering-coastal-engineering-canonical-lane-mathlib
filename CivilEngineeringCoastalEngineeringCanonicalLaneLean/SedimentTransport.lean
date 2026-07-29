import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure SedimentTransportPackage where
  sedimentGrainSize : Type u
  bedShearStress : Type v
  suspendedLoad : Prop
  bedLoad : Prop
  incipientMotion : Prop
  transportRateFormula : Prop
  morphodynamics : Prop

structure SedimentTransportEvidence (S : SedimentTransportPackage) where
  suspendedLoadClosed : S.suspendedLoad
  bedLoadClosed : S.bedLoad
  incipientMotionClosed : S.incipientMotion
  transportRateFormulaClosed : S.transportRateFormula
  morphodynamicsClosed : S.morphodynamics

def SedimentTransportClosed (S : SedimentTransportPackage) : Prop :=
  S.suspendedLoad ∧ S.bedLoad ∧ S.incipientMotion ∧
  S.transportRateFormula ∧ S.morphodynamics

theorem sediment_transport_closed_from_evidence (S : SedimentTransportPackage)
    (E : SedimentTransportEvidence S) : SedimentTransportClosed S := by
  exact And.intro E.suspendedLoadClosed
    (And.intro E.bedLoadClosed
      (And.intro E.incipientMotionClosed
        (And.intro E.transportRateFormulaClosed E.morphodynamicsClosed)))

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse