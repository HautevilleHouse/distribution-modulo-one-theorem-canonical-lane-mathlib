import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure WeylCriterionPackage where
  exponentialSums : (ℕ → ℂ)
  limitCondition : Prop
  equidistributionEquivalent : Prop
  weylEquidistributionTheorem : Prop

structure WeylCriterionEvidence (W : WeylCriterionPackage) where
  limitConditionClosed : W.limitCondition
  equidistributionEquivalentClosed : W.equidistributionEquivalent
  weylEquidistributionTheoremClosed : W.weylEquidistributionTheorem

def WeylCriterionClosed (W : WeylCriterionPackage) : Prop :=
  W.limitCondition ∧ W.equidistributionEquivalent ∧ W.weylEquidistributionTheorem

theorem weyl_criterion_closed_from_evidence (W : WeylCriterionPackage)
    (E : WeylCriterionEvidence W) : WeylCriterionClosed W := by
  exact And.intro E.limitConditionClosed
    (And.intro E.equidistributionEquivalentClosed E.weylEquidistributionTheoremClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse