import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure EquidistributionPackage where
  sequence : ℕ → ℝ
  fractionalParts : ℕ → Set ℝ
  asymptoticallyUniform : Prop
  densityProperty : Prop
  discrepancyBound : Prop

structure EquidistributionEvidence (E : EquidistributionPackage) where
  asymptoticallyUniformClosed : E.asymptoticallyUniform
  densityPropertyClosed : E.densityProperty
  discrepancyBoundClosed : E.discrepancyBound

def EquidistributionClosed (E : EquidistributionPackage) : Prop :=
  E.asymptoticallyUniform ∧ E.densityProperty ∧ E.discrepancyBound

theorem equidistribution_closed_from_evidence
    (E : EquidistributionPackage) (Ev : EquidistributionEvidence E) :
    EquidistributionClosed E := by
  exact And.intro Ev.asymptoticallyUniformClosed (And.intro Ev.densityPropertyClosed Ev.discrepancyBoundClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse