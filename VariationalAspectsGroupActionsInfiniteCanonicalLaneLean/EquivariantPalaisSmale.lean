import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure EquivariantPalaisSmale (G : Type) [Group G] (M : Type) [TopologicalSpace M] [SMul G M] where
  functional : M → ℝ
  invariantUnderG : Prop
  psCondition : Prop
  equivariantGradient : Prop
  criticalOrbitCompactness : Prop

structure EquivariantPalaisSmaleEvidence {G M : Type} [Group G] [TopologicalSpace M] [SMul G M]
    (EPS : EquivariantPalaisSmale G M) where
  invariantUnderGClosed : EPS.invariantUnderG
  psConditionClosed : EPS.psCondition
  equivariantGradientClosed : EPS.equivariantGradient
  criticalOrbitCompactnessClosed : EPS.criticalOrbitCompactness

def EquivariantPalaisSmaleClosed {G M : Type} [Group G] [TopologicalSpace M] [SMul G M]
    (EPS : EquivariantPalaisSmale G M) : Prop :=
  EPS.invariantUnderG ∧ EPS.psCondition ∧ EPS.equivariantGradient ∧ EPS.criticalOrbitCompactness

theorem equivariant_palais_smale_closed_from_evidence {G M : Type} [Group G] [TopologicalSpace M] [SMul G M]
    (EPS : EquivariantPalaisSmale G M) (E : EquivariantPalaisSmaleEvidence EPS) :
    EquivariantPalaisSmaleClosed EPS := by
  exact And.intro E.invariantUnderGClosed
    (And.intro E.psConditionClosed
      (And.intro E.equivariantGradientClosed E.criticalOrbitCompactnessClosed))

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse