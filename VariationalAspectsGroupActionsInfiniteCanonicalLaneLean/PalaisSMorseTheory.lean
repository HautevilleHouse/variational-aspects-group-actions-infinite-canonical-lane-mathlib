import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure PalaisSMorseTheoryPackage where
  group : Type u
  space : Type v
  action : group → space → space
  variationalFunctional : space → ℝ
  criticalSets : Set (Set space)
  palaisSmaleCondition : ∀ (x_n : ℕ → space), (∀ n, derivativeVariationalFunctional (x_n n) → 0) →
    ∃ subsequence, Cauchy (subsequence)
  morseIndex : space → ℕ
  derivativeVariationalFunctional : space → (space → ℝ)

structure PalaisSMorseTheoryEvidence (P : PalaisSMorseTheoryPackage) where
  palaisSmaleConditionClosed : P.palaisSmaleCondition

def PalaisSMorseTheoryClosed (P : PalaisSMorseTheoryPackage) : Prop :=
  P.palaisSmaleCondition

theorem palais_s_morse_theory_closed_from_evidence (P : PalaisSMorseTheoryPackage)
    (E : PalaisSMorseTheoryEvidence P) : PalaisSMorseTheoryClosed P := by
  exact E.palaisSmaleConditionClosed

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse