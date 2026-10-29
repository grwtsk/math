# Verification target: Embedding Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4067ace0a52daf35f6538e392382f5d78dbb476d",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant479205a03d63e4f2bbfa16556fab034634f5723f8e41a60d0a4ae2e7a7b9ba9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4067ace0a52daf35f6538e392382f5d78dbb476d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant479205a03d63e4f2bbfa16556fab034634f5723f8e41a60d0a4ae2e7a7b9ba9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant479205a03d63e4f2bbfa16556fab034634f5723f8e41a60d0a4ae2e7a7b9ba9a.lean.json)

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
| 1 | `structure` | [Embedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/embedding.md) | 34 | `declaration-track:04f29ad77e9c80e4b66e02d12ea51a91fc4fccd03e2ccf5f658d9ff8bbd57e52` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 44 | `declaration-track:ee9232d2db4bff52156eb9de62da50d5c02a77d27f9a209bcd0344bdbaad3c9a` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 48 | `declaration-track:a71dcb149ef5fd98c0de470312dbdb6cfd07c729e370c50f58d2ab176c1f1c6b` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 53 | `declaration-track:b53399ab8a725830324158e2297b38bdc5d4ace27c65594a632d934e68cd782b` |
| 5 | `theorem` | [exists_surjective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/exists-surjective-iff.md) | 55 | `result-track:dca576fa753e82e9bf958d067bd79dd622461044bec35c79e48acb06c5dce4e6` |
| 6 | `def` | [toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/toembedding.md) | 80 | `declaration-track:75e8f1d4f259c316efde5ab0cab454421516c2ad8a8262312eaa93b6e17d33b7` |
| 7 | `theorem` | [coe_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coe-toembedding.md) | 84 | `result-track:1bec16b2609758e1090ebc7b7d1376f9d55252368a663fcb7e35f378e2ff5646` |
| 8 | `theorem` | [toEmbedding_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/toembedding-apply.md) | 87 | `result-track:10017fb67469f02d4f4820fa100bef2b02dc654a24c1e1005beaa76a94a488a2` |
| 9 | `theorem` | [toEmbedding_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/toembedding-injective.md) | 90 | `result-track:e706c35618c829c09482fd364026986d6e3b1b5581eb1a4a42155290f88132fc` |
| 10 | `instance` | [coeEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coeembedding.md) | 93 | `declaration-track:afbc1346afe7dfec7434e067d2a0a3e0e8b1124aac5d06d12dade4fe7c74caeb` |
| 11 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coe-injective.md) | 102 | `result-track:f4509914ca9d3c60a38123a4de63c75e7c9d7691d9e5e35b07c51a355e085ed3` |
| 12 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/ext.md) | 106 | `result-track:444a8788a64ca01ba23f166c9c13ce5f686e6227f9cc0efd78406c5e5292c42c` |
| 13 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 109 | `declaration-track:ccdc0df58a6ab3e7694452ad8730e71809e33269e6798cf81a832d094cce6317` |
| 14 | `theorem` | [toFun_eq_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 114 | `result-track:6e2a4f65fa5640b13ee9d39cc6ed2f9e613c6fc251a5e87ed1692d2ed722bbb1` |
| 15 | `theorem` | [coeFn_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coefn-mk.md) | 118 | `result-track:ad7827f41d8c564947313556e34fc94c93405d57c579b12c898adbf74688c002` |
| 16 | `theorem` | [mk_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/mk-coe.md) | 122 | `result-track:cd60d87ad747d1746d726620be5c3da1a106f4b93b61192a21c18e6b1cfe64df` |
| 17 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/injective.md) | 126 | `result-track:a1f3db754af31fdb118a1ca4cbbd09a7624e475fd41e682e008f36a1ea563ec2` |
| 18 | `theorem` | [apply_eq_iff_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/apply-eq-iff-eq.md) | 129 | `result-track:03be8bf6c6449e272bef8f3b049cd5cccab0033520e6848671a0f33b4f7c6304` |
| 19 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/refl.md) | 134 | `declaration-track:9c317dfaef8756e4f2467ac816d7b43fb63e44be567f5e969845368f91d78c5c` |
| 20 | `theorem` | [coe_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coe-refl.md) | 138 | `result-track:93941fe2de0222d98c07699a9157bdf422cde41c909ff3f7302c8a61f02f814f` |
| 21 | `def` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/trans.md) | 142 | `declaration-track:19dbd7544cec233c1b38bdb97086ab88512cb9ab6ee108fd994fb88c08e14e62` |
| 22 | `theorem` | [coe_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coe-trans.md) | 146 | `result-track:ba1a28936496c64342788caacc6ce7996a3926c937bd55f5723a668352da2eb8` |
| 23 | `theorem` | [refl_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/refl-trans.md) | 149 | `result-track:a682da8b137dd545e539831da97bce71e8da6a7d4737feb7dc4cef58c7837872` |
| 24 | `theorem` | [trans_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/trans-refl.md) | 153 | `result-track:41ec3e446eab3fb06d03905aa4a60c435006fb09a5a21a0e085641c09d522454` |
| 25 | `theorem` | [trans_assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/trans-assoc.md) | 156 | `result-track:f579b5338955ed7c9d26c02bd3bf310c43f1c1d3a694ba897198a5f92bfb117d` |
| 26 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/instance.md) | 160 | `declaration-track:5fe7e3a2d12a72f588a3fea190bd3b8d60c8975139adcbdb88e2e30af21a2bb5` |
| 27 | `lemma` | [mk_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/mk-id.md) | 162 | `result-track:0ab54c74e27805d1e80eedc9f7e94ae2160417e6569d00dc29f47bbbea5434a6` |
| 28 | `lemma` | [mk_trans_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/mk-trans-mk.md) | 164 | `result-track:ba64bcca6d2247aa781a04de1bd6a1bbe51f5c7e253190d21af430faca66863e` |
| 29 | `theorem` | [equiv_toEmbedding_trans_symm_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/equiv-toembedding-trans-symm-toembedding.md) | 167 | `result-track:c3054f971676a13a8254992ac41b64682215370d25f779047abc536709d15189` |
| 30 | `theorem` | [equiv_symm_toEmbedding_trans_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/equiv-symm-toembedding-trans-toembedding.md) | 171 | `result-track:73b88905aed3e82aa5ce20a4b9f444da11a63df7b32a53a56070ab4673c7b30a` |
| 31 | `def` | [congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/congr.md) | 177 | `declaration-track:989814880ca46660ba37de07432c4c0757265a4eb9ff50c717d1fe287941f23c` |
| 32 | `def` | [ofSurjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/ofsurjective.md) | 182 | `declaration-track:22c35e7ebf4dec97e9f8a6e354eadef9add899b907a6ed8e5f25bf36f98b5739` |
| 33 | `def` | [equivOfSurjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/equivofsurjective.md) | 186 | `declaration-track:8fde7c403ef88fede24177fae6e06bebab44802f6904a35fc3481b956b6c6682` |
| 34 | `def` | [Embedding Basic Namespaced Public](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-embedding-va.md) | 191 | `declaration-track:0228333970ca86c23a834a00b0fe9d7efed8f117cd9331404d7cc74473275234` |
| 35 | `def` | [ofIsEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/ofisempty.md) | 199 | `declaration-track:380f45af81f8a5b2419db33f8581030d0cbe1ee758815ee8fca4f6036e9403de` |
| 36 | `def` | [setValue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/setvalue.md) | 204 | `declaration-track:6a8bde1ddaa888e8be7903d4dfc9d316cb4182cd1b0a6eb34f827b8acd7f6a4f` |
| 37 | `theorem` | [setValue_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/setvalue-eq.md) | 211 | `result-track:261748382b6e28faed2e3600e8d67bc91158d3bd8128d923d480bc593b613be2` |
| 38 | `theorem` | [setValue_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/setvalue-eq-iff.md) | 216 | `result-track:b137f0fc309a86be3a074ff95ebe36705b998ffe0b1a9416d3cfcc136ac29fcf` |
| 39 | `lemma` | [setValue_eq_of_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/setvalue-eq-of-ne.md) | 220 | `result-track:32b702fd8a93cec604613454f208406318a841086d01ad8a73f3632ad16f1bf4` |
| 40 | `lemma` | [setValue_right_apply_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/setvalue-right-apply-eq.md) | 225 | `result-track:3f45dacb500ba5c3c431cbb32d06b05f833d9e12f739bf8c0843a1661b263d47` |
| 41 | `def` | [some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/some.md) | 231 | `declaration-track:ea936c5f268f85943f15624ade71ff2ac65b4c768d8eafce0512de0d6cec0f28` |
| 42 | `def` | [optionMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/optionmap.md) | 236 | `declaration-track:780e0632e6b7265a426c70aa00f30a41a3ea8f24542580026d941d8f41383a23` |
| 43 | `def` | [subtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtype.md) | 240 | `declaration-track:9a714cdd250bd03b1a86fe6d2dad2ea2e542251764e46e6ddbb362ee697b74be` |
| 44 | `theorem` | [subtype_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtype-apply.md) | 244 | `result-track:48af5c02d4250c41667391bfcc138a58e7e8c74bc8ae69f33794b83e90206b46` |
| 45 | `theorem` | [subtype_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtype-injective.md) | 247 | `result-track:70282bc1c16e7a298a5108216134862f81037f6eb688a5484da3f4f19ff4f54f` |
| 46 | `theorem` | [coe_subtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coe-subtype.md) | 251 | `result-track:aff1dba25934b943651df64d52070bbdeb270812eadf474897b0d4a1da13d8a5` |
| 47 | `def` | [quotientOut](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/quotientout.md) | 255 | `declaration-track:645acae08d23c3a62eebbeafe41db05036b2b89daeb74532c1911a54d83cc43b` |
| 48 | `theorem` | [coe_quotientOut](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coe-quotientout.md) | 259 | `result-track:becc15081f3fe43b74a44140dd4576a0966585dff5107710c85f345e85f0711c` |
| 49 | `def` | [punit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/punit.md) | 263 | `declaration-track:145bf289e8409927f113149060e4e64f87f63d6ef9c39536198001c77d646d05` |
| 50 | `def` | [oneEmbeddingEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/oneembeddingequiv.md) | 269 | `declaration-track:d9120d2cea32c238fd3bbe2b4356d6e8b161f7f02f2ad5c4a18cda7b59ee72c0` |
| 51 | `def` | [sectL](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/sectl.md) | 278 | `declaration-track:f82b873bcfa992dfc28cbd5a00d3f391ad9931acbe0908715c0a90dcb98f2c4b` |
| 52 | `def` | [sectR](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/sectr.md) | 283 | `declaration-track:b8075e9dc966ce7d89608a2180ff8273bc28b9175f70b0401706c79780933edb` |
| 53 | `def` | [prodMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/prodmap.md) | 287 | `declaration-track:7e4503b8f2e0c36a822b6ac92e3d5d3aa35a21a6545fce188edd2db20b922290` |
| 54 | `theorem` | [coe_prodMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coe-prodmap.md) | 291 | `result-track:6466b4df7dbec40457ddd3edafc6e446b775b7b90617b5aafee7f7e3220c4187` |
| 55 | `def` | [pprodMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/pprodmap.md) | 297 | `declaration-track:3b79c64ad928b51c6249fe973c63f2e144d7d030b971361e780e0d1857fad1ca` |
| 56 | `def` | [sumMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/summap.md) | 305 | `declaration-track:d22cae7b25fbc21f356894502d7a77e7bc3f0f3428b0d5d3416e9a3895a42f49` |
| 57 | `theorem` | [coe_sumMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/coe-summap.md) | 309 | `result-track:dc80e00cba2028b1a95ff8ed28b97967957be5c12451faab1152baf869600f9c` |
| 58 | `def` | [inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/inl.md) | 314 | `declaration-track:bedc37aca0cf6e40470e331dc82641df94a9b7f16550407979088be8bf9aeae3` |
| 59 | `def` | [inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/inr.md) | 319 | `declaration-track:c1c8e56af6c5f22a87b0319f60ecf88a8e9a40be0e2b544dcc8eac9bb031fa6e` |
| 60 | `def` | [sigmaMk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/sigmamk.md) | 330 | `declaration-track:9f70b42a6640901ee0e4e4b0b96963c420da28a671121a3b9229937256cf6479` |
| 61 | `def` | [sigmaMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/sigmamap.md) | 338 | `declaration-track:33e5750f8844a00110589cd61a9512323469c6fc8a09ef6024f0044550bedb9c` |
| 62 | `def` | [piCongrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/picongrright.md) | 346 | `declaration-track:c04773ddedce9e2eb49a9df877d208e6f875dcbc08f882de8e76adc468aceab4` |
| 63 | `def` | [arrowCongrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/arrowcongrright.md) | 351 | `declaration-track:68feac6e95b9e16746e3bb1c12c24b2591c2c3dea0986a02fa0d3a628d0aba16` |
| 64 | `theorem` | [arrowCongrRight_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/arrowcongrright-apply.md) | 355 | `result-track:5c50e22876de4c90affe664fc327dec9fed2070c08edd1476ff5b43517f88678` |
| 65 | `def` | [arrowCongrLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/arrowcongrleft.md) | 362 | `declaration-track:c4c6d07009ae18661b0b4bcc195477f9158cf808fffd3f763d7e3e11e6c23eca` |
| 66 | `theorem` | [arrowCongrLeft_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/arrowcongrleft-apply.md) | 369 | `result-track:31dc3ffcc5ee587024bc6e19df0fff328ed5526ece65d453518f8708aac248d5` |
| 67 | `theorem` | [arrowCongrLeft_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/arrowcongrleft-refl.md) | 375 | `result-track:f1214194d890acdfffd31f67779a993f4602d86d1389751001f3097e1f4f3512` |
| 68 | `theorem` | [trans_arrowCongrLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/trans-arrowcongrleft.md) | 381 | `result-track:9c112e479e502ede36c26db1112d10291ab4c70900e5556fb99fb87c07dbc2df` |
| 69 | `def` | [subtypeMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtypemap.md) | 389 | `declaration-track:c74b2658ead1b75a214d99473cea02dfbd8ca9896ab0fd3d156c72646424f0b1` |
| 70 | `theorem` | [swap_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/swap-apply.md) | 396 | `result-track:89fa4e662ac6cb3abe505f83b08ba027058336fa30ca52d2be58df181fa7bf05` |
| 71 | `theorem` | [swap_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/swap-comp.md) | 400 | `result-track:91565ad395218df7e02760fd52d53af809d12f63cd86d0e4354b72a5ba0e7d1f` |
| 72 | `def` | [asEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/asembedding.md) | 415 | `declaration-track:0f575a1767161e4ca871052e223708da4eaf9bcbfc2eeec2494bcbcd13bc0f5d` |
| 73 | `def` | [subtypeInjectiveEquivEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtypeinjectiveequivembedding.md) | 420 | `declaration-track:34084063a8aa72211635a920ea04c5a4c79d05d3c7ac6107c4122ec3c8fdd9ba` |
| 74 | `def` | [embeddingCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/embeddingcongr.md) | 428 | `declaration-track:60efe050e5a0f03dd64f77c047a96543f8ee34c1dcc220e13abd3f23ab5003d2` |
| 75 | `theorem` | [embeddingCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/embeddingcongr-refl.md) | 439 | `result-track:1e90ce732d802f3e584db0d57f78c2633ca5e841fd884e3685dac9b551d12c4c` |
| 76 | `theorem` | [embeddingCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/embeddingcongr-trans.md) | 444 | `result-track:b65eae846a4cc47d81727e248bcf00a313f354f4cc838078bfffe5d2f83a2f4b` |
| 77 | `theorem` | [embeddingCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/embeddingcongr-symm.md) | 451 | `result-track:d8473d0ba52144ea0ad9ec944bea8159c3599e443186f65494c15a7ef8cf4baf` |
| 78 | `theorem` | [embeddingCongr_apply_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/embeddingcongr-apply-trans.md) | 455 | `result-track:58c0f229de1d29b6754a47d02f6f3d55fd1a377ba1493ff17723a60a0a415467` |
| 79 | `theorem` | [refl_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/refl-toembedding.md) | 463 | `result-track:13e0ca6c4a42646ef8103ab8605d8a3f63d1ef7d6dd7006b7d166e77fed69b20` |
| 80 | `theorem` | [trans_toEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/trans-toembedding.md) | 467 | `result-track:7601c1f5caf4c1819e710f5ff945bdf78ad3a899f99f345bac6d215e9d997f69` |
| 81 | `def` | [subtypeOrLeftEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtypeorleftembedding.md) | 479 | `declaration-track:c371c82746584ecc31623e5d8298a96b40f4043787acf97c75cead3af230700c` |
| 82 | `theorem` | [subtypeOrLeftEmbedding_apply_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtypeorleftembedding-apply-left.md) | 487 | `result-track:88cf5fed1dc01428880996806fb5f498a73716852ac920db2a37251f7c0f4d76` |
| 83 | `theorem` | [subtypeOrLeftEmbedding_apply_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtypeorleftembedding-apply-right.md) | 493 | `result-track:fbee7449a01f1c83427a240da425bc3a932dffbc1cad448471a67e6c641a9579` |
| 84 | `theorem` | [subtypeOrLeftEmbedding_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtypeorleftembedding-apply.md) | 499 | `result-track:84e8f5e7f7ed4e54768bbbac9ff22d4675d8a9a80cd70ee73778e784b1c95a84` |
| 85 | `def` | [Subtype.impEmbedding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicNamespacedPublic.lean/declarations/subtype-impembedding.md) | 508 | `declaration-track:5309aa8f795719ea4a5ab392d4fc74487c572209a20f0fafff301a31837babad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b17581b284ad0831309b50124329ae292460c6037b2176042ce4d8c0552e694b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant479205a03d63e4f2bbfa16556fab034634f5723f8e41a60d0a4ae2e7a7b9ba9a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant479205a03d63e4f2bbfa16556fab034634f5723f8e41a60d0a4ae2e7a7b9ba9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
