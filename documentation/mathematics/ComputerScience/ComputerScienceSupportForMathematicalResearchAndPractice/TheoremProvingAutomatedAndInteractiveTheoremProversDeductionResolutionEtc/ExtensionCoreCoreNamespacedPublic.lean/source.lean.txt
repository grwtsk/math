-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstMembershipHyp.Variant3c6cefd54ad5185a105e2bed5be6ebbb9f2db7368a7f1b580eea1a7e6d008d5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c6cefd54ad5185a105e2bed5be6ebbb9f2db7368a7f1b580eea1a7e6d008d5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InstMembershipHyp.Variant3c6cefd54ad5185a105e2bed5be6ebbb9f2db7368a7f1b580eea1a7e6d008d5e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3c6cefd54ad5185a105e2bed5be6ebbb9f2db7368a7f1b580eea1a7e6d008d5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Inclusion/Extension/Core/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Inclusion.Extension.Core.Init
public meta import Mathlib.Tactic.Inclusion.ExtensionAPI.Attr

/-!
# Core extensions for the `inclusion` tactic

This file defines inclusion and hypothesis extensions for the core inclusion family.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstMembershipHyp.Variant3c6cefd54ad5185a105e2bed5be6ebbb9f2db7368a7f1b580eea1a7e6d008d5e

public meta section

open Lean Meta

namespace Inclusion

attribute [inclusion_op core] IntervalBool.not_mem IntervalBool.and_mem IntervalBool.or_mem
attribute [hypothesis_op core] ToSet.mem_of_eq_of_mem ToSet.mem_of_mem_of_eq

/-- `HypothesisExt` for direct `ToSet` instance membership hypotheses. -/
@[hypothesis_ext _ ∈ _]
def instMembershipHyp : HypothesisExt where
  family := `core
  derive h := do
    let type ← instantiateMVars (← inferType h)
    let some (expr, set, _) := toSetMem? type | failure
    if set.hasFVar || set.hasMVar then failure
    let some iVar ← findIVar? expr | failure
    addInclusionHyp iVar.iExpr ⟨set, h⟩

/-- `HypothesisExt` for conjunction hypotheses. -/
@[hypothesis_ext _ ∧ _]
def andHyp : HypothesisExt where
  family := `core
  derive h := do
    let (``And, #[_, _]) := (← instantiateMVars (← inferType h)).getAppFnArgs | failure
    runHypothesisExts (← mkAppM ``And.left #[h])
    runHypothesisExts (← mkAppM ``And.right #[h])

end Inclusion
