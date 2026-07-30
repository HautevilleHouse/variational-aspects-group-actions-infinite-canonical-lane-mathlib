import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure VariationalGroupActionObject where
  groupAction : Type u
  space : Type v
  actionMap : groupAction → space → space
  invariantFunctional : space → ℝ
  smoothness : Prop
  variationalPrinciple : Prop
  conclusion : variationalPrinciple

def VariationalGroupActionWitnessClosed (O : VariationalGroupActionObject) : Prop :=
  O.variationalPrinciple

structure AdmissibleClass where
  object : VariationalGroupActionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VariationalGroupActionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse