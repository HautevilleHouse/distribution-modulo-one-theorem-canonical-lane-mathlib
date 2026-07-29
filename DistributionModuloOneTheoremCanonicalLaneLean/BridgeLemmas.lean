import DistributionModuloOneTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DistributionModOneWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse