# Core Init Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a972ff037e40ba289a66512ea3d1eb4739b816d6` · SHA-256 `5243d0114d4cc0755552344d993e25f1c7906348fa02b399add2f4bd82dbe3c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extensions.Variant85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Extensions.Variant85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Inclusion/Extension/Core/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Inclusion.Core.Extensions

/-!
# Core extension family for the `inclusion` tactic

This file initializes the `core` family of inclusion and hypothesis extensions which are generally
useful and type independent.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extensions.Variant85570731e2641ab1fdc9e6385114080852e1dd418d378a38bb7bfb71e388bcaf

public meta section

namespace Inclusion

/-- Initialize the `core` inclusion family. -/
initialize coreFamily : InclusionFamily ← registerInclusionFamily `core

end Inclusion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8acc742cd2d21054250ac11fceae7352cc267bdab4eff73a7d5630a5913895b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant3863e34588dc70f0e8569ac2672771f07ac033f04dc952cbe3b2a8c7ac88d605.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
