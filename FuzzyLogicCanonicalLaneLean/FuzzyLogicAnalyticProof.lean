import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure FuzzyAnalyticCertificate (F : FuzzyAdmittedObject) where
  membershipRangeBounded : Prop
  tNormDefined : Prop
  tConormDefined : Prop
  negationDefined : Prop
  implicationDefined : Prop
  membershipRangeBoundedClosed : membershipRangeBounded
  tNormDefinedClosed : tNormDefined
  tConormDefinedClosed : tConormDefined
  negationDefinedClosed : negationDefined
  implicationDefinedClosed : implicationDefined
  fuzzyEvidence : FuzzySetEvidenceTerms F

def FuzzyAnalyticCertificateClosed {F : FuzzyAdmittedObject} (C : FuzzyAnalyticCertificate F) : Prop :=
  C.membershipRangeBounded ∧ C.tNormDefined ∧ C.tConormDefined ∧
  C.negationDefined ∧ C.implicationDefined ∧ FuzzyWitnessClosed F

theorem fuzzy_analytic_certificate_closed
    {F : FuzzyAdmittedObject} (C : FuzzyAnalyticCertificate F) :
    FuzzyAnalyticCertificateClosed C := by
  refine And.intro C.membershipRangeBoundedClosed
    (And.intro C.tNormDefinedClosed
      (And.intro C.tConormDefinedClosed
        (And.intro C.negationDefinedClosed
          (And.intro C.implicationDefinedClosed C.fuzzyEvidence.fuzzyClosed))))

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse