# Basic Basic Digest — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b7c4c72763ba09a33c0a44573cf7925d78faf88` · SHA-256 `095acac1aabee05a4fd694ed315762cd1be013cbe78cb4d6d899af231bf233e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# Semantic-tokenization primitives

This neighborhood treats identifiers and digests as inert coordinates.  None
of them is a proof, an interpretation, or theorem authority.
-/

namespace Mathematics.SemanticTokenization

/-- Canonical byte-level identity for immutable inputs and receipts. -/
structure Digest where
  bytes : ByteArray
deriving DecidableEq, BEq, Repr

namespace Digest

def empty : Digest :=
  ⟨ByteArray.empty⟩

/--
A deterministic content encoding used by the formal model.  Cryptographic
collision resistance, when required by a deployment, is a separate external
certificate.
-/
def ofString (value : String) : Digest :=
  ⟨value.toUTF8⟩

end Digest

structure TextId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure SnapshotId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure SourceId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure EvidenceId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure AssertionId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure ContextId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure TaskId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure ConceptId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure RuleId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure RelationId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure EventId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure PhraseNodeId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure NodeId where value : Nat
deriving DecidableEq, BEq, Ord, Repr

structure ResourceBudget where
  maxSteps : Nat
  maxCandidates : Nat
  maxEvidence : Nat
deriving DecidableEq, Repr

inductive CheckResult (Value Error : Type*)
  | ok (value : Value)
  | error (error : Error)
deriving Repr

/-- Array keys are pairwise distinct. -/
def PairwiseUnique {α : Type*} (values : Array α) : Prop :=
  values.toList.Nodup

/-- A frozen snapshot transport is evidence, not equality by convention. -/
structure SnapshotTransportCertificate where
  source : SnapshotId
  target : SnapshotId
  evidence : EvidenceId
  certificateDigest : Digest
deriving Repr

def SnapshotTransportedTo
    (transports : Array SnapshotTransportCertificate)
    (source target : SnapshotId) : Prop :=
  source = target ∨
    ∃ certificate : Fin transports.size,
      (transports[certificate]).source = source ∧
      (transports[certificate]).target = target

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ba115ef6b3ba55a078b61a215f44888739344b54c5913bd2aec5f7d77ab7f92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant095acac1aabee05a4fd694ed315762cd1be013cbe78cb4d6d899af231bf233e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
