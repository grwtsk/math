# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.LocalField.Variant1f6d0b358d798aa1f20b8ec1519bb916b9e1dd53586296ededc81c5494cde6fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c79c120ab971cec39aaf6b5018b49478f8884321` · SHA-256 `a0527ca749093f36e80c62bcf474a63cbdd4a1db96e83672ed3d3bd9d68dc430`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.LocalField.Variantb63f980b2fe3425375bffa3e0fbcd94bf84242b1db26ae4e5969c10ac1d7239a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b63f980b2fe3425375bffa3e0fbcd94bf84242b1db26ae4e5969c10ac1d7239a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PadicNumbers.SourceCorpus.LocalField.Variantb63f980b2fe3425375bffa3e0fbcd94bf84242b1db26ae4e5969c10ac1d7239a","mathematical_subject":"NumberTheory.PadicNumbers","original_sha256":"b63f980b2fe3425375bffa3e0fbcd94bf84242b1db26ae4e5969c10ac1d7239a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/Padics/LocalField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.LocalField.Variantb63f980b2fe3425375bffa3e0fbcd94bf84242b1db26ae4e5969c10ac1d7239a

public section

variable {p : ℕ} [Fact p.Prime]

/-- The `p`-adic numbers form a non-archimedean local field: the topology comes from the valuative
relation, `ℚ_[p]` is locally compact, and the valuation is nontrivial. -/
instance : IsNonarchimedeanLocalField ℚ_[p] := ⟨⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed04bde3ceba8c59924aba3b01a36185c03ee67ad0c64a1fb5d7958fb537f407 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/LocalField/Variant1f6d0b358d798aa1f20b8ec1519bb916b9e1dd53586296ededc81c5494cde6fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
