import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure InfiniteDimCriticalPointPackage {G : GroupActionBase} {A : AdmissibleClass}
    (F : InvariantFunctionalPackage G A) (O : CriticalOrbitPackage F) where
  criticalPointsInOrbitSpace : Prop
  morseTheoryApplicable : Prop
  indexDefined : Prop
  criticalPointsInOrbitSpaceClosed : criticalPointsInOrbitSpace
  morseTheoryApplicableClosed : morseTheoryApplicable
  indexDefinedClosed : indexDefined

structure InfiniteDimCriticalPointEvidence {G : GroupActionBase} {A : AdmissibleClass}
    {F : InvariantFunctionalPackage G A} {O : CriticalOrbitPackage F}
    (P : InfiniteDimCriticalPointPackage F O) where
  criticalPointsInOrbitSpaceClosed : P.criticalPointsInOrbitSpace
  morseTheoryApplicableClosed : P.morseTheoryApplicable
  indexDefinedClosed : P.indexDefined

def InfiniteDimCriticalPointClosed {G : GroupActionBase} {A : AdmissibleClass}
    {F : InvariantFunctionalPackage G A} {O : CriticalOrbitPackage F}
    (P : InfiniteDimCriticalPointPackage F O) : Prop :=
  P.criticalPointsInOrbitSpace ∧ P.morseTheoryApplicable ∧ P.indexDefined

theorem infinite_dim_critical_point_closed_from_evidence
    {G : GroupActionBase} {A : AdmissibleClass}
    {F : InvariantFunctionalPackage G A} {O : CriticalOrbitPackage F}
    (P : InfiniteDimCriticalPointPackage F O) (E : InfiniteDimCriticalPointEvidence P) :
    InfiniteDimCriticalPointClosed P := by
  exact And.intro E.criticalPointsInOrbitSpaceClosed
    (And.intro E.morseTheoryApplicableClosed E.indexDefinedClosed)

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse