# Simproc DSLPublic Sym Simproc Elab — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a6b27e6d9b48bd7c267e8c5a42b970a49bc746a` · SHA-256 `bb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Meta.Sym.Simp.Discharger
import Init.Sym.Simp.SimprocDSL
public section
namespace Lean.Elab.Tactic.Grind
open Meta Sym.Simp

/-- Elaboration function for `sym_simproc` syntax. -/
abbrev SymSimprocElab := Syntax → GrindTacticM Simproc

/-- Elaboration function for `sym_discharger` syntax. -/
abbrev SymDischargerElab := Syntax → GrindTacticM Discharger

unsafe builtin_initialize symSimprocElabAttribute : KeyedDeclsAttribute SymSimprocElab ←
  mkElabAttribute SymSimprocElab `builtin_sym_simproc `sym_simproc
    `Lean.Parser.Sym.Simp `Lean.Elab.Tactic.Grind.SymSimprocElab "sym_simproc"

unsafe builtin_initialize symDischargerElabAttribute : KeyedDeclsAttribute SymDischargerElab ←
  mkElabAttribute SymDischargerElab `builtin_sym_discharger `sym_discharger
    `Lean.Parser.Sym.Simp `Lean.Elab.Tactic.Grind.SymDischargerElab "sym_discharger"

/-- Elaborate a `sym_simproc` syntax node into a `Simproc`. -/
partial def elabSymSimproc (stx : Syntax) : GrindTacticM Simproc := do
  let elabFns := symSimprocElabAttribute.getEntries (← getEnv) stx.getKind
  for elabFn in elabFns do
    try
      return (← elabFn.value stx)
    catch ex =>
      match ex with
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then continue
        else throw ex
      | _ => throw ex
  throwErrorAt stx "unsupported sym_simproc syntax `{stx.getKind}`"

/-- Elaborate a `sym_discharger` syntax node into a `Discharger`. -/
def elabSymDischarger (stx : Syntax) : GrindTacticM Discharger := do
  let elabFns := symDischargerElabAttribute.getEntries (← getEnv) stx.getKind
  for elabFn in elabFns do
    try
      return (← elabFn.value stx)
    catch ex =>
      match ex with
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then continue
        else throw ex
      | _ => throw ex
  throwErrorAt stx "unsupported sym_discharger syntax `{stx.getKind}`"

end Lean.Elab.Tactic.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7acdf813edd6de6e7bd3c27f508ab9127018e694c4009b3844fd469c6a548caf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
