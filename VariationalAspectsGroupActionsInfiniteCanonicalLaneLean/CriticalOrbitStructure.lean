import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure CriticalOrbitStructurePackage where
  group : Type u
  space : Type v
  action : group → space → space
  variationalFunctional : space → ℝ
  criticalOrbits : Set (space)
  orbitCondition : ∀ x : space, x ∈ criticalOrbits ↔
    (∀ g : group, variationalFunctional (action g x) = variationalFunctional x ∧
     (∀ v : space, derivativeVariationalFunctional x v = 0))
  derivativeVariationalFunctional : space → space → ℝ

structure CriticalOrbitStructureEvidence (P : CriticalOrbitStructurePackage) where
  orbitConditionClosed : P.orbitCondition

def CriticalOrbitStructureClosed (P : CriticalOrbitStructurePackage) : Prop :=
  P.orbitCondition

theorem critical_orbit_structure_closed_from_evidence (P : CriticalOrbitStructurePackage)
    (E : CriticalOrbitStructureEvidence P) : CriticalOrbitStructureClosed P := by
  exact E.orbitConditionClosed

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse