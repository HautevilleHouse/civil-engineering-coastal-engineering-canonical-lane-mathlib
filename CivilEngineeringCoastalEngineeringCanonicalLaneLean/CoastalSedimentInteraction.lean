import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CivilEngineeringCoastalEngineeringCanonicalLaneLean.SedimentTransport
import HautevilleHouse.CivilEngineeringCoastalEngineeringCanonicalLaneLean.CoastalHydrodynamics

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure CoastalSedimentInteractionPackage
    (H : CoastalHydrodynamicsPackage) (S : SedimentTransportPackage) where
  waveSedimentCoupling : Prop
  transportDrivenByHydrodynamics : Prop
  feedbackOnMorphology : Prop

structure CoastalSedimentInteractionEvidence
    {H : CoastalHydrodynamicsPackage} {S : SedimentTransportPackage}
    (I : CoastalSedimentInteractionPackage H S) where
  waveSedimentCouplingClosed : I.waveSedimentCoupling
  transportDrivenByHydrodynamicsClosed : I.transportDrivenByHydrodynamics
  feedbackOnMorphologyClosed : I.feedbackOnMorphology

def CoastalSedimentInteractionClosed
    {H : CoastalHydrodynamicsPackage} {S : SedimentTransportPackage}
    (I : CoastalSedimentInteractionPackage H S) : Prop :=
  I.waveSedimentCoupling ∧ I.transportDrivenByHydrodynamics ∧ I.feedbackOnMorphology

theorem coastal_sediment_interaction_closed_from_evidence
    {H : CoastalHydrodynamicsPackage} {S : SedimentTransportPackage}
    (I : CoastalSedimentInteractionPackage H S)
    (E : CoastalSedimentInteractionEvidence I) :
    CoastalSedimentInteractionClosed I := by
  exact And.intro E.waveSedimentCouplingClosed
    (And.intro E.transportDrivenByHydrodynamicsClosed E.feedbackOnMorphologyClosed)

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse