# Verification target: GRWTSK.Topology.MetricTopology.Completion.Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ae4976624cf5b9d7dd9b490abf2a07ebd9d5b77",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ae4976624cf5b9d7dd9b490abf2a07ebd9d5b77`.

Source path: `GRWTSK/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Subfield.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.WithAbs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Completion](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/completion--524e95fdeb54303da834694b.md) | 65 | `declaration-track:524e95fdeb54303da834694bda9cf47ee9223e88b2734c63c5bc71818d661e99` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/instance--92e7efe4d1c69dfaa5001859.md) | 71 | `declaration-track:92e7efe4d1c69dfaa50018591b59af59f0178651ec28d15b900dfef8f2f0f66d` |
| 3 | `lemma` | [norm_coe](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/norm-coe--d635520d1380ab414d7bfeed.md) | 75 | `result-track:d635520d1380ab414d7bfeed982c19f2eb9a2b99a6e803d58505d4adc0382b78` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/instance--640dc6a32bc9d45acbdb7d74.md) | 79 | `declaration-track:640dc6a32bc9d45acbdb7d740f6457f21ef79bdb644c06bdc194e97120b35906` |
| 5 | `lemma` | [WithAbs.ratCast_equiv](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/withabs-ratcast-equiv--91ffaf9e5b1ef1a8f785020e.md) | 83 | `result-track:91ffaf9e5b1ef1a8f785020e45552e3f66cd2b6c466687dd07be874eec41949c` |
| 6 | `lemma` | [Rat.norm_infinitePlace_completion](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/rat-norm-infiniteplace-completion--6346de25dbe4ddf94f4cf446.md) | 88 | `result-track:6346de25dbe4ddf94f4cf446bd44db0c9c069764c3dad4fe17bda83104bda49e` |
| 7 | `instance` | [locallyCompactSpace](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/locallycompactspace--260a820889cbcff7f06858c2.md) | 95 | `declaration-track:260a820889cbcff7f06858c2c2eab8e00b2f6c77d8a09594c66e9be41bb08113` |
| 8 | `def` | [extensionEmbedding](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/extensionembedding--05d2ada4d3580f65ba4499be.md) | 99 | `declaration-track:05d2ada4d3580f65ba4499be78670dec156442c84ad8e7df3f9ba71fda3dcf62` |
| 9 | `def` | [extensionEmbeddingOfIsReal](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/extensionembeddingofisreal--5dd37179563cd8890c69346c.md) | 102 | `declaration-track:5dd37179563cd8890c69346c88e680d494dc484776e25b2b7b593747a6f88307` |
| 10 | `theorem` | [extensionEmbedding_coe](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/extensionembedding-coe--5f0e71c4d6c779bd475b633c.md) | 109 | `result-track:5f0e71c4d6c779bd475b633c94d3dfcb01a98b1467b9d3755121faf0d679248e` |
| 11 | `theorem` | [extensionEmbedding_of_isReal_coe](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/extensionembedding-of-isreal-coe--ca37d79fb7b1715afab5637e.md) | 113 | `result-track:ca37d79fb7b1715afab5637e6a74ba8533eafc9f67f665823bf7e0938a0198b6` |
| 12 | `theorem` | [isometry_extensionEmbedding](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/isometry-extensionembedding--06249acdf7bcfa5932d9763d.md) | 118 | `result-track:06249acdf7bcfa5932d9763d0613414b680379cc5123949e4d905088d11c01e5` |
| 13 | `theorem` | [isometry_extensionEmbedding_of_isReal](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/isometry-extensionembedding-of-isreal--1ed42f39132eb0eb02a65eb2.md) | 122 | `result-track:1ed42f39132eb0eb02a65eb2a22f7ec78e7c0908ff6c76528bdbaeb175dda260` |
| 14 | `theorem` | [isClosed_image_extensionEmbedding](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/isclosed-image-extensionembedding--50393ba0276e5c854f9c4aa3.md) | 127 | `result-track:50393ba0276e5c854f9c4aa3d59f0fca84377a029181f2f00d487c1d7955107d` |
| 15 | `theorem` | [isClosed_image_extensionEmbedding_of_isReal](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/isclosed-image-extensionembedding-of-isreal--07040f324a980e0fb190dad2.md) | 132 | `result-track:07040f324a980e0fb190dad2add39ad1753602b8da3c14e42ea6272a90dfadeb` |
| 16 | `theorem` | [subfield_ne_real_of_isComplex](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/subfield-ne-real-of-iscomplex--b06f61327109c8c9ba193c4d.md) | 136 | `result-track:b06f61327109c8c9ba193c4d6247780576d8beee91221ab3bfce0c5b8f95d05e` |
| 17 | `theorem` | [surjective_extensionEmbedding_of_isComplex](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/surjective-extensionembedding-of-iscomplex--a6e4fb90025eb7c21641dece.md) | 145 | `result-track:a6e4fb90025eb7c21641dece35ac5cac91b93ceec7724ed0096d6f3645c8229b` |
| 18 | `theorem` | [bijective_extensionEmbedding_of_isComplex](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/bijective-extensionembedding-of-iscomplex--01a7b0c063ad3ddb0f142d25.md) | 152 | `result-track:01a7b0c063ad3ddb0f142d2546ffb193ef1992c5a7a48b9a9a6630d69a1a71bb` |
| 19 | `def` | [ringEquivComplexOfIsComplex](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/ringequivcomplexofiscomplex--b8f1361848c1ff5298fc1258.md) | 158 | `declaration-track:b8f1361848c1ff5298fc12584864e18baa447a0ba2595112198021246e38c844` |
| 20 | `def` | [isometryEquivComplexOfIsComplex](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/isometryequivcomplexofiscomplex--ca1b80c7b6395ab40de4e2a8.md) | 166 | `declaration-track:ca1b80c7b6395ab40de4e2a838efaaf4891f4ff4699be4f9113f9e45f92449a7` |
| 21 | `theorem` | [surjective_extensionEmbedding_of_isReal](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/surjective-extensionembedding-of-isreal--e85cbb4df6e4cbed39012452.md) | 175 | `result-track:e85cbb4df6e4cbed3901245290030923e12258f58c35e43de6f7989b4f44c5b9` |
| 22 | `theorem` | [bijective_extensionEmbedding_of_isReal](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/bijective-extensionembedding-of-isreal--c330126f8975d11a7c67ba4b.md) | 181 | `result-track:c330126f8975d11a7c67ba4bbd861d9795f1a296520c48ec91e2a372bc6122e7` |
| 23 | `def` | [ringEquivRealOfIsReal](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/ringequivrealofisreal--e739e1c946401e17c95993cb.md) | 187 | `declaration-track:e739e1c946401e17c95993cb04d975c27b6d8989b3a66bf9afa9512db916a3b5` |
| 24 | `def` | [isometryEquivRealOfIsReal](../../../../../mathematics/Topology/MetricTopology/Completion/Variantd95d35488a8a8c9bcaa6c83907116c7731c1445b7cc588b824ec6c7c3179ff21.lean/declarations/isometryequivrealofisreal--bf830c14a8240ce3a8e0f231.md) | 194 | `declaration-track:bf830c14a8240ce3a8e0f2316c3fdad3ff50840538a856bc6f3efbb237d35d3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
