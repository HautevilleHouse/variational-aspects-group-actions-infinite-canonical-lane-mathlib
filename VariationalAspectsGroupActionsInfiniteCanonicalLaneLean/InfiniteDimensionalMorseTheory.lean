import VariationalAspectsGroupActionsInfiniteCanonicalLaneLean.PalaisPrinciple

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure MorseTheoryPackage {I : InvariantFunctionalPackage} {G : Type u}
    (P : PalaisPrinciplePackage G) where
  hessianDefined : Prop
  indexFinite : Prop
  morseInequalities : Prop
  criticalPointCount : Prop

structure MorseTheoryEvidence {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} (M : MorseTheoryPackage P) where
  hessianDefinedClosed : M.hessianDefined
  indexFiniteClosed : M.indexFinite
  morseInequalitiesClosed : M.morseInequalities
  criticalPointCountClosed : M.criticalPointCount

def MorseTheoryClosed {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} (M : MorseTheoryPackage P) : Prop :=
  M.hessianDefined ∧ M.indexFinite ∧ M.morseInequalities ∧ M.criticalPointCount

theorem morse_theory_closed_from_evidence {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} (M : MorseTheoryPackage P) (E : MorseTheoryEvidence M) :
    MorseTheoryClosed M := by
  exact And.intro E.hessianDefinedClosed
    (And.intro E.indexFiniteClosed
      (And.intro E.morseInequalitiesClosed E.criticalPointCountClosed))

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse