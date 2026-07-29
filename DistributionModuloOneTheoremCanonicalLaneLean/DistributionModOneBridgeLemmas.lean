import canonicalLaneMathlib.AdmissibleClass
import DistributionModuloOneTheoremCanonicalLaneLean.DistributionModOneAdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
