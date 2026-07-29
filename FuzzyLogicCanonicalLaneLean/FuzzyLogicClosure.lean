import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyLogicCanonicalLaneLean.FuzzySetTheory

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObject.membershipClosed (A.object : FuzzySet (AdmittedObject.universe A.object))

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.membershipClosed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedFuzzyLogicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzzy_logic_endgame (A : AdmissibleClass) : ConstrainedFuzzyLogicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse
