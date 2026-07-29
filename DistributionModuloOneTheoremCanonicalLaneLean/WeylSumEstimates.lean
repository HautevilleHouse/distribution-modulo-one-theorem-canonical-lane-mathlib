import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure WeylSumEstimatesPackage where
  rationalApproximation : Prop
  vanDerCorputInequality : Prop
  kusminLandauInequality : Prop
  exponentialSumBoundRefined : Prop

structure WeylSumEstimatesEvidence (W : WeylSumEstimatesPackage) where
  rationalApproximationClosed : W.rationalApproximation
  vanDerCorputInequalityClosed : W.vanDerCorputInequality
  kusminLandauInequalityClosed : W.kusminLandauInequality
  exponentialSumBoundRefinedClosed : W.exponentialSumBoundRefined

def WeylSumEstimatesClosed (W : WeylSumEstimatesPackage) : Prop :=
  W.rationalApproximation ∧ W.vanDerCorputInequality ∧ W.kusminLandauInequality ∧ W.exponentialSumBoundRefined

theorem weyl_sum_estimates_closed_from_evidence (W : WeylSumEstimatesPackage)
    (Ev : WeylSumEstimatesEvidence W) : WeylSumEstimatesClosed W := by
  exact And.intro Ev.rationalApproximationClosed (And.intro Ev.vanDerCorputInequalityClosed
    (And.intro Ev.kusminLandauInequalityClosed Ev.exponentialSumBoundRefinedClosed))

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse