# Prod Namespaced Public Prod Replicate Int — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b4bd7114643409f973267efc1f83b69b1b4e203` · SHA-256 `dc30a94ed1af8f3d69437756a8a511baf7e5245e80e488ecee0941bd9f95ce4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProdReplicateInt.Variant066305fb638fdc1bd3b9b635c682398623340dcd6526e00fb7179c5d86025433","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"066305fb638fdc1bd3b9b635c682398623340dcd6526e00fb7179c5d86025433","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ProdReplicateInt.Variant066305fb638fdc1bd3b9b635c682398623340dcd6526e00fb7179c5d86025433","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"066305fb638fdc1bd3b9b635c682398623340dcd6526e00fb7179c5d86025433","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/Int/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
import Init.Data.List.Lemmas
import Init.Data.Int.Lemmas
public import Init.Data.Int.Pow
public import Init.Data.List.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProdReplicateInt.Variant066305fb638fdc1bd3b9b635c682398623340dcd6526e00fb7179c5d86025433

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

@[simp]
theorem prod_replicate_int {n : Nat} {a : Int} : (replicate n a).prod = a ^ n := by
  induction n <;> simp_all [replicate_succ, Int.pow_succ, Int.mul_comm]

theorem prod_append_int {l₁ l₂ : List Int} : (l₁ ++ l₂).prod = l₁.prod * l₂.prod := by
  simp [prod_append]

theorem prod_reverse_int (xs : List Int) : xs.reverse.prod = xs.prod := by
  simp [prod_reverse]

end List
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7724608f9732ce4d62a7871254c123247559453bb0525350051cb90df441fe71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variant084b65da20999e13de83cf26a94d35fca6869381e08beda2e7a9a666828a063b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
