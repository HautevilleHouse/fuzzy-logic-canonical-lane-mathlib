import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyImplication where
  imp : ℝ → ℝ → ℝ
  monotoneDecreasingFirst : ∀ a b c, a ≤ b → imp b c ≤ imp a c
  monotoneIncreasingSecond : ∀ a b c, b ≤ c → imp a b ≤ imp a c
  boundaryCondition : ∀ a, imp 1 a = a
  dominanceOfFalsity : ∀ a, imp 0 a = 1

structure FuzzyImplicationEvidence (I : FuzzyImplication) where
  monotoneDecreasingFirstClosed : ∀ a b c, a ≤ b → I.imp b c ≤ I.imp a c
  monotoneIncreasingSecondClosed : ∀ a b c, b ≤ c → I.imp a b ≤ I.imp a c
  boundaryConditionClosed : ∀ a, I.imp 1 a = a
  dominanceOfFalsityClosed : ∀ a, I.imp 0 a = 1

def FuzzyImplicationClosed (I : FuzzyImplication) : Prop :=
  (∀ a b c, a ≤ b → I.imp b c ≤ I.imp a c) ∧
  (∀ a b c, b ≤ c → I.imp a b ≤ I.imp a c) ∧
  (∀ a, I.imp 1 a = a) ∧
  (∀ a, I.imp 0 a = 1)

theorem fuzzy_implication_closed_from_evidence (I : FuzzyImplication) (E : FuzzyImplicationEvidence I) :
    FuzzyImplicationClosed I := by
  exact And.intro E.monotoneDecreasingFirstClosed
    (And.intro E.monotoneIncreasingSecondClosed
      (And.intro E.boundaryConditionClosed E.dominanceOfFalsityClosed))

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse