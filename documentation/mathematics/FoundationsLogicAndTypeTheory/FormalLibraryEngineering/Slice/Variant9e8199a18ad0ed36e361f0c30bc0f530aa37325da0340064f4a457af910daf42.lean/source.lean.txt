-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StdSliceIter.Variant7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.StdSliceIter.Variant7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Producers/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Slice.Operations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StdSliceIter.Variant7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1

@[expose] public section

/-!
# Slice iterator

This module provides iterators over slices from `Std.Slice` via `Std.Slice.iter`.
-/

/--
Returns an iterator over the given slice. This iterator will emit the elements of the slice
in increasing order of the indices.
-/
@[always_inline, inline]
def Std.Slice.iter [ToIterator (Slice γ) Id α β] (s : Slice γ) :=
  (Internal.iter s : Iter β)
