import WaveEquationCanonicalLaneLean.EnergyConservation

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure SolutionExistenceEvidence (W : WaveAdmittedObject) (P : WaveEquationPDE W) (E : EnergyConservationEvidence W P) where
  localExistence : Prop
  globalExistence : Prop
  uniquenessWeak : Prop
  regularityGain : Prop

end WaveEquationCanonicalLaneLean
end HautevilleHouse
