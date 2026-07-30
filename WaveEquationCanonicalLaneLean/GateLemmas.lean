import WaveEquationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end WaveEquationCanonicalLaneLean
end HautevilleHouse
