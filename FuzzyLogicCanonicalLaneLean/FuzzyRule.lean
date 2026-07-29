import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyLogicCanonicalLaneLean.FuzzySet
import HautevilleHouse.FuzzyLogicCanonicalLaneLean.TNorm
import HautevilleHouse.FuzzyLogicCanonicalLaneLean.Implication

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyRule (α β : Type u) where
  antecedent : FuzzySet α
  consequent : FuzzySet β
  implication : FuzzyImplication
  tnorm : TNorm
  firingStrength : α → ℝ
  outputFuzzySet : α → FuzzySet β
  firingFromAntecedent : ∀ x, firingStrength x = antecedent.membership x
  outputConstruction : ∀ x y, outputFuzzySet x y = tnorm.t (firingStrength x) (implication.imp (antecedent.membership x) (consequent.membership y))

structure FuzzyRuleEvidence (R : FuzzyRule α β) where
  firingFromAntecedentClosed : ∀ x, R.firingStrength x = R.antecedent.membership x
  outputConstructionClosed : ∀ x y, R.outputFuzzySet x y = R.tnorm.t (R.firingStrength x) (R.implication.imp (R.antecedent.membership x) (R.consequent.membership y))

def FuzzyRuleClosed (R : FuzzyRule α β) : Prop :=
  (∀ x, R.firingStrength x = R.antecedent.membership x) ∧
  (∀ x y, R.outputFuzzySet x y = R.tnorm.t (R.firingStrength x) (R.implication.imp (R.antecedent.membership x) (R.consequent.membership y)))

theorem fuzzy_rule_closed_from_evidence (R : FuzzyRule α β) (E : FuzzyRuleEvidence R) :
    FuzzyRuleClosed R := by
  exact And.intro E.firingFromAntecedentClosed E.outputConstructionClosed

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse