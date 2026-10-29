# Verification target: Bounded Variation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5167835d1e349a14554ea4593a9951e47c04b705",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5167835d1e349a14554ea4593a9951e47c04b705`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean.json)

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
| 1 | `lemma` | [eVariationOn_bilinear_comp_le](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/evariationon-bilinear-comp-le.md) | 59 | `result-track:63144832db66eb383b024d8b04eaa00c626a617eb914a46e94fe732b79a914e3` |
| 2 | `lemma` | [eVariationOn_smul_le](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/evariationon-smul-le.md) | 95 | `result-track:8fc950cdd0657b3e866fc73f1ffbebb6fb9a9d7388041656d983061e28c4b129` |
| 3 | `lemma` | [eVariation_mul_le](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/evariation-mul-le.md) | 104 | `result-track:90d7436604e7098db1d7d834214ed35d25d4b7be5ffe9f11a7f711495049f67c` |
| 4 | `lemma` | [BoundedVariationOn.bilinear_comp](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/boundedvariationon-bilinear-comp.md) | 109 | `result-track:1067436553fc329ab8b0b02d814377d54ebcb09ae047fadf6da15cb62316d734` |
| 5 | `lemma` | [BoundedVariationOn.smul](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/boundedvariationon-smul.md) | 125 | `result-track:429b8f96447b9b126b6df11df31d518dfa2d87c3829a1a5680a1cacc111610d5` |
| 6 | `lemma` | [BoundedVariationOn.mul](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/boundedvariationon-mul.md) | 133 | `result-track:1dd41435f15064c6e6f7c597a306b241c66a9c9bd9c3cb24b172f51b32257561` |
| 7 | `lemma` | [LocallyBoundedVariationOn.bilinear_comp](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/locallyboundedvariationon-bilinear-comp.md) | 138 | `result-track:84cfc9eba14fde6033dc7e428842be704549d30bca57e52f27d6f5030abbf1d4` |
| 8 | `lemma` | [LocallyBoundedVariationOn.smul](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/locallyboundedvariationon-smul.md) | 144 | `result-track:1b537da4191765c028e977171c7dfd6bf3e42ba723cc599588fa7cf642aa8fba` |
| 9 | `lemma` | [LocallyBoundedVariationOn.mul](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/locallyboundedvariationon-mul.md) | 152 | `result-track:d311e60c1d612d2c821cbb8b7d05b634df2f59f0bd94d76cd89a861dbe6b115d` |
| 10 | `theorem` | [stronglyMeasurable](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/stronglymeasurable.md) | 166 | `result-track:22227ef8ff41a59742eb088b5634652c56100849dc2c3420cef22a4bc68a87c3` |
| 11 | `theorem` | [measurable](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/measurable.md) | 170 | `result-track:5d0377e69a2a2c7cca799c460d52d3c72f660134329e6ec7519f9d952844d744` |
| 12 | `theorem` | [memLp_top](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/memlp-top.md) | 176 | `result-track:fcb7193c459588d777e26fba5a10c1eda59650811ec19410cc9b1157070ad587` |
| 13 | `theorem` | [memLp](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/memlp.md) | 185 | `result-track:99be310313ae8f3eacf2d9dd030f7a7d3a4d9e5fa2230d1bcacd7ee3260d4d60` |
| 14 | `theorem` | [integrable](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/integrable.md) | 188 | `result-track:b8656f53575fd8872d1ebbc30fdc3b62f72a1ad18b125887702e21ff92114cc6` |
| 15 | `theorem` | [ae_differentiableWithinAt_of_mem_real](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/ae-differentiablewithinat-of-mem-real.md) | 197 | `result-track:e512e8bb04b62bf12fee8b986bf16888faab02acee1e9a1d2f161e7759e6f578` |
| 16 | `theorem` | [ae_differentiableWithinAt_of_mem_pi](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/ae-differentiablewithinat-of-mem-pi.md) | 207 | `result-track:5301a38c4f4486c2d6050460ce15d02c67ce05af4137f2f3d13a10dd834b4d61` |
| 17 | `theorem` | [ae_differentiableWithinAt_of_mem](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/ae-differentiablewithinat-of-mem.md) | 218 | `result-track:6d6ad6ea0392a2d12ad20405905025f95dd26a7e0064bda540ebe99351e2e1a0` |
| 18 | `theorem` | [Bounded Variation Namespaced Public](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-evariationonbilin.md) | 231 | `result-track:c88c86b20b2daea3bdc390209466c3e5f06152b7157a4e02614834b2e8c4c141` |
| 19 | `theorem` | [ae_differentiableWithinAt](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/ae-differentiablewithinat.md) | 243 | `result-track:b4dfd62f16deeee2a42b681dee2d6ba0dae033c09c190fc949d8e30606eb854b` |
| 20 | `theorem` | [ae_differentiableAt](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/ae-differentiableat.md) | 250 | `result-track:1d5d0a5bebd05883b38cc1463e189d08e06e2ada3de3bed78225919856b8395a` |
| 21 | `theorem` | [LipschitzOnWith.ae_differentiableWithinAt_of_mem_real](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/lipschitzonwith-ae-differentiablewithinat-of-mem-real.md) | 262 | `result-track:772d5b2958533b45f964b497e699ec3a68a6fc6bcebb5dfcbd322509517c635a` |
| 22 | `theorem` | [LipschitzOnWith.ae_differentiableWithinAt_real](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/lipschitzonwith-ae-differentiablewithinat-real.md) | 269 | `result-track:565f30d1f5d4cb1ba2cbb8968627d69011f43d037aa87b5e2c15bc5b62c0f5e8` |
| 23 | `theorem` | [LipschitzWith.ae_differentiableAt_real](../../../../FunctionalAnalysis/BoundedVariationNamespacedPublic.lean/declarations/lipschitzwith-ae-differentiableat-real.md) | 277 | `result-track:c9f1fef19a681473cc4ae0723524799157b1a0c2edfa14ac005b7387134a2531` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71158e21b8ca6798af96e1385f66edff35f2a7f9e75e60a914a02eab6f67feb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
