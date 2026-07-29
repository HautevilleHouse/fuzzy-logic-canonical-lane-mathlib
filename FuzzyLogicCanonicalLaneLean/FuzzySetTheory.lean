import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

-- Membership degree structure for fuzzy sets
structure MembershipDegree where
  value : ℝ
  inUnitInterval : 0 ≤ value ∧ value ≤ 1

-- Fuzzy set over a universe
structure FuzzySet (U : Type) where
  membership : U → MembershipDegree
  membershipClosed : ∀ x : U, membership x = membership x

-- Operations on fuzzy sets
structure FuzzySetOperations (U : Type) where
  complement : FuzzySet U → FuzzySet U
  union : FuzzySet U → FuzzySet U → FuzzySet U
  intersection : FuzzySet U → FuzzySet U → FuzzySet U
  complementProperty : ∀ (A : FuzzySet U) (x : U),
    (complement A).membership x = (MembershipDegree.mk (1 - (A.membership x).value) (by
      have h := (A.membership x).inUnitInterval
      nlinarith))
  unionProperty : ∀ (A B : FuzzySet U) (x : U),
    (union A B).membership x = (MembershipDegree.mk (max (A.membership x).value (B.membership x).value) (by
      have hA := (A.membership x).inUnitInterval
      have hB := (B.membership x).inUnitInterval
      have hmax : 0 ≤ max (A.membership x).value (B.membership x).value ∧ max (A.membership x).value (B.membership x).value ≤ 1 := by
        constructor
        · exact le_max_of_le_left hA.1
        · exact max_le hA.2 hB.2
      exact hmax))
  intersectionProperty : ∀ (A B : FuzzySet U) (x : U),
    (intersection A B).membership x = (MembershipDegree.mk (min (A.membership x).value (B.membership x).value) (by
      have hA := (A.membership x).inUnitInterval
      have hB := (B.membership x).inUnitInterval
      have hmin : 0 ≤ min (A.membership x).value (B.membership x).value ∧ min (A.membership x).value (B.membership x).value ≤ 1 := by
        constructor
        · exact le_min_iff.mpr ⟨hA.1, hB.1⟩
        · exact min_le_of_left hA.2
      exact hmin))

-- Package for fuzzy set theory
structure FuzzySetPackage where
  universe : Type
  fuzzySet : FuzzySet universe
  operations : FuzzySetOperations universe
  operationsClosed : operations.complementProperty ∧ operations.unionProperty ∧ operations.intersectionProperty

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse
