import HautevilleHouse.FuzzyLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure TnormPackage where
  tNorm : Type
  commutativity : Prop
  associativity : Prop
  monotonicity : Prop
  boundaryCondition : Prop

structure TnormEvidence (P : TnormPackage) where
  commutativityClosed : P.commutativity
  associativityClosed : P.associativity
  monotonicityClosed : P.monotonicity
  boundaryConditionClosed : P.boundaryCondition

def TnormClosed (P : TnormPackage) : Prop :=
  P.commutativity ∧ P.associativity ∧ P.monotonicity ∧ P.boundaryCondition

theorem tnorm_closed_from_evidence (P : TnormPackage) (E : TnormEvidence P) :
    TnormClosed P := by
  exact And.intro E.commutativityClosed (And.intro E.associativityClosed (And.intro E.monotonicityClosed E.boundaryConditionClosed))

structure TconormPackage where
  tConorm : Type
  commutativity : Prop
  associativity : Prop
  monotonicity : Prop
  boundaryCondition : Prop

structure TconormEvidence (P : TconormPackage) where
  commutativityClosed : P.commutativity
  associativityClosed : P.associativity
  monotonicityClosed : P.monotonicity
  boundaryConditionClosed : P.boundaryCondition

def TconormClosed (P : TconormPackage) : Prop :=
  P.commutativity ∧ P.associativity ∧ P.monotonicity ∧ P.boundaryCondition

theorem tconorm_closed_from_evidence (P : TconormPackage) (E : TconormEvidence P) :
    TconormClosed P := by
  exact And.intro E.commutativityClosed (And.intro E.associativityClosed (And.intro E.monotonicityClosed E.boundaryConditionClosed))

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse