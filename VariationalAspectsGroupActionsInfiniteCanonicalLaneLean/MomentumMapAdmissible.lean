import canonicalLaneMathlib.AdmissibleClass

/-!
# Momentum Map Admissible Class

This module defines the admissible object for momentum maps under group actions.
-/

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure MomentumMapAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  symplecticForm : Prop
  groupAction : Prop
  momentumMap : space → Type v
  properMomentum : Prop
  conclusion : properMomentum

structure MomentumMapEndgameState where
  object : MomentumMapAdmittedObject

def MomentumMapWitnessClosed (O : MomentumMapAdmittedObject) : Prop :=
  O.properMomentum

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse
