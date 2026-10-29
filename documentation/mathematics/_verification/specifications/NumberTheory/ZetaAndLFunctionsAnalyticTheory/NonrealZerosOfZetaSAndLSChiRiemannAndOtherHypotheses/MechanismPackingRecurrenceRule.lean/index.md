# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.MechanismPackingRecurrenceRule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2c23a2e7d35a2a0be5cf59786ff437c92497932",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/MechanismPackingRecurrenceRule.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2c23a2e7d35a2a0be5cf59786ff437c92497932`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/MechanismPackingRecurrenceRule.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/MechanismPackingRecurrenceRule.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SequentialPackingRecurrence`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SourceBoundPackingRecurrenceProgram](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/sourceboundpackingrecurrenceprogram.md) | 34 | `declaration-track:0398eab1fbd47f7da659cd58c950914c9d892ca1c3e3816837853f4ecc6519f2` |
| 2 | `def` | [localWitness](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/localwitness.md) | 54 | `declaration-track:5fe6526282e4395c2fccce4356521afd731bab65b6d21365b37f8b54221a02c7` |
| 3 | `def` | [advanceAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/advanceat.md) | 63 | `declaration-track:29216139ec167a6f180c3bd3de85d80ae3e91a150423ab916cb02d6607b324ca` |
| 4 | `def` | [stateAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/stateat.md) | 79 | `declaration-track:2b8bd00e751e0cc3f293a22df285b72bb7ec03439d01aa492ad4e8f3acf74267` |
| 5 | `def` | [valueAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/valueat.md) | 90 | `declaration-track:d0bbbdb8007c7bfc47d278c82fe4e0ab4dc3f92dde668ca3f48036c24d79f073` |
| 6 | `theorem` | [stateAt_succ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/stateat-succ.md) | 101 | `result-track:e80109bd42220308711a3b4902ebe26a22504dea5fa807ef867b09dedd21dc22` |
| 7 | `theorem` | [valueAt_nonnegative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/valueat-nonnegative.md) | 113 | `result-track:31715c679d0b15f5cb6064377e929d1020681a6c6b1bd9742655ab827c66c3dd` |
| 8 | `theorem` | [stateAt_succ_first](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/stateat-succ-first.md) | 125 | `result-track:81b417dc65b06efca4135e74238768f24898169ae9de7cb75b9cc7994ba347ec` |
| 9 | `theorem` | [stateAt_succ_second](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/stateat-succ-second.md) | 137 | `result-track:2c294db24f3670ea81e1c61a77fb5dab083591145770e67c1a8e775182263bda` |
| 10 | `theorem` | [stateAt_succ_third](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/stateat-succ-third.md) | 149 | `result-track:7bfaed06f87e57baf4e1668786d5f5f27e68c6f1758b1f55891392bf2eeabe56` |
| 11 | `structure` | [PackingRecurrenceComparisonAtZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/packingrecurrencecomparisonatzero.md) | 164 | `declaration-track:7957273976f19d32c764d33947e7a360df59cdc2f83fe0c5c424f32a8b71644e` |
| 12 | `theorem` | [PackingRecurrenceComparisonAtZero.witnessTrace_nonnegative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/packingrecurrencecomparisonatzero-witnesstrace-nonnegative.md) | 183 | `result-track:2a17b363d79e9bf9279aaa5625e853162c062ed991c4ad575aaa9c09e2dd287d` |
| 13 | `def` | [PackingRecurrenceQuarticClaim](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/packingrecurrencequarticclaim.md) | 210 | `declaration-track:16d3d94ac7766bb60587d3a34988ba16dfb66edcd101ccd7e23a3c81b96c7d05` |
| 14 | `structure` | [AuditedPackingRecurrenceExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/auditedpackingrecurrenceextraction.md) | 220 | `declaration-track:7cd37ddbf6a54fb79247c7b7037cc0ce75bc5f3851d89caf406d3bc9b683e025` |
| 15 | `theorem` | [riemannHypothesis_of_auditedPackingRecurrenceExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MechanismPackingRecurrenceRule.lean/declarations/riemannhypothesis-of-auditedpackingrecurrenceextraction.md) | 233 | `result-track:0e205a302ed49e063ce7b8ea50e600f0e1012677895e2425b81688f6bf840ee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35db3f457c4bd9db1cad63e35192fe2a0c22bac5d6e5278b2de805fd9ffc034a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/MechanismPackingRecurrenceRule.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/MechanismPackingRecurrenceRule.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
