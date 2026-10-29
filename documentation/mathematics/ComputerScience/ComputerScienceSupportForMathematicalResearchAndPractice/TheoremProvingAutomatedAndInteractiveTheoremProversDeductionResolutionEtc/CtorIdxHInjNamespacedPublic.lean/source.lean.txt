-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HinjSuffix.Variantb0da294bbaf1d74b99bf14e65b2a22eccf115f45f08935aa3204f418441d4bb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0da294bbaf1d74b99bf14e65b2a22eccf115f45f08935aa3204f418441d4bb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HinjSuffix.Variantb0da294bbaf1d74b99bf14e65b2a22eccf115f45f08935aa3204f418441d4bb0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b0da294bbaf1d74b99bf14e65b2a22eccf115f45f08935aa3204f418441d4bb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/CtorIdxHInj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module
prelude
public import Lean.Meta.Basic
import Lean.Meta.Tactic.Refl
import Lean.Meta.Constructions.CtorIdx
import Lean.Meta.Tactic.Subst

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HinjSuffix.Variantb0da294bbaf1d74b99bf14e65b2a22eccf115f45f08935aa3204f418441d4bb0

namespace Lean.Meta

def hinjSuffix := "hinj"

public def mkCtorIdxHInjTheoremNameFor (indName : Name) : Name :=
  (mkCtorIdxName indName).str hinjSuffix

partial def mkHInjectiveTheorem? (thmName : Name) (indVal : InductiveVal) : MetaM TheoremVal := do
  let us := indVal.levelParams.map mkLevelParam
  let thmType ←
    forallBoundedTelescope indVal.type (indVal.numParams + indVal.numIndices) fun xs1 _ => do
    forallBoundedTelescope indVal.type (indVal.numParams + indVal.numIndices) fun xs2 _ => do
    withImplicitBinderInfos xs1 do
    withImplicitBinderInfos xs2 do
    withPrimedNames xs2 do
    withLocalDeclD `x  (mkAppN (mkConst indVal.name us) xs1) fun x1 => do
    withLocalDeclD `x' (mkAppN (mkConst indVal.name us) xs2) fun x2 => do
      let ctorIdxApp1 := mkAppN (mkConst (mkCtorIdxName indVal.name) us) (xs1.push x1)
      let ctorIdxApp2 := mkAppN (mkConst (mkCtorIdxName indVal.name) us) (xs2.push x2)
      let mut thmType ← mkEq ctorIdxApp1 ctorIdxApp2
      for a1 in (xs1.push x1).reverse, a2 in (xs2.push x2).reverse do
        if (← isProof a1) then
          continue
        let name := (← a1.fvarId!.getUserName).appendAfter "_eq"
        let eq ← mkEqHEq a1 a2
        thmType := mkForall name .default eq thmType
      mkForallFVars (xs1.push x1 ++ xs2.push x2) thmType

  let thmVal ← mkFreshExprSyntheticOpaqueMVar thmType
  let mut mvarId := thmVal.mvarId!
  mvarId := (← mvarId.introN (2 * (indVal.numParams + indVal.numIndices + 1))).2
  repeatIntroSubstRefl mvarId
  let thmVal ← instantiateMVars thmVal
  return { name := thmName, levelParams := indVal.levelParams, type := thmType, value := thmVal }
where
  repeatIntroSubstRefl (mvarId : MVarId) : MetaM Unit := do
    let type ← mvarId.getType
    if type.isForall then
      let (h, mvarId) ← mvarId.intro1
      let (h, mvarId) ← heqToEq mvarId h
      let (_, mvarId) ← substEq mvarId h
      repeatIntroSubstRefl mvarId
    else
      mvarId.refl


builtin_initialize registerReservedNamePredicate fun env n =>
  match n with
  | .str p "hinj" => (isCtorIdxCore? env p).isSome
  | _ => false

builtin_initialize
  registerReservedNameAction fun name => do
    let .str p "hinj" := name | return false
    let some indVal := isCtorIdxCore? (← getEnv) p | return false
    MetaM.run' do
    realizeConst p name do
      let thmVal ← mkHInjectiveTheorem? name indVal
      addDecl (← mkThmOrUnsafeDef thmVal)
    return true

end Lean.Meta
