import WaveEquationCanonicalLaneLean.WaveEquationDomain

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure AdmissibleClass where
  object : WaveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end WaveEquationCanonicalLaneLean
end HautevilleHouse
