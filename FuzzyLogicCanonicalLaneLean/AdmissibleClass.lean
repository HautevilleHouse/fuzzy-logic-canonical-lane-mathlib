import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyAdmittedObject where
  membershipFunction : Type
  truthDegree : Type
  conclusion : Prop

structure AdmissibleClass where
  object : FuzzyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse