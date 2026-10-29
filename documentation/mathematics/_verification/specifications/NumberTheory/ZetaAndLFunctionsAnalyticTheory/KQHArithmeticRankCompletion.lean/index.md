# Verification target: KQHArithmetic Rank Completion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baa87336685874ff8e26e3e854169bd47a4abfde",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticRankCompletion/Variant57f523ff0eccf87bfd99f0f182e35dc3b19c7fdb0f345050c5d1c992e0c697a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticRankCompletion.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticRankCompletion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baa87336685874ff8e26e3e854169bd47a4abfde`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticRankCompletion/Variant57f523ff0eccf87bfd99f0f182e35dc3b19c7fdb0f345050c5d1c992e0c697a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticRankCompletion/Variant57f523ff0eccf87bfd99f0f182e35dc3b19c7fdb0f345050c5d1c992e0c697a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strict_rank_completion](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticRankCompletion.lean/declarations/strict-rank-completion.md) | 29 | `result-track:291ff6b4570dbd66162d3b8eed6620a26e2d3d4bf53902aea05b54c1a5083fdc` |
| 2 | `theorem` | [strict_rank_completion_scaled](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticRankCompletion.lean/declarations/strict-rank-completion-scaled.md) | 39 | `result-track:2ce873bf3b888906028f3fef51e090169123a5619fe8ca06c4f25eb546d6d3ea` |
| 3 | `theorem` | [zero_margin_cross_obstruction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticRankCompletion.lean/declarations/zero-margin-cross-obstruction.md) | 47 | `result-track:5be8cfaa2f3986420ddc3a092c9020a9b0abae953cbc7e1f4d98328184963031` |
| 4 | `theorem` | [continuous_baseline_certificate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHArithmeticRankCompletion.lean/declarations/continuous-baseline-certificate.md) | 57 | `result-track:40ac0ea006520cddefaf53e4c2ecd4e362294b3f043caffab58a751ff89a33bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d1c9710d1f8149a89de3744eac27edcf30df1ca3d85a3b58b01ce5f588974d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticRankCompletion/Variant57f523ff0eccf87bfd99f0f182e35dc3b19c7fdb0f345050c5d1c992e0c697a9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticRankCompletion/Variant57f523ff0eccf87bfd99f0f182e35dc3b19c7fdb0f345050c5d1c992e0c697a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
