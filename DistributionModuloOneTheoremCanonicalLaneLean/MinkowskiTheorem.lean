import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure MinkowskiTheoremPackage where
  irrationalRotationDense : Prop
  uniformDistributionCriterion : Prop
  inhomogeneousApproximation : Prop

structure MinkowskiTheoremEvidence (M : MinkowskiTheoremPackage) where
  irrationalRotationDenseClosed : M.irrationalRotationDense
  uniformDistributionCriterionClosed : M.uniformDistributionCriterion
  inhomogeneousApproximationClosed : M.inhomogeneousApproximation

def MinkowskiTheoremClosed (M : MinkowskiTheoremPackage) : Prop :=
  M.irrationalRotationDense ∧ M.uniformDistributionCriterion ∧ M.inhomogeneousApproximation

theorem minkowski_theorem_closed_from_evidence (M : MinkowskiTheoremPackage)
    (Ev : MinkowskiTheoremEvidence M) : MinkowskiTheoremClosed M := by
  exact And.intro Ev.irrationalRotationDenseClosed (And.intro Ev.uniformDistributionCriterionClosed
    Ev.inhomogeneousApproximationClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse