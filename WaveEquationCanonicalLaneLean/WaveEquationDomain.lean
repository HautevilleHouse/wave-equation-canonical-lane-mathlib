import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure WaveAdmittedObject where
  spaceDomain : Type
  waveOperator : spaceDomain → spaceDomain → Prop
  initialCondition : Prop
  boundaryCondition : Prop
  solutionExistence : Prop
  uniqueness : Prop
  stability : Prop
  conclusion : solutionExistence ∧ uniqueness ∧ stability

end WaveEquationCanonicalLaneLean
end HautevilleHouse
