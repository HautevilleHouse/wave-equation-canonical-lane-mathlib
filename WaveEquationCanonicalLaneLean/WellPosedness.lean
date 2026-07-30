import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure WellPosednessPackage {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} {D : DispersiveEstimatesPackage En} (S : StrichartzEstimatesPackage D) where
  existence : Prop
  uniqueness : Prop
  continuousDependence : Prop

structure WellPosednessEvidence {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} {D : DispersiveEstimatesPackage En} {S : StrichartzEstimatesPackage D} (P : WellPosednessPackage S) where
  existenceClosed : P.existence
  uniquenessClosed : P.uniqueness
  continuousDependenceClosed : P.continuousDependence

def WellPosednessClosed {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} {D : DispersiveEstimatesPackage En} {S : StrichartzEstimatesPackage D} (P : WellPosednessPackage S) : Prop :=
  P.existence ∧ P.uniqueness ∧ P.continuousDependence

theorem well_posedness_closed_from_evidence {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} {D : DispersiveEstimatesPackage En} {S : StrichartzEstimatesPackage D} (P : WellPosednessPackage S) (Ev : WellPosednessEvidence P) : WellPosednessClosed P := by
  exact And.intro Ev.existenceClosed (And.intro Ev.uniquenessClosed Ev.continuousDependenceClosed)

end WaveEquationCanonicalLaneLean
end HautevilleHouse
