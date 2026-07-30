import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure StrichartzEstimatesPackage {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} (D : DispersiveEstimatesPackage En) where
  admissiblePairs : Prop
  mixedNormBound : Prop
  linearStrichartz : Prop

structure StrichartzEstimatesEvidence {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} {D : DispersiveEstimatesPackage En} (S : StrichartzEstimatesPackage D) where
  admissiblePairsClosed : S.admissiblePairs
  mixedNormBoundClosed : S.mixedNormBound
  linearStrichartzClosed : S.linearStrichartz

def StrichartzEstimatesClosed {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} {D : DispersiveEstimatesPackage En} (S : StrichartzEstimatesPackage D) : Prop :=
  S.admissiblePairs ∧ S.mixedNormBound ∧ S.linearStrichartz

theorem strichartz_estimates_closed_from_evidence {G : SpacetimePackage} {W : WaveEquationPDEPackage G} {En : EnergyEstimatesPackage W} {D : DispersiveEstimatesPackage En} (S : StrichartzEstimatesPackage D) (Ev : StrichartzEstimatesEvidence S) : StrichartzEstimatesClosed S := by
  exact And.intro Ev.admissiblePairsClosed (And.intro Ev.mixedNormBoundClosed Ev.linearStrichartzClosed)

end WaveEquationCanonicalLaneLean
end HautevilleHouse
