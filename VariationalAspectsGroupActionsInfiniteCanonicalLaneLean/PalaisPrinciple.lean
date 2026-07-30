import VariationalAspectsGroupActionsInfiniteCanonicalLaneLean.InvariantFunctionalStructure

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure PalaisPrinciplePackage {I : InvariantFunctionalPackage} (G : Type u) where
  groupAction : G → I.domain → I.domain
  sliceTheoremHolds : Prop
  equivariantDeformation : Prop
  criticalPointReduction : Prop

structure PalaisPrincipleEvidence {I : InvariantFunctionalPackage} {G : Type u}
    (P : PalaisPrinciplePackage G) where
  sliceTheoremHoldsClosed : P.sliceTheoremHolds
  equivariantDeformationClosed : P.equivariantDeformation
  criticalPointReductionClosed : P.criticalPointReduction

def PalaisPrincipleClosed {I : InvariantFunctionalPackage} {G : Type u}
    (P : PalaisPrinciplePackage G) : Prop :=
  P.sliceTheoremHolds ∧ P.equivariantDeformation ∧ P.criticalPointReduction

theorem palais_principle_closed_from_evidence {I : InvariantFunctionalPackage} {G : Type u}
    (P : PalaisPrinciplePackage G) (E : PalaisPrincipleEvidence P) :
    PalaisPrincipleClosed P := by
  exact And.intro E.sliceTheoremHoldsClosed
    (And.intro E.equivariantDeformationClosed E.criticalPointReductionClosed)

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse