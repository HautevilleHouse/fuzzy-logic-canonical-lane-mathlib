import FuzzyLogicCanonicalLaneLean.FuzzyInferenceEngine

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyControlSystem (E : FuzzyInferenceEngine) where
  inputVariables : List String
  outputVariable : String
  fuzzification : ℝ → ℝ
  ruleEvaluation : ℝ → ℝ → ℝ
  controlSurface : ℝ → ℝ
  systemStable : Prop
  systemStableTerm : systemStable

def FuzzyControlSystemClosed {E : FuzzyInferenceEngine} (C : FuzzyControlSystem E) : Prop :=
  C.systemStable

theorem fuzzy_control_system_closed_from_evidence
    {E : FuzzyInferenceEngine} (C : FuzzyControlSystem E) :
    FuzzyControlSystemClosed C := by
  exact C.systemStableTerm

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse