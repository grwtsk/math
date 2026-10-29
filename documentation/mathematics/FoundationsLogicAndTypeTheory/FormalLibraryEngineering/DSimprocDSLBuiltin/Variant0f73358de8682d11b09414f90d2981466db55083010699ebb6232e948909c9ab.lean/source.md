# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimprocDSLBuiltin.Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1fa1e97e933bcca98c9360f7577241e149beccc` · SHA-256 `0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Lean.Elab.Tactic.Grind.DSimprocDSL
import Init.Sym.DSimp.DSimprocDSL
import Lean.Meta.Sym.DSimp.Reduce
import Lean.Meta.Sym.DSimp.DSimproc
import Lean.Meta.Sym.DSimp.EvalGround
namespace Lean.Elab.Tactic.Grind
open Meta Sym.DSimp

-- DSimproc elaborators

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.ground]
def elabGround : SymDSimprocElab := fun _ =>
  return evalGround

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.zetaDelta]
def elabZetaDeltaAll : SymDSimprocElab := fun _ =>
  return zetaDeltaAll

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.zeta]
def elabZeta : SymDSimprocElab := fun _ =>
  return zeta

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.beta]
def elabBeta : SymDSimprocElab := fun _ =>
  return beta

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.reduceMatch]
def elabReduceMatch : SymDSimprocElab := fun _ =>
  return dsimpMatch

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.proj]
def elabProj : SymDSimprocElab := fun _ =>
  return dsimpProj

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.none]
def elabNone : SymDSimprocElab := fun _ =>
  return fun _ => return .rfl

@[builtin_sym_dsimproc andThen]
def elabDSimprocAndThen : SymDSimprocElab := fun stx => do
  let `(sym_dsimproc| $left >> $right) := stx | throwUnsupportedSyntax
  let left ← elabSymDSimproc left
  let right ← elabSymDSimproc right
  return left >> right

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.orElse]
def elabDSimprocOrElse : SymDSimprocElab := fun stx => do
  let `(sym_dsimproc| $left <|> $right) := stx | throwUnsupportedSyntax
  let left ← elabSymDSimproc left
  let right ← elabSymDSimproc right
  return left <|> right

@[builtin_sym_dsimproc dsimprocParen]
def elabDSimprocParen : SymDSimprocElab := fun stx => do
  let `(sym_dsimproc| ( $proc) ) := stx | throwUnsupportedSyntax
  elabSymDSimproc proc

end Lean.Elab.Tactic.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed586230d450af315722c0b0aceb5b46319b49b1626028955587a910d862fa04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
