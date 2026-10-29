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
