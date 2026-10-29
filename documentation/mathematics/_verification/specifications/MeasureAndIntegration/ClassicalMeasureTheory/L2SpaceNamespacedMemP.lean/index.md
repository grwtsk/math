# Verification target: L2 Space Namespaced Mem P

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c4254bdfe7144b78b550edc99bbe7d3cff7382d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c4254bdfe7144b78b550edc99bbe7d3cff7382d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.IsROrC.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Inner` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/macro-rules.md) | 36 | `declaration-track:0ff15f813e63f661436afcb9b4634de805e5da87da1f26abe3fd84b9f2daab61` |
| 2 | `theorem` | [Memℒp.integrable_sq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/mem-p-integrable-sq.md) | 52 | `result-track:3d9526974e2923ed15f368ad190cce7476a8330a28e730eef3a329d751b96631` |
| 3 | `theorem` | [memℒp_two_iff_integrable_sq_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/mem-p-two-iff-integrable-sq-norm.md) | 56 | `result-track:859864aa780dd7532f83a26032eb57a749003bded7a309acbeab2db18962ab18` |
| 4 | `theorem` | [memℒp_two_iff_integrable_sq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/mem-p-two-iff-integrable-sq.md) | 64 | `result-track:a0e7e43800a93db1d1eef0d6b854321c96da97a75e4412cfbae3948b0a60b3a3` |
| 5 | `theorem` | [Memℒp.const_inner](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/mem-p-const-inner.md) | 81 | `result-track:5f4ac6309dd3c6b44e9eb7387ffcbd844e37f9d9b85e58328875b1f2a5ea51b4` |
| 6 | `theorem` | [Memℒp.inner_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/mem-p-inner-const.md) | 86 | `result-track:3a7f75f993b3f062e57e900eee0f09b0fcbbef2020440d62482e1a7edcae9f04` |
| 7 | `theorem` | [Integrable.const_inner](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/integrable-const-inner.md) | 93 | `result-track:bac335600c4df4c2b80dda9ee34250bd716a97bb590ec65079713e4f9eecef7c` |
| 8 | `theorem` | [Integrable.inner_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/integrable-inner-const.md) | 97 | `result-track:eceae9bc19ac8421dcca56e806b96115c03b0386b0b72bcf49ff7c8bdb34810b` |
| 9 | `theorem` | [L2 Space Namespaced Mem P](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/integral-inner.md) | 103 | `result-track:9885b7064c3f46e97c464eac502705cad5d95ef80853e43e3d2f58fe739878bf` |
| 10 | `theorem` | [L2 Space Namespaced Mem P](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/integral-eq-zero-of-forall-integral-inner-eq-zero.md) | 115 | `result-track:024b9d075765f49703fd25955a3907356a9e2cea72bda04bf95fc6496a4c7880` |
| 11 | `theorem` | [snorm_rpow_two_norm_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/snorm-rpow-two-norm-lt-top.md) | 130 | `result-track:4d8dc485ec32e3a006d0a2bd2edbd1fc0e9891fe0b6e6976b773798bd8fc2cf4` |
| 12 | `theorem` | [snorm_inner_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/snorm-inner-lt-top.md) | 136 | `result-track:5f798f1c6d22ccb383df8495335942f9edc8c46a7fcb73e9902724f0484cbb32` |
| 13 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/instance.md) | 158 | `declaration-track:e94b9ec3433a2dc70509910667ddd9ea5d5957482e20d76badd0b22342c709d6` |
| 14 | `theorem` | [inner_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/inner-def.md) | 161 | `result-track:e0dcd5d238462f8887b1f1651d3128ae3b7793486891588a8fdfd650d8c75b7a` |
| 15 | `theorem` | [integral_inner_eq_sq_snorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/integral-inner-eq-sq-snorm.md) | 165 | `result-track:7932527ffc7b8494f1e0d4562491eb462a92471d7ff4949c3dec9f636d039708` |
| 16 | `theorem` | [norm_sq_eq_inner'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/norm-sq-eq-inner.md) | 181 | `result-track:2eb0e69c703b034389c2a81a3b8bd2bb027562a3cf8782e7606616964aadd527` |
| 17 | `theorem` | [mem_L1_inner](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/mem-l1-inner.md) | 192 | `result-track:fb724321b3ac1c0c8a0eac9a01b18ce23b46ffbf08361a34e60712c43f7ace4a` |
| 18 | `theorem` | [integrable_inner](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/integrable-inner.md) | 199 | `result-track:089c9be1291469efb9269135995c4edbc6307ef88218d2594cc8d14765391581` |
| 19 | `theorem` | [add_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/add-left.md) | 206 | `result-track:57919fd4990fce0801f42a6c08ea2e1c6f97545dad53c6e8e694357f2b5944cd` |
| 20 | `theorem` | [smul_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/smul-left.md) | 217 | `result-track:7f236acb8a8c6f9c1e0afcad9f24ae437cb7e308d0ce434b5757b69516a79bbc` |
| 21 | `instance` | [innerProductSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/innerproductspace.md) | 227 | `declaration-track:eb8d4dbbd9fdb5d8dd265c26fd1c939a364c7606b04e21d4f0b787dc0a43bf52` |
| 22 | `theorem` | [inner_indicatorConstLp_eq_set_integral_inner](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/inner-indicatorconstlp-eq-set-integral-inner.md) | 242 | `result-track:9a3b528e356d948b1e2a7e1ae6bfdb6a152d1637c4bba2e36a8f4d5b979ec627` |
| 23 | `theorem` | [inner_indicatorConstLp_eq_inner_set_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/inner-indicatorconstlp-eq-inner-set-integral.md) | 271 | `result-track:0e630117b8f1aef6fa9e1facacd679a990f4a78a8d3526a16383244055ae8d79` |
| 24 | `theorem` | [inner_indicatorConstLp_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/inner-indicatorconstlp-one.md) | 282 | `result-track:4617e0c9dbbf6511213bc8e5b4b8a3bf9a5516816245180ea80e8dd597cc8ed3` |
| 25 | `theorem` | [BoundedContinuousFunction.inner_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/boundedcontinuousfunction-inner-tolp.md) | 305 | `result-track:8e4a4181c12893e669708b974201d89e44ca4183751da7abb8dd0eeb49a68b0c` |
| 26 | `theorem` | [ContinuousMap.inner_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/L2SpaceNamespacedMemP.lean/declarations/continuousmap-inner-tolp.md) | 321 | `result-track:c3f5d51b32a027d230589e0a559fa0c2ac55423f8e5b7317e720ef6f97833d2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59e5555ec49319219bf493b4eb44edd36b761b7a40d5d6b29dd14a2fdec41d37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
