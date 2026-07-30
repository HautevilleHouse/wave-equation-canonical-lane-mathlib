import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure WaveEquationPackage where
  spacetime : Type u
  spatialDomain : Type v
  timeDomain : Type w
  laplacian : Type x
  initialCondition : Prop
  waveOperatorApplication : Prop
  solutionClass : Prop

structure WaveEquationEvidence (W : WaveEquationPackage) where
  initialConditionClosed : W.initialCondition
  waveOperatorApplicationClosed : W.waveOperatorApplication
  solutionClassClosed : W.solutionClass

def WaveEquationClosed (W : WaveEquationPackage) : Prop :=
  W.initialCondition ∧ W.waveOperatorApplication ∧ W.solutionClass

theorem wave_equation_closed_from_evidence (W : WaveEquationPackage)
    (E : WaveEquationEvidence W) : WaveEquationClosed W := by
  exact And.intro E.initialConditionClosed
    (And.intro E.waveOperatorApplicationClosed E.solutionClassClosed)

end WaveEquationCanonicalLaneLean
end HautevilleHouse