-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShouldBetaReduce.Variantc9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ShouldBetaReduce.Variantc9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/Structural/Preprocess.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.RecAppSyntax
public import Lean.Meta.WHNF


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShouldBetaReduce.Variantc9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e

public section

namespace Lean.Elab.Structural
open Meta

private def shouldBetaReduce (e : Expr) (recFnNames : Array Name) : Bool :=
  if e.isHeadBetaTarget then
    e.getAppFn.find? (fun e => e.isConst && recFnNames.contains e.constName!) |>.isSome
  else
    false

/--
Preprocesses the expressions to improve the effectiveness of `elimRecursion`.

* Beta reduce terms where the recursive function occurs in the lambda term.
  Example:
  ```
  def f : Nat → Nat
    | 0 => 1
    | i+1 => (fun x => f x) i
  ```

* Floats out the RecApp markers.
  Example:
  ```
  def f : Nat → Nat
    | 0 => 1
    | i+1 => (f x) i
  ```

* Unfold auxiliary definitions abstracting over the function call
  (typically abstracted) proofs.

-/
def preprocess (e : Expr) (recFnNames : Array Name) (numFixedParams : Nat) : CoreM Expr := do
  let e ← unfoldIfArgIsAppOf recFnNames numFixedParams e
  Core.transform e
    (pre := fun e =>
      if shouldBetaReduce e recFnNames then
        return .visit e.headBeta
      else
        return .continue)
    (post := fun e => do
      if e.isApp && e.getAppFn.isMData then
        let .mdata m f := e.getAppFn | unreachable!
        if m.isRecApp then
          return .done (.mdata m (f.beta e.getAppArgs))
      return .continue)


end Lean.Elab.Structural
