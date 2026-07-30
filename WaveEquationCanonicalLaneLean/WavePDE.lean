import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure WavePDEPackage where
  spaceDomain : Type u
  timeDomain : Type v
  waveEquation : Prop
  linearHyperbolic : Prop
  finiteSpeedPropagation : Prop
  energyConservation : Prop

structure WavePDEEvidence (W : WavePDEPackage) where
  waveEquationClosed : W.waveEquation
  linearHyperbolicClosed : W.linearHyperbolic
  finiteSpeedPropagationClosed : W.finiteSpeedPropagation
  energyConservationClosed : W.energyConservation

def WavePDEClosed (W : WavePDEPackage) : Prop :=
  W.waveEquation ∧ W.linearHyperbolic ∧ W.finiteSpeedPropagation ∧ W.energyConservation

theorem wave_pde_closed_from_evidence (W : WavePDEPackage) (E : WavePDEEvidence W) : WavePDEClosed W := by
  exact And.intro E.waveEquationClosed (And.intro E.linearHyperbolicClosed (And.intro E.finiteSpeedPropagationClosed E.energyConservationClosed))

end HautevilleHouse
end WaveEquationCanonicalLaneLean