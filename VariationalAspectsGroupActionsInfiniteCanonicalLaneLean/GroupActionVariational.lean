import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure GroupActionVariationalPackage where
  group : Type u
  space : Type v
  action : group → space → space
  variationalFunctional : space → ℝ
  criticalPoints : Set space
  actionInvariance : ∀ g : group, ∀ x : space, variationalFunctional (action g x) = variationalFunctional x

structure GroupActionVariationalEvidence (P : GroupActionVariationalPackage) where
  actionInvarianceClosed : P.actionInvariance

def GroupActionVariationalClosed (P : GroupActionVariationalPackage) : Prop :=
  P.actionInvariance

theorem group_action_variational_closed_from_evidence (P : GroupActionVariationalPackage)
    (E : GroupActionVariationalEvidence P) : GroupActionVariationalClosed P := by
  exact E.actionInvarianceClosed

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse