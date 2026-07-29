import DistributionModuloOneTheoremCanonicalLaneLean.KroneckerSequence

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure WeylCriterionPackage (K : KroneckerSequencePackage) where
  exponentialSumVanishes : Prop
  fourierCoefficientZero : Prop
  equidistributionEquivalent : Prop

structure WeylCriterionEvidence {K : KroneckerSequencePackage} (W : WeylCriterionPackage K) where
  exponentialSumVanishesClosed : W.exponentialSumVanishes
  fourierCoefficientZeroClosed : W.fourierCoefficientZero
  equidistributionEquivalentClosed : W.equidistributionEquivalent

def WeylCriterionClosed {K : KroneckerSequencePackage} (W : WeylCriterionPackage K) : Prop :=
  W.exponentialSumVanishes ∧ W.fourierCoefficientZero ∧ W.equidistributionEquivalent

theorem weyl_criterion_closed_from_evidence {K : KroneckerSequencePackage} (W : WeylCriterionPackage K) (E : WeylCriterionEvidence W) :
    WeylCriterionClosed W := by
  exact And.intro E.exponentialSumVanishesClosed (And.intro E.fourierCoefficientZeroClosed E.equidistributionEquivalentClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
