# Verification target: Jensen Formula Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f03f5d86b80d11c091232ecfc47d21f951edf1ac",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f03f5d86b80d11c091232ecfc47d21f951edf1ac`.

Source path: `GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [herglotzLogIntegrand](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/herglotzlogintegrand.md) | 50 | `declaration-track:2ea362ec02349cd1ce6b4596c48ce48ef5b0a8bb45f0ed31b6cc9af2a599ca50` |
| 2 | `lemma` | [continuousAt_herglotzLogIntegrand](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/continuousat-herglotzlogintegrand.md) | 55 | `result-track:2c78c6221ed5d971a996798512aecab415bbbe0cef077874440eccb5ab69c622` |
| 3 | `lemma` | [continuous_herglotzLogIntegrand_circle](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/continuous-herglotzlogintegrand-circle.md) | 63 | `result-track:e1d88622b94ffd1f6bd989963f42b9a64b7d9d6f9b0b0ba2927c8732cc0a63f8` |
| 4 | `lemma` | [const_mul_norm_sub_circleMap_le_norm_sub_circleMap](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/const-mul-norm-sub-circlemap-le-norm-sub-circlemap.md) | 75 | `result-track:68f681202942897a7775972ecf119c6e55ef4f8690bc24f64d1f1f34999205a0` |
| 5 | `lemma` | [norm_herglotzLogIntegrand_circleMap_le](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/norm-herglotzlogintegrand-circlemap-le.md) | 93 | `result-track:279ac5927901352d2e7ad83a7e36dacb8642691726ca2e27b59dc368abd06042` |
| 6 | `theorem` | [herglotzLogIntegrand_circleAverage_tendsto](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/herglotzlogintegrand-circleaverage-tendsto.md) | 128 | `result-track:9d2f0543c25fbc12664170588a51d8be6ac7acda340459ff737caea8934bd9be` |
| 7 | `theorem` | [circleAverage_re_herglotzRieszKernel_mul_log₀](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/circleaverage-re-herglotzrieszkernel-mul-log-source-edition-2.md) | 166 | `result-track:e6ecd54d4143f7699d256d60cae728b40610e4f71ebb46301a981aa17f73401a` |
| 8 | `theorem` | [circleAverage_re_herglotzRieszKernel_mul_log](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/circleaverage-re-herglotzrieszkernel-mul-log.md) | 215 | `result-track:4c63ee3c4d93d256cb749ba0e981bb1659ba33c462e99cda933c7f828613caf9` |
| 9 | `lemma` | [circleAverage_log_norm_factorizedRational](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/circleaverage-log-norm-factorizedrational.md) | 238 | `result-track:263628906cfb7f8e4f7f2513b9395b2f8338f68afdcf419b850c7fa8bb0b150e` |
| 10 | `lemma` | [AnalyticOnNhd.circleAverage_log_norm_of_ne_zero](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/analyticonnhd-circleaverage-log-norm-of-ne-zero.md) | 271 | `result-track:d4d07c683a15c78d88dc541f72f67dfc1d80e6789c1bf70265035bce1b1d323a` |
| 11 | `lemma` | [countingFunction_finsum_eq_finsum_add](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/countingfunction-finsum-eq-finsum-add.md) | 283 | `result-track:6eed1b0f21be5c84398bababbc5d22f663e8b5d9ad3b906231dd150954c0f662` |
| 12 | `theorem` | [MeromorphicOn.circleAverage_log_norm](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/meromorphicon-circleaverage-log-norm.md) | 315 | `result-track:afb5b62eb14d29d7b6aca0b1f531ebc0dfb87d21c027398c17af3d231ecdbe5e` |
| 13 | `theorem` | [AnalyticOnNhd.circleAverage_log_norm](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/analyticonnhd-circleaverage-log-norm.md) | 383 | `result-track:9d1e655f8798cccc54c32b99946b46928816a59e42d84a78f91a779dc99afd14` |
| 14 | `theorem` | [AnalyticOnNhd.sum_divisor_le](../../../../FunctionsOfAComplexVariable/JensenFormulaNamespacedPublic.lean/declarations/analyticonnhd-sum-divisor-le.md) | 397 | `result-track:3bdb6402a2228a02f1060e65ed0b2d676c82dfcd39dce168aca3815344bdb232` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba3c562f46718217abb9ae6c64a8b430efa8a9429c11b4a92a3a3af34d2b1326 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
