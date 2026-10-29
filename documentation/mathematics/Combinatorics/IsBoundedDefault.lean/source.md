# Is Bounded Default — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07f092e4542a20ffd9cbfec4d9d77b70c19bf0aa` · SHA-256 `74c4863b5aab398ba26f7b06483d820a808dca8196587d6daa7578ecb491f294`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.EReal.Basic
import Mathlib.Order.LiminfLimsup

open Filter

variable {α : Type*} {f : Filter α} {u v : α → EReal} (h : u ≤ᶠ[f] v)
-- proof term
example : limsup u f ≤ limsup v f := limsup_le_limsup h

-- exact
example : limsup u f ≤ limsup v f := by exact limsup_le_limsup h

-- apply
example : limsup u f ≤ limsup v f := by apply limsup_le_limsup h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=757bd0dbcd0fc6b525e9a89b25bac02bb2cabbc434456154c47be803bc118eb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsBoundedDefault/Variant74c4863b5aab398ba26f7b06483d820a808dca8196587d6daa7578ecb491f294.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
