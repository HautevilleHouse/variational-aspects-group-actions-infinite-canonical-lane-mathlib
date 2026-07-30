import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure GroupActionPropernessPackage where
  group : Type u
  groupTopology : TopologicalSpace group
  space : Type v
  spaceTopology : TopologicalSpace space
  action : group → space → space
  actionContinuous : Continuous (λ x : group × space => action x.1 x.2)
  properAction : Prop
  isometricAction : Prop
  sliceExists : Prop

structure GroupActionPropernessEvidence (G : GroupActionPropernessPackage) where
  properActionClosed : G.properAction
  isometricActionClosed : G.isometricAction
  sliceExistsClosed : G.sliceExists

def GroupActionPropernessClosed (G : GroupActionPropernessPackage) : Prop :=
  G.properAction ∧ G.isometricAction ∧ G.sliceExists

theorem group_action_properness_closed_from_evidence
    (G : GroupActionPropernessPackage) (E : GroupActionPropernessEvidence G) :
    GroupActionPropernessClosed G := by
  exact And.intro E.properActionClosed (And.intro E.isometricActionClosed E.sliceExistsClosed)

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse