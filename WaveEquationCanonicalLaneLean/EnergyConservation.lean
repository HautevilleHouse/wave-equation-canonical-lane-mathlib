import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure EnergyConservationPackage where
  energyFunctional : Prop
  timeDerivativeEnergy : Prop
  conservationLaw : Prop

structure EnergyConservationEvidence (E : EnergyConservationPackage) where
  energyFunctionalClosed : E.energyFunctional
  timeDerivativeEnergyClosed : E.timeDerivativeEnergy
  conservationLawClosed : E.conservationLaw

def EnergyConservationClosed (E : EnergyConservationPackage) : Prop :=
  E.energyFunctional ∧ E.timeDerivativeEnergy ∧ E.conservationLaw

theorem energy_conservation_closed_from_evidence (E : EnergyConservationPackage)
    (Ev : EnergyConservationEvidence E) : EnergyConservationClosed E := by
  exact And.intro Ev.energyFunctionalClosed
    (And.intro Ev.timeDerivativeEnergyClosed Ev.conservationLawClosed)

end WaveEquationCanonicalLaneLean
end HautevilleHouse