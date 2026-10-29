# Basic Basic Namespaced Public Self — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f7c669b6f5295332454d3bd79360e988984b49c` · SHA-256 `514f3f68d9830c623d27ef3d484ffec9b6e7c7f95d0230901c38526d80a70c6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootStdSlice.Variant2584d778430d08315d7590290aebabc7ab6415c59126dcb8615e3544b85d6093","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2584d778430d08315d7590290aebabc7ab6415c59126dcb8615e3544b85d6093","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RootStdSlice.Variant2584d778430d08315d7590290aebabc7ab6415c59126dcb8615e3544b85d6093","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2584d778430d08315d7590290aebabc7ab6415c59126dcb8615e3544b85d6093","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Slice/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootStdSlice.Variant2584d778430d08315d7590290aebabc7ab6415c59126dcb8615e3544b85d6093

public section

namespace Std.Slice

/--
Wrapper structure for slice types that makes generic slice functions available via dot notation.
The implementation of the functions depends on the type `γ` of the internal representation.

Usually, if `γ` is the internal representation of a slice of some type `α`, then `Slice γ` can be
used directly, but one usually creates an abbreviation `AlphaSlice := Slice γ` and provides
`Self (Slice γ) AlphaSlice` and `Sliceable shape α AlphaSlice` instances. Then `AlphaSlice` can
be worked with without ever thinking of `Slice` and it is possible to extend the API with
`α`/`γ`-specific functions.
-/
structure _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootStdSlice.Variant2584d778430d08315d7590290aebabc7ab6415c59126dcb8615e3544b85d6093.Std.Slice (γ : Type u) where
  internalRepresentation : γ

/--
This typeclass determines that some type `α` is equal to `β` and that `β` should be used in APIs
instead of `α`.

`Self` is used in the polymorphic slice library.
-/
class Self (α : Type u) (β : outParam (Type u)) where
  eq : α = β := by rfl

end Std.Slice
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c748a3f81d574500435ad9b7c1bc4fcd55f1b270a3900f824a9b36f55252459 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf516b7ce6cafe96f5ee0d498c2c6a9a8bc18e0a5e146ae1657b7a3dfc69bb481.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
