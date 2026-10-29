# Local Field Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24ed4c90407ef6db7aec06e2c191d78893b32e46` · SHA-256 `b63f980b2fe3425375bffa3e0fbcd94bf84242b1db26ae4e5969c10ac1d7239a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Wenrong Zou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wenrong Zou
-/
module

public import Mathlib.NumberTheory.LocalField.Basic
public import Mathlib.NumberTheory.Padics.ProperSpace
public import Mathlib.NumberTheory.Padics.ValuativeRel

/-!
# `ℚ_[p]` is a non-archimedean local field

This file records the instance `IsNonarchimedeanLocalField ℚ_[p]`.
-/

public section

variable {p : ℕ} [Fact p.Prime]

/-- The `p`-adic numbers form a non-archimedean local field: the topology comes from the valuative
relation, `ℚ_[p]` is locally compact, and the valuation is nontrivial. -/
instance : IsNonarchimedeanLocalField ℚ_[p] := ⟨⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bc9983b1750822869631c30e1d6c4b47c111360b5c610910576e8089cc084e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/LocalField/Variantb63f980b2fe3425375bffa3e0fbcd94bf84242b1db26ae4e5969c10ac1d7239a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
