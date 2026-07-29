import FuzzyLogicCanonicalLaneLean.FuzzyLogicAdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure TNormPackage where
  tNorm : ℝ → ℝ → ℝ
  commutativity : ∀ a b, tNorm a b = tNorm b a
  associativity : ∀ a b c, tNorm (tNorm a b) c = tNorm a (tNorm b c)
  monotonicity : ∀ a b c, b ≤ c → tNorm a b ≤ tNorm a c
  boundaryCondition : ∀ a, tNorm a 1 = a

def TNormPackageClosed (T : TNormPackage) : Prop :=
  T.commutativity ∧ T.associativity ∧ T.monotonicity ∧ T.boundaryCondition

theorem t_norm_package_closed_from_axioms (T : TNormPackage) :
    TNormPackageClosed T := by
  exact And.intro T.commutativity (And.intro T.associativity (And.intro T.monotonicity T.boundaryCondition))

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse