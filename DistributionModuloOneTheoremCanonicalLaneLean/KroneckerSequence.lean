import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure KroneckerSequencePackage where
  alpha : ℝ
  sequence : ℕ → ℝ := λ n => n * alpha
  fractionalParts : ℕ → Set ℝ
  equidistributionCondition : Prop
  diophantineCondition : Prop
  rationalApprox : Prop

structure KroneckerSequenceEvidence (K : KroneckerSequencePackage) where
  equidistributionConditionClosed : K.equidistributionCondition
  diophantineConditionClosed : K.diophantineCondition
  rationalApproxClosed : K.rationalApprox

def KroneckerSequenceClosed (K : KroneckerSequencePackage) : Prop :=
  K.equidistributionCondition ∧ K.diophantineCondition ∧ K.rationalApprox

theorem kronecker_sequence_closed_from_evidence
    (K : KroneckerSequencePackage) (E : KroneckerSequenceEvidence K) :
    KroneckerSequenceClosed K := by
  exact And.intro E.equidistributionConditionClosed (And.intro E.diophantineConditionClosed E.rationalApproxClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse