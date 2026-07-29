import DistributionModuloOneTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

def ConstrainedDistributionModOneClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distribution_mod_one_endgame (A : AdmissibleClass) :
    ConstrainedDistributionModOneClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse