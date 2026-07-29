import FuzzyLogicCanonicalLaneLean.FuzzyInferenceBridge

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse