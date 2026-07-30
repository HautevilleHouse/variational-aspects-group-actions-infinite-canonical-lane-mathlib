import VariationalAspectsGroupActionsInfiniteCanonicalLaneLean.MinimaxPrinciple

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure EndpointClassificationPackage {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} {M : MorseTheoryPackage P}
    {MP : MinimaxPrinciplePackage M} where
  targetSpace : Type
  groupActionComplete : Prop
  minimaFound : Prop
  criticalPointMatches : Prop

structure EndpointClassificationEvidence {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} {M : MorseTheoryPackage P}
    {MP : MinimaxPrinciplePackage M}
    (E : EndpointClassificationPackage MP) where
  groupActionCompleteClosed : E.groupActionComplete
  minimaFoundClosed : E.minimaFound
  criticalPointMatchesClosed : E.criticalPointMatches

def EndpointClassificationClosed {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} {M : MorseTheoryPackage P}
    {MP : MinimaxPrinciplePackage M}
    (E : EndpointClassificationPackage MP) : Prop :=
  E.groupActionComplete ∧ E.minimaFound ∧ E.criticalPointMatches

theorem endpoint_classification_closed_from_evidence {I : InvariantFunctionalPackage} {G : Type u}
    {P : PalaisPrinciplePackage G} {M : MorseTheoryPackage P}
    {MP : MinimaxPrinciplePackage M}
    (Epkg2 : EndpointClassificationPackage MP) (Ev : EndpointClassificationEvidence Epkg2) :
    EndpointClassificationClosed Epkg2 := by
  exact And.intro Ev.groupActionCompleteClosed
    (And.intro Ev.minimaFoundClosed Ev.criticalPointMatchesClosed)

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse