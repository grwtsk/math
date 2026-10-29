-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Result.Variant29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Result.Variant29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/LRATChecker.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Actions
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Class


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Result.Variant29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb

@[expose] public section

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

inductive Result
  | success
  | outOfProof
  | rupFailure
deriving Inhabited, DecidableEq

instance : ToString Result where
  toString := fun
    | .success => "success"
    | .outOfProof => "out of proof"
    | .rupFailure => "rup failure"

open Formula

def lratChecker [DecidableEq α] [Clause α β] [Entails α σ] [Formula α β σ] (f : σ)
    (prf : List (Action β α)) :
    Result :=
  match prf with
  | [] => .outOfProof
  | .addEmpty _ rupHints :: _ =>
    let (_, checkSuccess) := performRupAdd f Clause.empty rupHints
    if checkSuccess then
      .success
    else
      .rupFailure
  | .addRup _ c rupHints :: restPrf =>
    let (f, checkSuccess) := performRupAdd f c rupHints
    if checkSuccess then
      lratChecker f restPrf
    else
      .rupFailure
  | .addRat _ c pivot rupHints ratHints :: restPrf =>
    let (f, checkSuccess) := performRatAdd f c pivot rupHints ratHints
    if checkSuccess then
      lratChecker f restPrf
    else
      .rupFailure
  | .del ids :: restPrf => lratChecker (delete f ids) restPrf

end Internal
end LRAT
end Std.Tactic.BVDecide
