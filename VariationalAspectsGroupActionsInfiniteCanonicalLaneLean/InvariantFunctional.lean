import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure InvariantFunctionalPackage {G : GroupActionBase} (A : AdmissibleClass) where
  action : G → A.object → A.object
  functional : A.object → ℝ
  invariantUnderAction : ∀ (g : G) (x : A.object), functional (action g x) = functional x
  variationalDerivative : Prop
  criticalPointsClosed : Prop

structure InvariantFunctionalEvidence {G : GroupActionBase} {A : AdmissibleClass}
    (F : InvariantFunctionalPackage G A) where
  invariantUnderActionClosed : F.invariantUnderAction
  variationalDerivativeClosed : F.variationalDerivative
  criticalPointsClosed : F.criticalPointsClosed

def InvariantFunctionalClosed {G : GroupActionBase} {A : AdmissibleClass}
    (F : InvariantFunctionalPackage G A) : Prop :=
  F.variationalDerivative ∧ F.criticalPointsClosed

theorem invariant_functional_closed_from_evidence
    {G : GroupActionBase} {A : AdmissibleClass}
    (F : InvariantFunctionalPackage G A) (E : InvariantFunctionalEvidence F) :
    InvariantFunctionalClosed F := by
  exact And.intro E.variationalDerivativeClosed E.criticalPointsClosed

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse