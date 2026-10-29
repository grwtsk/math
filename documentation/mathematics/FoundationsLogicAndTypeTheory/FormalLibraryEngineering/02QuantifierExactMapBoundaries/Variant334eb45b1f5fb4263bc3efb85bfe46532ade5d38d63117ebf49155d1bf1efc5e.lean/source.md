# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.02QuantifierExactMapBoundaries.Variant334eb45b1f5fb4263bc3efb85bfe46532ade5d38d63117ebf49155d1bf1efc5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7513ea3dc6716e1f506019ba56cad2f1aaf15045` · SHA-256 `334eb45b1f5fb4263bc3efb85bfe46532ade5d38d63117ebf49155d1bf1efc5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.NegativeChecks

namespace FCRS.TheoremTransfer.Cycle6.QuantifierExactMap

open FCRS.TheoremTransfer.NegativeChecks.OD

def v (name : String) : VersionId :=
  .atomic ⟨"https://example.invalid/cycle-6", name, "1", "sha256:" ++ name⟩

def unknownProfile : QuantifierProfile := QuantifierProfile.unspecified (v "unknown")
def constantBoolMap : Bool → Bool := fun _ => false

/-- The exact map index rejects an unrelated identity carrier equivalence. -/
example : True := by
  fail_if_success
    exact (.evidenced (QuantifierCarrierEquivalence.refl Bool) rfl
      [v "unrelated-identity"] (by simp) :
      QuantifierUnspecifiedCompatibility
        (carrierTheory Bool) (carrierTheory Bool) constantBoolMap
        unknownProfile unknownProfile)
  trivial

/-- Fully specified Bool-to-Nat transport has no admissible map evidence. -/
example : ¬ Nonempty (QuantifierSpecifiedMapEvidence
    boolSensitiveTheory natSensitiveTheory boolToNat) := by
  rintro ⟨evidence⟩
  exact finiteToInfiniteSpecifiedMapEvidenceImpossible evidence

/-- Unknown Bool-to-Nat profiles cannot be certified by nominal artifacts. -/
example : ¬ Nonempty (QuantifierUnspecifiedCompatibility
    (carrierTheory Bool) (carrierTheory Nat)
    (fun value : Bool => if value then (1 : Nat) else 0)
    unknownCarrierProfile unknownCarrierProfile) := by
  rintro ⟨compatibility⟩
  exact boolNatUnknownCompatibilityImpossible compatibility

end FCRS.TheoremTransfer.Cycle6.QuantifierExactMap
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b66c4edf5a0245f9f5cfc30dc3aafa073b2b16a3c200509bdb4ba967892e1321 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02QuantifierExactMapBoundaries/Variant334eb45b1f5fb4263bc3efb85bfe46532ade5d38d63117ebf49155d1bf1efc5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
