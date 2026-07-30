import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalAspectsGroupActionsInfiniteCanonicalLaneLean

structure LusternikSchnirelmannCategory (M : Type) [TopologicalSpace M] where
  catValue : ℕ
  criticalPointLowerBound : Prop
  multiplicityOfSymmetries : Prop
  categoryFinite : Prop

structure LusternikSchnirelmannCategoryEvidence (LS : LusternikSchnirelmannCategory M) where
  catValueDefined : LS.catValue = LS.catValue
  criticalPointLowerBoundClosed : LS.criticalPointLowerBound
  multiplicityOfSymmetriesClosed : LS.multiplicityOfSymmetries
  categoryFiniteClosed : LS.categoryFinite

def LusternikSchnirelmannCategoryClosed (LS : LusternikSchnirelmannCategory M) : Prop :=
  LS.criticalPointLowerBound ∧ LS.multiplicityOfSymmetries ∧ LS.categoryFinite

theorem lusternik_schnirelmann_category_closed_from_evidence (LS : LusternikSchnirelmannCategory M)
    (E : LusternikSchnirelmannCategoryEvidence LS) : LusternikSchnirelmannCategoryClosed LS := by
  exact And.intro E.criticalPointLowerBoundClosed
    (And.intro E.multiplicityOfSymmetriesClosed E.categoryFiniteClosed)

end VariationalAspectsGroupActionsInfiniteCanonicalLaneLean
end HautevilleHouse