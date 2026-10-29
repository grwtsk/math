# Hash Public Edition4 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `953f4215a005fe2be9f92c6532f7303063b61255` · SHA-256 `7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification

/-!
# Framing for XYZ protocol hashes

`Hash256` is an opaque, content-addressed wire identity.  This module checks
only the spelling and lowercase hexadecimal framing of a SHA-256 value, plus
ordinary structural equality.  It does not compute SHA-256 and does not turn a
hash, a matching implementation, or a finite test result into theorem
authority.  The protocol's Rust implementation computes the digest bytes.
-/

public section

namespace Surface.Core.XYZ

/-- An XYZ-local wire hash, kept independent of presentation and refactor
protocol types. -/
@[surface_novel]
structure Hash256 where
  algorithm : String
  hex : String
deriving DecidableEq, Repr

/-- The exact lowercase hexadecimal alphabet accepted on the wire. -/
@[expose] def lowerHexAlphabet : List Char :=
  "0123456789abcdef".toList

/-- Character-level lowercase hexadecimal framing. -/
@[expose] def IsLowerHexDigit (character : Char) : Prop :=
  character ∈ lowerHexAlphabet

instance (character : Char) : Decidable (IsLowerHexDigit character) := by
  unfold IsLowerHexDigit
  infer_instance

/-- Exact SHA-256 wire framing: the literal algorithm name and exactly sixty-four
lowercase hexadecimal characters.  In particular, prefixes such as `0x` and
`sha256:` cannot inhabit the hexadecimal field. -/
@[expose] def Hash256.Valid (hash : Hash256) : Prop :=
  hash.algorithm = "sha256" ∧
    hash.hex.length = 64 ∧
    ∀ character ∈ hash.hex.toList, IsLowerHexDigit character

instance (hash : Hash256) : Decidable hash.Valid := by
  unfold Hash256.Valid
  infer_instance

/-- Executable finite framing check.  This does not compute a digest. -/
@[expose] def verifyHash256 (hash : Hash256) : Bool :=
  decide hash.Valid

/-- A successful executable framing check proves exactly `Hash256.Valid`. -/
@[surface_novel, surface_published, surface_certificate]
theorem verifyHash256_sound (hash : Hash256)
    (accepted : verifyHash256 hash = true) : hash.Valid := by
  exact of_decide_eq_true accepted

end Surface.Core.XYZ
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61f68a75fd54e0726188ed28629a9aa78abdb366a7cc097f2ccb6cc99e568d71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Variant7529f86d1406c671887b34dec597a3a7572c30f9173d4f53fe15cda78d7cf06b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
