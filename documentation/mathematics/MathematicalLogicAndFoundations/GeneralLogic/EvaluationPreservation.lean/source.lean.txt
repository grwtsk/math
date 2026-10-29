/-
Valuation equality for the exact Boolean-to-NAND translation
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: c6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead
Organized SHA-256: 8d557ccea5e08849fd65fd6a8075288d8f3d08fe8c9d390a3d380d0fe2c30af9
PMD: 510.0.020.010 propositional logic (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Whole source e/ρ theorem and every induction case/rfl/simp proof command unchanged. Exact same-version translation import precedes module docs. This preserves Boolean denotation under original providers, with no new syntax, semantic law, circuit bound or downstream completeness theorem. -/

import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.NandExpressionTranslation.Variantc6a1780edd5f4e15.Translation
import Folder.Boolean.NAND

/-!
# Folder.Boolean.Completeness

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.completeness
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


open Folder
open Folder.Boolean

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.NandExpressionTranslation.Variantc6a1780edd5f4e15

theorem compileToNand_correct
    (e : BoolExpr)
    (ρ : Env) :
    (compileToNand e).eval ρ = e.eval ρ := by
  induction e with
  | var n =>
      rfl
  | tru =>
      simp [compileToNand]
  | fls =>
      simp [compileToNand]
  | not e ih =>
      simp [compileToNand, ih]
  | and a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | or a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | xor a b iha ihb =>
      simp [compileToNand, iha, ihb]

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.NandExpressionTranslation.Variantc6a1780edd5f4e15
