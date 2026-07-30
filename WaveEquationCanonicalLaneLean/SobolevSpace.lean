import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure SobolevSpacePackage where
  domain : Type u
  smoothnessIndex : ℕ
  integrabilityExponent : ℝ
  normDefined : Prop
  embeddingTheorem : Prop
  traceTheorem : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  normDefinedClosed : S.normDefined
  embeddingTheoremClosed : S.embeddingTheorem
  traceTheoremClosed : S.traceTheorem

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.normDefined ∧ S.embeddingTheorem ∧ S.traceTheorem

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage) (E : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro E.normDefinedClosed (And.intro E.embeddingTheoremClosed E.traceTheoremClosed)

end WaveEquationCanonicalLaneLean
end HautevilleHouse