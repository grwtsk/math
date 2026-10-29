# Verification target: Group Continuity Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94b75e46d2a4619f2b5894465f010e2f8f5dd755",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94b75e46d2a4619f2b5894465f010e2f8f5dd755`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean.json)

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
| 1 | `lemma` | [continuous_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuous-enorm-source-edition-2.md) | 48 | `result-track:99660048692c5ddc4158cdd9dd1dfc5118a5983ba9df5e29a807d9b7c1dfcf28` |
| 2 | `lemma` | [Continuous.enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuous-enorm.md) | 53 | `result-track:3c71497a4e9f37152b1890a12627edee6283352917aa812ce73a1ca3d6ac1524` |
| 3 | `lemma` | [ContinuousAt.enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuousat-enorm.md) | 56 | `result-track:f79419f521701ed5e28f0ebfe59d10fc1e0bf4a4e176065f03e6564ceb061065` |
| 4 | `lemma` | [ContinuousWithinAt.enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuouswithinat-enorm.md) | 59 | `result-track:ca18505caaae9b090aa9592d5f6c631cb136c2997e29499c9be3cedbab230e3f` |
| 5 | `lemma` | [ContinuousOn.enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuouson-enorm.md) | 65 | `result-track:b01bd9c241eb543326a65243738118339b0aa430be7ca0a04956d824f0b7a84c` |
| 6 | `theorem` | [tendsto_iff_norm_inv_mul_tendsto_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-iff-norm-inv-mul-tendsto-zero.md) | 71 | `result-track:38c6f68a1037099cf09fac684786ed7de591202d8312ed466b1a673f900afcf3` |
| 7 | `theorem` | [tendsto_one_iff_norm_tendsto_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-one-iff-norm-tendsto-zero.md) | 76 | `result-track:0096e896374e567951046fcdb713808d0ea1c7fecf32b4d60919abccf8909af1` |
| 8 | `theorem` | [tendsto_iff_enorm_inv_mul_tendsto_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-iff-enorm-inv-mul-tendsto-zero.md) | 81 | `result-track:6eb1ba362c94af5a50f7f5afc842a2f40de7353943f3a6f0fb071ba738ae5231` |
| 9 | `theorem` | [tendsto_one_iff_enorm_tendsto_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-one-iff-enorm-tendsto-zero.md) | 86 | `result-track:59dcdee7ead7587d7acc4c2c906e84c89edf124d9340899579ada5f92ea65213` |
| 10 | `theorem` | [comap_norm_nhds_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/comap-norm-nhds-one.md) | 91 | `result-track:5b6d325645fbb03fb5734f42cc0f188d6fb4ed5ebbfeaeb8b25f885e41b6ebb5` |
| 11 | `theorem` | [squeeze_one_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/squeeze-one-norm-source-edition-2.md) | 104 | `result-track:b3f741a21a11ac149a41ae598cb61ae5031078dbbaa432b4eca1692fa7b3f87f` |
| 12 | `theorem` | [squeeze_one_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/squeeze-one-norm.md) | 113 | `result-track:5b5de8d1bd11e246252da32191e8d55c6e148c449ca0d4cf803da815c0995465` |
| 13 | `theorem` | [tendsto_norm_inv_mul_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-norm-inv-mul-self.md) | 118 | `result-track:ab7ae6fe0d18c5e8c78e06ab1504de896c88b832ea3f73300aaddb19618a0e8c` |
| 14 | `theorem` | [tendsto_norm_inv_mul_self_nhdsGE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-norm-inv-mul-self-nhdsge.md) | 123 | `result-track:37060cbb6e48a3cdab8adcecf54c3b1c2739ef40c07a99688fa8c33e00d8845a` |
| 15 | `theorem` | [tendsto_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-norm.md) | 127 | `result-track:28ab2cd7e8a78b675bd02b4e53c3e8e24355e1874f34022f237e2688d0bfc8f3` |
| 16 | `theorem` | [tendsto_norm_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-norm-one.md) | 132 | `result-track:21c9f9b81eb238ff81ce7c91c6f908905761736350e637c6876fdefa786e3563` |
| 17 | `theorem` | [continuous_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuous-norm.md) | 136 | `result-track:66585a90d371f28de4924da411e7e3e8af3cb65e379f294175c08f58b3b82ebc` |
| 18 | `theorem` | [continuous_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuous-nnnorm.md) | 140 | `result-track:1fc1cfe3cf4ff45a4d288e0428ef1fe64be932abd0a51348b36c101888c49c77` |
| 19 | `instance` | [SeminormedGroup.toContinuousENorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/seminormedgroup-tocontinuousenorm.md) | 148 | `declaration-track:dcb4f35fa75fde4ff7aed4fb85de3d92537fa9d02bc17a88dccdd031479ab834` |
| 20 | `instance` | [NormedGroup.toENormedMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/normedgroup-toenormedmonoid.md) | 152 | `declaration-track:2e3b79c00ef2e99c9e360dc8f45f14148ee9ac688474e5cbdbab7a599a86611a` |
| 21 | `instance` | [NormedCommGroup.toENormedCommMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/normedcommgroup-toenormedcommmonoid.md) | 158 | `declaration-track:5252ff89c5a4173a4261a856d8402fdba66ec4db7947cc7bd1053695eaad71ee` |
| 22 | `theorem` | [Inseparable.norm_eq_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/inseparable-norm-eq-norm.md) | 170 | `result-track:a4e7d4379e798f2682779a033e5bdbd025941122e408e4ae9a0ca8bdd8acbddf` |
| 23 | `theorem` | [Inseparable.nnnorm_eq_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/inseparable-nnnorm-eq-nnnorm.md) | 175 | `result-track:2a28c8eba4d5144c79be333f418d84ecefce5d5c7f9d95f19487b3ed1b83b06c` |
| 24 | `theorem` | [Inseparable.enorm_eq_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/inseparable-enorm-eq-enorm.md) | 178 | `result-track:185030537b71e1b798829dd1d2d65bcb79b5bd1f4e559c7aa57f1e8df60c718e` |
| 25 | `theorem` | [mem_closure_one_iff_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/mem-closure-one-iff-norm.md) | 183 | `result-track:25b251feee14c917a29fde126a1a0f9aefd4def1ed6049ee2e816edca18f9b15` |
| 26 | `theorem` | [closure_one_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/closure-one-eq.md) | 187 | `result-track:5b4ae3d02226c39bfd841c58a1ed0cd334b46ee427edd8657c0a2ea7b21c8e5f` |
| 27 | `theorem` | [Filter.Tendsto.norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/filter-tendsto-norm.md) | 195 | `result-track:a8f9f09ca2e5c6bdb750738db5b8fcbf631db21e6ac90e39003115546cf30697` |
| 28 | `theorem` | [Filter.Tendsto.nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/filter-tendsto-nnnorm.md) | 199 | `result-track:48120768f66291603788d993076618a0ff60213d99b1ce889cbb6f1bab938a2a` |
| 29 | `theorem` | [Continuous.norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuous-norm-source-edition-2.md) | 210 | `result-track:d79e86776c190609a10b23df224bca53b0ebc3a46d07d9b2d4ba55c23f307413` |
| 30 | `theorem` | [Continuous.nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuous-nnnorm-source-edition-2.md) | 214 | `result-track:b978f6cd719db5112252b6473647aeb4659ab8886d1e803f73182309417c7db8` |
| 31 | `lemma` | [Filter.Tendsto.enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/filter-tendsto-enorm.md) | 224 | `result-track:3522bc48fddc2a3d3f0d18a32360bb1cc1a5601a80ccc577e1b4523f2f43bfef` |
| 32 | `theorem` | [ContinuousAt.norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuousat-norm.md) | 238 | `result-track:516e611a6ef25829d86ac8e75baeee4d041c2c1ba00524f1203fab8b8c0eb0f6` |
| 33 | `theorem` | [ContinuousAt.nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuousat-nnnorm.md) | 242 | `result-track:ee33892398ab0161a0431e7d1850a28245a63abdcf0fb8903be14de2bb6a08fd` |
| 34 | `theorem` | [ContinuousWithinAt.norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuouswithinat-norm.md) | 246 | `result-track:01394482408128f206ce186160e6e18e988b703ae4ed7160545f96d496cea30f` |
| 35 | `theorem` | [ContinuousWithinAt.nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuouswithinat-nnnorm.md) | 251 | `result-track:e61c14f77f73ce41d745657b3a5d827453412ccae2be7f53a3bc4791b00309ec` |
| 36 | `theorem` | [ContinuousOn.norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuouson-norm.md) | 256 | `result-track:cfd1e45026734982d0363f17721a5a8b7fe1c34c4c068c71fde2b8291b128ae1` |
| 37 | `theorem` | [ContinuousOn.nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/continuouson-nnnorm.md) | 260 | `result-track:ff6fae30d64f48b3e30f6c75f607f0cbaa27ae8087722541f368357f67effa68` |
| 38 | `theorem` | [eventually_ne_of_tendsto_norm_atTop'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/eventually-ne-of-tendsto-norm-attop.md) | 268 | `result-track:5107ce33e972db12aa0888ba47ed6f368a076a1f5a2c9aa377e23feb20bda211` |
| 39 | `theorem` | [SeminormedGroup.mem_closure_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/seminormedgroup-mem-closure-iff.md) | 273 | `result-track:a534dbf074c57ac6c0222d5cc6e24ba32b80be90062b109b2865b37b53b70c2b` |
| 40 | `theorem` | [SeminormedGroup.tendstoUniformlyOn_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/seminormedgroup-tendstouniformlyon-one.md) | 278 | `result-track:3c106b8db04f79269d1ed76f27c7efcff57841d2e343fd6db98024d8e57c674c` |
| 41 | `theorem` | [SeminormedGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/seminormedgroup-uniformcauchyseqonfilter-iff-tendstouniformlyonfilter-on.md) | 283 | `result-track:8906874ddf9b0330297bd840d4ac9e75b2c265684c5ce24e8f493202c6dbe69b` |
| 42 | `theorem` | [SeminormedGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/seminormedgroup-uniformcauchyseqon-iff-tendstouniformlyon-one.md) | 300 | `result-track:ab9a56ed711224e4e90a5f1894566420a58f6682d84183d3668040b001308d6a` |
| 43 | `theorem` | [tendsto_iff_norm_div_tendsto_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-iff-norm-div-tendsto-zero.md) | 315 | `result-track:25bcbfc5b27199a7bea9b70cdac736a13d98bed01b5bb7e71b237a4c9bb4215f` |
| 44 | `theorem` | [tendsto_iff_enorm_div_tendsto_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-iff-enorm-div-tendsto-zero.md) | 320 | `result-track:c66dddbceea207e2a6f255096519e8487ce9cc4bcd448276757e4d193d711afd` |
| 45 | `theorem` | [SeminormedCommGroup.mem_closure_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/seminormedcommgroup-mem-closure-iff.md) | 325 | `result-track:dd0de96c6ce07ae4ae4c1a1aaf7892d1737e2e2e3e20549d016b1298bb8bb8cb` |
| 46 | `theorem` | [tendsto_norm_div_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-norm-div-self.md) | 330 | `result-track:67a401dcd0b769cd3e2e2b008b6835d0d7e82edc81a45b79accf39f4f1cea91a` |
| 47 | `theorem` | [tendsto_norm_div_self_nhdsGE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-norm-div-self-nhdsge.md) | 335 | `result-track:f16259d7884fdbfbe420a8fda0c685c93a423e832a2c2d36fb4bebaf82d6727f` |
| 48 | `theorem` | [controlled_prod_of_mem_closure](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/controlled-prod-of-mem-closure.md) | 341 | `result-track:a2048716582fb404593eab7a63428c4ad637b0dc49701a49312f8393a13c4f21` |
| 49 | `theorem` | [controlled_prod_of_mem_closure_range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/controlled-prod-of-mem-closure-range.md) | 382 | `result-track:5fefa77537a8798ce6e9127eacb1bd7c9f71f67f2257d3565d81703bf9ccb2de` |
| 50 | `lemma` | [tendsto_norm_nhdsNE_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-norm-nhdsne-one.md) | 401 | `result-track:2da57de088cf95297b7bcdeb7d4f59aa658c0be33d69d8107c7a0929b4393f21` |
| 51 | `theorem` | [tendsto_norm_inv_mul_self_nhdsNE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-norm-inv-mul-self-nhdsne.md) | 405 | `result-track:4ac16c9ad5a504d24b66ea6e5e26366f31d61c5ee9c20c2f5149ff311395f703` |
| 52 | `lemma` | [comap_norm_nhdsGT_zero'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/comap-norm-nhdsgt-zero.md) | 418 | `result-track:cbdb2f1911e12a37b23ab67ef1bd21920d678a2c5fcd668b4a7b16c217d405f4` |
| 53 | `theorem` | [tendsto_norm_div_self_nhdsNE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupContinuityNamespacedPublic.lean/declarations/tendsto-norm-div-self-nhdsne.md) | 422 | `result-track:679b65337f5310e1a8a70701574b3931f1667520e93dc73f2a1f337bce2de314` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f31346fad6de370fd5078d1991c45831313e1d415195c13a90efbd9690b9400f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
