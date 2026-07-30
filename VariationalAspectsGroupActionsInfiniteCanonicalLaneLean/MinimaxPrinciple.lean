import VariationalAspectsGroupActionsInfiniteCanonicalLaneLean.InfiniteDimensionalMorseTheory

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure MinimaxPrinciplePackage {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} {M : MorseTheoryPackage P} where
  minmaxValuesDefined : Prop
  palaisSmaleConditionHolds : Prop
  criticalValueCaptured : Prop
  minmaxCharacterization : Prop

structure MinimaxPrincipleEvidence {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} {M : MorseTheoryPackage P}
    (MP : MinimaxPrinciplePackage M) where
  minmaxValuesDefinedClosed : MP.minmaxValuesDefined
  palaisSmaleConditionHoldsClosed : MP.palaisSmaleConditionHolds
  criticalValueCapturedClosed : MP.criticalValueCaptured
  minmaxCharacterizationClosed : MP.minmaxCharacterization

def MinimaxPrincipleClosed {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} {M : MorseTheoryPackage P}
    (MP : MinimaxPrinciplePackage M) : Prop :=
  MP.minmaxValuesDefined ∧ MP.palaisSmaleConditionHolds ∧
  MP.criticalValueCaptured ∧ MP.minmaxCharacterization

theorem minimax_principle_closed_from_evidence {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} {M : MorseTheoryPackage P}
    (MP : MinimaxPrinciplePackage M) (E : MinimaxPrincipleEvidence MP) :
    MinimaxPrincipleClosed MP := by
  exact And.intro E.minmaxValuesDefinedClosed
    (And.intro E.palaisSmaleConditionHoldsClosed
      (And.intro E.criticalValueCapturedClosed E.minmaxCharacterizationClosed))

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse