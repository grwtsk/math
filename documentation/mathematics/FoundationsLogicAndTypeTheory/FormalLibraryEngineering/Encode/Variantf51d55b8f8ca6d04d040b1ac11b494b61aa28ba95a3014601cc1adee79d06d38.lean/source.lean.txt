-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Encode.Variant9433d8c9b8b8664dfdb9f8e9d761a85b40752ca2f873d695ea49fd3d629a3ab3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9433d8c9b8b8664dfdb9f8e9d761a85b40752ca2f873d695ea49fd3d629a3ab3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Encode.Variant9433d8c9b8b8664dfdb9f8e9d761a85b40752ca2f873d695ea49fd3d629a3ab3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9433d8c9b8b8664dfdb9f8e9d761a85b40752ca2f873d695ea49fd3d629a3ab3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Internal/Encode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Internal.ChunkedBuffer
public import Std.Http.Data.Version


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Encode.Variant9433d8c9b8b8664dfdb9f8e9d761a85b40752ca2f873d695ea49fd3d629a3ab3

public section

/-!
# Encode

Serializes types to a `ChunkedBuffer` containing their canonical HTTP representation for a specific
protocol version.
-/

namespace Std.Http.Internal

set_option linter.all true

/--
Serializes a type `t` to a `ChunkedBuffer` containing its canonical HTTP representation for protocol
version `v`.
-/
class Encode (v : Version) (t : Type) where
  /--
  Encodes a type `t` to a `ChunkedBuffer`.
  -/
  encode : ChunkedBuffer → t → ChunkedBuffer

instance : Encode .v11 Version where
  encode buffer := buffer.writeString ∘ toString

end Std.Http.Internal
