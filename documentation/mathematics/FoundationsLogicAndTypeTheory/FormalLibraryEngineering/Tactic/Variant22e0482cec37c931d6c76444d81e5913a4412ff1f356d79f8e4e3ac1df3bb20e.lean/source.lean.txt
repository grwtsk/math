-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalTacticAtRaw.Variantc28c84aab56832c5f719181f6ee1740cf6a54d5299fc4b9c3c21af3febadbe54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c28c84aab56832c5f719181f6ee1740cf6a54d5299fc4b9c3c21af3febadbe54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalTacticAtRaw.Variantc28c84aab56832c5f719181f6ee1740cf6a54d5299fc4b9c3c21af3febadbe54","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c28c84aab56832c5f719181f6ee1740cf6a54d5299fc4b9c3c21af3febadbe54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalTacticAtRaw.Variantc28c84aab56832c5f719181f6ee1740cf6a54d5299fc4b9c3c21af3febadbe54

namespace Lean.Elab.Tactic

/--
Like `evalTacticAt`, but without restoring the goal list or pruning solved goals.
Useful when these tasks are already being done in an outer loop.
-/
def evalTacticAtRaw (tac : Syntax) (mvarId : MVarId) : TacticM (List MVarId) := do
  setGoals [mvarId]
  evalTactic tac
  getGoals
