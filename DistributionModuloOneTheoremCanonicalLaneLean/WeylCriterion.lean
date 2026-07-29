import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure WeylCriterionPackage where
  sequence : ℕ → ℝ
  exponentialSums : ℕ → ℂ
  limitCondition : Prop
  harmonicAnalysis : Prop
  riemannLebesgueType : Prop

structure WeylCriterionEvidence (W : WeylCriterionPackage) where
  limitConditionClosed : W.limitCondition
  harmonicAnalysisClosed : W.harmonicAnalysis
  riemannLebesgueTypeClosed : W.riemannLebesgueType

def WeylCriterionClosed (W : WeylCriterionPackage) : Prop :=
  W.limitCondition ∧ W.harmonicAnalysis ∧ W.riemannLebesgueType

theorem weyl_criterion_closed_from_evidence
    (W : WeylCriterionPackage) (E : WeylCriterionEvidence W) :
    WeylCriterionClosed W := by
  exact And.intro E.limitConditionClosed (And.intro E.harmonicAnalysisClosed E.riemannLebesgueTypeClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse