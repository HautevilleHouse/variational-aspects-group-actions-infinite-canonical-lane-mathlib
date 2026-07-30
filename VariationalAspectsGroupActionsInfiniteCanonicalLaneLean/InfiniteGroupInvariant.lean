import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure InfiniteGroupInvariantPackage where
  group : Type u
  space : Type v
  action : group → space → space
  invariants : Set (space → ℝ)
  invariantProperty : ∀ f ∈ invariants, ∀ g : group, ∀ x : space, f (action g x) = f x

structure InfiniteGroupInvariantEvidence (P : InfiniteGroupInvariantPackage) where
  invariantPropertyClosed : P.invariantProperty

def InfiniteGroupInvariantClosed (P : InfiniteGroupInvariantPackage) : Prop :=
  P.invariantProperty

theorem infinite_group_invariant_closed_from_evidence (P : InfiniteGroupInvariantPackage)
    (E : InfiniteGroupInvariantEvidence P) : InfiniteGroupInvariantClosed P := by
  exact E.invariantPropertyClosed

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse