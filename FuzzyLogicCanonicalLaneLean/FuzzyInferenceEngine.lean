import FuzzyLogicCanonicalLaneLean.FuzzyTriangularNorms

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyInferenceEngine where
  ruleBase : List (String × (ℝ → ℝ))
  aggregationMethod : ℝ → ℝ → ℝ
  defuzzification : ℝ → ℝ
  inferenceValid : Prop
  inferenceValidTerm : inferenceValid

def FuzzyInferenceEngineClosed (E : FuzzyInferenceEngine) : Prop :=
  E.inferenceValid

theorem fuzzy_inference_engine_closed_from_evidence (E : FuzzyInferenceEngine) :
    FuzzyInferenceEngineClosed E := by
  exact E.inferenceValidTerm

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse