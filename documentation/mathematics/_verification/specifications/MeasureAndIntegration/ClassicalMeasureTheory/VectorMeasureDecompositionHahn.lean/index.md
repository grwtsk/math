# Verification target: Vector Measure Decomposition Hahn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78923f4f6782af81b18794a697091017117f212f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variantb70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78923f4f6782af81b18794a697091017117f212f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Hahn/Variantb70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Hahn/Variantb70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SymmDiff` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExistsOneDivLT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/existsonedivlt.md) | 92 | `declaration-track:246bedc1434e4b9d2f76727b1dcb3f2e018f571f73fe628a236a4ecdda4c0ea2` |
| 2 | `theorem` | [existsNatOneDivLTMeasure_of_not_negative](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/existsnatonedivltmeasure-of-not-negative.md) | 95 | `result-track:67e0fbe132c66e699506e8f141250af5243033f55d78130a8c7fb0b991b2bfff` |
| 3 | `def` | [findExistsOneDivLT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/findexistsonedivlt.md) | 104 | `declaration-track:1bd56c86d5e53db5c3bd66e4ad4f0dea96858b7d1ee9ec8901a9e7cbf81a81a2` |
| 4 | `theorem` | [findExistsOneDivLT_spec](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/findexistsonedivlt-spec.md) | 107 | `result-track:1939ef0839dd20825c8cfcff7a7eb3090eb9a4c2e658c888a9bc470334343055` |
| 5 | `theorem` | [findExistsOneDivLT_min](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/findexistsonedivlt-min.md) | 112 | `result-track:552b94eca1716d92cf8ca20ac0b9f6d485fd9b2bf3a31a47e15cf1b8514a90c7` |
| 6 | `def` | [someExistsOneDivLT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/someexistsonedivlt.md) | 122 | `declaration-track:bf6250c58c3ca3215e61af8becdadcae23d15fb40ab36bde8b083223efd578ca` |
| 7 | `theorem` | [someExistsOneDivLT_spec](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/someexistsonedivlt-spec.md) | 125 | `result-track:299c3793863eb949c858ee957513ca6239fbfc866201405eb09844c1e48815b8` |
| 8 | `theorem` | [someExistsOneDivLT_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/someexistsonedivlt-subset-source-edition-2.md) | 132 | `result-track:7ea5c3983381b7838669a4c88d730dbcba29d3ae032fa88947c46d69d924da1c` |
| 9 | `theorem` | [someExistsOneDivLT_subset'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/someexistsonedivlt-subset.md) | 140 | `result-track:53a2681a64a7edd8fc2fe00b19770fd144f6ad94f7ad9fbd619590abb55c45b1` |
| 10 | `theorem` | [someExistsOneDivLT_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/someexistsonedivlt-measurableset.md) | 143 | `result-track:9c62ed63a21b0ff644477553c20537e3e648e618c51bdd3451137ee50f9134da` |
| 11 | `theorem` | [someExistsOneDivLT_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/someexistsonedivlt-lt.md) | 151 | `result-track:c8f08be7bac2bad7e67c7c6e25b7a1375a98ae22fd678aa158fc9f78329f9cb9` |
| 12 | `def` | [restrictNonposSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/restrictnonposseq.md) | 162 | `declaration-track:80ebf2fc7bbc428c3e71570caeda3819db21a058b75be48cf9eb1c4e69406925` |
| 13 | `theorem` | [restrictNonposSeq_succ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/restrictnonposseq-succ.md) | 171 | `result-track:6862d066a0c10564322dacf0a7ef3a32b9bc9c5739887a09e867eef7f8fd72f7` |
| 14 | `theorem` | [restrictNonposSeq_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/restrictnonposseq-subset.md) | 175 | `result-track:8ae2b7154399039395a955f0dacc4e7b70f84c2da1da5778e0dc4e4f991ce3e6` |
| 15 | `theorem` | [restrictNonposSeq_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/restrictnonposseq-lt.md) | 178 | `result-track:e83f620b5f22ac97a608cb0b5d62a12f76fa44f21de37ff0b1fd27d3f8908ada` |
| 16 | `theorem` | [measure_of_restrictNonposSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/measure-of-restrictnonposseq.md) | 184 | `result-track:52f071c4ca0c795d3e903983e2e33fec5ef27fee39c657bb70933be49e844451` |
| 17 | `theorem` | [restrictNonposSeq_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/restrictnonposseq-measurableset.md) | 200 | `result-track:c5320ffb1a6423d36a155f4e4415900598cbcf79898fea663fb5bcb16f28669c` |
| 18 | `theorem` | [restrictNonposSeq_disjoint'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/restrictnonposseq-disjoint-source-edition-2.md) | 206 | `result-track:b2a9593674c2e64cf08355d274999d13446b5810ec44aea8417a04cf0eaac603` |
| 19 | `theorem` | [restrictNonposSeq_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/restrictnonposseq-disjoint.md) | 217 | `result-track:a5964d2c96a678a3ba053ce9e5e301f1e30ac173c4c69af69316e27a072b07bc` |
| 20 | `theorem` | [exists_subset_restrict_nonpos'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/exists-subset-restrict-nonpos-source-edition-2.md) | 224 | `result-track:ad344d44b81ae8f6c646acc29c2b1656d1ba216576a981a274de7d0ce743313e` |
| 21 | `theorem` | [exists_subset_restrict_nonpos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/exists-subset-restrict-nonpos.md) | 268 | `result-track:3cff8843e69f12bc52ce88039336df5d6ff0b162e6c522326595119e5e3d8e2c` |
| 22 | `def` | [measureOfNegatives](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/measureofnegatives.md) | 335 | `declaration-track:0ba4f92fdc455982918f2a622c160af3045e0fc51221b93b8cf7a1bc7973d8c2` |
| 23 | `theorem` | [zero_mem_measureOfNegatives](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/zero-mem-measureofnegatives.md) | 338 | `result-track:8f292eac7f82ce299842387260c260111e818a5a5bcf6fa699258802d24c14ea` |
| 24 | `theorem` | [bddBelow_measureOfNegatives](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/bddbelow-measureofnegatives.md) | 341 | `result-track:f5cb44f7750c02250b49e8ae63c80589f05a685aa26adbeb308d440849e54889` |
| 25 | `theorem` | [exists_compl_positive_negative](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/exists-compl-positive-negative.md) | 367 | `result-track:f500c9b6af181f46cf8fd9dceb88872983a16f57ea442a3a3852e2a95b1f5557` |
| 26 | `theorem` | [exists_isCompl_positive_negative](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/exists-iscompl-positive-negative.md) | 409 | `result-track:e51b0a1fe4cb5b5df847074e71b7d93baaf0140a339331bf93f76c6d54953e72` |
| 27 | `theorem` | [of_symmDiff_compl_positive_negative](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahn.lean/declarations/of-symmdiff-compl-positive-negative.md) | 416 | `result-track:ac2fb8b6a368dc55154bbe99e371f8d7ba2d85e10a6b31c37305e339c24ae88b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6781fac1a9be85bf1ec02f351cc29dc7186c516cd8dfc8047ecf2643b1710bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Hahn/Variantb70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Hahn/Variantb70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
