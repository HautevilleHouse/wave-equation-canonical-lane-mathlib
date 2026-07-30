import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

structure FourierMethodPackage where
  spatialDomain : Type u
  basisFunctions : Type v
  separationOfVariables : Prop
  eigenfunctionExpansion : Prop
  convergenceInEnergy : Prop

structure FourierMethodEvidence (F : FourierMethodPackage) where
  separationOfVariablesClosed : F.separationOfVariables
  eigenfunctionExpansionClosed : F.eigenfunctionExpansion
  convergenceInEnergyClosed : F.convergenceInEnergy

def FourierMethodClosed (F : FourierMethodPackage) : Prop :=
  F.separationOfVariables ∧ F.eigenfunctionExpansion ∧ F.convergenceInEnergy

theorem fourier_method_closed_from_evidence (F : FourierMethodPackage) (E : FourierMethodEvidence F) : FourierMethodClosed F := by
  exact And.intro E.separationOfVariablesClosed (And.intro E.eigenfunctionExpansionClosed E.convergenceInEnergyClosed)

end WaveEquationCanonicalLaneLean
end HautevilleHouse