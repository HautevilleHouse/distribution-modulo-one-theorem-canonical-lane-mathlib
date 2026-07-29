import DistributionModuloOneTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure KroneckerWeilPackage (O : DistributionAdmittedObject) where
  sequence : ℕ → ℝ
  equidistributionCondition : Prop
  weylCriterionApplied : Prop

def KroneckerWeilClosed (O : DistributionAdmittedObject) (K : KroneckerWeilPackage O) : Prop :=
  K.equidistributionCondition ∧ K.weylCriterionApplied

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse