import VariationalAspectsGroupActionsInfiniteCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VariationalGroupActionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse