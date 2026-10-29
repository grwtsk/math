# Parser — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d8064c8d7a2a9d8b264e07255787c2e3fbf642e` · SHA-256 `6be6e483e98e1a70a027f6541a2ae256411602308ed837634c5e6270897a3b42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

namespace Lean.Parser.Tactic

-- syntax simpArg := simpStar <|> simpErase <|> simpLemma
/--
A `simpArg` is either a `*`, `-lemma` or a simp lemma specification
(which includes the `↑` `↓` `←` specifications for pre, post, reverse rewriting).
-/
def simpArg := simpStar.binary `orelse (simpErase.binary `orelse simpLemma)

/-- A simp args list is a list of `simpArg`. This is the main argument to `simp`. -/
syntax simpArgs := " [" simpArg,* "]"

/-- Extract the arguments from a `simpArgs` syntax as an array of syntaxes -/
def getSimpArgs? : Syntax → Option (Array Syntax)
  | `(simpArgs| [$args,*]) => pure args.getElems
  | _ => none

-- syntax dsimpArg := simpErase <|> simpLemma
/--
A `dsimpArg` is similar to `simpArg`, but it does not have the `simpStar` form
because it does not make sense to use hypotheses in `dsimp`.
-/
def dsimpArg := simpErase.binary `orelse simpLemma

/-- A dsimp args list is a list of `dsimpArg`. This is the main argument to `dsimp`. -/
syntax dsimpArgs := " [" dsimpArg,* "]"

/-- Extract the arguments from a `dsimpArgs` syntax as an array of syntaxes -/
def getDSimpArgs? : Syntax → Option (Array Syntax)
  | `(dsimpArgs| [$args,*]) => pure args.getElems
  | _                       => none
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75166deee9d4b983947f1648b85cc34b1217a070a688924298b6add2d0be2b9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant6be6e483e98e1a70a027f6541a2ae256411602308ed837634c5e6270897a3b42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
