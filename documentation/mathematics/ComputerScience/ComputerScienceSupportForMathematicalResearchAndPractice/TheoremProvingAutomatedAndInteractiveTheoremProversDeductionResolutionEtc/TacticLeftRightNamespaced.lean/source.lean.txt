-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftRightMeta.Variante2130559b37aa2b2c7e13001f38e794d14c9a8964943a9e79ae73669f10abd81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2130559b37aa2b2c7e13001f38e794d14c9a8964943a9e79ae73669f10abd81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeftRightMeta.Variante2130559b37aa2b2c7e13001f38e794d14c9a8964943a9e79ae73669f10abd81","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e2130559b37aa2b2c7e13001f38e794d14c9a8964943a9e79ae73669f10abd81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/LeftRight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Siddhartha Gadgil. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Siddhartha Gadgil
-/
import Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftRightMeta.Variante2130559b37aa2b2c7e13001f38e794d14c9a8964943a9e79ae73669f10abd81

namespace Mathlib.Tactic.LeftRight
open Lean Meta Elab Tactic
def leftRightMeta (name : Name) (idx max : Nat) (goal : MVarId) : MetaM (List MVarId) := do
  goal.withContext do
    goal.checkNotAssigned name
    let target ← goal.getType'
    matchConstInduct target.getAppFn
      (fun _ ↦ throwTacticEx `constructor goal "target is not an inductive datatype")
      fun ival us ↦ do
        unless ival.ctors.length == max do
          throwTacticEx `constructor goal
            s!"{name} target applies for inductive types with exactly two constructors"
        let ctor := ival.ctors[idx]!
        goal.apply <| mkConst ctor us

end LeftRight

open LeftRight

elab "left" : tactic => do
  Lean.Elab.Tactic.liftMetaTactic (leftRightMeta `left 0 2)

elab "right" : tactic => do
  Lean.Elab.Tactic.liftMetaTactic (leftRightMeta `right 1 2)
