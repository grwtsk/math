# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.EffectiveMellin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4548c2d4bdeb31d467f8a3f7875513e685dadfdc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/EffectiveMellin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4548c2d4bdeb31d467f8a3f7875513e685dadfdc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/EffectiveMellin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/EffectiveMellin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.RealAxisMellin`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RealAxisMellin.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEffectiveSeed`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripEffectiveSeed.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example-source-edition-2.md) | 14 | `declaration-track:35131f72bee140889b5a2b211aa93ae19aec4e61cf5c9400a22720060e5a2645` |
| 2 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example-source-edition-9.md) | 18 | `declaration-track:dec79b454a2b645b640b2f47d8939f6f67fd8eeede698bda5b9f61fc03eced55` |
| 3 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example-source-edition-5.md) | 22 | `declaration-track:62a785635f746617613236680c755215c62abaf3b2f2af22e757fe8990038e6d` |
| 4 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example-source-edition-8.md) | 27 | `declaration-track:c58d9b672629b3fb6cd8cf4b39ba246dc3da3ef9a7fe00dc64ed6fecdf34f404` |
| 5 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example.md) | 31 | `declaration-track:13d5ea6c72278e86a02cb81aa2b6d264c704d7df64255e0da9589d0182849c41` |
| 6 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example-source-edition-6.md) | 34 | `declaration-track:9a9b27be3dc46e1f72f53f533a24789ee724a96a1cd7b78aa176e2241916ce1b` |
| 7 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example-source-edition-3.md) | 39 | `declaration-track:448d2cdfcea1c0af268bd4fd24eb2ab7c905844824b5fd648a8abab723716c15` |
| 8 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example-source-edition-7.md) | 43 | `declaration-track:c47c753ee062d7450383976674b0641063c00db5a1395e2c4e07235ce93bf3d4` |
| 9 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example-source-edition-10.md) | 47 | `declaration-track:f9820cfdc8f7901aa08200ffa2d47b9f43806581cf3051fd1b7e7931df4dd6bb` |
| 10 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EffectiveMellin.lean/declarations/example-source-edition-4.md) | 52 | `declaration-track:458e990b4bb1e2c05e509b23808e4edd057fa45ec8141a292bbf1d385d23546f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20ada347109419257bc760d3c0a409b5246f010879fc799f9a3741cee89e7880 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/EffectiveMellin.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/Positive/EffectiveMellin.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
