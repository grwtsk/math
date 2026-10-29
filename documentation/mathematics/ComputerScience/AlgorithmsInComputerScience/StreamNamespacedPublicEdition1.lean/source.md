# Stream Namespaced Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18176edf8d33e2bb8e5dc9d0afcc8b838ed59527` · SHA-256 `2a09febcd615ed85df89a4b2b79fee22162ffe14b1669b526a2e243fc002899b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stream.Variantca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Stream.Variantca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Vector/Stream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Shreyas Srinivas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shreyas Srinivas, François G. Dorais, Kim Morrison
-/
module

prelude
public import Init.Data.Stream
public import Init.Data.Vector.Basic
import Init.Data.Slice.Array.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stream.Variantca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5

namespace Vector

/-! ### ToStream instance -/

@[no_expose]
public instance : Std.ToStream (Vector α n) (Subarray α) where
  toStream xs := xs.toArray[*...*]

end Vector
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=065853b23723c96f49ff83e08182a5bc99d45fead87787e37f7c48db4634033b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stream/Variant9fff4f881cbdea27991220ce7f6e01b144c0bff5689f3c3226bd6415b3bb45ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
