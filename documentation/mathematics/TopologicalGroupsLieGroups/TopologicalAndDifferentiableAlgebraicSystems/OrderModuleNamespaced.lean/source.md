# Order Module Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c36295f7300833ca75d50b049c4f491d45d14ad9` · SHA-256 `69e6d847e7613f1c587bd9c609ddd4492cb7bad740063b7382fe5766bd7d6057`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Module.Variantd760c2e70034d7c658eee17a1063ee0cf64a3903409210b5f3e6186bddfb8976","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d760c2e70034d7c658eee17a1063ee0cf64a3903409210b5f3e6186bddfb8976","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Module.Variantd760c2e70034d7c658eee17a1063ee0cf64a3903409210b5f3e6186bddfb8976","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d760c2e70034d7c658eee17a1063ee0cf64a3903409210b5f3e6186bddfb8976","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Order/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Nonneg.Module
import Mathlib.Topology.Algebra.ConstMulAction
import Mathlib.Topology.Algebra.MulAction

/-!
# Continuous nonnegative scalar multiplication
-/


namespace GRWTSK.Topology.GeneralTopology.Module.Variantd760c2e70034d7c658eee17a1063ee0cf64a3903409210b5f3e6186bddfb8976

variable {R α : Type*} [Semiring R] [PartialOrder R] [SMul R α] [TopologicalSpace α]

instance [ContinuousConstSMul R α] : ContinuousConstSMul {r : R // 0 ≤ r} α where
  continuous_const_smul r := continuous_const_smul r.1

instance [TopologicalSpace R] [ContinuousSMul R α] : ContinuousSMul {r : R // 0 ≤ r} α where
  continuous_smul := continuous_smul (M := R).comp <| continuous_subtype_val.prodMap continuous_id
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=529951f2ec2ae818de59b119dd7898636555e840cdd12542213bf7aa612a133a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Module/Variant900f03ebe865a1f25f4ebefe77e7db85dc281e3d1865159468388e3dbf36f0de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
