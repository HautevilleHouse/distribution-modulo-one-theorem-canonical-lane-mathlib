import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneTheoremCanonicalLaneLean

structure LowDiscrepancySequencesPackage where
  vanDerCorputSequence : Prop
  haltonSequence : Prop
  soboldSequence : Prop
  owenScrambling : Prop

structure LowDiscrepancySequencesEvidence (L : LowDiscrepancySequencesPackage) where
  vanDerCorputSequenceClosed : L.vanDerCorputSequence
  haltonSequenceClosed : L.haltonSequence
  soboldSequenceClosed : L.soboldSequence
  owenScramblingClosed : L.owenScrambling

def LowDiscrepancySequencesClosed (L : LowDiscrepancySequencesPackage) : Prop :=
  L.vanDerCorputSequence ∧ L.haltonSequence ∧ L.soboldSequence ∧ L.owenScrambling

theorem low_discrepancy_sequences_closed_from_evidence (L : LowDiscrepancySequencesPackage)
    (Ev : LowDiscrepancySequencesEvidence L) : LowDiscrepancySequencesClosed L := by
  exact And.intro Ev.vanDerCorputSequenceClosed (And.intro Ev.haltonSequenceClosed
    (And.intro Ev.soboldSequenceClosed Ev.owenScramblingClosed))

end DistributionModuloOneTheoremCanonicalLaneLean
end HautevilleHouse