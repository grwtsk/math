# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant5d10b3411f659cb7744ca1ae2417c4e86706209b173f062712d335af09f99429

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea2833183671e56b35ab11ecfc3a96c2b67b4234` · SHA-256 `2662f55df1703fdc19b917243e69338552650f6fc4c5ba59e679dfba40c47471`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ArithMult/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Arend Mellendijk. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arend Mellendijk
-/

import Mathlib.Init
import Aesop

/-!
# arith_mult Rule Set

This module defines the `IsMultiplicative` Aesop rule set which is used by the
`arith_mult` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86

declare_aesop_rule_sets [IsMultiplicative]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01a43019133f2d312b17b0291d33631d474ede5371b10117650d9b1267088db4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant5d10b3411f659cb7744ca1ae2417c4e86706209b173f062712d335af09f99429.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
