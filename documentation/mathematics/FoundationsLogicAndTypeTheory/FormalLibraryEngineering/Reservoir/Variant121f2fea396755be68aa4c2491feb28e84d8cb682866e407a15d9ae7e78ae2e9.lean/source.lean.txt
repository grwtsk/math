-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReservoirResp.Variante3cdb056f77073f7adff4382a41a08959decfba90b0ad53772995c3b8b4e98fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3cdb056f77073f7adff4382a41a08959decfba90b0ad53772995c3b8b4e98fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ReservoirResp.Variante3cdb056f77073f7adff4382a41a08959decfba90b0ad53772995c3b8b4e98fe","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"e3cdb056f77073f7adff4382a41a08959decfba90b0ad53772995c3b8b4e98fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Reservoir.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Util.JsonObject


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReservoirResp.Variante3cdb056f77073f7adff4382a41a08959decfba90b0ad53772995c3b8b4e98fe

open Lean

namespace Lake

public def Reservoir.lakeHeaders : Array String := #[
  "X-Reservoir-Api-Version:1.0.0",
  "X-Lake-Registry-Api-Version:0.1.0"
]

/-- A Reservoir API response object. -/
public inductive ReservoirResp (α : Type u)
| data (a : α)
| error (status : Nat) (message : String)

public protected def ReservoirResp.fromJson? [FromJson α] (val : Json) : Except String (ReservoirResp α) := do
  if let .ok obj := JsonObject.fromJson? val then
    if let some (err : JsonObject) ← obj.get? "error" then
      let status ← err.get "status"
      let message ← err.get "message"
      return .error status message
    else if let some (val : Json) ← obj.get? "data" then
      .data <$> fromJson? val
    else
      .data <$> fromJson? val
  else
    .data <$> fromJson? val

public instance [FromJson α] : FromJson (ReservoirResp α) := ⟨ReservoirResp.fromJson?⟩
