# Clause Convert Prop — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c887ca429f544c4028010ca7315def25ab87df8d` · SHA-256 `4f16f403d22545aec3c00597655089a110377af3d476b59ec7b6fba23082b748`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq

/-!
Type-safe conversion from proofs of `a ∨ b` to proofs of `a ∨ b ∨ false`.
-/

def or1 : List Q(Prop) → Q(Prop)
  | [] => q(False)
  | [p] => q($p)
  | p::ps => q($p ∨ $(or1 ps))

def or2 : List Q(Prop) → Q(Prop)
  | [] => q(False)
  | p::ps => q($p ∨ $(or2 ps))

def orChange : (ps : List Q(Prop)) → Q($(or1 ps) → $(or2 ps))
  | [] => q(id)
  | [p] => q(Or.inl)
  | p::(ps1::ps2) => q(by
      intro h
      cases h with
        | inl h => exact Or.inl h
        | inr h => exact Or.inr ($(orChange (ps1::ps2)) h))
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ebd71eae54e512b0c3a8b6d849e00361dd09278bcc1406a7089bd8f03c9bb6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClauseConvertProp/Variant4f16f403d22545aec3c00597655089a110377af3d476b59ec7b6fba23082b748.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
