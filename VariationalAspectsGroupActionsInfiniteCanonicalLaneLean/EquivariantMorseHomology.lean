import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure EquivariantMorseHomologyPackage where
  group : Type u
  space : Type v
  action : group → space → space
  variationalFunctional : space → ℝ
  morseComplex : Type w
  boundaryOperator : morseComplex → morseComplex
  homologyGroups : ℕ → Type u
  equivariantChainComplex : Prop
  homologyComputed : Prop

structure EquivariantMorseHomologyEvidence (P : EquivariantMorseHomologyPackage) where
  equivariantChainComplexClosed : P.equivariantChainComplex
  homologyComputedClosed : P.homologyComputed

def EquivariantMorseHomologyClosed (P : EquivariantMorseHomologyPackage) : Prop :=
  P.equivariantChainComplex ∧ P.homologyComputed

theorem equivariant_morse_homology_closed_from_evidence (P : EquivariantMorseHomologyPackage)
    (E : EquivariantMorseHomologyEvidence P) : EquivariantMorseHomologyClosed P := by
  exact And.intro E.equivariantChainComplexClosed E.homologyComputedClosed

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse