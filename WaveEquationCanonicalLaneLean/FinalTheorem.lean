import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

def ConstrainedWaveEquationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wave_equation_endgame (A : AdmissibleClass) :
    ConstrainedWaveEquationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WaveEquationCanonicalLaneLean
end HautevilleHouse