import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure PalaisSmaleConditionPackage where
  HilbertManifold : Type u
  manifoldTopology : TopologicalSpace HilbertManifold
  riemannianMetric : Set HilbertManifold → ℝ
  functional : HilbertManifold → ℝ
  functionalSmooth : Prop
  groupAction : Type v → HilbertManifold → HilbertManifold
  palaisSmaleCondition : Prop
  criticalPointsExistence : Prop
  deformationLemmaHolds : Prop

structure PalaisSmaleConditionEvidence (P : PalaisSmaleConditionPackage) where
  palaisSmaleConditionClosed : P.palaisSmaleCondition
  criticalPointsExistenceClosed : P.criticalPointsExistence
  deformationLemmaHoldsClosed : P.deformationLemmaHolds

def PalaisSmaleConditionClosed (P : PalaisSmaleConditionPackage) : Prop :=
  P.palaisSmaleCondition ∧ P.criticalPointsExistence ∧ P.deformationLemmaHolds

theorem palais_smale_condition_closed_from_evidence
    (P : PalaisSmaleConditionPackage) (E : PalaisSmaleConditionEvidence P) :
    PalaisSmaleConditionClosed P := by
  exact And.intro E.palaisSmaleConditionClosed (And.intro E.criticalPointsExistenceClosed E.deformationLemmaHoldsClosed)

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse