import HautevilleHouse.FuzzyLogicCanonicalLaneLean.Defuzzification

namespace HautevilleHouse
namespace FuzzyLogicCanonicalLaneLean

structure ApproximateReasoningPackage where
  inferenceMechanism : Type
  modusPonens : Prop
  compositionality : Prop
  interpolation : Prop

structure ApproximateReasoningEvidence (P : ApproximateReasoningPackage) where
  modusPonensClosed : P.modusPonens
  compositionalityClosed : P.compositionality
  interpolationClosed : P.interpolation

def ApproximateReasoningClosed (P : ApproximateReasoningPackage) : Prop :=
  P.modusPonens ∧ P.compositionality ∧ P.interpolation

theorem approximate_reasoning_closed_from_evidence (P : ApproximateReasoningPackage) (E : ApproximateReasoningEvidence P) :
    ApproximateReasoningClosed P := by
  exact And.intro E.modusPonensClosed (And.intro E.compositionalityClosed E.interpolationClosed)

end FuzzyLogicCanonicalLaneLean
end HautevilleHouse