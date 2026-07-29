import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FuzzyProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def fuzzyProofObligation : FuzzyProofObligation := {
  sourceKey := "fuzzy-logic-canonical-lane",
  theoremObject := "Fuzzy Logic Endgame",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse