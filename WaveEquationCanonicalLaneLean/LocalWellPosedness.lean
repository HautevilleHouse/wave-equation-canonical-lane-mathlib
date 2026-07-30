import WaveEquationCanonicalLaneLean.StrichartzEstimates

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure LocalWellPosednessPackage {W : WavePDEPackage} {S : SobolevSpacesPackage W} {St : StrichartzEstimatesPackage W S} where
  localExistence : Prop
  uniqueness : Prop
  continuousDependence : Prop
  blowupCriterion : Prop

structure LocalWellPosednessEvidence {W : WavePDEPackage} {S : SobolevSpacesPackage W} {St : StrichartzEstimatesPackage W S} (L : LocalWellPosednessPackage W S St) where
  localExistenceClosed : L.localExistence
  uniquenessClosed : L.uniqueness
  continuousDependenceClosed : L.continuousDependence
  blowupCriterionClosed : L.blowupCriterion

def LocalWellPosednessClosed {W : WavePDEPackage} {S : SobolevSpacesPackage W} {St : StrichartzEstimatesPackage W S} (L : LocalWellPosednessPackage W S St) : Prop :=
  L.localExistence ∧ L.uniqueness ∧ L.continuousDependence ∧ L.blowupCriterion

theorem local_well_posedness_closed_from_evidence {W : WavePDEPackage} {S : SobolevSpacesPackage W} {St : StrichartzEstimatesPackage W S} (L : LocalWellPosednessPackage W S St) (E : LocalWellPosednessEvidence L) : LocalWellPosednessClosed L := by
  exact And.intro E.localExistenceClosed (And.intro E.uniquenessClosed (And.intro E.continuousDependenceClosed E.blowupCriterionClosed))

end HautevilleHouse
end WaveEquationCanonicalLaneLean