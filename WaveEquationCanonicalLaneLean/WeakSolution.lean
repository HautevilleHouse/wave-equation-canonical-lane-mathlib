import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure WeakSolutionPackage where
  bilinearForm : Type u
  linearForm : Type v
  testFunctionSpace : Type w
  existenceProof : Prop
  uniquenessProof : Prop
  regularityProof : Prop
  energyEstimate : Prop

structure WeakSolutionEvidence (W : WeakSolutionPackage) where
  existenceProofClosed : W.existenceProof
  uniquenessProofClosed : W.uniquenessProof
  regularityProofClosed : W.regularityProof
  energyEstimateClosed : W.energyEstimate

def WeakSolutionClosed (W : WeakSolutionPackage) : Prop :=
  W.existenceProof ∧ W.uniquenessProof ∧ W.regularityProof ∧ W.energyEstimate

theorem weak_solution_closed_from_evidence (W : WeakSolutionPackage) (E : WeakSolutionEvidence W) : WeakSolutionClosed W := by
  exact And.intro E.existenceProofClosed (And.intro E.uniquenessProofClosed (And.intro E.regularityProofClosed E.energyEstimateClosed))

end WaveEquationCanonicalLaneLean
end HautevilleHouse