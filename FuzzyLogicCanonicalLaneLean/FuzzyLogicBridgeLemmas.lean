import FuzzyLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ x, A.object.membershipDegrees x ≥ 0 ∧ A.object.membershipDegrees x ≤ 1

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.membershipDegrees

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse