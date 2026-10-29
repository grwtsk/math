-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapList.Variant4d8ab05df493b69d8169f17986723e3b8c9c697a485b20821f4a2134f5ab56bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d8ab05df493b69d8169f17986723e3b8c9c697a485b20821f4a2134f5ab56bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MapList.Variant4d8ab05df493b69d8169f17986723e3b8c9c697a485b20821f4a2134f5ab56bc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4d8ab05df493b69d8169f17986723e3b8c9c697a485b20821f4a2134f5ab56bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Task.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich

Additional `Task` definitions.
-/
module

prelude
public import Init.Core
import Init.Data.List.Basic
import Init.Data.Nat.Bitwise.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapList.Variant4d8ab05df493b69d8169f17986723e3b8c9c697a485b20821f4a2134f5ab56bc

public section

namespace Task

/--
Creates a task that, when all `tasks` have finished, computes the result of `f` applied to their
results.
-/
def mapList (f : List α → β) (tasks : List (Task α)) (prio := Task.Priority.default)
    (sync := false) : Task β :=
  go tasks []
where
  go
    | [], as =>
      if sync then
        .pure <| f as.reverse
      else
        Task.spawn (prio := prio) fun _ => f as.reverse
    | [t], as => t.map (fun a => f (a :: as).reverse) prio sync
    | t::ts, as => t.bind (fun a => go ts (a :: as)) prio sync
