import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringCoastalEngineeringCanonicalLaneLean

structure ShallowWaterWavePackage where
  waterDepth : ℝ
  waveHeight : ℝ
  wavePeriod : ℝ
  linearWaveTheory : Prop
  nonlinearWaveTheory : Prop
  shoalingCoefficient : ℝ
  breakingCriteria : Prop

structure ShallowWaterWaveEvidence (S : ShallowWaterWavePackage) where
  linearWaveTheoryClosed : S.linearWaveTheory
  nonlinearWaveTheoryClosed : S.nonlinearWaveTheory
  shoalingCoefficientClosed : S.shoalingCoefficient > 0
  breakingCriteriaClosed : S.breakingCriteria

def ShallowWaterWaveClosed (S : ShallowWaterWavePackage) : Prop :=
  S.linearWaveTheory ∧ S.nonlinearWaveTheory ∧ S.shoalingCoefficient > 0 ∧ S.breakingCriteria

theorem shallow_water_wave_closed_from_evidence (S : ShallowWaterWavePackage) (E : ShallowWaterWaveEvidence S) : ShallowWaterWaveClosed S := by
  exact And.intro E.linearWaveTheoryClosed (And.intro E.nonlinearWaveTheoryClosed (And.intro E.shoalingCoefficientClosed E.breakingCriteriaClosed))

end CivilEngineeringCoastalEngineeringCanonicalLaneLean
end HautevilleHouse