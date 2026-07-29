import DistributionModuloOneTheoremCanonicalLaneLean.BridgeLemmas

/-!
# Equidistribution Package
-/

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure EquidistributionPackage where
  sequenceType : Type u
  moduloOne : sequenceType → (ℕ → ℝ)
  uniformlyDistributed : Prop
  weylCriterionSatisfied : Prop

def EquidistributionClosed (E : EquidistributionPackage) : Prop :=
  E.uniformlyDistributed ∧ E.weylCriterionSatisfied

theorem equidistribution_closed_from_evidence (E : EquidistributionPackage)
    (hUnif : E.uniformlyDistributed) (hWeyl : E.weylCriterionSatisfied) :
    EquidistributionClosed E := by
  exact And.intro hUnif hWeyl

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
