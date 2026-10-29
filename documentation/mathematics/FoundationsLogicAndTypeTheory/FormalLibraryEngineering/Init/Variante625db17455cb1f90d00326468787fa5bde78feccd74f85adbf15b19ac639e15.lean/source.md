# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variante625db17455cb1f90d00326468787fa5bde78feccd74f85adbf15b19ac639e15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ed8bb909a29ceb367104eab1253f5da94222b0c` · SHA-256 `baced19ad596cd97bb1004654daf29bda95f6776854587b632a5e85a24e0a01f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant218fbfd2518fc88e622eba4812c20e30f0b405ca3aaa7e06183b8554a3c87fb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"218fbfd2518fc88e622eba4812c20e30f0b405ca3aaa7e06183b8554a3c87fb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant218fbfd2518fc88e622eba4812c20e30f0b405ca3aaa7e06183b8554a3c87fb1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"218fbfd2518fc88e622eba4812c20e30f0b405ca3aaa7e06183b8554a3c87fb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Measurability/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/

import Mathlib.Init
import Aesop

/-!
# Measurability Rule Set

This module defines the `Measurable` Aesop rule set which is used by the
`measurability` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant218fbfd2518fc88e622eba4812c20e30f0b405ca3aaa7e06183b8554a3c87fb1

declare_aesop_rule_sets [Measurable]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec1f846772717abddbf0a266888d0cbbef8e3521dcc746433b03786d2300d494 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variante625db17455cb1f90d00326468787fa5bde78feccd74f85adbf15b19ac639e15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
