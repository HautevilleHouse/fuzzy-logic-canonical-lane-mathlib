import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzySet (α : Type u) where
  membership : α → ℝ
  membershipRange : ∀ x, membership x ∈ Set.Icc (0 : ℝ) 1

structure FuzzySetEvidence (A : FuzzySet α) where
  membershipRangeClosed : ∀ x, A.membership x ∈ Set.Icc (0 : ℝ) 1

def FuzzySetClosed (A : FuzzySet α) : Prop :=
  ∀ x, A.membership x ∈ Set.Icc (0 : ℝ) 1

theorem fuzzy_set_closed_from_evidence (A : FuzzySet α) (E : FuzzySetEvidence A) :
    FuzzySetClosed A := by
  exact E.membershipRangeClosed

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse