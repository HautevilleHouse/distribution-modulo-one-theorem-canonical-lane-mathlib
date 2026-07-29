import DistributionModuloOneTheoremCanonicalLaneLean.KroneckerWeil

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure EquidistributionCriteriaPackage (O : DistributionAdmittedObject) where
  weylSumBounds : Prop
  discrepancyBounds : Prop
  koksmaHlawkaInequality : Prop

def EquidistributionCriteriaClosed (O : DistributionAdmittedObject) (E : EquidistributionCriteriaPackage O) : Prop :=
  E.weylSumBounds ∧ E.discrepancyBounds ∧ E.koksmaHlawkaInequality

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse