import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure EquidistributionPackage where
  weylCriterionApplied : Prop
  exponentialSumVanishes : Prop
  densityInUnitInterval : Prop
  uniformDistribution : Prop

structure EquidistributionEvidence (P : EquidistributionPackage) where
  weylCriterionAppliedClosed : P.weylCriterionApplied
  exponentialSumVanishesClosed : P.exponentialSumVanishes
  densityInUnitIntervalClosed : P.densityInUnitInterval
  uniformDistributionClosed : P.uniformDistribution

def EquidistributionClosed (P : EquidistributionPackage) : Prop :=
  P.weylCriterionApplied ∧ P.exponentialSumVanishes ∧
  P.densityInUnitInterval ∧ P.uniformDistribution

theorem equidistribution_closed_from_evidence (P : EquidistributionPackage)
    (E : EquidistributionEvidence P) : EquidistributionClosed P := by
  exact And.intro E.weylCriterionAppliedClosed
    (And.intro E.exponentialSumVanishesClosed
      (And.intro E.densityInUnitIntervalClosed E.uniformDistributionClosed))

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse