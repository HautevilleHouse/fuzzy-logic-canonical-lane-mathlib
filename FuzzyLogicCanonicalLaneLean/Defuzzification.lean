import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure DefuzzificationMethod where
  defuzzify : (ℝ → ℝ) → ℝ
  inputSupport : (ℝ → ℝ) → Set ℝ
  outputInSupport : ∀ f, defuzzify f ∈ inputSupport f

structure DefuzzificationEvidence (D : DefuzzificationMethod) where
  outputInSupportClosed : ∀ f, D.defuzzify f ∈ D.inputSupport f

def DefuzzificationClosed (D : DefuzzificationMethod) : Prop :=
  ∀ f, D.defuzzify f ∈ D.inputSupport f

theorem defuzzification_closed_from_evidence (D : DefuzzificationMethod) (E : DefuzzificationEvidence D) :
    DefuzzificationClosed D := by
  exact E.outputInSupportClosed

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse