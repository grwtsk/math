-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ETask.Variant8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ETask.Variant8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Task.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Control.Option
public import Init.Control.Except


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ETask.Variant8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed

namespace Lake

public instance : Monad Task where
  map := Task.map
  pure := Task.pure
  bind := Task.bind

public abbrev ETask ε := ExceptT ε Task
public abbrev OptionTask := OptionT Task

@[expose] public def BaseIOTask := Task
public instance : Monad BaseIOTask := inferInstanceAs (Monad Task)
public instance [Inhabited α] : Inhabited (BaseIOTask α) := inferInstance

public abbrev EIOTask ε := ExceptT ε BaseIOTask
public abbrev OptionIOTask := OptionT BaseIOTask

public instance : Inhabited (OptionIOTask α) := ⟨failure⟩
