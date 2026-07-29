import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyLogicObject where
  carrier : Type
  membershipDegrees : carrier → ℝ

structure AdmissibleClass where
  object : FuzzyLogicObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  let degrees := A.object.membershipDegrees
  (∀ x, degrees x ≥ 0 ∧ degrees x ≤ 1) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse