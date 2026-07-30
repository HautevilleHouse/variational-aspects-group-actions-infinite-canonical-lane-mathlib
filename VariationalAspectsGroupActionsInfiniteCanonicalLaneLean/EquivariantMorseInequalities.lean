import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure EquivariantMorseInequalitiesPackage {G : GroupActionBase} {A : AdmissibleClass}
    (F : InvariantFunctionalPackage G A) (O : CriticalOrbitPackage F)
    (P : InfiniteDimCriticalPointPackage F O) (S : PalaisSmaleConditionPackage F O) where
  moduleStructure : Type u
  bettiNumbers : Nat → Nat
  morseInequalitiesHold : Prop
  equivariantCohomologyUsed : Prop

structure EquivariantMorseInequalitiesEvidence {G : GroupActionBase} {A : AdmissibleClass}
    {F : InvariantFunctionalPackage G A} {O : CriticalOrbitPackage F}
    {P : InfiniteDimCriticalPointPackage F O} {S : PalaisSmaleConditionPackage F O}
    (E : EquivariantMorseInequalitiesPackage F O P S) where
  morseInequalitiesHoldClosed : E.morseInequalitiesHold
  equivariantCohomologyUsedClosed : E.equivariantCohomologyUsed

def EquivariantMorseInequalitiesClosed {G : GroupActionBase} {A : AdmissibleClass}
    {F : InvariantFunctionalPackage G A} {O : CriticalOrbitPackage F}
    {P : InfiniteDimCriticalPointPackage F O} {S : PalaisSmaleConditionPackage F O}
    (E : EquivariantMorseInequalitiesPackage F O P S) : Prop :=
  E.morseInequalitiesHold ∧ E.equivariantCohomologyUsed

theorem equivariant_morse_inequalities_closed_from_evidence
    {G : GroupActionBase} {A : AdmissibleClass}
    {F : InvariantFunctionalPackage G A} {O : CriticalOrbitPackage F}
    {P : InfiniteDimCriticalPointPackage F O} {S : PalaisSmaleConditionPackage F O}
    (E : EquivariantMorseInequalitiesPackage F O P S)
    (Sepkg : EquivariantMorseInequalitiesEvidence E) :
    EquivariantMorseInequalitiesClosed E := by
  exact And.intro Sepkg.morseInequalitiesHoldClosed Sepkg.equivariantCohomologyUsedClosed

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse