# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TextCarrier.Variante50c704a758d5456aa2d0b29260125d17c67fe455a7d1aaec54561e072c23cd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03b3a010f0b1957bfeaecaa544590dde146537f2` · SHA-256 `e50c704a758d5456aa2d0b29260125d17c67fe455a7d1aaec54561e072c23cd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# Finite text carriers

The carrier records normalized Unicode scalar values and the digest of the
exact source realization.  Digest validity is structural only; it does not
certify a linguistic interpretation.
-/

namespace Mathematics.SemanticTokenization

/-!
These identifiers are deliberately capsule-local.  They are refinement
interfaces to the external formalization project's canonical identifiers, not
an attempt to mint a second identity authority.
-/

structure Digest where
  algorithm : String := "sha256"
  value : String
  deriving DecidableEq, Repr

def Digest.Valid (digest : Digest) : Prop :=
  digest.algorithm = "sha256" ∧
    digest.value.length = 64 ∧
    digest.value.toList.all
      (fun character =>
        "0123456789abcdef".contains character) = true

structure StableId where
  value : String
  deriving DecidableEq, Repr

def StableId.Valid (id : StableId) : Prop :=
  id.value ≠ ""

structure SnapshotId where
  value : String
  deriving DecidableEq, Repr

structure SourceLocation where
  path : String
  line : Nat
  column : Nat
  deriving DecidableEq, Repr

structure RawTextCarrier where
  chars : Array Char
  sourceDigest : Digest
  source_digest_valid : sourceDigest.Valid

structure TextCarrier where
  chars : Array Char
  sourceDigest : Digest
  source_digest_valid : sourceDigest.Valid

def TextCarrier.length (text : TextCarrier) : Nat :=
  text.chars.size

theorem TextCarrier.length_eq_size (text : TextCarrier) :
    text.length = text.chars.size :=
  rfl

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44464a6a726bf4775f80e14f067903c4448ca939ae0d412078fd0c439e3f0fa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextCarrier/Variante50c704a758d5456aa2d0b29260125d17c67fe455a7d1aaec54561e072c23cd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
