import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzySet where
  carrier : Type
  membershipFunction : carrier → ℝ
  membershipRange : ∀ x, 0 ≤ membershipFunction x ∧ membershipFunction x ≤ 1

structure FuzzyAdmittedObject where
  fuzzySet : FuzzySet
  fuzzyConstraintsSatisfied : Prop
  epistemicClosure : Prop
  conclusion : epistemicClosure

def FuzzyWitnessClosed (O : FuzzyAdmittedObject) : Prop :=
  O.epistemicClosure

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse