import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure DistributionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DistributionAdmittedObject where
  space : DistributionSpace
  sequence : ℕ → ℝ
  uniformDistributionModOne : Prop
  fractionalPartDense : Prop
  conclusion : fractionalPartDense

structure DistributionEndgameState where
  object : DistributionAdmittedObject

def DistributionWitnessClosed (O : DistributionAdmittedObject) : Prop :=
  O.fractionalPartDense

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse