import FuzzyLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure TNorm where
  t : ℝ → ℝ → ℝ
  commutativity : ∀ a b, t a b = t b a
  associativity : ∀ a b c, t (t a b) c = t a (t b c)
  monotonicity : ∀ a b c d, a ≤ c → b ≤ d → t a b ≤ t c d
  identityOne : ∀ a, t a 1 = a

structure TNormEvidence (T : TNorm) where
  commutativityClosed : T.commutativity
  associativityClosed : T.associativity
  monotonicityClosed : T.monotonicity
  identityOneClosed : T.identityOne

def TNormClosed (T : TNorm) : Prop :=
  T.commutativity ∧ T.associativity ∧ T.monotonicity ∧ T.identityOne

theorem tnorm_closed_from_evidence (T : TNorm) (E : TNormEvidence T) : TNormClosed T := by
  exact And.intro E.commutativityClosed (And.intro E.associativityClosed (And.intro E.monotonicityClosed E.identityOneClosed))

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse