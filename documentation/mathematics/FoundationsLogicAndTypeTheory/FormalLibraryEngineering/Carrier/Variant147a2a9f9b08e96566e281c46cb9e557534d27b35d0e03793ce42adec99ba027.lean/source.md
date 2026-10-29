# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carrier.Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba7e38a4b57b1ae59ea67c1f42034402743c1b95` · SHA-256 `147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Kind

/-!
# Non-collapsing square-carrier coordinates

Availability, checker validity, and theorem status occupy distinct channels.
An unresolved cell is therefore not an encoding of false.
-/

namespace Mathematics.Resolution

inductive EvidenceAvailability
  | missing
  | supplied
  deriving DecidableEq, Repr

inductive EvidenceValidity
  | unchecked
  | accepted
  | rejected
  deriving DecidableEq, Repr

inductive TheoremCoordinate
  | certifiedTrue
  | certifiedFalse
  | unknown
  deriving DecidableEq, Repr

structure ResolutionCarrierCell where
  availability : EvidenceAvailability
  validity : EvidenceValidity
  theoremStatus : TheoremCoordinate
  frequency : Nat
  deriving DecidableEq, Repr

def ResolutionCarrierCell.ofStatus :
    ProofStatus → Nat → ResolutionCarrierCell
  | .proved, frequency =>
      ⟨.supplied, .accepted, .certifiedTrue, frequency⟩
  | .unknownMissing, frequency =>
      ⟨.missing, .unchecked, .unknown, frequency⟩
  | .unknownUnaccepted, frequency =>
      ⟨.supplied, .rejected, .unknown, frequency⟩

theorem unresolved_status_is_not_false
    (status : ProofStatus)
    (unresolved : status ≠ .proved)
    (frequency : Nat) :
    (ResolutionCarrierCell.ofStatus status frequency).theoremStatus =
      TheoremCoordinate.unknown := by
  cases status <;> simp_all [ResolutionCarrierCell.ofStatus]

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f84480a7ca61d0b48e63ddf814430248bc8072353222d23053fe6bdcf2ed47a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carrier/Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
