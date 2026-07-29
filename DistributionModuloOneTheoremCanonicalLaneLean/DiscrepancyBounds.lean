import DistributionModuloOneTheoremCanonicalLaneLean.KroneckerApproximation

/-!
# Discrepancy Bounds Package
-/

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure DiscrepancyBoundsPackage {E : EquidistributionPackage} where
  starDiscrepancy : ℕ → ℝ
  lowDiscrepancyBound : Prop
  koksmaInequality : Prop
  effectiveRate : Prop

def DiscrepancyBoundsClosed {E : EquidistributionPackage}
    (D : DiscrepancyBoundsPackage E) : Prop :=
  D.lowDiscrepancyBound ∧ D.koksmaInequality ∧ D.effectiveRate

theorem discrepancy_bounds_closed_from_evidence {E : EquidistributionPackage}
    (D : DiscrepancyBoundsPackage E) (hLow : D.lowDiscrepancyBound)
    (hKok : D.koksmaInequality) (hEff : D.effectiveRate) :
    DiscrepancyBoundsClosed D := by
  exact And.intro hLow (And.intro hKok hEff)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
