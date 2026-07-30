import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure VariationalGroupAction (G : Type) (M : Type) [Group G] [SMul G M] where
  actsSmoothly : Prop
  preservesVariationalForm : Prop
  equivariantCriticalPoint : Prop
  symmetryReduction : Prop

structure VariationalGroupActionEvidence {G M : Type} [Group G] [SMul G M] (V : VariationalGroupAction G M) where
  actsSmoothlyClosed : V.actsSmoothly
  preservesVariationalFormClosed : V.preservesVariationalForm
  equivariantCriticalPointClosed : V.equivariantCriticalPoint
  symmetryReductionClosed : V.symmetryReduction

def VariationalGroupActionClosed {G M : Type} [Group G] [SMul G M] (V : VariationalGroupAction G M) : Prop :=
  V.actsSmoothly ∧ V.preservesVariationalForm ∧ V.equivariantCriticalPoint ∧ V.symmetryReduction

theorem variational_group_action_closed_from_evidence {G M : Type} [Group G] [SMul G M]
    (V : VariationalGroupAction G M) (E : VariationalGroupActionEvidence V) :
    VariationalGroupActionClosed V := by
  exact And.intro E.actsSmoothlyClosed
    (And.intro E.preservesVariationalFormClosed
      (And.intro E.equivariantCriticalPointClosed E.symmetryReductionClosed))

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse