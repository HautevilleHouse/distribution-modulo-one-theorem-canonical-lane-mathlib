import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure KroneckerApproximationPackage where
  kroneckerDensity : Prop
  simultaneousApproximation : Prop
  torusWindingDense : Prop

structure KroneckerApproximationEvidence (K : KroneckerApproximationPackage) where
  kroneckerDensityClosed : K.kroneckerDensity
  simultaneousApproximationClosed : K.simultaneousApproximation
  torusWindingDenseClosed : K.torusWindingDense

def KroneckerApproximationClosed (K : KroneckerApproximationPackage) : Prop :=
  K.kroneckerDensity ∧ K.simultaneousApproximation ∧ K.torusWindingDense

theorem kronecker_approximation_closed_from_evidence (K : KroneckerApproximationPackage)
    (Ev : KroneckerApproximationEvidence K) : KroneckerApproximationClosed K := by
  exact And.intro Ev.kroneckerDensityClosed (And.intro Ev.simultaneousApproximationClosed
    Ev.torusWindingDenseClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse