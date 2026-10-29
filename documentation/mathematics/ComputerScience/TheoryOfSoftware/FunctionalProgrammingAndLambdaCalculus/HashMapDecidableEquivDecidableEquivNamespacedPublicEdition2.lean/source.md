# Hash Map Decidable Equiv Decidable Equiv Namespaced Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55331531dd114f2cc4f29a23a412bafee09b10e6` · SHA-256 `d0c5550a23a8c1f68f2f9a59975276c2fe87ff33dd161da8cfc25e9656aeba3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEquiv.Variant541a1668a8c7d42494afda94cd0957c44a2bdbd0356cfff786e6cc88436395cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"541a1668a8c7d42494afda94cd0957c44a2bdbd0356cfff786e6cc88436395cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DecidableEquiv.Variant541a1668a8c7d42494afda94cd0957c44a2bdbd0356cfff786e6cc88436395cb","mathematical_subject":"Computation.DataStructures","original_sha256":"541a1668a8c7d42494afda94cd0957c44a2bdbd0356cfff786e6cc88436395cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/HashMap/DecidableEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DHashMap.DecidableEquiv
public import Std.Data.HashMap.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEquiv.Variant541a1668a8c7d42494afda94cd0957c44a2bdbd0356cfff786e6cc88436395cb

public section

/-!
# Decidable equivalence for `HashMap`
-/

namespace Std.HashMap

instance {α : Type u} {β : Type v} [BEq α] [LawfulBEq α] [Hashable α] [BEq β] [LawfulBEq β] (m₁ m₂ : HashMap α β) : Decidable (m₁ ~m m₂) :=
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.HashMap
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=737bac10a32b51990f514e544ab37faf5ea52e1fd062cfbdd8a201b297f6b849 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEquiv/Variantc6288775c029cd3becfab020dd04f3592aa76670e43384402a5ee4851b6f712b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
