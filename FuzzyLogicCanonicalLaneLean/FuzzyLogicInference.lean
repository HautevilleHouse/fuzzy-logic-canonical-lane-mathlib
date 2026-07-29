import FuzzyLogicCanonicalLaneLean.TNorm

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyInferenceRule where
  premise : Prop
  conclusion : Prop
  implicationOperator : ℝ → ℝ → ℝ
  soundness : premise → conclusion

structure FuzzyInferenceEvidence (R : FuzzyInferenceRule) where
  soundnessClosed : R.soundness

def FuzzyInferenceClosed (R : FuzzyInferenceRule) : Prop :=
  R.soundness

theorem fuzzy_inference_closed_from_evidence (R : FuzzyInferenceRule) (E : FuzzyInferenceEvidence R) : FuzzyInferenceClosed R := by
  exact E.soundnessClosed

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse