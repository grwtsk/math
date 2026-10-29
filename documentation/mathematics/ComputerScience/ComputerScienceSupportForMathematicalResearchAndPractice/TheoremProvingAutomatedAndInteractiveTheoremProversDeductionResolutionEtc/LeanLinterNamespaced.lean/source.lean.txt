-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogLintIf.Variantcb2f755dc8d16754b7126ea9238e8141b7789a1e88ba233408073927cba254aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb2f755dc8d16754b7126ea9238e8141b7789a1e88ba233408073927cba254aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LogLintIf.Variantcb2f755dc8d16754b7126ea9238e8141b7789a1e88ba233408073927cba254aa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cb2f755dc8d16754b7126ea9238e8141b7789a1e88ba233408073927cba254aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Lean/Linter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Lean

/-!
# Additional declarations related to linters
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogLintIf.Variantcb2f755dc8d16754b7126ea9238e8141b7789a1e88ba233408073927cba254aa

set_option autoImplicit true

open Lean Elab

namespace Lean.Linter

/-- If `linterOption` is true, print a linter warning message at the position determined by `stx`.
-/
def logLintIf [Monad m] [MonadLog m] [AddMessageContext m] [MonadOptions m]
    (linterOption : Lean.Option Bool) (stx : Syntax) (msg : MessageData) : m Unit := do
  if linterOption.get (← getOptions) then logLint linterOption stx msg

end Lean.Linter
