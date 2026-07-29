import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure UniformDistributionModOnePackage where
  sequence : ℕ → ℝ
  fractionalParts : ℕ → Set ℝ
  evenlyDistributed : Prop
  weylCriterion : Prop
  growthCondition : Prop

structure UniformDistributionModOneEvidence (U : UniformDistributionModOnePackage) where
  evenlyDistributedClosed : U.evenlyDistributed
  weylCriterionClosed : U.weylCriterion
  growthConditionClosed : U.growthCondition

def UniformDistributionModOneClosed (U : UniformDistributionModOnePackage) : Prop :=
  U.evenlyDistributed ∧ U.weylCriterion ∧ U.growthCondition

theorem uniform_distribution_mod_one_closed_from_evidence
    (U : UniformDistributionModOnePackage) (E : UniformDistributionModOneEvidence U) :
    UniformDistributionModOneClosed U := by
  exact And.intro E.evenlyDistributedClosed (And.intro E.weylCriterionClosed E.growthConditionClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse