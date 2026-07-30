import VariationalAspectsGroupActionsInfiniteCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure InvariantFunctionalPackage where
  functional : Type
  domain : Type
  actionInvariance : Prop
  differentiable : Prop
  criticalPointsCharacterized : Prop

structure InvariantFunctionalEvidence (I : InvariantFunctionalPackage) where
  actionInvarianceClosed : I.actionInvariance
  differentiableClosed : I.differentiable
  criticalPointsCharacterizedClosed : I.criticalPointsCharacterized

def InvariantFunctionalClosed (I : InvariantFunctionalPackage) : Prop :=
  I.actionInvariance ∧ I.differentiable ∧ I.criticalPointsCharacterized

theorem invariant_functional_closed_from_evidence (I : InvariantFunctionalPackage)
    (E : InvariantFunctionalEvidence I) : InvariantFunctionalClosed I := by
  exact And.intro E.actionInvarianceClosed
    (And.intro E.differentiableClosed E.criticalPointsCharacterizedClosed)

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse