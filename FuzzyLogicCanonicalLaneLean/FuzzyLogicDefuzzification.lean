import FuzzyLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure DefuzzificationMethod where
  aggregate : (ℝ → ℝ) → ℝ
  centroidProperty : ∀ f, (∀ x, f x ≥ 0) → aggregate f ≥ 0

structure DefuzzificationEvidence (D : DefuzzificationMethod) where
  centroidPropertyClosed : D.centroidProperty

def DefuzzificationClosed (D : DefuzzificationMethod) : Prop :=
  D.centroidProperty

theorem defuzzification_closed_from_evidence (D : DefuzzificationMethod) (E : DefuzzificationEvidence D) : DefuzzificationClosed D := by
  exact E.centroidPropertyClosed

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse