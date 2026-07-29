import DistributionModuloOneTheoremCanonicalLaneLean.DistributionModOneAdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure UniformDistributionPackage where
  sequence : ℕ → ℝ
  interval : Set ℝ
  lengthOne : Prop
  uniformInInterval : Prop
  densityOne : Prop

structure UniformDistributionEvidence (U : UniformDistributionPackage) where
  uniformInIntervalClosed : U.uniformInInterval
  densityOneClosed : U.densityOne

def UniformDistributionClosed (U : UniformDistributionPackage) : Prop :=
  U.uniformInInterval ∧ U.densityOne

theorem uniform_distribution_closed_from_evidence (U : UniformDistributionPackage) (E : UniformDistributionEvidence U) :
    UniformDistributionClosed U := by
  exact And.intro E.uniformInIntervalClosed E.densityOneClosed

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
