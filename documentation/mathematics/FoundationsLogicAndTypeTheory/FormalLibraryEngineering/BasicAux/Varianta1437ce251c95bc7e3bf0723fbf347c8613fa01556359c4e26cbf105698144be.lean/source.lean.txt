-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Position.Variant237165012461d0591f8ab3a838871a06e4aa2cb0b1ac7a446a8840e3ecfd9dda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"237165012461d0591f8ab3a838871a06e4aa2cb0b1ac7a446a8840e3ecfd9dda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Position.Variant237165012461d0591f8ab3a838871a06e4aa2cb0b1ac7a446a8840e3ecfd9dda","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"237165012461d0591f8ab3a838871a06e4aa2cb0b1ac7a446a8840e3ecfd9dda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Lsp/BasicAux.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.Json.FromToJson.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Position.Variant237165012461d0591f8ab3a838871a06e4aa2cb0b1ac7a446a8840e3ecfd9dda

public section

/-
This module exists to cut the dependency on `Std.Data.TreeMap.AdditionalOperations` from a large
chunk of the meta framework.
-/

namespace Lean
namespace Lsp

open Json

abbrev DocumentUri := String

/-- We adopt the convention that zero-based UTF-16 positions as sent by LSP clients
are represented by `Lsp.Position` while internally we mostly use `String.Pos` UTF-8
offsets. For diagnostics, one-based `Lean.Position`s are used internally.
`character` is accepted liberally: actual character := min(line length, character) -/
structure Position where
  line : Nat
  character : Nat
  deriving Inhabited, BEq, Ord, Hashable, ToJson, FromJson, Repr

instance : ToString Position := ⟨fun p =>
  "(" ++ toString p.line ++ ", " ++ toString p.character ++ ")"⟩

instance : LT Position := ltOfOrd
instance : LE Position := leOfOrd

structure Range where
  start : Position
  «end» : Position
  deriving Inhabited, BEq, Hashable, ToJson, FromJson, Ord, Repr

instance : LT Range := ltOfOrd
instance : LE Range := leOfOrd

end Lsp
end Lean


