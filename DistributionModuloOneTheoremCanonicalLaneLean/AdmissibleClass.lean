import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure DistributionAdmittedObject where
  sequence : (ℕ → ℝ)
  fractionalPartLaw : Prop
  equidistributionResult : Prop
  conclusion : equidistributionResult

structure AdmissibleClass where
  object : DistributionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse