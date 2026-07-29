import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure CoastalProtectionPackage where
  seawallDesign : Prop
  revetmentStability : Prop
  breakwaterEffectiveness : Prop
  duneReinforcement : Prop
  tsunamiMitigation : Prop

structure CoastalProtectionEvidence (C : CoastalProtectionPackage) where
  seawallDesignClosed : C.seawallDesign
  revetmentStabilityClosed : C.revetmentStability
  breakwaterEffectivenessClosed : C.breakwaterEffectiveness
  duneReinforcementClosed : C.duneReinforcement
  tsunamiMitigationClosed : C.tsunamiMitigation

def CoastalProtectionClosed (C : CoastalProtectionPackage) : Prop :=
  C.seawallDesign ∧ C.revetmentStability ∧ C.breakwaterEffectiveness ∧
  C.duneReinforcement ∧ C.tsunamiMitigation

theorem coastal_protection_closed_from_evidence (C : CoastalProtectionPackage)
    (E : CoastalProtectionEvidence C) : CoastalProtectionClosed C := by
  exact And.intro E.seawallDesignClosed
    (And.intro E.revetmentStabilityClosed
      (And.intro E.breakwaterEffectivenessClosed
        (And.intro E.duneReinforcementClosed E.tsunamiMitigationClosed)))

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse
