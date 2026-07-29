import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure TNorm where
  t : ℝ → ℝ → ℝ
  commutativity : ∀ a b, t a b = t b a
  associativity : ∀ a b c, t (t a b) c = t a (t b c)
  monotonicity : ∀ a b c d, a ≤ c → b ≤ d → t a b ≤ t c d
  identityOne : ∀ a, t a 1 = a
  zeroAbsorption : ∀ a, t a 0 = 0

structure TNormEvidence (T : TNorm) where
  commutativityClosed : ∀ a b, T.t a b = T.t b a
  associativityClosed : ∀ a b c, T.t (T.t a b) c = T.t a (T.t b c)
  monotonicityClosed : ∀ a b c d, a ≤ c → b ≤ d → T.t a b ≤ T.t c d
  identityOneClosed : ∀ a, T.t a 1 = a
  zeroAbsorptionClosed : ∀ a, T.t a 0 = 0

def TNormClosed (T : TNorm) : Prop :=
  (∀ a b, T.t a b = T.t b a) ∧
  (∀ a b c, T.t (T.t a b) c = T.t a (T.t b c)) ∧
  (∀ a b c d, a ≤ c → b ≤ d → T.t a b ≤ T.t c d) ∧
  (∀ a, T.t a 1 = a) ∧
  (∀ a, T.t a 0 = 0)

theorem t_norm_closed_from_evidence (T : TNorm) (E : TNormEvidence T) :
    TNormClosed T := by
  exact And.intro E.commutativityClosed
    (And.intro E.associativityClosed
      (And.intro E.monotonicityClosed
        (And.intro E.identityOneClosed E.zeroAbsorptionClosed)))

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse