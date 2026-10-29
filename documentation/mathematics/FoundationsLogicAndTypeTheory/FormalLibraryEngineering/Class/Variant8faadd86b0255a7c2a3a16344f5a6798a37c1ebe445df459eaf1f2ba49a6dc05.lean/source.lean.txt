-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Queue.Variantc2b64776f16a3efb5bec2d2e0b53e42754a03df46572b2cb3cd6ab221f24d7bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2b64776f16a3efb5bec2d2e0b53e42754a03df46572b2cb3cd6ab221f24d7bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Queue.Variantc2b64776f16a3efb5bec2d2e0b53e42754a03df46572b2cb3cd6ab221f24d7bd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c2b64776f16a3efb5bec2d2e0b53e42754a03df46572b2cb3cd6ab221f24d7bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Search/Queue/Class.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.Data


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Queue.Variantc2b64776f16a3efb5bec2d2e0b53e42754a03df46572b2cb3cd6ab221f24d7bd

public section

open Lean

namespace Aesop

class Queue (Q : Type) where
  init : BaseIO Q
  addGoals : Q → Array GoalRef → BaseIO Q
  popGoal : Q → BaseIO (Option GoalRef × Q)

namespace Queue

def init' [Queue Q] (grefs : Array GoalRef) : BaseIO Q := do
  addGoals (← init) grefs

end Aesop.Queue
