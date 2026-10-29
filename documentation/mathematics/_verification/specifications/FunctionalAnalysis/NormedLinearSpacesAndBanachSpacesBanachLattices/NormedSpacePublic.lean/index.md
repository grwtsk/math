# Verification target: Normed Space Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91ea19160ef036dcc670c8e0c9a67c85bdb26104",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91ea19160ef036dcc670c8e0c9a67c85bdb26104`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean.json)

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
| 1 | `lemma` | [norm_toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/norm-tocontinuouslinearmap.md) | 39 | `result-track:a9b70021c468887eaf504d61ab919dab5ed891d7c5a70a29dc1e828099a6cb5c` |
| 2 | `lemma` | [nnnorm_toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/nnnorm-tocontinuouslinearmap-source-edition-2.md) | 42 | `result-track:d249f57afb248fbe0f9040d80f4c4f8dde3af61917970dabc26496fd02fba098` |
| 3 | `lemma` | [enorm_toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/enorm-tocontinuouslinearmap-source-edition-2.md) | 45 | `result-track:a6b2208cd02d2994404149eed6e7605e7a63eef7f82c0736427f8808539c000c` |
| 4 | `lemma` | [norm_toContinuousLinearMap_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/norm-tocontinuouslinearmap-comp.md) | 54 | `result-track:50753977c812399a4364249b8bdc22a5ece418bc0c4999884cc16e0ff43199eb` |
| 5 | `def` | [postcomp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/postcomp.md) | 60 | `declaration-track:3432d8302b2f927ae2adeb73891246640df823931fb08df8aa0d38d07d12a4de` |
| 6 | `lemma` | [norm_toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/norm-tocontinuouslinearmap-source-edition-2.md) | 73 | `result-track:d580355114357a2df5121b0df0b77d07ecbf06a23c6891efb15af054f22a8f67` |
| 7 | `lemma` | [nnnorm_toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/nnnorm-tocontinuouslinearmap.md) | 77 | `result-track:7f79e0d687a4b2267282029cd62e47b42857393a16d2364eb05c8ca14a238116` |
| 8 | `lemma` | [enorm_toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/enorm-tocontinuouslinearmap.md) | 81 | `result-track:4ad7ee0b1b6dbc8a5b36f152306c0ce4231ebf0f3f5a9f5b801818fd5ba8f9d2` |
| 9 | `theorem` | [bound_of_shell](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/bound-of-shell.md) | 103 | `result-track:f178965e21a9f0ca2661db097f5a3baf8e7b9f50034314919d10ebcbcf3f5e1f` |
| 10 | `theorem` | [bound_of_ball_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/bound-of-ball-bound.md) | 112 | `result-track:ea17be390105146a1391d0ee2fc1127d07c029fc2e1724dfd9e80263bacd6abe` |
| 11 | `theorem` | [antilipschitz_of_comap_nhds_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/antilipschitz-of-comap-nhds-le.md) | 126 | `result-track:783a7fe4871126efa0d3696c1df8893018b14f7540f9125176b7734c149f7545` |
| 12 | `theorem` | [opNorm_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/opnorm-zero-iff.md) | 155 | `result-track:0247ff3ce262638d8bd7471e24b89a9a587966708271f67ce281ab2287c4bf5a` |
| 13 | `instance` | [toNormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/tonormedaddcommgroup.md) | 166 | `declaration-track:263193d1ef7636c579902287b9db1c79d9956f8067f4ba967200ef351ccad4ac` |
| 14 | `instance` | [toNormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/tonormedring.md) | 170 | `declaration-track:d2d263f9a73b6ba2d06807a9cd7180a098b3ec29789a57bd5b1ab5ce54dad0d5` |
| 15 | `theorem` | [antilipschitz_of_isEmbedding](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/antilipschitz-of-isembedding.md) | 176 | `result-track:82face3909f9b02e35e04f28cbee8cb93d51921f815c91267aa233c1f1270f8a` |
| 16 | `theorem` | [norm_smulRightL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/norm-smulrightl.md) | 196 | `result-track:11b15b376f9d45ec9b1f7d77b6d6b333d506a86495477519acf4e75a23515ddc` |
| 17 | `lemma` | [norm_smulRightL_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/norm-smulrightl-le.md) | 199 | `result-track:162c1e812bef92ebd6ed1b42bdad3d0e0040e0aabd3b93f2de06639b12be7949` |
| 18 | `lemma` | [opNNNorm_comp_linearIsometryEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/opnnnorm-comp-linearisometryequiv.md) | 206 | `result-track:6b473b7317b0e45a951b5b54f08b3a15066ffa648c0d6747615e882ac9f559a4` |
| 19 | `lemma` | [opNNNorm_linearIsometryEquiv_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/opnnnorm-linearisometryequiv-comp.md) | 212 | `result-track:44c5a985e5389f220635c712c57a6f90589404a356a715cff800a60da6f6c173` |
| 20 | `lemma` | [opNorm_comp_linearIsometryEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/opnorm-comp-linearisometryequiv.md) | 218 | `result-track:56f3753a02743ca6c1afc9b8b878e8bedc7ded3aabfa8b2758bbf58a45086982` |
| 21 | `lemma` | [opNorm_linearIsometryEquiv_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/opnorm-linearisometryequiv-comp.md) | 223 | `result-track:80dcb62bfce46fb6803170c0e3d8202c89c250354d46b1814eba24d4d0cb1c00` |
| 22 | `lemma` | [opNNNorm_mul_linearIsometryEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/opnnnorm-mul-linearisometryequiv.md) | 228 | `result-track:6fbf7d73115cb918599ac38a3b3bd583d370a24151678dfba33786f64fd6f9f4` |
| 23 | `lemma` | [opNNNorm_linearIsometryEquiv_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/opnnnorm-linearisometryequiv-mul.md) | 233 | `result-track:d1783d8ffd384aabb82d958f09543784ddc60352f09c229099c6536e5389cbee` |
| 24 | `lemma` | [opNorm_mul_linearIsometryEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/opnorm-mul-linearisometryequiv.md) | 238 | `result-track:fff9838d211363cc591687259129fbf92531b79c04302b7573d9fb091e1421f8` |
| 25 | `lemma` | [opNorm_linearIsometryEquiv_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/opnorm-linearisometryequiv-mul.md) | 243 | `result-track:d4e1168f25b993bfe974cb4463c670e803e6b4967025d7ff9ae160197e9c3383` |
| 26 | `theorem` | [norm_subtypeL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/norm-subtypel.md) | 252 | `result-track:ecb081ad161234746b8d37cce5f98fa0dde3611e1017d8e0bfeeac4fc7114f63` |
| 27 | `theorem` | [antilipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/antilipschitz.md) | 267 | `result-track:191337cfb803c9f9d81dbf6e1ab5fde6c6d9ada2abc52097232138b7e19ee03c` |
| 28 | `theorem` | [one_le_norm_mul_norm_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/one-le-norm-mul-norm-symm.md) | 271 | `result-track:b53a6c8e40d4d396d03599d7bdc6553ccbeaf5ed0e1650ec7d0dc810c624bd49` |
| 29 | `theorem` | [norm_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/norm-pos.md) | 277 | `result-track:a99d4dac8803a6e70f483ae2f41acf3b3ab461000cc4525804c37a3990c4ca10` |
| 30 | `theorem` | [norm_symm_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/norm-symm-pos.md) | 281 | `result-track:c8803feeb906b02075abcc8096cd75370a54110500444ddf5a28b175412b9f91` |
| 31 | `theorem` | [nnnorm_symm_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/nnnorm-symm-pos.md) | 285 | `result-track:46beb277d58e77e306b531336a2ae418a6045c4967f830c0cdda21e379cf17a1` |
| 32 | `theorem` | [subsingleton_or_norm_symm_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/subsingleton-or-norm-symm-pos.md) | 289 | `result-track:43f652a0532fa9bc12a81642ea96ad3408c6ec5796bcbd0c66e26ac36e5694ef` |
| 33 | `theorem` | [subsingleton_or_nnnorm_symm_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/subsingleton-or-nnnorm-symm-pos.md) | 297 | `result-track:7010d0624f02f4cd51cdd0184e6263f532306acc071559ef07f425cbc41bcfba` |
| 34 | `theorem` | [coord_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/coord-norm.md) | 304 | `result-track:2581a2662f5861b7079b120e21cc5955ae3705e101ccb8265423f0501a836e44` |
| 35 | `def` | [IsCoercive](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/iscoercive.md) | 319 | `declaration-track:0734f6d4c5c936a02834a8bbc9d8e46e0a413feb207867a3b60ea3c8ae712660` |
| 36 | `theorem` | [NormedSpace.equicontinuous_TFAE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/normedspace-equicontinuous-tfae.md) | 331 | `result-track:bb2901e80ea0a5d6abede04e8de262d71223ae043d92a7e72a3381fd911ad8f0` |
| 37 | `def` | [LinearIsometry.single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/linearisometry-single.md) | 386 | `declaration-track:1d6e997aa330d9f7a34de96c6643e5a2f397d2d9498e953611f6ff3649212b80` |
| 38 | `lemma` | [ContinuousLinearMap.norm_single_le_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/continuouslinearmap-norm-single-le-one.md) | 390 | `result-track:8e98ac169b037b720fe61fd8129a03cea48ef4ed4b4c2544d6741a606eda4e27` |
| 39 | `lemma` | [ContinuousLinearMap.norm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/continuouslinearmap-norm-single.md) | 395 | `result-track:98086107f95a6d8054ebf8e4e2ba829854cadcf67757af9b8914084f15dc43d7` |
| 40 | `def` | [LinearIsometry.inl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/linearisometry-inl.md) | 407 | `declaration-track:93a33f3609bf03ce850b0c84b928c02682d014cb6a67f2cc42f0ad318e0f40cc` |
| 41 | `lemma` | [LinearIsometry.inl_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/linearisometry-inl-apply.md) | 412 | `result-track:400eae67d8b395d1667b126e243f0675180ac5a524425fc5cc000d107011f611` |
| 42 | `def` | [LinearIsometry.inr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/linearisometry-inr.md) | 417 | `declaration-track:37b5de59e5a07e25fcbf49fd11cc04e1676b47a7dc352dc853fbb800dd86cf60` |
| 43 | `lemma` | [LinearIsometry.inr_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/linearisometry-inr-apply.md) | 422 | `result-track:ff012ae5acebcdd98f6e6b6eb659e5dff04738ce76c449347699f46d1d3a8d97` |
| 44 | `lemma` | [ContinuousLinearMap.norm_inl_le_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/continuouslinearmap-norm-inl-le-one.md) | 426 | `result-track:43f0a8cccf1b9d3eeab36dfdab374373d0208409a8623a6846e561a4144ba78c` |
| 45 | `lemma` | [ContinuousLinearMap.norm_inr_le_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/continuouslinearmap-norm-inr-le-one.md) | 431 | `result-track:8f726132cc9c2234ca58499ce02974b895289ad11c2898ad274dacebdcd7fcb4` |
| 46 | `lemma` | [ContinuousLinearMap.norm_inl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/continuouslinearmap-norm-inl.md) | 436 | `result-track:959f85f8e1e705454dc4b2d384c5e91df8b978941a8a987e94d1019b0fedeb2c` |
| 47 | `lemma` | [ContinuousLinearMap.norm_inr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedSpacePublic.lean/declarations/continuouslinearmap-norm-inr.md) | 441 | `result-track:95d70252aa23a7101474f5365ec961f3505ede3275ddea16b2608b09ae83f686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=662238696c47eed8b04a3f6286a3d0792700ab82b80a8df386820d2461b446e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
