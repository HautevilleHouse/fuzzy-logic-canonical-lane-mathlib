import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyLogicCanonicalLaneLean.FuzzyRule
import HautevilleHouse.FuzzyLogicCanonicalLaneLean.Defuzzification

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyInferenceSystem (α β : Type u) where
  rules : List (FuzzyRule α β)
  aggregation : (ℝ → ℝ) → ℝ
  defuzzification : DefuzzificationMethod
  inferenceOutput : α → ℝ
  aggregationOfOutputs : ∀ x, aggregation (λ y => ???) = ???

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse