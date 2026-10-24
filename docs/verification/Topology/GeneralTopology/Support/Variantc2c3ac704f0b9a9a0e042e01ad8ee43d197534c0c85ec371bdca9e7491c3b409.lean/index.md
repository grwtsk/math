# Verification target: GRWTSK.Topology.GeneralTopology.Support.Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9c109dd1d67162ad7754b61420507c736439e38",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9c109dd1d67162ad7754b61420507c736439e38`.

Source path: `GRWTSK/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/multsupport--5a0212139b46775a209de971.md) | 44 | `declaration-track:5a0212139b46775a209de971a8b8d9f81122f1fc023d7e509b76af4130c604db` |
| 2 | `theorem` | [subset_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/subset-multsupport--92ec2b8ceca964e9c0eb2dc6.md) | 49 | `result-track:92ec2b8ceca964e9c0eb2dc6ed815b78b137ce45227d5f2db9821f414d579122` |
| 3 | `theorem` | [isClosed_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/isclosed-multsupport--706113a43d323f34e65d13ec.md) | 55 | `result-track:706113a43d323f34e65d13ecd21a7e9a4d4446654ba08a1eec083d899974aa6e` |
| 4 | `theorem` | [mulTSupport_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/multsupport-eq-empty-iff--3e6af9a4cf9057bc2151e278.md) | 61 | `result-track:3e6af9a4cf9057bc2151e278f8931ba7b53bf70ffb53984c1f2e8907fd77351f` |
| 5 | `theorem` | [image_eq_one_of_nmem_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/image-eq-one-of-nmem-multsupport--446b849035f4a39a8d480b18.md) | 67 | `result-track:446b849035f4a39a8d480b1894b22e444f06dcf063f73f274e4de16229448ad2` |
| 6 | `theorem` | [range_subset_insert_image_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/range-subset-insert-image-multsupport--662fe81ada2a2eceeda9cc7d.md) | 73 | `result-track:662fe81ada2a2eceeda9cc7d25b9c1797ae4c54fc1c374e3d8dc6508cc52914a` |
| 7 | `theorem` | [range_eq_image_mulTSupport_or](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/range-eq-image-multsupport-or--13b7d2f7c842aa644f82248a.md) | 81 | `result-track:13b7d2f7c842aa644f82248a6108392b1f25d2db074b2781435d37a13cc6a1b3` |
| 8 | `theorem` | [tsupport_mul_subset_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/tsupport-mul-subset-left--5b5bf72553078ba16655de97.md) | 87 | `result-track:5b5bf72553078ba16655de973ea8ba13261a50748929eaebf51f0be3cc754077` |
| 9 | `theorem` | [tsupport_mul_subset_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/tsupport-mul-subset-right--15671c56158362cbef204a70.md) | 92 | `result-track:15671c56158362cbef204a700b7886857474405376fba1d50c6f01a913ecb89d` |
| 10 | `theorem` | [tsupport_smul_subset_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/tsupport-smul-subset-left--370885d5e3323d0b8b2aba5c.md) | 99 | `result-track:370885d5e3323d0b8b2aba5cb44ec6cb43d131fbe1c020f12cea14da1584f821` |
| 11 | `theorem` | [not_mem_mulTSupport_iff_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/not-mem-multsupport-iff-eventuallyeq--a0fec4ac71e81bf7b4031df7.md) | 113 | `result-track:a0fec4ac71e81bf7b4031df78222e5667f0a9a8f4118236c1d3eb44967434c33` |
| 12 | `theorem` | [continuous_of_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/continuous-of-multsupport--f72aa6cc032d84091bfd6ec8.md) | 120 | `result-track:f72aa6cc032d84091bfd6ec8308e481c98bc3c66dff002c489235e91e9439b42` |
| 13 | `def` | [HasCompactMulSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport--7ca4fddd7df159508f7fe608.md) | 133 | `declaration-track:7ca4fddd7df159508f7fe608a97a58bdbe0e78073083bdbfb297b1380b0adc51` |
| 14 | `theorem` | [hasCompactMulSupport_def](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-def--569981489b936b25719938eb.md) | 139 | `result-track:569981489b936b25719938eb45d99e72e5bda0cc68ec97ce40efeffb0478a83c` |
| 15 | `theorem` | [exists_compact_iff_hasCompactMulSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/exists-compact-iff-hascompactmulsupport--cbf69d737362bc6cc7598e2a.md) | 145 | `result-track:cbf69d737362bc6cc7598e2a86b840d185fec211c679f49acd7914a1740f7680` |
| 16 | `theorem` | [HasCompactMulSupport.intro](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-intro--7fb50caa0c2d0438560438b3.md) | 153 | `result-track:7fb50caa0c2d0438560438b3d857048c2849a1a7fd297cdd0ee22a9cd27b222a` |
| 17 | `theorem` | [HasCompactMulSupport.of_mulSupport_subset_isCompact](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-of-mulsupport-subset-iscompact--a1fd1ed3ea6a35a5c3b82714.md) | 160 | `result-track:a1fd1ed3ea6a35a5c3b827146f6ce79111b6a1e787b41754daa5ebf37b5d2f7e` |
| 18 | `theorem` | [HasCompactMulSupport.isCompact](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-iscompact--a159a9e992a3be6cb5c3896b.md) | 165 | `result-track:a159a9e992a3be6cb5c3896ba7dbfc09f678cd8d341322aacd3e2b8a1d99a1ca` |
| 19 | `theorem` | [hasCompactMulSupport_iff_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-iff-eventuallyeq--e0a5a31b4ab5b82bf00c36dd.md) | 171 | `result-track:e0a5a31b4ab5b82bf00c36ddc1ed5deca86ca5197c58db9aefdb7ed5f9c9d75c` |
| 20 | `theorem` | [HasCompactMulSupport.isCompact_range](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-iscompact-range--4daa555d47a63f6341507838.md) | 183 | `result-track:4daa555d47a63f634150783878a8f283c7cb6143669f352654994f59187faf21` |
| 21 | `theorem` | [HasCompactMulSupport.mono'](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-mono--9a1507c461b6fadf812ed92f.md) | 191 | `result-track:9a1507c461b6fadf812ed92f563a8f45fa1d10d1e1a37ddc56c3988102394c50` |
| 22 | `theorem` | [HasCompactMulSupport.mono](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-mono--5b7cbcd4211e59c52b0c21a5.md) | 198 | `result-track:5b7cbcd4211e59c52b0c21a56791923aeaf477fd1adcd1a96a6860de99e14ed1` |
| 23 | `theorem` | [HasCompactMulSupport.comp_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-comp-left--0d24fd5ff472d9c882efd678.md) | 205 | `result-track:0d24fd5ff472d9c882efd6786b385cdf754287679b683ec5c11bfdb9bf38baec` |
| 24 | `theorem` | [hasCompactMulSupport_comp_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-comp-left--ed81f8d1231c3784bfb86236.md) | 212 | `result-track:ed81f8d1231c3784bfb8623631743d397ef6e533eefd0f3b631d92b8fc2b946f` |
| 25 | `theorem` | [HasCompactMulSupport.comp_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-comp-closedembedding--c15f841470461499949551a5.md) | 219 | `result-track:c15f841470461499949551a548d41bff8b9454570a92fc0b90fd7de72268b307` |
| 26 | `theorem` | [HasCompactMulSupport.comp₂_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-comp-left--82be4307b333b864853374a1.md) | 229 | `result-track:82be4307b333b864853374a135a663e89de5699f2b3f840c6f29b362c8e3c1ca` |
| 27 | `theorem` | [HasCompactMulSupport.mul](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactmulsupport-mul--adc467acaad762ba66888eca.md) | 246 | `result-track:adc467acaad762ba66888eca7f44d8ade2eca7d09451db348920b8412108e4d9` |
| 28 | `theorem` | [HasCompactSupport.smul_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactsupport-smul-left--fc1dc887058e7ccee59ee95f.md) | 259 | `result-track:fc1dc887058e7ccee59ee95f70df46499f766ec95a393e95f780a5ef351c4a7f` |
| 29 | `theorem` | [HasCompactSupport.smul_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactsupport-smul-right--e8cdbdb5e1a24f31e7b6f0aa.md) | 272 | `result-track:e8cdbdb5e1a24f31e7b6f0aaaadeebce4e1fa780ae7d92ce7f9fb87060545e02` |
| 30 | `theorem` | [HasCompactSupport.smul_left'](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactsupport-smul-left--4634b782f9706132a626d573.md) | 277 | `result-track:4634b782f9706132a626d5731c512a9d8f42ef404b1a6f5a5239683f1906eb1d` |
| 31 | `theorem` | [HasCompactSupport.mul_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactsupport-mul-right--45e976fd9ee8237545686fde.md) | 290 | `result-track:45e976fd9ee8237545686fde5e3113ac90123d95c6e1218385fa456b303972a4` |
| 32 | `theorem` | [HasCompactSupport.mul_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/hascompactsupport-mul-left--0f77f1f85c8900f711ddd8a9.md) | 295 | `result-track:0f77f1f85c8900f711ddd8a99a90a654f1798cc5cc9b2b45daadb93eae2856e9` |
| 33 | `theorem` | [exists_finset_nhd_mulSupport_subset](../../../../../mathematics/Topology/GeneralTopology/Support/Variantc2c3ac704f0b9a9a0e042e01ad8ee43d197534c0c85ec371bdca9e7491c3b409.lean/declarations/exists-finset-nhd-mulsupport-subset--5242e85b680d95e5ea9f7272.md) | 313 | `result-track:5242e85b680d95e5ea9f72721fe8cfd7bdb209452b50c7a60fd9b93d92bd2915` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
