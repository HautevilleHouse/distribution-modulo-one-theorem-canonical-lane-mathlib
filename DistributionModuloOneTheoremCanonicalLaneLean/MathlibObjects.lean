import DistributionModuloOneTheoremCanonicalLaneLean.ClassicalHardyLittlewood
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure DistributionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DistributionAdmittedObject where
  space : DistributionSpace
  sequence : ℕ → ℝ
  moduloOneSequence : ℕ → ℝ
  uniformlyDistributedModOne : Prop
  weylCriterionPassed : Prop
  conclusion : uniformlyDistributedModOne ∧ weylCriterionPassed

structure DistributionEndgameState where
  object : DistributionAdmittedObject

def DistributionWitnessClosed (O : DistributionAdmittedObject) : Prop :=
  O.uniformlyDistributedModOne ∧ O.weylCriterionPassed

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse
