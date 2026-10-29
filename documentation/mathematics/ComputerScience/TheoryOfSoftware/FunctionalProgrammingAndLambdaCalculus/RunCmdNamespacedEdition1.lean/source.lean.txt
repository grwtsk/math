-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant878b245d7d5b8c6a68434a6554e8de4a64e2975f3ca59cdbc72dea07a2fbf858","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"878b245d7d5b8c6a68434a6554e8de4a64e2975f3ca59cdbc72dea07a2fbf858","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Eval.Variant878b245d7d5b8c6a68434a6554e8de4a64e2975f3ca59cdbc72dea07a2fbf858","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"878b245d7d5b8c6a68434a6554e8de4a64e2975f3ca59cdbc72dea07a2fbf858","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/RunCmd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Mario Carneiro
-/
import Lean.Elab.Eval
import Std.Util.TermUnsafe

/-!
Defines commands to compile and execute a command / term / tactic on the spot:

* `run_cmd doSeq` command which executes code in `CommandElabM Unit`.
  This is almost the same as `#eval show CommandElabM Unit from do doSeq`,
  except that it doesn't print an empty diagnostic.

* `run_tac doSeq` tactic which executes code in `TacticM Unit`.

* `by_elab doSeq` term which executes code in `TermElabM Expr` to produce an expression.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant878b245d7d5b8c6a68434a6554e8de4a64e2975f3ca59cdbc72dea07a2fbf858

namespace Std.Tactic.RunCmd
open Lean Meta Elab Command Term Tactic

/--
The `run_cmd doSeq` command executes code in `CommandElabM Unit`.
This is almost the same as `#eval show CommandElabM Unit from do doSeq`,
except that it doesn't print an empty diagnostic.
-/
elab (name := runCmd) "run_cmd " elems:doSeq : command => do
  ← liftTermElabM <|
    unsafe evalTerm (CommandElabM Unit)
      (mkApp (mkConst ``CommandElabM) (mkConst ``Unit))
      (← `(discard do $elems))

/-- The `run_tac doSeq` tactic executes code in `TacticM Unit`. -/
elab (name := runTac) "run_tac " e:doSeq : tactic => do
  ← unsafe evalTerm (TacticM Unit) (mkApp (mkConst ``TacticM) (mkConst ``Unit))
    (← `(discard do $e))

/--
* The `by_elab doSeq` expression runs the `doSeq` as a `TermElabM Expr` to
  synthesize the expression.
* `by_elab fun expectedType? => do doSeq` receives the expected type (an `Option Expr`)
  as well.
-/
syntax (name := byElab) "by_elab " doSeq : term

/-- Elaborator for `by_elab`. -/
@[term_elab byElab] def elabRunElab : TermElab := fun
| `(by_elab $cmds:doSeq), expectedType? => do
  if let `(Lean.Parser.Term.doSeq| $e:term) := cmds then
    if e matches `(Lean.Parser.Term.doSeq| fun $[$_args]* => $_) then
      let tac ← unsafe evalTerm
        (Option Expr → TermElabM Expr)
        (Lean.mkForall `x .default
          (mkApp (mkConst ``Option) (mkConst ``Expr))
          (mkApp (mkConst ``TermElabM) (mkConst ``Expr))) e
      return ← tac expectedType?
  (← unsafe evalTerm (TermElabM Expr) (mkApp (mkConst ``TermElabM) (mkConst ``Expr))
    (← `(do $cmds)))
| _, _ => throwUnsupportedSyntax
