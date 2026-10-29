# Verification target: Flat Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f17ec10cf8724970eb2b234501ecf13949b5dc63",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f17ec10cf8724970eb2b234501ecf13949b5dc63`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean.json)

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
| 1 | `theorem` | [Flat Basic Namespaced Public](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearmaprtensorinjectiveoffg-vari.md) | 93 | `result-track:123b372d6ee663df496dcbb2ae412cda92d4819de8de42574715357e9f93153d` |
| 2 | `lemma` | [Flat Basic Namespaced Public](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearmaprtensorinjectiveoffg-vari-source-edition-5.md) | 106 | `result-track:a94f8b7da3bfb95b846d03c0f54568003672a5054477126fea90ebf078ae2195` |
| 3 | `class` | [Flat](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/flat.md) | 121 | `declaration-track:a87a4704e94c3cb8d232b1a098adb767046d7f73e26853a811958eec3d11287e` |
| 4 | `theorem` | [rTensor_preserves_injective_linearMap](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/rtensor-preserves-injective-linearmap.md) | 128 | `result-track:10d8089988cbadd3bf665896aa7b5aff3557734e9b830f2c7257cab4ffca5baa` |
| 5 | `theorem` | [lTensor_preserves_injective_linearMap](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/ltensor-preserves-injective-linearmap.md) | 139 | `result-track:68aa6987ad520245ca45c6ff633cf4e7b263ffce90bb29831ce7ffefce094b82` |
| 6 | `lemma` | [iff_rTensor_preserves_injective_linearMapₛ](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-rtensor-preserves-injective-linearmap-source-edition-2.md) | 145 | `result-track:376fa5ace80d8b48ccaf66e11fbcc2d7ac113ef3d79b1d5c2f7042323d8d6267` |
| 7 | `lemma` | [iff_lTensor_preserves_injective_linearMapₛ](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-ltensor-preserves-injective-linearmap-source-edition-2.md) | 155 | `result-track:b021cc9e807d917970be16a631ef8974dea3c9ebe7b5e74dcdf5d3934c9d4753` |
| 8 | `lemma` | [iff_rTensor_injectiveₛ](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-rtensor-injective.md) | 161 | `result-track:a96915116d8a390af8e907d1c20f15f80c44c24204e31acc011fed078a60942b` |
| 9 | `lemma` | [iff_lTensor_injectiveₛ](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-ltensor-injective.md) | 166 | `result-track:c97a501248621aff2c9eae2f3baa5158332e309615188db0c4e99ba91035b86a` |
| 10 | `instance` | [instSubalgebraToSubmodule](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/instsubalgebratosubmodule.md) | 170 | `declaration-track:caf99b6cfd2d02d6a656c26642cc454dffbc52c8871b3efb233b5375bbc3ef91` |
| 11 | `instance` | [self](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/self.md) | 173 | `declaration-track:4f6b56f78ed4429e81a53835780cf301b3cb132ca6343a54931dbed4519f00a4` |
| 12 | `lemma` | [of_retract](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/of-retract.md) | 180 | `result-track:2d7a93347370b404694c628d31d9ca0ede2cf4113d241e7f34d1a7b4ad15e6e9` |
| 13 | `lemma` | [of_linearEquiv](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/of-linearequiv.md) | 189 | `result-track:3c9a9e22122b6d3a0c2242f76a7fdc735f8427bbb9c5e49b273f97f28085c047` |
| 14 | `lemma` | [equiv_iff](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/equiv-iff.md) | 194 | `result-track:ae5bcfed474570d917f09de1980afa340d4fc47b1d44341bd3b538dc9193ebf3` |
| 15 | `instance` | [ulift](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/ulift.md) | 197 | `declaration-track:4286b673a19b59312c3f25aaa66e69980f437e9d0a4a6aa233d3a0abb8b15a82` |
| 16 | `lemma` | [of_ulift](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/of-ulift.md) | 201 | `result-track:15029e88d86534cdb28cb67f2e18580b92332ed81750ac6d10135de65a8ec1c0` |
| 17 | `instance` | [shrink](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/shrink.md) | 204 | `declaration-track:c1f70ebe7f9168e284b96cb0a1658290762f623073208ad1087919f809a09b8e` |
| 18 | `lemma` | [of_shrink](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/of-shrink.md) | 208 | `result-track:740952bb5830980deee699c3472f898e209fab32fcb684f23400d9162fca4dc5` |
| 19 | `theorem` | [directSum_iff](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/directsum-iff.md) | 215 | `result-track:8e4111898ebc3c3027233f03f380a8f290c5951eadd64f9fc4116e920c357e7e` |
| 20 | `theorem` | [dfinsupp_iff](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/dfinsupp-iff.md) | 222 | `result-track:46f2260377c34c6f306ea1a5791c72a269f86b0cf466a7bafb5bc3eb3a63c0cf` |
| 21 | `instance` | [directSum](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/directsum.md) | 225 | `declaration-track:feac60e23ebee3493bff3b64aa85b9bec48b242af3e5d699dfe81e949556936a` |
| 22 | `instance` | [dfinsupp](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/dfinsupp.md) | 227 | `declaration-track:6758de7f935b7e7afafe0262eaa6b73ea2af860bd2302d128c3e0d662d2a3ca8` |
| 23 | `instance` | [finsupp](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/finsupp.md) | 232 | `declaration-track:b972d3f5d736c4bf497836bcc993dfcb81f7c4030bb39d85161584d85209c512` |
| 24 | `instance` | [of_projective](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/of-projective.md) | 235 | `declaration-track:97fdb6a5b0879e408800722dac25d70b2c0a4ccde3ad33d3c71526963e1aaa7c` |
| 25 | `instance` | [of_free](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/of-free.md) | 239 | `declaration-track:94ebe787260b169d4db9a3ce7191f85f9283602aff6de11ee2bd82553e189e0e` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/instance.md) | 241 | `declaration-track:8fd0612ddbd22db680ac21b6784741a9d42986f9dc5f5c7531941e492c775d00` |
| 27 | `example` | [(anonymous)](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/example.md) | 251 | `declaration-track:44b6709565e9271a16bd86ea939585c0a166d5bb720bb6a0c6ece461f6f23fe2` |
| 28 | `theorem` | [linearIndependent_one_tmul](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/linearindependent-one-tmul.md) | 257 | `result-track:f345ddbfe2aaca57fcaf0fa998044e458ba4de6d2613701fd000dae1c1f70ab8` |
| 29 | `lemma` | [tensorProduct_mk_injective](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/tensorproduct-mk-injective.md) | 266 | `result-track:815cc6dfd152532493b67a9c72e693c98121fafe0b7397025777f4c9895f4a8b` |
| 30 | `lemma` | [Flat Basic Namespaced Public](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearmaprtensorinjectiveoffg-vari-source-edition-3.md) | 274 | `result-track:3925483f7993919976f6bedaadc7cb052d796d4a81cf8cc3c646ccc03f9e75bd` |
| 31 | `lemma` | [iff_rTensor_preserves_injective_linearMap'](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-rtensor-preserves-injective-linearmap.md) | 296 | `result-track:0d299def77cd18768819ab04a1056c4fb27d4eb8f5425bc2ccf7605d6680cf87` |
| 32 | `lemma` | [iff_rTensor_preserves_injective_linearMap](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-rtensor-preserves-injective-linearmap-source-edition-3.md) | 308 | `result-track:96836e82698ba1fadf90aa33ed405025474fefa53d354074f1b2b71e2ef06e01` |
| 33 | `lemma` | [iff_lTensor_preserves_injective_linearMap'](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-ltensor-preserves-injective-linearmap-source-edition-3.md) | 316 | `result-track:b9c8d2899891db0910798abbbf9692692c45da736dd17688e6c21e343778fc15` |
| 34 | `lemma` | [iff_lTensor_preserves_injective_linearMap](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-ltensor-preserves-injective-linearmap.md) | 324 | `result-track:8982b10e7778997de64b8baa3ab14861d39ab09ef35dc4ebfe145e0c6d449bd2` |
| 35 | `lemma` | [lTensor_exact](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/ltensor-exact.md) | 331 | `result-track:edecc9f1ec62847d4c00fa6957de03bdf4af9a1da95d05d562c057b9b681801e` |
| 36 | `lemma` | [rTensor_exact](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/rtensor-exact.md) | 348 | `result-track:dc03ba304fc85b79f64491cfd2aa4ec1b1b8a576d7f602d60ca31b819bf305dd` |
| 37 | `theorem` | [iff_lTensor_exact'](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-ltensor-exact.md) | 365 | `result-track:b7a802ed0f0d2ea96d7c90f599ab7ba9d6b0129a36a3080576877da34b68f8dc` |
| 38 | `theorem` | [iff_lTensor_exact](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-ltensor-exact-source-edition-2.md) | 379 | `result-track:dd8889e45bb61abcfd19efb56a315064543ed47dba9410f75c0a8f5798e26050` |
| 39 | `theorem` | [iff_rTensor_exact'](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-rtensor-exact-source-edition-2.md) | 387 | `result-track:a4d049e49a4cdfb42831bb94ab70e64d71ca14d64ed0ef4e3e8ee4c579b1d7f1` |
| 40 | `theorem` | [iff_rTensor_exact](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/iff-rtensor-exact.md) | 401 | `result-track:74dc82577c457908b0c74572c71ee9a036037d8af7d758fa1dc6adafdcb543a2` |
| 41 | `theorem` | [includeLeft_injective](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/includeleft-injective.md) | 418 | `result-track:4b172697e98aa66ce9fb9bc9af5223a958c045b7264bf766cfca42c400b43a6a` |
| 42 | `theorem` | [includeRight_injective](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/includeright-injective.md) | 425 | `result-track:cfe56ad2ce2a28bebf06bafc6c02cc201c8fc66a2994f67fe6a4eaf248d00f5c` |
| 43 | `theorem` | [toBaseChange_injective](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/tobasechange-injective.md) | 438 | `result-track:4ed146f00058a8d99ad9b77e250cc8ba8dc76a4fdf7883ff1465b124d898d223` |
| 44 | `def` | [toBaseChange.toLinearEquiv](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/tobasechange-tolinearequiv.md) | 444 | `declaration-track:7e16570ce06fc68f9d373d3fb02e0c54c3cc8731fd29e5941a1eae62161b2370` |
| 45 | `theorem` | [toBaseChange.toLinearEquiv_symm_apply](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/tobasechange-tolinearequiv-symm-apply.md) | 448 | `result-track:f5e99ff2c27b7fe2fcd5c4d77c00b77f2c2cc75fb7553f665ec6d8ce5ad069bb` |
| 46 | `theorem` | [nontrivial_of_linearMap_injective_of_flat_left](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/nontrivial-of-linearmap-injective-of-flat-left.md) | 467 | `result-track:c93a61bb316801d4ace7fb907e1b970c4f9ad41700803dedae41fd7927dcc83e` |
| 47 | `theorem` | [nontrivial_of_linearMap_injective_of_flat_right](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/nontrivial-of-linearmap-injective-of-flat-right.md) | 474 | `result-track:644cbc9b3e8065420cb7027698fd98b5ca84786b9ff15ab4598cca0dd869e7b9` |
| 48 | `lemma` | [map_injective_of_flat_flat](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/map-injective-of-flat-flat.md) | 485 | `result-track:2359b1f507c8f06a3e5e6028a7042ad1aecb072beeca213e73fb8cce8ed61163` |
| 49 | `lemma` | [map_injective_of_flat_flat'](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/map-injective-of-flat-flat-source-edition-2.md) | 496 | `result-track:6da86a0f7c33a44b7398dab85ca6b5e883898a8aabd7be41bdec2660629c5cb4` |
| 50 | `lemma` | [Flat Basic Namespaced Public](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearmaprtensorinjectiveoffg-vari-source-edition-7.md) | 511 | `result-track:affcfee8f05dcfa1cddf46aeafc693475172a1ebf5f54b6e307d6dbec64b3b23` |
| 51 | `lemma` | [LinearIndepOn.tmul_of_flat_left](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/linearindepon-tmul-of-flat-left.md) | 527 | `result-track:1c58c1ccafdf305424bdf41913bca305baba602b99163867478cb62fb50010c9` |
| 52 | `lemma` | [Flat Basic Namespaced Public](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearmaprtensorinjectiveoffg-vari-source-edition-2.md) | 536 | `result-track:20a45a40275a6e7c2e32e5a09d92dbd5325a8d3c577ca6ee9b7a14ee5f6fa95a` |
| 53 | `lemma` | [LinearIndepOn.tmul_of_flat_right](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/linearindepon-tmul-of-flat-right.md) | 547 | `result-track:9e01c6c7afda710ff1d69d0554310a057659f6821d9886243c77b803e1a72dcf` |
| 54 | `theorem` | [Flat Basic Namespaced Public](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearmaprtensorinjectiveoffg-vari-source-edition-6.md) | 555 | `result-track:ad70349030fa814161aabb3e9fdd18e16e9fbc2907ccd8e20be0a5c50e261237` |
| 55 | `theorem` | [Flat Basic Namespaced Public](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/root-grwtsk-algebra-linearalgebra-rootlinearmaprtensorinjectiveoffg-vari-source-edition-4.md) | 561 | `result-track:7398210369bd8819e75ce42095d1236ee154e46eae0ea61b389b6dbb01a832c2` |
| 56 | `theorem` | [nontrivial_of_algebraMap_injective_of_flat_left](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/nontrivial-of-algebramap-injective-of-flat-left.md) | 573 | `result-track:0dfb966d49787b6239351b449343c98557d14eeacaea9e9c54fb2b9f47504543` |
| 57 | `theorem` | [nontrivial_of_algebraMap_injective_of_flat_right](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/nontrivial-of-algebramap-injective-of-flat-right.md) | 579 | `result-track:fbfcbe19bfaac7329e9283c8cc8b552efe549f6238577d466943513144f6512e` |
| 58 | `theorem` | [map_id_injective_of_flat_left](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/map-id-injective-of-flat-left.md) | 595 | `result-track:882a756e3e055cf7facdd5f9f36259a469cf976117711fead0b4b1ac9d29e074` |
| 59 | `theorem` | [map_id_injective_of_flat_right](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/map-id-injective-of-flat-right.md) | 602 | `result-track:e761a35086ef56712537c0abf02a55dcf0c00b1b247d17f0db3fd7a344956d52` |
| 60 | `theorem` | [map_injective_of_flat_right_left](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/map-injective-of-flat-right-left.md) | 613 | `result-track:633254d212f59232811ffd220d1246d12fa45ba3b3691070ade60f47d1b72cd5` |
| 61 | `theorem` | [map_injective_of_flat_left_right](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/map-injective-of-flat-left-right.md) | 623 | `result-track:19098d100ffc6843aa06d7f550e6c28632f4fb0399a8c95410107e3cea541992` |
| 62 | `theorem` | [IsSMulRegular.of_flat_of_isBaseChange](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/issmulregular-of-flat-of-isbasechange.md) | 636 | `result-track:49c166c8db9d7e27e7552b1eafb8d6d016aeb2b6c9af3a10c10da82fe1ff0231` |
| 63 | `theorem` | [IsSMulRegular.of_flat](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/issmulregular-of-flat.md) | 641 | `result-track:76a18a068c5efc1f3a4b66e2fe789826ddd6776a76a0ae681d716c145f9cf94b` |
| 64 | `theorem` | [IsReduced.tensorProduct_of_flat_of_forall_fg](../../../../CommutativeAlgebra/FlatBasicNamespacedPublic.lean/declarations/isreduced-tensorproduct-of-flat-of-forall-fg.md) | 650 | `result-track:ea06cd60c63c6d5f00e9592900f2850aba0536a3ee1ec57abd2ae224bb31a105` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4846f7f14e26d5dab88c0e64d4ac31f68cc7b288605d41f424fda76c6c8cf0cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
