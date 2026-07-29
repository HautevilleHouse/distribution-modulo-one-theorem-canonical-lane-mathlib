import DistributionModuloOneTheoremCanonicalLaneLean.DistributionModOneAdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure DiophantineApproximationPackage where
  alpha : ℝ
  irrational : Prop
  irrationalityMeasure : ℝ
  dirichletApproximationTheorem : Prop
  khinchinTheorem : Prop

structure DiophantineApproximationEvidence (D : DiophantineApproximationPackage) where
  dirichletApproximationTheoremClosed : D.dirichletApproximationTheorem
  khinchinTheoremClosed : D.khinchinTheorem

def DiophantineApproximationClosed (D : DiophantineApproximationPackage) : Prop :=
  D.dirichletApproximationTheorem ∧ D.khinchinTheorem

theorem diophantine_approximation_closed_from_evidence (D : DiophantineApproximationPackage) (E : DiophantineApproximationEvidence D) :
    DiophantineApproximationClosed D := by
  exact And.intro E.dirichletApproximationTheoremClosed E.khinchinTheoremClosed

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
