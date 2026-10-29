# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant7a4979b14f44644ae476190a974cd140404095f1a86f521591ad3a89a5d4ff5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c24214aaee4d74c2c8abe1e7faf3633169ed976` · SHA-256 `fc2218299e21e2886c82486e41fa38c1670e6a2498537b35ee53f0488c7a6698`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SizeStopLeStart.Variantc65c68cfec0935d916f0dc82b64b10656a56f0e165d7ed5651a878b8e5194ab0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c65c68cfec0935d916f0dc82b64b10656a56f0e165d7ed5651a878b8e5194ab0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SizeStopLeStart.Variantc65c68cfec0935d916f0dc82b64b10656a56f0e165d7ed5651a878b8e5194ab0","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c65c68cfec0935d916f0dc82b64b10656a56f0e165d7ed5651a878b8e5194ab0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/Range/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Batteries.Tactic.SeqFocus
public import Batteries.Tactic.Alias


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SizeStopLeStart.Variantc65c68cfec0935d916f0dc82b64b10656a56f0e165d7ed5651a878b8e5194ab0

@[expose] public section

namespace Std.Legacy.Range

theorem size_stop_le_start : ∀ r : Range, r.stop ≤ r.start → r.size = 0
  | ⟨start, stop, step, _⟩, h => by
    simp_all [size]
    omega

theorem size_step_1 (start stop) : size ⟨start, stop, 1, by decide⟩ = stop - start := by
  simp [size]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2a0d1937165e266e6005127d74f7e03f1656d67d1977f28e8d24695c8990dad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant7a4979b14f44644ae476190a974cd140404095f1a86f521591ad3a89a5d4ff5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
