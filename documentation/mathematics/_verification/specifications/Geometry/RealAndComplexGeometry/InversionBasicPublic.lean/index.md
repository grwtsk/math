# Verification target: Inversion Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85fe116d952a2b5acc626f068347f635b7a83702",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85fe116d952a2b5acc626f068347f635b7a83702`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean.json)

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
| 1 | `def` | [inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion.md) | 44 | `declaration-track:e43ad77606dc0e720966782349276d106c12a7df03491c6a4196d0700c4f268b` |
| 2 | `theorem` | [inversion_def](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-def.md) | 47 | `result-track:a35df52548e931a3180c9b89bbda1d71184b952dcde456f7b232070c2f7598f5` |
| 3 | `theorem` | [inversion_eq_lineMap](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-eq-linemap.md) | 59 | `result-track:4291b130d6847655ccb975a08ebe95c75cc4874c68a38288f0cfefc3ab71075a` |
| 4 | `theorem` | [inversion_vsub_center](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-vsub-center.md) | 63 | `result-track:a3c716628b0a666e2e2dd2a27338387b377501ef8cd7f49470c33cfe6c5ddce4` |
| 5 | `theorem` | [inversion_self](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-self.md) | 68 | `result-track:7a253a04b70bdc9609e387d482a24f34bd4d1e00c430a8c72a36d55dc7294af5` |
| 6 | `theorem` | [inversion_zero_radius](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-zero-radius.md) | 71 | `result-track:fc1133566c542abd9adff2d94cbe2a79886af853e78ea074e7c765512a84718d` |
| 7 | `theorem` | [inversion_mul](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-mul.md) | 73 | `result-track:507d5687e07826febf99f9b71b6381606ba5212f488a48c16fce0fb66f6e5817` |
| 8 | `theorem` | [inversion_dist_center](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-dist-center.md) | 79 | `result-track:6e378faa85a65bb80245aae383f7278447bb1932d9b1767f5a57b28542900764` |
| 9 | `theorem` | [inversion_dist_center'](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-dist-center-source-edition-2.md) | 86 | `result-track:eb791912ad6b2226b06a4e4fe0025cc70b72519300455bac1a2026666d3bfd5a` |
| 10 | `theorem` | [inversion_of_mem_sphere](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-of-mem-sphere.md) | 89 | `result-track:b4c1506c228d46361f712c5bd26c2998f21031dd2b86e77056c68dc6ffdf999d` |
| 11 | `theorem` | [dist_inversion_center](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/dist-inversion-center.md) | 94 | `result-track:489baa53317b0556d9b69d11fd3fefea05af380dd484eca1667df431f9d3faa5` |
| 12 | `theorem` | [dist_center_inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/dist-center-inversion.md) | 106 | `result-track:9d65f02cb02a6d7b7305b1d73a7864fe08e6642ca45cac15e363c48020ee5a8f` |
| 13 | `theorem` | [inversion_inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-inversion.md) | 110 | `result-track:00ec9fae406efd60d252fb0a98aa65bd45b3e78d71efb85ec49ce8602374b6df` |
| 14 | `theorem` | [inversion_involutive](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-involutive.md) | 119 | `result-track:ee8e9c8ed510bd97ef3cf5a508b9c506a6ded490dbf9b80870afbd4f1ee599f2` |
| 15 | `theorem` | [inversion_surjective](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-surjective.md) | 122 | `result-track:723a4ca646777388feb61069f6ded3cb6af82d6a1d5a8bb3f5c076dbe74ff0f2` |
| 16 | `theorem` | [inversion_injective](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-injective.md) | 125 | `result-track:83ed7fa178014d905ac1e766b44ed4083d9e8eaebc53b35e73ea946b676c72d5` |
| 17 | `theorem` | [inversion_bijective](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-bijective.md) | 128 | `result-track:f5bcf9bfb67aec481c6cc98a23ce3c252dd0cbe390736572bc31424319a7d850` |
| 18 | `theorem` | [inversion_eq_center](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-eq-center-source-edition-2.md) | 131 | `result-track:a7c9181ee7fa541dfadd551a92cc41fa544ffc2157bf30b210878cc0c4ed447f` |
| 19 | `theorem` | [inversion_eq_center'](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/inversion-eq-center.md) | 135 | `result-track:446062b9a62a1d587f6be148dbb755054a15a3a1f5c01278d116c62e85f34781` |
| 20 | `theorem` | [center_eq_inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/center-eq-inversion.md) | 138 | `result-track:c39c358a34918e2cfbb9072ffb3cd9eb14c35b548f46087672452cb093980d54` |
| 21 | `theorem` | [center_eq_inversion'](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/center-eq-inversion-source-edition-2.md) | 142 | `result-track:ee67a16ee890f4e68cf813553048624fc4420d65b3c238ab0565a507028fe6f3` |
| 22 | `theorem` | [dist_inversion_inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/dist-inversion-inversion.md) | 155 | `result-track:b12d935ced67f84184b51eef4b69d406e4a516719392f94281d48135911ad06c` |
| 23 | `theorem` | [dist_inversion_mul_dist_center_eq](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/dist-inversion-mul-dist-center-eq.md) | 162 | `result-track:36e09947bc0ed93c3495e00cf38bb12608a1e26df8b877d2339e55c7157f6308` |
| 24 | `theorem` | [mul_dist_le_mul_dist_add_mul_dist](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/mul-dist-le-mul-dist-add-mul-dist.md) | 178 | `result-track:74af39c09436bbb5c004282a0436fd038e5e77817d1df7c3a620c4640bfd4a0f` |
| 25 | `theorem` | [Filter.Tendsto.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/filter-tendsto-inversion.md) | 205 | `result-track:cf8a222daa40985da2a5df64a1b5a961f7ae36e6742cb5d629b6ed0b4a935e40` |
| 26 | `theorem` | [ContinuousWithinAt.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/continuouswithinat-inversion.md) | 213 | `result-track:6224b05ea4f3e76f4ac9be97d9be8c07fb77178f780531bb9793a6a8a6354498` |
| 27 | `theorem` | [ContinuousAt.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/continuousat-inversion.md) | 218 | `result-track:6d9996d2bd4e27384344c26639e39981a2b724e39fcedc0dd39c3dab13b1ac8d` |
| 28 | `theorem` | [ContinuousOn.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/continuouson-inversion.md) | 223 | `result-track:f5f0c4606af672c850023165727bfe75d5fe8e6bb6486654c9f423287e60a577` |
| 29 | `theorem` | [Continuous.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/continuous-inversion.md) | 228 | `result-track:227b343e401f8647a0d3195c11c7a90aa0013b5addf69271c1bf85c637dd4ad8` |
| 30 | `theorem` | [tendsto_inversion_nhdsNE_center_cobounded](../../../../../Geometry/RealAndComplexGeometry/InversionBasicPublic.lean/declarations/tendsto-inversion-nhdsne-center-cobounded.md) | 237 | `result-track:f81dddb3c2f76ae874170340fe82ac5f7defaeaf8b4197c0fa58010fcb3ba275` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a59c9141e365e6ad6c5edc1003c3cbb5fdefc3197b6b2aac3b70de03c4f68a16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
