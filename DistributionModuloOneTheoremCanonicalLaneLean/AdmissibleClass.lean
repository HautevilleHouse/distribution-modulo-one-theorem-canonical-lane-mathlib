import DistributionModuloOneTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DistributionModOneAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DistributionModOneWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse