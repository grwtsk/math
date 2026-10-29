# Verification target: Unif Tight Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2b8d4d9c70d3649aafa7ebb734ed77fb346644a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variant7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2b8d4d9c70d3649aafa7ebb734ed77fb346644a`.

Source path: `GRWTSK/Topology/GeneralTopology/UnifTight/Variant7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnifTight/Variant7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UnifTight](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight.md) | 60 | `declaration-track:6cba7d05b75b83eacb453c2a6782432ffd6810d34af2698d1cc8bc684fd778b9` |
| 2 | `theorem` | [unifTight_iff_ennreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-iff-ennreal.md) | 64 | `result-track:954ce5eceb1ac30bc2fc7a8e01301c469190bedd677f97d755e0606d8533d432` |
| 3 | `theorem` | [unifTight_iff_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-iff-real.md) | 69 | `result-track:69906c7bac47279e40fbad3a320db841f05fe868039284646b057aeedff8e499` |
| 4 | `theorem` | [unifTight_iff_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-iff-nnreal.md) | 78 | `result-track:0a999b148077fc31c91316f602b04c6e61004a6afca207494cd648ac1c96ac0d` |
| 5 | `theorem` | [eventually_cofinite_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/eventually-cofinite-indicator.md) | 89 | `result-track:c9fb141dfba168560241d1fb70916c0586ceb21db1151afe91fa645bbaa881b4` |
| 6 | `theorem` | [exists_measurableSet_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/exists-measurableset-indicator.md) | 106 | `result-track:5c9e30f4f0ed6154045e9dee09124ace5255e982d2a7df8bfc6d97a2910e67bc` |
| 7 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/add.md) | 113 | `result-track:04c186c88190782b086c5f68a4ee53553db4b97c8d73a1df2399b33a5dc19968` |
| 8 | `theorem` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/neg.md) | 125 | `result-track:0b7dc10946651d2f0dafb889f35b6a5368d4a4690ae11ef09d2ecd7005df9ad3` |
| 9 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/sub.md) | 132 | `result-track:422afbcd01569520a3f847b250835ea6484aec7bf24d4fbb0cbc08040f6fddb6` |
| 10 | `theorem` | [aeeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/aeeq.md) | 137 | `result-track:245cc0de3bf71097ad5a9cca3a73a3336794b8e549b82c770f3fa83625491b7a` |
| 11 | `theorem` | [comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/comp.md) | 147 | `result-track:dbd79c22a1ac6026bb0311ea1ea3572c278f573254586001d366eecad4df5cc4` |
| 12 | `theorem` | [unifTight_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-congr-ae.md) | 156 | `result-track:dbeda298058d66caf7ea4bf884c5c424709088a3d1be321702ace677fa677ef5` |
| 13 | `theorem` | [unifTight_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-const.md) | 161 | `result-track:99bb7f378e54b4b605281514348b4baa27a18832d17ba29502f046c30d5fc8ec` |
| 14 | `theorem` | [unifTight_of_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-of-subsingleton.md) | 168 | `result-track:13ab9186194db3870938c1f66f42341516619107a65c01a37c26afd99af4be10` |
| 15 | `theorem` | [unifTight_fin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-fin.md) | 179 | `result-track:bbe73127fdf77981ecf031388457d51dcbc4141faad41a1285d7eaecc38cff71` |
| 16 | `theorem` | [unifTight_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-finite.md) | 204 | `result-track:022f97edccd9ba72dfb4dcafddf5085b557c473c079fe816ab65ee7d08b99d80` |
| 17 | `theorem` | [unifTight_of_tendsto_Lp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-of-tendsto-lp-zero.md) | 227 | `result-track:3989f18a5a0b5e9a06689cb91fc587084c9d96bb78ad6e2035a41270f6e788c9` |
| 18 | `theorem` | [unifTight_of_tendsto_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/uniftight-of-tendsto-lp.md) | 241 | `result-track:a90e4fd8949bc95ceab61fcfcdeace8ef3bfaec75e7499af8b45c22a1055a125` |
| 19 | `theorem` | [tendsto_Lp_of_tendsto_ae_of_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/tendsto-lp-of-tendsto-ae-of-meas.md) | 261 | `result-track:9a5e074ca75359bbb963fc6554c6d382bc6588145f660bc3be638f34870d84df` |
| 20 | `theorem` | [ae_tendsto_ae_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/ae-tendsto-ae-congr.md) | 334 | `result-track:201277018873ed8beb17a6d7a00ea91a465093dfda81c2649cba83b363e3a825` |
| 21 | `theorem` | [tendsto_Lp_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/tendsto-lp-of-tendsto-ae.md) | 345 | `result-track:ef697d14e55cb5fd9a7c021f7e2421b75944f6d5618821b68a769f6eed2770bd` |
| 22 | `theorem` | [tendsto_Lp_of_tendstoInMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/tendsto-lp-of-tendstoinmeasure.md) | 369 | `result-track:7725a235c195977c296e4540e65b4f6fc3ddfe7bfe3d53260b3dada60d57d41a` |
| 23 | `theorem` | [tendstoInMeasure_iff_tendsto_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UnifTightPublic.lean/declarations/tendstoinmeasure-iff-tendsto-lp.md) | 382 | `result-track:acfdea461eda43c9cbd16239ca174bed3a7c81a8bb7aec901b8d6262da11cff4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0572c9b880640350f73e55fc32b94766d7a3b51d044a4a9f928e992095fdb86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UnifTight/Variant7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UnifTight/Variant7c15e1d2bcee9e73d09fd8cc2b80d90d7cb3fa2dd4024d5f3633edb8ce95fb75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
