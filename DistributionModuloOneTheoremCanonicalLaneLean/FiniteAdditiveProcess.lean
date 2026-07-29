import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure FiniteAdditiveProcessPackage where
  processDomain : Type u
  measureDefined : Prop
  finiteAdditivityHolds : Prop
  invariantUnderTranslation : Prop

structure FiniteAdditiveProcessEvidence (P : FiniteAdditiveProcessPackage) where
  measureDefinedClosed : P.measureDefined
  finiteAdditivityHoldsClosed : P.finiteAdditivityHolds
  invariantUnderTranslationClosed : P.invariantUnderTranslation

def FiniteAdditiveProcessClosed (P : FiniteAdditiveProcessPackage) : Prop :=
  P.measureDefined ∧ P.finiteAdditivityHolds ∧ P.invariantUnderTranslation

theorem finite_additive_process_closed_from_evidence
    (P : FiniteAdditiveProcessPackage) (E : FiniteAdditiveProcessEvidence P) :
    FiniteAdditiveProcessClosed P := by
  exact And.intro E.measureDefinedClosed
    (And.intro E.finiteAdditivityHoldsClosed E.invariantUnderTranslationClosed)

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse