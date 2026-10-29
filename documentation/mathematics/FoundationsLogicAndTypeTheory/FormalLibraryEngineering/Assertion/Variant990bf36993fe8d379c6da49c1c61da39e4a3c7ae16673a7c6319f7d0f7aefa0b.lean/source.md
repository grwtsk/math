# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Assertion.Variant990bf36993fe8d379c6da49c1c61da39e4a3c7ae16673a7c6319f7d0f7aefa0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `907e6f8afeac51d761b86e6c1e163bdf818ee7bb` · SHA-256 `be0110d5f109acf272f76205adeb5b060badb2c07be3a696649c1f6182b319e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Abbrev.Variantdcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Abbrev.Variantdcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"dcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/Do/Assertion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vladimir Gladshtein, Sebastian Graf
-/
module

prelude
public import Init.Internal.Order
public import Std.Internal.Do.Order.Basic
public import Std.Internal.Do.Order.Heyting
public import Std.Internal.Do.Order.Instances

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Abbrev.Variantdcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8

universe u v w
@[expose] public section

namespace Std.Internal.Do

open Lean.Order

/-!
# Assertion

The `Assertion` class and `Assertion.ofProp` embedding.
-/

/-- An assertion type is equipped with a `CompleteLattice` structure,
used as the carrier for pre- and postconditions. -/
class abbrev Assertion (α : Type w) := CompleteLattice α



end Std.Internal.Do
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f8a8f1c814fee28a26db41c0516bdbf30637638024d5df0076a1fd257b54265 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assertion/Variant990bf36993fe8d379c6da49c1c61da39e4a3c7ae16673a7c6319f7d0f7aefa0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
