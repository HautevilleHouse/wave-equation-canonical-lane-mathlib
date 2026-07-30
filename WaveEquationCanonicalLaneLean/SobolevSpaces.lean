import WaveEquationCanonicalLaneLean.WavePDE

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure SobolevSpacesPackage {W : WavePDEPackage} where
  sobolevNorm : Type u
  energySpace : Prop
  wellPosedness : Prop
  regularityGain : Prop

structure SobolevSpacesEvidence {W : WavePDEPackage} (S : SobolevSpacesPackage W) where
  energySpaceClosed : S.energySpace
  wellPosednessClosed : S.wellPosedness
  regularityGainClosed : S.regularityGain

def SobolevSpacesClosed {W : WavePDEPackage} (S : SobolevSpacesPackage W) : Prop :=
  S.energySpace ∧ S.wellPosedness ∧ S.regularityGain

theorem sobolev_spaces_closed_from_evidence {W : WavePDEPackage} (S : SobolevSpacesPackage W) (E : SobolevSpacesEvidence S) : SobolevSpacesClosed S := by
  exact And.intro E.energySpaceClosed (And.intro E.wellPosednessClosed E.regularityGainClosed)

end HautevilleHouse
end WaveEquationCanonicalLaneLean