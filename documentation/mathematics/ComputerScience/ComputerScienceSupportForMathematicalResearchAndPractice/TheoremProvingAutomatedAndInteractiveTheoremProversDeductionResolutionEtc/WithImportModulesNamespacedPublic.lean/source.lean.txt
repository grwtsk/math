-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreWithImportModules.Variant3477d7a586d2d9659a517d85467b7b3fe4220b293b5bce27ff34ce0660aa566f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3477d7a586d2d9659a517d85467b7b3fe4220b293b5bce27ff34ce0660aa566f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CoreWithImportModules.Variant3477d7a586d2d9659a517d85467b7b3fe4220b293b5bce27ff34ce0660aa566f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3477d7a586d2d9659a517d85467b7b3fe4220b293b5bce27ff34ce0660aa566f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Lean/WithImportModules.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public import Lean.CoreM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreWithImportModules.Variant3477d7a586d2d9659a517d85467b7b3fe4220b293b5bce27ff34ce0660aa566f

open Lean

public def Core.withImportModules (modules : Array Name) {α} (f : CoreM α) : IO α := do
  initSearchPath (← findSysroot)
  unsafe Lean.withImportModules (modules.map (fun m => {module := m})) {} (trustLevel := 1024)
    fun env => Prod.fst <$> Core.CoreM.toIO
        (ctx := { fileName := "<CoreM>", fileMap := default }) (s := { env := env }) do f
