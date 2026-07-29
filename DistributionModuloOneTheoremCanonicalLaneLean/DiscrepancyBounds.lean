import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure DiscrepancyBoundsPackage where
  erdosTuránInequality : Prop
  starDiscrepancyBound : Prop
  extremeDiscrepancyBound : Prop
  discrepancyEquivalence : Prop

structure DiscrepancyBoundsEvidence (D : DiscrepancyBoundsPackage) where
  erdosTuránInequalityClosed : D.erdosTuránInequality
  starDiscrepancyBoundClosed : D.starDiscrepancyBound
  extremeDiscrepancyBoundClosed : D.extremeDiscrepancyBound
  discrepancyEquivalenceClosed : D.discrepancyEquivalence

def DiscrepancyBoundsClosed (D : DiscrepancyBoundsPackage) : Prop :=
  D.erdosTuránInequality ∧ D.starDiscrepancyBound ∧ D.extremeDiscrepancyBound ∧ D.discrepancyEquivalence

theorem discrepancy_bounds_closed_from_evidence (D : DiscrepancyBoundsPackage)
    (Ev : DiscrepancyBoundsEvidence D) : DiscrepancyBoundsClosed D := by
  exact And.intro Ev.erdosTuránInequalityClosed (And.intro Ev.starDiscrepancyBoundClosed
    (And.intro Ev.extremeDiscrepancyBoundClosed Ev.discrepancyEquivalenceClosed))

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse