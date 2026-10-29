# Namespaced Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdfd86034bba6647eb7626f5aca2c867be211e84` · SHA-256 `880db16cfddab236fa2b307ec618984ac80b174c4d0b3d97d62efd58274befee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.R.Variant519f484cf2da0d37fed0ddf2f0248711b32df69e80861d03c4d35d4ed2309df3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"519f484cf2da0d37fed0ddf2f0248711b32df69e80861d03c4d35d4ed2309df3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.R.Variant519f484cf2da0d37fed0ddf2f0248711b32df69e80861d03c4d35d4ed2309df3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"519f484cf2da0d37fed0ddf2f0248711b32df69e80861d03c4d35d4ed2309df3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/205.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- Thanks to Bruno Dutertre for reporting this bug.

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.R.Variant519f484cf2da0d37fed0ddf2f0248711b32df69e80861d03c4d35d4ed2309df3

axiom R {α} : α → α → Prop

@[aesop safe forward] axiom sym : R x y → R y x
@[aesop safe forward] axiom tran : R x y → R y z → R x z

/--
info: Try this:

  [apply]     have fwd : R a x := sym h₂
    have fwd_1 : R b y := sym h₃
    have fwd_2 : R a a := tran fwd h₂
    have fwd_3 : R y y := tran h₃ fwd_1
    have fwd_4 : R b b := tran fwd_1 h₃
    have fwd_5 : R x x := tran h₂ fwd
    sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example (α : Type u_1) (x y a b : α) (h₂ : R x a) (h₃ : R y b) : False := by
  aesop? (rule_sets := [-builtin]) (config := { warnOnNonterminal := false })
  sorry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32fd8309f2fc6181280e1508dde13c755089b3fd72e8a25f0413edb6a005c181 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/205/Variantf9a1548eeb54e8a7ea8663fb0c8af83d93bbbfc1edf2793b9ac1fafa5141d367.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
