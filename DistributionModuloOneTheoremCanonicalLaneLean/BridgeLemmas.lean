import DistributionModuloOneTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DistributionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
