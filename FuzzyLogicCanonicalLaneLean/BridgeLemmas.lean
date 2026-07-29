import HautevilleHouse.FuzzyLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse