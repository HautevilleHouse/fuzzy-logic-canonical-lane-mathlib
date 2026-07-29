import FuzzyLogicCanonicalLaneLean.FuzzyConsistencyGate

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

def ConstrainedFuzzyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzzy_endgame (A : AdmissibleClass) :
    ConstrainedFuzzyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse