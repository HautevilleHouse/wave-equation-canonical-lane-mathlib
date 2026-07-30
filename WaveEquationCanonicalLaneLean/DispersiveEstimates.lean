import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure DispersiveEstimatesPackage {G : SpacetimePackage} {W : WaveEquationPDEPackage G} (En : EnergyEstimatesPackage W) where
  timeDecayRate : Prop
  localEnergyStagnation : Prop

structure DispersiveEstimatesEvidence {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} (D : DispersiveEstimatesPackage En) where
  timeDecayRateClosed : D.timeDecayRate
  localEnergyStagnationClosed : D.localEnergyStagnation

def DispersiveEstimatesClosed {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} (D : DispersiveEstimatesPackage En) : Prop :=
  D.timeDecayRate ∧ D.localEnergyStagnation

theorem dispersive_estimates_closed_from_evidence {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} (D : DispersiveEstimatesPackage En) (Ev : DispersiveEstimatesEvidence D) : DispersiveEstimatesClosed D := by
  exact And.intro Ev.timeDecayRateClosed Ev.localEnergyStagnationClosed

end WaveEquationCanonicalLaneLean
end HautevilleHouse
