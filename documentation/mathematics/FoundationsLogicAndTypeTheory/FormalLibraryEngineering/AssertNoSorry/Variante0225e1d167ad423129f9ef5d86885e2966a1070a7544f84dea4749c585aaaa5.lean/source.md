# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertNoSorry.Variante0225e1d167ad423129f9ef5d86885e2966a1070a7544f84dea4749c585aaaa5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfa43234f47bbd2d82228f270b83282b70d54100` · SHA-256 `64c3495d0229a5d53fd09404c94f6f63fc5707db9b2774ab4dbeb20324769d5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectAxioms.Variant186bbb6aa0d0421683639815cbfdfde149b275f84be2d101f173fb97252fc30f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"186bbb6aa0d0421683639815cbfdfde149b275f84be2d101f173fb97252fc30f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CollectAxioms.Variant186bbb6aa0d0421683639815cbfdfde149b275f84be2d101f173fb97252fc30f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"186bbb6aa0d0421683639815cbfdfde149b275f84be2d101f173fb97252fc30f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/AssertNoSorry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 David Renshaw. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Renshaw
-/

import Mathlib.Init
import Lean.Util.CollectAxioms
import Lean.Elab.Command

/-!
# Defines the `assert_no_sorry` command.

Throws an error if the given identifier uses sorryAx.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectAxioms.Variant186bbb6aa0d0421683639815cbfdfde149b275f84be2d101f173fb97252fc30f

open Lean Meta Elab Command

/-- Throws an error if the given identifier uses sorryAx. -/
elab "assert_no_sorry " n:ident : command => do
  let name ← liftCoreM <| Lean.Elab.realizeGlobalConstNoOverloadWithInfo n
  let axioms ← Lean.collectAxioms name
  if axioms.contains ``sorryAx
  then throwError "{n} contains sorry"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d72b678ef2f99b37b1c7bd4af98f3191c8e8192774ad91c5f72872aed04a6628 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertNoSorry/Variante0225e1d167ad423129f9ef5d86885e2966a1070a7544f84dea4749c585aaaa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
