import DistributionModuloOneTheoremCanonicalLaneLean.WeylCriterion

/-!
# Kronecker Approximation Package
-/

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure KroneckerApproximationPackage {E : EquidistributionPackage} where
  irrationalMultiples : Prop
  dirichletApproximation : Prop
  simultaneousApproximation : Prop
  moduloOneDensity : Prop

def KroneckerApproximationClosed {E : EquidistributionPackage}
    (K : KroneckerApproximationPackage E) : Prop :=
  K.irrationalMultiples ∧ K.dirichletApproximation ∧
  K.simultaneousApproximation ∧ K.moduloOneDensity

theorem kronecker_approximation_closed_from_evidence {E : EquidistributionPackage}
    (K : KroneckerApproximationPackage E) (hIrr : K.irrationalMultiples)
    (hDir : K.dirichletApproximation) (hSim : K.simultaneousApproximation)
    (hDen : K.moduloOneDensity) : KroneckerApproximationClosed K := by
  exact And.intro hIrr (And.intro hDir (And.intro hSim hDen))

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
