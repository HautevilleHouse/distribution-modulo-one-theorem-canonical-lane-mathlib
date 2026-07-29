import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure DistributionAdmittedObject where
  realSeq : ℕ → ℝ
  fractionalPartDense : Prop
  targetInterval : Set ℝ
  intervalLengthOne : Prop
  conclusion : fractionalPartDense

structure AdmissibleClass where
  object : DistributionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
