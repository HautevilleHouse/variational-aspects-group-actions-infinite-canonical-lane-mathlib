import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure CriticalOrbitPackage {G : GroupActionBase} {A : AdmissibleClass} (F : InvariantFunctionalPackage G A) where
  orbitSpace : Type u
  projection : A.object → orbitSpace
  criticalOrbits : Set orbitSpace
  orbitSpaceClosed : Prop
  criticalOrbitsCharacterized : Prop

structure CriticalOrbitEvidence {G : GroupActionBase} {A : AdmissibleClass}
    {F : InvariantFunctionalPackage G A} (O : CriticalOrbitPackage F) where
  orbitSpaceClosed : O.orbitSpaceClosed
  criticalOrbitsCharacterizedClosed : O.criticalOrbitsCharacterized

def CriticalOrbitClosed {G : GroupActionBase} {A : AdmissibleClass}
    {F : InvariantFunctionalPackage G A} (O : CriticalOrbitPackage F) : Prop :=
  O.orbitSpaceClosed ∧ O.criticalOrbitsCharacterized

theorem critical_orbit_closed_from_evidence
    {G : GroupActionBase} {A : AdmissibleClass}
    {F : InvariantFunctionalPackage G A} (O : CriticalOrbitPackage F)
    (E : CriticalOrbitEvidence O) : CriticalOrbitClosed O := by
  exact And.intro E.orbitSpaceClosed E.criticalOrbitsCharacterizedClosed

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse