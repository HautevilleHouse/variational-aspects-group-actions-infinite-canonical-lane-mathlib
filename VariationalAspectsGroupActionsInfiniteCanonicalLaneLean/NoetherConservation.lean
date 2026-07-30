import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure NoetherConservationLaw (G : Type) [Group G] (M : Type) [SMul G M] [TopologicalSpace M] where
  lagrangian : M → ℝ
  groupAction : G → M → M
  invariantLagrangian : Prop
  conservedQuantity : Type
  momentumMapDefined : (M → ℝ) → ConservedQuantity
  conservationClosed : Prop

structure NoetherConservationLawEvidence (N : NoetherConservationLaw G M) where
  invariantLagrangianClosed : N.invariantLagrangian
  conservationClosedClosed : N.conservationClosed

def NoetherConservationLawClosed (N : NoetherConservationLaw G M) : Prop :=
  N.invariantLagrangian ∧ N.conservationClosed

theorem noether_conservation_law_closed_from_evidence (N : NoetherConservationLaw G M)
    (E : NoetherConservationLawEvidence N) : NoetherConservationLawClosed N := by
  exact And.intro E.invariantLagrangianClosed E.conservationClosedClosed

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse