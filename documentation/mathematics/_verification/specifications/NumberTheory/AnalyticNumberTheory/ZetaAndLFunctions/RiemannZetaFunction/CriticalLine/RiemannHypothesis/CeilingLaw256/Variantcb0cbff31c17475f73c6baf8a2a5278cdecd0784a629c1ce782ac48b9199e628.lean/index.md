# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CeilingLaw256.Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34ac75ef1951ccd2055c2349e9ddd91dc0520fee",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean/index.md) · [Full source](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34ac75ef1951ccd2055c2349e9ddd91dc0520fee`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PairCeiling.LawN256` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lawN256_rows](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean/declarations/lawn256-rows--7516e225ef4242988167f288.md) | 34 | `result-track:7516e225ef4242988167f288e3bcd208af94e1b65c400a2ecec1cb16f9d801e7` |
| 2 | `theorem` | [ceiling_law256](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean/declarations/ceiling-law256--1d6737b855ba72147a4d83f2.md) | 46 | `result-track:1d6737b855ba72147a4d83f29ed1a9d2454009aefbc604596f7a0e5a2e624ffb` |
| 3 | `theorem` | [ceiling_law256_decimal](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean/declarations/ceiling-law256-decimal--f26d32fc49213c3b994fa2ef.md) | 61 | `result-track:f26d32fc49213c3b994fa2efddbd8d4d15f1c7b0b7dc2220d4039bc802921641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f414bf179f166e65aa5c974f11099a4e269facbcbd2a1aab16f7df7ec3786a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
