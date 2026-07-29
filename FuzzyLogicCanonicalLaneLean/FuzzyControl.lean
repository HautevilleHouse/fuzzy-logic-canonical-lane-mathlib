import HautevilleHouse.FuzzyLogicCanonicalLaneLean.ApproximateReasoning

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyControlPackage where
  ruleBase : Type
  fuzzification : Prop
  inference : Prop
  defuzzification : Prop
  stability : Prop

structure FuzzyControlEvidence (P : FuzzyControlPackage) where
  fuzzificationClosed : P.fuzzification
  inferenceClosed : P.inference
  defuzzificationClosed : P.defuzzification
  stabilityClosed : P.stability

def FuzzyControlClosed (P : FuzzyControlPackage) : Prop :=
  P.fuzzification ∧ P.inference ∧ P.defuzzification ∧ P.stability

theorem fuzzy_control_closed_from_evidence (P : FuzzyControlPackage) (E : FuzzyControlEvidence P) :
    FuzzyControlClosed P := by
  exact And.intro E.fuzzificationClosed (And.intro E.inferenceClosed (And.intro E.defuzzificationClosed E.stabilityClosed))

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse