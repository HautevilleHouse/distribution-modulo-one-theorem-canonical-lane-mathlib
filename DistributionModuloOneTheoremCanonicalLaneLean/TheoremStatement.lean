import DistributionModuloOneTheoremCanonicalLaneLean.BridgeLemmas
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure DistributionModOneAdmittedObject where
  sequence : ℕ → ℝ
  fractionalParts : ℕ → ℝ
  fractionalPartDefined : ∀ n, fractionalParts n = Int.fract (sequence n)
  equidistribution : Prop
  conclusion : equidistribution

def DistributionModOneWitnessClosed (O : DistributionModOneAdmittedObject) : Prop :=
  O.equidistribution

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse