import DistributionModuloOneTheoremCanonicalLaneLean.EquidistributionPackage

/-!
# Weyl Criterion Package
-/

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure WeylCriterionPackage {E : EquidistributionPackage} where
  exponentialSums : Prop
  frequencyCharacter : Prop
  limitBehavior : Prop
  weylSumZero : Prop

def WeylCriterionClosed {E : EquidistributionPackage} (W : WeylCriterionPackage E) : Prop :=
  W.exponentialSums ∧ W.frequencyCharacter ∧ W.limitBehavior ∧ W.weylSumZero

theorem weyl_criterion_closed_from_evidence {E : EquidistributionPackage}
    (W : WeylCriterionPackage E) (hExp : W.exponentialSums) (hFreq : W.frequencyCharacter)
    (hLimit : W.limitBehavior) (hZero : W.weylSumZero) :
    WeylCriterionClosed W := by
  exact And.intro hExp (And.intro hFreq (And.intro hLimit hZero))

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
