# Syntax And Evaluation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a46b8ec1e2f6b9548964dea622bd9f670402c31e` · SHA-256 `d18d0e1f7105258ffa4d57c5c69274abdb3c65d2624474563b5e1371f26e1471`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SyntaxAndEvaluation — Whole Nat-variable/NAND syntax, recursive Bool evaluation and two exact simp equations. Env is the original imported provider, not redefined.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc
Organized SHA-256: 05e5df2ce8e51990bf05f0e1e920ba1e2553b483ac33b3849cd2602b0a19cf49
PMD: 510.0.020.010.010 formulas and valuations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Folder.Boolean.Semantics

/-!
# Folder.Boolean.NAND

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.nand
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


open Folder
open Folder.Boolean

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.FormulasAndValuations.NandSyntaxAndEvaluation.Variant692bc8380d51d5d1

inductive NandExpr where
  | var : Nat → NandExpr
  | nand : NandExpr → NandExpr → NandExpr
deriving DecidableEq, Repr

namespace NandExpr

def eval : NandExpr → Env → Bool
  | var n, ρ => ρ n
  | nand x y, ρ => !(eval x ρ && eval y ρ)

@[simp]
theorem eval_var (n : Nat) (ρ : Env) :
    (var n).eval ρ = ρ n :=
  rfl

@[simp]
theorem eval_nand (x y : NandExpr) (ρ : Env) :
    (nand x y).eval ρ = !(x.eval ρ && y.eval ρ) :=
  rfl

end NandExpr

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.FormulasAndValuations.NandSyntaxAndEvaluation.Variant692bc8380d51d5d1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9158f876c45fa2a55cac98de52cff2a2ce1720cec0ad23ddf69fb5583d879fa9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/FormulasAndValuations/NandSyntaxAndEvaluation/Variant692bc8380d51d5d1/SyntaxAndEvaluation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
