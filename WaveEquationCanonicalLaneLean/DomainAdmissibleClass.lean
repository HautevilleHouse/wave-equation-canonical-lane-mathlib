import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure WaveAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  waveOperator : space → ℝ
  initialData : Prop
  solutionExists : Prop
  conclusion : solutionExists

def WaveWitnessClosed (O : WaveAdmittedObject) : Prop := O.solutionExists

structure WaveAdmissibleClass where
  object : WaveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : WaveAdmissibleClass) : Prop :=
  WaveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end WaveEquationCanonicalLaneLean