import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VariationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  action : GroupAction carrier
  invariantMeasure : Set carrier → ℝ
  functional : (carrier → ℝ) → ℝ

structure AdmittedVariationalObject where
  space : VariationalSpace
  actionProper : Prop
  functionalSmooth : Prop
  criticalPointExists : Prop
  conclusion : criticalPointExists

structure EndgameState where
  object : AdmittedVariationalObject

def VariationalWitnessClosed (O : AdmittedVariationalObject) : Prop :=
  O.criticalPointExists

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse