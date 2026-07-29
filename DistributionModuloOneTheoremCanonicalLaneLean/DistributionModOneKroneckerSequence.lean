import DistributionModuloOneTheoremCanonicalLaneLean.DistributionModOneAdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure KroneckerSequencePackage where
  alpha : ℝ
  theta : ℝ
  sequence : ℕ → ℝ
  equidistributed : Prop
  weylCriterionSatisfied : Prop
  exponentialSumBound : Prop

structure KroneckerSequenceEvidence (K : KroneckerSequencePackage) where
  equidistributedClosed : K.equidistributed
  weylCriterionSatisfiedClosed : K.weylCriterionSatisfied
  exponentialSumBoundClosed : K.exponentialSumBound

def KroneckerSequenceClosed (K : KroneckerSequencePackage) : Prop :=
  K.equidistributed ∧ K.weylCriterionSatisfied ∧ K.exponentialSumBound

theorem kronecker_sequence_closed_from_evidence (K : KroneckerSequencePackage) (E : KroneckerSequenceEvidence K) :
    KroneckerSequenceClosed K := by
  exact And.intro E.equidistributedClosed (And.intro E.weylCriterionSatisfiedClosed E.exponentialSumBoundClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
