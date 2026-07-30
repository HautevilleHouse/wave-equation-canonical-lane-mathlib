import WaveEquationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WaveEquationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WaveEquationCanonicalLaneLean
end HautevilleHouse
