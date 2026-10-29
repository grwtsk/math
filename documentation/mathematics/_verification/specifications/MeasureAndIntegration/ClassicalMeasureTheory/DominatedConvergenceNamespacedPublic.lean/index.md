# Verification target: Dominated Convergence Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed7dd78b7ebd13ab9f4889e53465bc20dddb734a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed7dd78b7ebd13ab9f4889e53465bc20dddb734a`.

Source path: `GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean.json)

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
| 1 | `theorem` | [norm_setToFun_le_mul_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/norm-settofun-le-mul-norm.md) | 45 | `result-track:41e97c3c930bc4384396292de68cdfcc393c1690dda2f6a3ec4da77abb658fab` |
| 2 | `theorem` | [norm_setToFun_le_mul_norm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/norm-settofun-le-mul-norm-source-edition-2.md) | 53 | `result-track:f65819debffc462266f28b1d183fd14b029bb94d9a0786758bad668fa935f2b0` |
| 3 | `theorem` | [norm_setToFun_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/norm-settofun-le.md) | 61 | `result-track:7c78ad91bdc52b439e4224e10e1a326084eac07dbbaefc5cf93801cfdd99cf09` |
| 4 | `theorem` | [norm_setToFun_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/norm-settofun-le-source-edition-2.md) | 69 | `result-track:b1606700bc1c9e6973a026cc4d3b3b2f6aa80543f8a96c2c718203b57ac12db9` |
| 5 | `theorem` | [enorm_setToFun_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/enorm-settofun-le.md) | 77 | `result-track:9e2871845e21a68dd5c00d4ab51ae4f43d84f49f72f01b17ff11f025fb399ef4` |
| 6 | `theorem` | [norm_setToFun_le_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/norm-settofun-le-toreal.md) | 91 | `result-track:b776a36115cd5c6a3371a18cec37a29850178e4138a3bf215c8389a2429ab09c` |
| 7 | `theorem` | [tendsto_setToFun_of_dominated_convergence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/tendsto-settofun-of-dominated-convergence.md) | 111 | `result-track:cd7d0270fce11dc0f106ab161db7f62daa31d2f6d3553b2cddee6cd192c02ec5` |
| 8 | `theorem` | [tendsto_setToFun_filter_of_dominated_convergence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/tendsto-settofun-filter-of-dominated-convergence.md) | 155 | `result-track:f55c35dbc3f088ef085824c21b4c4d4efadbbd42518cb310d5867cff2ff236b5` |
| 9 | `theorem` | [hasSum_setToFun_of_dominated_convergence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/hassum-settofun-of-dominated-convergence.md) | 178 | `result-track:efcc3a837763cd14638b57b5c717c312b1de8e8f8399623b544dfe5ba28f6a6a` |
| 10 | `theorem` | [setToFun_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/settofun-tsum.md) | 206 | `result-track:f200f4d98b879a42ff03ff69334ece7ee86805635327fe37a40bcff831f18716` |
| 11 | `theorem` | [tendsto_setToFun_filter_of_norm_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/tendsto-settofun-filter-of-norm-le-const.md) | 240 | `result-track:e55e3e9fbb78da75f20101aca0ede52c5df340092375458ad41d58e99229e6f6` |
| 12 | `theorem` | [Dominated Convergence Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/measurableset-integrable.md) | 253 | `result-track:1e9c05359c28588e2a6b6e6c76b23ab6ecc7b37faecf2080fa6d74fd1b018578` |
| 13 | `theorem` | [StronglyMeasurable.setToFun_prod_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/stronglymeasurable-settofun-prod-right.md) | 261 | `result-track:239e461fe26186cb71f9f31731a3f40ca3da5c0465abe9f0bc7e78d25ef69c75` |
| 14 | `theorem` | [continuousWithinAt_setToFun_of_dominated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/continuouswithinat-settofun-of-dominated.md) | 314 | `result-track:8b2f00e604ee419feb0f5c830ffce29f890af338edb702151f783a46991eb32e` |
| 15 | `theorem` | [continuousAt_setToFun_of_dominated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/continuousat-settofun-of-dominated.md) | 322 | `result-track:4e18e1e2674d639901d1ed3ad9be67b13f0da38770f89ddae35fb9b0ef6424fe` |
| 16 | `theorem` | [continuousOn_setToFun_of_dominated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/continuouson-settofun-of-dominated.md) | 329 | `result-track:5db2b11152973b3cf2f5425d5910ad7c87e9fce06babfca1c94b893e581faae3` |
| 17 | `theorem` | [continuous_setToFun_of_dominated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DominatedConvergenceNamespacedPublic.lean/declarations/continuous-settofun-of-dominated.md) | 340 | `result-track:b07d7212f34d833c2cff3f82d74cce3139285c0927153187c63e367f175345d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22fbfba80bc28dad21e5a2e5a0b925dc43f9e36f218aa779a416627e62db4833 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
