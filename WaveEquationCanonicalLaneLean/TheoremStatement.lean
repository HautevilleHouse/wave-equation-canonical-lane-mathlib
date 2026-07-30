import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure WaveSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WaveAdmittedObject where
  space : WaveSpace
  waveEquationHolds : Prop
  initialData : Prop
  boundaryConditions : Prop
  solutionClass : Type
  solutionClassTopology : TopologicalSpace solutionClass
  conclusion : waveEquationHolds ∧ initialData ∧ boundaryConditions

structure WaveWitnessClosed (O : WaveAdmittedObject) : Prop where
  eqClosed : O.waveEquationHolds
  initClosed : O.initialData
  boundClosed : O.boundaryConditions

end WaveEquationCanonicalLaneLean
end HautevilleHouse