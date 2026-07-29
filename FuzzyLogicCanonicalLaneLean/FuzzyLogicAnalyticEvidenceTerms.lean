import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzySetEvidenceTerms (F : FuzzyAdmittedObject) where
  membershipFunctionWellDefined : F.fuzzySet.membershipFunction = F.fuzzySet.membershipFunction
  constraintsSatisfied : F.fuzzyConstraintsSatisfied
  epistemicClosureObtained : F.epistemicClosure
  fuzzyClosed : FuzzyWitnessClosed F

def FuzzyAdmittedObject.evidenceTerms (F : FuzzyAdmittedObject) : FuzzySetEvidenceTerms F :=
  {
    membershipFunctionWellDefined := rfl,
    constraintsSatisfied := F.fuzzyConstraintsSatisfied,
    epistemicClosureObtained := F.epistemicClosure,
    fuzzyClosed := F.conclusion
  }

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse