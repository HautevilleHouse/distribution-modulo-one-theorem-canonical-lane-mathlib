import DistributionModuloOneTheoremCanonicalLaneLean.DiscrepancyBounds

/-!
# Classical Hardy-Littlewood Package
-/

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure ClassicalHardyLittlewoodPackage {E : EquidistributionPackage} where
  fractionalPart : ℕ → ℝ
  threeDistance : Prop
  threeGap : Prop
  steinhausConjecture : Prop

def ClassicalHardyLittlewoodClosed {E : EquidistributionPackage}
    (H : ClassicalHardyLittlewoodPackage E) : Prop :=
  H.threeDistance ∧ H.threeGap ∧ H.steinhausConjecture

theorem classical_hardy_littlewood_closed_from_evidence {E : EquidistributionPackage}
    (H : ClassicalHardyLittlewoodPackage E) (hDist : H.threeDistance)
    (hGap : H.threeGap) (hStein : H.steinhausConjecture) :
    ClassicalHardyLittlewoodClosed H := by
  exact And.intro hDist (And.intro hGap hStein)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
