import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure EquidistributionCriteriaPackage where
  weylCriterion : Prop
  exponentialSumBound : Prop
  discrepancyBound : Prop
  uniformDistributionDefined : Prop

structure EquidistributionCriteriaEvidence (E : EquidistributionCriteriaPackage) where
  weylCriterionClosed : E.weylCriterion
  exponentialSumBoundClosed : E.exponentialSumBound
  discrepancyBoundClosed : E.discrepancyBound
  uniformDistributionDefinedClosed : E.uniformDistributionDefined

def EquidistributionCriteriaClosed (E : EquidistributionCriteriaPackage) : Prop :=
  E.weylCriterion ∧ E.exponentialSumBound ∧ E.discrepancyBound ∧ E.uniformDistributionDefined

theorem equidistribution_criteria_closed_from_evidence (E : EquidistributionCriteriaPackage)
    (Ev : EquidistributionCriteriaEvidence E) : EquidistributionCriteriaClosed E := by
  exact And.intro Ev.weylCriterionClosed (And.intro Ev.exponentialSumBoundClosed
    (And.intro Ev.discrepancyBoundClosed Ev.uniformDistributionDefinedClosed))

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse