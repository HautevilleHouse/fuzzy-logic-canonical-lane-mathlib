import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "fuzzy-logic-canonical-lane"
def sourceDescription : String := "FuzzyLogic"
def baselineCertificateLane : String := "manifold_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "classical source boundary carried by formalization",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "carried remainder"
}

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse