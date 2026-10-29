# Dvd — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbbcd722477747921d4fee866948e071f8d59a7a` · SHA-256 `7b3f03e09f735a01b9b063f1f2f3228cad78850e9a125f8af1cbfb4001dcfaa5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

/-- Notation typeclass for the `∣` operation (typed as `\|`), which represents divisibility. -/
class Dvd (α : Type _) where
  /-- Divisibility. `a ∣ b` (typed as `\|`) means that there is some `c` such that `b = a * c`. -/
  dvd : α → α → Prop

@[inherit_doc] infix:50 " ∣ " => Dvd.dvd
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44fdf9a93bcd9f870519c224ffc3a9019256aa3b386304467a50394ae1eeb5b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dvd/Variant7b3f03e09f735a01b9b063f1f2f3228cad78850e9a125f8af1cbfb4001dcfaa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
