# Verification target: Pullbacks Inducing Pullback To Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64fdbcb58c63fc72ed92220e855d28a941b91815",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/index.md) · [Full source](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64fdbcb58c63fc72ed92220e855d28a941b91815`.

Source path: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackFst](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackfst.md) | 37 | `declaration-track:4c0df0e159fa84d7438d8512a51f3fb4479f1e4baeba8a33244065766e8d3466` |
| 2 | `lemma` | [pullbackFst_apply](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackfst-apply.md) | 41 | `result-track:4aa209c9e36e26dfbea922cb115945d409f6f3f0ccb70f972b99b0864f57c3f9` |
| 3 | `abbrev` | [pullbackSnd](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbacksnd.md) | 44 | `declaration-track:5c74a5eb209c0f3a6f1aad238a6b12b81455c0a7a7c63361ee08406573e8c557` |
| 4 | `lemma` | [pullbackSnd_apply](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbacksnd-apply.md) | 48 | `result-track:8da5c80611a48c69ade69e21f628a17175f7173c5701b9251330dc6e177f0404` |
| 5 | `def` | [pullbackCone](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackcone.md) | 51 | `declaration-track:67ace70493e5969be3c8ef44d13033438cc191dd595818c138b20e5ce1ac040a` |
| 6 | `def` | [pullbackConeIsLimit](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackconeislimit.md) | 61 | `declaration-track:deb599d1b839e4a085aa707f5a26e5ff69b714404521e090595a74a912044799` |
| 7 | `def` | [pullbackIsoProdSubtype](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackisoprodsubtype.md) | 93 | `declaration-track:6a08bc659c8e813cbce1fa4610d5555f448d3080d2368a6a5d2a5450af58023e` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackisoprodsubtype-inv-fst.md) | 99 | `result-track:c7316c176d31b9c83091e61a0a3ed16a077dd0c1eb1ec6ea1299262b8d0fa854` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackisoprodsubtype-inv-fst-apply.md) | 105 | `result-track:c8f866c0bcaaeb9eea737ef9e51fa2b4a4f368b62def98241a8c52b90c910e17` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackisoprodsubtype-inv-snd.md) | 112 | `result-track:e0418344330aa46c1c3f942539ae9eaa194522920fd2f9e2e042674c728454aa` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackisoprodsubtype-inv-snd-apply.md) | 118 | `result-track:9bbf15df7f4b80b0dad0e9fff9d1877558516a86c9a4d7483192dea5146554a3` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackisoprodsubtype-hom-fst.md) | 124 | `result-track:2f62c1305a61248832f849e44822bf290aeca7b4176cf901fcebbbdf8f5d0773` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackisoprodsubtype-hom-snd.md) | 129 | `result-track:0887aece4a63d1f519908e1fdd6b1514ff21c52967aacce9caa008548e08081f` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullbackisoprodsubtype-hom-apply.md) | 136 | `result-track:8fcf07e7af18463d9b5ab3af6ecdc459d22b135a147bfabbbc66ddb553f19205` |
| 15 | `theorem` | [pullback_topology](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullback-topology.md) | 146 | `result-track:621fd250bf4cbe432020c0b10ad92d55f79bc912f23989c444bc8a94a593fed5` |
| 16 | `theorem` | [range_pullback_to_prod](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/range-pullback-to-prod.md) | 157 | `result-track:eb3e90170315174962eba7daab0b93beb843b72efe4fadc65198212936718adf` |
| 17 | `theorem` | [inducing_pullback_to_prod](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/inducing-pullback-to-prod.md) | 174 | `result-track:f7596dcde439ef30ab5ebea117b55b56784ecfbeb6e29ff9b0b2163dc90adc39` |
| 18 | `theorem` | [embedding_pullback_to_prod](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/embedding-pullback-to-prod.md) | 179 | `result-track:6d42675bdc5a45bb24b9c03c5c262e3b891e823ba9ba411772771e52f9a7c3df` |
| 19 | `theorem` | [range_pullback_map](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/range-pullback-map.md) | 185 | `result-track:564dae4c4ebd0c15464753f87508e693b29f47222c49498cbcc695d3afe6be96` |
| 20 | `theorem` | [pullback_fst_range](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullback-fst-range.md) | 214 | `result-track:177e5062c837ed640a34e27980a1279c15a5d2fb0293256da5e27c1f97a94858` |
| 21 | `theorem` | [pullback_snd_range](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullback-snd-range.md) | 226 | `result-track:7237ecd0c2be3b11aa3ad7160414fe56d5238aee4540849490d51585348851bf` |
| 22 | `theorem` | [pullback_map_embedding_of_embeddings](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullback-map-embedding-of-embeddings.md) | 247 | `result-track:f8df5aca454daf7caa91210fb3a25093998f9abba3294e68211f275924e921ae` |
| 23 | `theorem` | [pullback_map_openEmbedding_of_open_embeddings](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullback-map-openembedding-of-open-embeddings.md) | 271 | `result-track:cbe0ff9368636c2dd95196891f97f78aaf33d82494bfb141c55672eba8acb9a8` |
| 24 | `theorem` | [snd_embedding_of_left_embedding](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/snd-embedding-of-left-embedding.md) | 286 | `result-track:bb84357774738ea6adac10e8f4835a48ce08c3892f4c2692f4efe30cfc66b866` |
| 25 | `theorem` | [fst_embedding_of_right_embedding](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/fst-embedding-of-right-embedding.md) | 295 | `result-track:3c696e8c87ead5fabe72c2ad2c1878c6e7db0f74f15a0c0dd135e8890097f20f` |
| 26 | `theorem` | [embedding_of_pullback_embeddings](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/embedding-of-pullback-embeddings.md) | 304 | `result-track:8f6210a5ca033ef5dad01a0eae68e551ed21b74b6dffbe27e5897038f9292eab` |
| 27 | `theorem` | [snd_openEmbedding_of_left_openEmbedding](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/snd-openembedding-of-left-openembedding.md) | 313 | `result-track:b150b117ae4358337e2e2c8a01bceb4cdedecc1f6ff9826ebc37138f806d4f9a` |
| 28 | `theorem` | [fst_openEmbedding_of_right_openEmbedding](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/fst-openembedding-of-right-openembedding.md) | 322 | `result-track:4941435c3fd7c7968992a4de5fc8c33014f7f963a03dee2953ff4c411036debe` |
| 29 | `theorem` | [openEmbedding_of_pullback_open_embeddings](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/openembedding-of-pullback-open-embeddings.md) | 332 | `result-track:c707d4617f58d5cf456e2a1331f80bb0ebde1faeee485eb2520e80bc41b1f372` |
| 30 | `theorem` | [fst_iso_of_right_embedding_range_subset](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/fst-iso-of-right-embedding-range-subset.md) | 342 | `result-track:643c381bd1de5aae8013dab60852ec0f638a8dc9f7da49502ae15766eef29229` |
| 31 | `theorem` | [snd_iso_of_left_embedding_range_subset](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/snd-iso-of-left-embedding-range-subset.md) | 357 | `result-track:08463f7456abbbf7356ffbf637b5382fc35c7ba8e614bd722b2f7f53527f8755` |
| 32 | `theorem` | [pullback_snd_image_fst_preimage](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullback-snd-image-fst-preimage.md) | 371 | `result-track:72eac9d3d0b96e6862f6da3a09225ecf097a550199cf4b299027b075e52dd2bf` |
| 33 | `theorem` | [pullback_fst_image_snd_preimage](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/pullback-fst-image-snd-preimage.md) | 383 | `result-track:a7b4c7fdcaa82da4fafa99330b31dff60561fc41b24ee94a00122b537607d485` |
| 34 | `theorem` | [coinduced_of_isColimit](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/coinduced-of-iscolimit.md) | 399 | `result-track:da8c5b6d0c7af60dba957119017db82dffe58b41ae17baf4190ba00a7443162b` |
| 35 | `theorem` | [colimit_topology](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/colimit-topology.md) | 407 | `result-track:51fb30dbdeb6721db4df9e2dc994b8baa8ac19c5b6eb839df889c3ee87c86a93` |
| 36 | `theorem` | [colimit_isOpen_iff](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/colimit-isopen-iff.md) | 412 | `result-track:a114c652729518e88492bd4a94a94c93c05839cc28bde5a3c2be943c825b5c5b` |
| 37 | `theorem` | [coequalizer_isOpen_iff](../../../../GeneralTopology/PullbacksInducingPullbackToProd.lean/declarations/coequalizer-isopen-iff.md) | 419 | `result-track:9ebfb11a00a58294a668a456f12587edbce62a89656df9de962d9b8e62a20822` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bbf19fd399e36b31ac15129b0a4bff574fe2337a4fd857b7e25ab0d8569e884 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
