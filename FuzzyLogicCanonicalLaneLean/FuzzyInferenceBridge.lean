import FuzzyLogicCanonicalLaneLean.FuzzyLogicAdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.inferenceRule

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.inferenceRule

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse