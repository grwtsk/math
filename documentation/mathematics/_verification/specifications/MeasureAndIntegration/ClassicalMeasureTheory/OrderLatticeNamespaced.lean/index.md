# Verification target: Order Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaf90bd8480b5645b1c487582be37ca965960420",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lattice/Variant82bd346ddc228f2288f2e6cc1ce5803ef714c6d1a22b29d866b4ccf301ae415d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaf90bd8480b5645b1c487582be37ca965960420`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lattice/Variant82bd346ddc228f2288f2e6cc1ce5803ef714c6d1a22b29d866b4ccf301ae415d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lattice/Variant82bd346ddc228f2288f2e6cc1ce5803ef714c6d1a22b29d866b4ccf301ae415d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.AEMeasurable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MeasurableSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurablesup.md) | 43 | `declaration-track:0c729ddb95d2d97ce2c8e94dbf28f226e55cc495dedac944353bd8cf8450a5e0` |
| 2 | `class` | [MeasurableSup₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurablesup-source-edition-2.md) | 49 | `declaration-track:8d54b616821804c4ac1d22427432a5795c008df1186a6ad872d2fa1d35bf6cb9` |
| 3 | `class` | [MeasurableInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurableinf-source-edition-2.md) | 58 | `declaration-track:6e37be783a9811e8935da0606a8b3cb1109668021f2e43c301eb24856e2a9c5c` |
| 4 | `class` | [MeasurableInf₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurableinf.md) | 64 | `declaration-track:197d3dabf414bbbbc67a2e5f16e9a9bb4ba39eefb9ab4195c73d3bbe2097c1e8` |
| 5 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/instance-source-edition-4.md) | 75 | `declaration-track:5fb4e8c197aa647f23b1d92727b3ee97785b0fd48ca46d367a8edca2fff89f5c` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/instance-source-edition-6.md) | 79 | `declaration-track:a4e5978133d3ffec0205a75587733737ed01bfe9f1c9c1915859eed147861d4e` |
| 7 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/instance.md) | 83 | `declaration-track:1705114ec39a2a102ee56a8195f34f77f547a1b0bd89f9c9fb1cc45b971fccf7` |
| 8 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/instance-source-edition-3.md) | 87 | `declaration-track:583203c94716506236e03c72f9c19b20daeb41ce136fa9223b686f64ff58fafc` |
| 9 | `theorem` | [Measurable.const_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurable-const-sup.md) | 104 | `result-track:167b572f2d88b51c4c03f1b3bdf1c9e48e04a3a62d027599cba4691214a0fa4d` |
| 10 | `theorem` | [AEMeasurable.const_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/aemeasurable-const-sup.md) | 108 | `result-track:ee1dad0372c5f33da60c94e753f54e8165eb8a4b6c57ba66f045244ea3da1270` |
| 11 | `theorem` | [Measurable.sup_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurable-sup-const.md) | 113 | `result-track:1c19077536510f353e4663750323e9cd299eb9c0e9a0cb444edbad64ac92b3f6` |
| 12 | `theorem` | [AEMeasurable.sup_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/aemeasurable-sup-const.md) | 117 | `result-track:9c9fd7827bd945f0f6165cb2cf1c5813507559ba0af30a5107c58e48470aea90` |
| 13 | `theorem` | [Measurable.sup'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurable-sup.md) | 128 | `result-track:1a5f2a0d2592be4ba02f474ae6d5922a8102fece8b4a5e887b507b43b9ca0749` |
| 14 | `theorem` | [Measurable.sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurable-sup-source-edition-2.md) | 132 | `result-track:a6a64c803cf6d460636868e8781ed9a42cadcf9cdfe42b391f0043f592993d68` |
| 15 | `theorem` | [AEMeasurable.sup'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/aemeasurable-sup.md) | 136 | `result-track:07c7566bfc2d79a53e417cb2968f14b2484c9f918083ba8613922f7b46bffbd3` |
| 16 | `theorem` | [AEMeasurable.sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/aemeasurable-sup-source-edition-2.md) | 141 | `result-track:381985a9521f8ebae029fc534ccd2acd199ee2abd9b02f56c4161524efd3b837` |
| 17 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/instance-source-edition-2.md) | 145 | `declaration-track:453aabf15e292f31440a07a0fc7d853ed7d52567142900388e6a1019d9748a1f` |
| 18 | `theorem` | [Measurable.const_inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurable-const-inf.md) | 161 | `result-track:1c942ffcb770372202bba71943d955b06ec02a5c45eabf034b2d8b8f0021cf34` |
| 19 | `theorem` | [AEMeasurable.const_inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/aemeasurable-const-inf.md) | 165 | `result-track:b1b96cb95799a942fdc5d0cfcb4e18f3202634f73041ec4ce43fb3b5f0ccfd78` |
| 20 | `theorem` | [Measurable.inf_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurable-inf-const.md) | 170 | `result-track:d87b9d839e14d656e1f2617ce11bfa1e0449326ed962d27fa8c8b79648e2c6bf` |
| 21 | `theorem` | [AEMeasurable.inf_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/aemeasurable-inf-const.md) | 174 | `result-track:5afd51d601a66cd979b7311eba3101d09b12d169ca250dd8ebd0f1e604dade2e` |
| 22 | `theorem` | [Measurable.inf'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurable-inf.md) | 185 | `result-track:934def1627f1e82f7ea6afca23e355fab585767aa2e7c4c7c695aa7cb84d299f` |
| 23 | `theorem` | [Measurable.inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/measurable-inf-source-edition-2.md) | 189 | `result-track:ec28b97f9d032543eac9752d794a924f74a84b4e349912e70345467307f15de1` |
| 24 | `theorem` | [AEMeasurable.inf'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/aemeasurable-inf.md) | 193 | `result-track:33da16ac7eaaacbd0ff65ada42247c208d4b1cb82d650dc0a13f2f4f493c4101` |
| 25 | `theorem` | [AEMeasurable.inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/aemeasurable-inf-source-edition-2.md) | 198 | `result-track:d32706754e7593397e09984c72c386d5b06e3c66a8bf431ae26928ab7dfdbebf` |
| 26 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/instance-source-edition-5.md) | 202 | `declaration-track:a0c2fe8a57348ad14b69ebf2b7425fd32d4c92c5fc93a54a95454b070e737a4a` |
| 27 | `theorem` | [Finset.measurable_sup'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/finset-measurable-sup.md) | 216 | `result-track:e091d6c948cfa75174dc83e8a5dea61fea9f6c5b86bf852ad58f370ad09cbd76` |
| 28 | `theorem` | [Finset.measurable_range_sup'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/finset-measurable-range-sup.md) | 221 | `result-track:9462712d5736a77af3e029ff72a1fa2185002f12acf4e5320017cd75c1fc283d` |
| 29 | `theorem` | [Finset.measurable_range_sup''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OrderLatticeNamespaced.lean/declarations/finset-measurable-range-sup-source-edition-2.md) | 228 | `result-track:c7209a808b97fccadfb629d2f1c8fba5fa192cfbb42e563af35efba56f7bf7ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a00bc2a1ac51be94da6218f684e945110511415fafc24d7be6d4ae200ae42e54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Lattice/Variant82bd346ddc228f2288f2e6cc1ce5803ef714c6d1a22b29d866b4ccf301ae415d.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Lattice/Variant82bd346ddc228f2288f2e6cc1ce5803ef714c6d1a22b29d866b4ccf301ae415d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
