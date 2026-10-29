# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Default.Variant447d63df8dcd195f98c531146f673fd6fcee9ed1a7cf25f4bb88a390f7317c8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5541e5c676fd94e5af7f43cadcf5a467d99bfa3d` · SHA-256 `d46faedc382472bfaa66be21b16b4fbecd563d2842eee08206bbc720149021bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SineQuaNon.Variant72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SineQuaNon.Variant72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/LibrarySuggestions/Default.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public meta import Lean.LibrarySuggestions.SineQuaNon

/-!
# Default library suggestions engine

This module sets the default library suggestions engine to "Sine Qua Non",
along with the theorems from the current file.
.
Any module that imports this (directly or transitively) will have library suggestions enabled.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SineQuaNon.Variant72f9aa43a099bbfb848e42cfbc4388a49f19081fc66771b85549f3873053ddba

namespace Lean.LibrarySuggestions

-- Set the default library suggestions engine to
-- a combination of "Sine Qua Non" and the theorems from the current file.
-- For now we just intersperse the results, but in future we should re-rank them.
-- Note: We filter out grind-annotated modules from sineQuaNonSelector when caller is "grind".
set_library_suggestions open Lean.LibrarySuggestions in sineQuaNonSelector.filterGrindAnnotated.intersperse currentFile

end Lean.LibrarySuggestions
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f1bfb2febec817af839618bb0c6382b08978825f37a4cb895130ef5f7595cc2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Default/Variant447d63df8dcd195f98c531146f673fd6fcee9ed1a7cf25f4bb88a390f7317c8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
