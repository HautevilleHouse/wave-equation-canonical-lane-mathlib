import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure EnergyEstimatesPackage {G : SpacetimePackage} {W : WaveEquationPDEPackage G} where
  conservationLaw : Prop
  coercivity : Prop
  stabilityMargin : Prop

structure EnergyEstimatesEvidence {G : SpacetimePackage} {W : WaveEquationPDEPackage G} (E : EnergyEstimatesPackage W) where
  conservationLawClosed : E.conservationLaw
  coercivityClosed : E.coercivity
  stabilityMarginClosed : E.stabilityMargin

def EnergyEstimatesClosed {G : SpacetimePackage} {W : WaveEquationPDEPackage G} (E : EnergyEstimatesPackage W) : Prop :=
  E.conservationLaw ∧ E.coercivity ∧ E.stabilityMargin

theorem energy_estimates_closed_from_evidence {G : SpacetimePackage} {W : WaveEquationPDEPackage G} (E : EnergyEstimatesPackage W) (Ev : EnergyEstimatesEvidence E) : EnergyEstimatesClosed E := by
  exact And.intro Ev.conservationLawClosed (And.intro Ev.coercivityClosed Ev.stabilityMarginClosed)

end WaveEquationCanonicalLaneLean
end HautevilleHouse
