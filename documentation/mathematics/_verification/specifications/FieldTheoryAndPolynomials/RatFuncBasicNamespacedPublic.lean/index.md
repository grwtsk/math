# Verification target: Rat Func Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af9f09e0803ba79eb4d5f09adca00411029b0e69",
  "lexical_observation_count": 133,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta43cc5eef45fe17bdccc2c5c2a84318f7203ad1573f9dc55b64044d09134a875.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af9f09e0803ba79eb4d5f09adca00411029b0e69`.

Source path: `GRWTSK/Algebra/Basic/Varianta43cc5eef45fe17bdccc2c5c2a84318f7203ad1573f9dc55b64044d09134a875.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta43cc5eef45fe17bdccc2c5c2a84318f7203ad1573f9dc55b64044d09134a875.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 79 | `declaration-track:579b88df7bbf5e5456a8ab8e14389d62d68596e23707985534749f89cc071eb0` |
| 2 | `theorem` | [ofFractionRing_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-zero.md) | 82 | `result-track:a3acf5035edc30fe452b0a21973cdeb8872322f9e3015456cbedf518e54c0009` |
| 3 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 89 | `declaration-track:6f722416a48d2bd1fc9c9c61955c61f927a53404cbea511bfb2697e9e6aec661` |
| 4 | `theorem` | [ofFractionRing_add](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-add.md) | 92 | `result-track:ff05709191be123886f1a44aaafb4ff58612c13d7fbba8433d23be286119462f` |
| 5 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 100 | `declaration-track:189db56d793786fec19311b93c587ac7a8597b5eca00e2fde0767244f388f479` |
| 6 | `theorem` | [ofFractionRing_sub](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-sub.md) | 103 | `result-track:2b1e6de55e94a80520ea555113d842b03c49fec027727fda05d95a695db614d1` |
| 7 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 111 | `declaration-track:cca09faa385dc8defaa01aa0b34542bb3a163ba6347ef8ff1e352845fad9ad19` |
| 8 | `theorem` | [ofFractionRing_neg](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-neg.md) | 114 | `result-track:ea1aab3160b2d1a80178a614505e3f992f62cb73ef7df7cca1912a79694966a6` |
| 9 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 122 | `declaration-track:0bbf53a71b9e4de67ef7bad8772e214858d07162e3452dfcb5053a22e60fbbe8` |
| 10 | `theorem` | [ofFractionRing_one](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-one.md) | 125 | `result-track:41f2a03db9928a5960b64c7425aa8adfae16e66ecffd6daf8f399b68f5986153` |
| 11 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 132 | `declaration-track:5b04e1a1f01508edc6e4d4e79e2bae1a18011b4d15d08c9444f34343183eb1f6` |
| 12 | `theorem` | [ofFractionRing_mul](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-mul.md) | 135 | `result-track:6e0d034ff175b50553ad6d32ae254e4f378499167ffe91d2c82db268ecb69d0b` |
| 13 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 147 | `declaration-track:54448eae18f035e27400ec49d01020a0ca7995c74b8f764aee4f813b45cf369a` |
| 14 | `theorem` | [ofFractionRing_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-div.md) | 150 | `result-track:f16853769bb141508d2dcaceb064eae24c3292fcd849828ebc0df6f024b5ab5e` |
| 15 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 158 | `declaration-track:9703625dcdaf9d096978c7e8b0eb63278cf970dcd1766bf259d4844f04d83d3c` |
| 16 | `theorem` | [ofFractionRing_inv](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-inv.md) | 161 | `result-track:55c23b178d0450feaba15385ad1b2bf951ad7abfd0371e273c5e8869803b9b3f` |
| 17 | `theorem` | [mul_inv_cancel](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/mul-inv-cancel.md) | 166 | `result-track:6f09606859dbd5e98c8f2d0bc7221284542c9b07814bf5510e9048fa5c0bc54a` |
| 18 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 183 | `declaration-track:4f91d0a2cc92417a1e1e72bc7e98560cd07c51af70a6548538c947f7daba0ba0` |
| 19 | `theorem` | [ofFractionRing_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-smul.md) | 186 | `result-track:74ff19be5e5b4103505577ce200461241b43fc9d2e88f8b1c07e2f2f501672de` |
| 20 | `theorem` | [toFractionRing_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/tofractionring-smul.md) | 190 | `result-track:83d63b3bcb4d36d12aae769852a63429ab9f2af0757ad50fd229c7c3bfe2e48b` |
| 21 | `theorem` | [smul_eq_C_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/smul-eq-c-smul.md) | 195 | `result-track:3ec3369038d4e406c9eb294556876f0019462d3237fe92e6a7182112fee4a4b8` |
| 22 | `theorem` | [mk_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/mk-smul.md) | 207 | `result-track:84ef82e6761d00493e5e92d62f1d54abb1892ec0017c6f0d5f19f3ce3e20d9dc` |
| 23 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 214 | `declaration-track:d6b66cf712305e9cc83d78d787b20e9dfd67cde9e1aa76e2370b00a0b43710fd` |
| 24 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 223 | `declaration-track:458b29070329fa6545e707ede054b76d2756b761707eb7f67bbb1c673fafac7c` |
| 25 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 226 | `declaration-track:b3f259c6c8a90e50c2abbc1c95911252f9119e4eb8f6f1493d8b7a005b613753` |
| 26 | `instance` | [instNontrivial](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instnontrivial.md) | 229 | `declaration-track:e25f16afce179b9d85b17f433a3e16c056740fce6162410aece3759666f58f34` |
| 27 | `def` | [toFractionRingRingEquiv](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/tofractionringringequiv.md) | 237 | `declaration-track:7a749de47ccd11835247990ca0b0504d130f11f1fc5c340de98163f704865f8d` |
| 28 | `macro` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/macro.md) | 248 | `declaration-track:3eff5e802699386db7cedb4075f111af09934b83d64ba6eaa53ccd875fb40209` |
| 29 | `macro` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/macro-source-edition-2.md) | 258 | `declaration-track:57ffad83366ceac6676168f7cc559ecf444227a2d08ea8f6aa2b95f5850aa941` |
| 30 | `def` | [instCommMonoid](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instcommmonoid.md) | 281 | `declaration-track:a7173490300737c452e282c68b902e55af6ae087b850b18c10ddac4f2eb35bcc` |
| 31 | `def` | [instAddCommGroup](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instaddcommgroup.md) | 293 | `declaration-track:215d95cfd543eb1067290f05a6739e76a860c5ceb982797459e2e037ed94aab3` |
| 32 | `instance` | [instCommRing](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instcommring.md) | 306 | `declaration-track:db2bf499717fd17f7734621d5105f35a04de71de7e3b65fd8436b5f5034ff5fb` |
| 33 | `def` | [map](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/map.md) | 328 | `declaration-track:794591ed95f6c50d8a2e411495d61422c2f393d10fef244d618c48520576f0b0` |
| 34 | `theorem` | [map_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/map-apply-offractionring-mk.md) | 355 | `result-track:e1a61751906042815aacb3d2a7ea4d8e949b47cabcc39d3cf0fd96b6b10e80c8` |
| 35 | `theorem` | [map_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/map-injective.md) | 362 | `result-track:9c475ab03b0176208ea5702d48941e2022431c37a8285f5fd87e33edf7fe00f5` |
| 36 | `def` | [mapRingHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/mapringhom.md) | 376 | `declaration-track:25c69a574d3502a07065d0e45475d8fc514ac4c6d736d10b6d791841ac1516ae` |
| 37 | `theorem` | [coe_mapRingHom_eq_coe_map](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/coe-mapringhom-eq-coe-map.md) | 393 | `result-track:9fa592f80da6047cffef59928122d444dc7f327a9c8828a7573c5e3c65b27aa2` |
| 38 | `def` | [liftMonoidWithZeroHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftmonoidwithzerohom.md) | 401 | `declaration-track:723ee38e9025c5b92eb1dc8eb838487201ea94cd0af4fa71e4a527309ce5b486` |
| 39 | `theorem` | [liftMonoidWithZeroHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftmonoidwithzerohom-apply-offractionring-mk.md) | 422 | `result-track:7693537006a16bcb8b53a5aad3b0de7152780557f811e06b03a9a8889942746c` |
| 40 | `theorem` | [liftMonoidWithZeroHom_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftmonoidwithzerohom-injective.md) | 427 | `result-track:edacf3505e71162047e1016c5f644c24b7d67f1994335da158e45cff73b8b8b3` |
| 41 | `def` | [liftRingHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftringhom.md) | 444 | `declaration-track:93dba80ee72c30c4c555da1389483dfac4799f4299b56646ea82fb33fc108b62` |
| 42 | `theorem` | [liftRingHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftringhom-apply-offractionring-mk.md) | 466 | `result-track:65dc7caf4400a67023bf05762fec6b65122f9e4069b560c53512d0a3b6ff5f39` |
| 43 | `lemma` | [liftRingHom_ofFractionRing_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftringhom-offractionring-algebramap.md) | 471 | `result-track:6841cec37059f082c015065b472dca538f0a981c6454d85f2246d993ae832603` |
| 44 | `theorem` | [liftRingHom_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftringhom-injective.md) | 477 | `result-track:55697ce930569edffad21d63b82801226bfc5850a173cf3a18098240a2451ed3` |
| 45 | `instance` | [instField](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instfield.md) | 487 | `declaration-track:a2bdb72ced030b01731a539b10e0026e324473a40c78f263293f7c96355d620e` |
| 46 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 505 | `declaration-track:79e1f9115bd616d024c847077edc1a5dbb9808ff2d9c479a79a4cee9dfcf7647` |
| 47 | `def` | [coePolynomial](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/coepolynomial.md) | 524 | `declaration-track:bccdf0fc3f92044b88912ca8cccd6e458bb8650e80ceaffbab8de426e23b7ff1` |
| 48 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-21.md) | 526 | `declaration-track:e465c31cc376b9e737b459eb9b2d9242f41f93557c0e36f2253f927297ba0752` |
| 49 | `theorem` | [mk_one](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/mk-one.md) | 528 | `result-track:6d6b2223d490597703289c4021886c9228e03b20f4a9b90db98df8e834a7b1dd` |
| 50 | `theorem` | [ofFractionRing_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-algebramap.md) | 531 | `result-track:1e3b26e0d5ff468aa416030ce4ee8e26ac9d54f14cef901b4bb1b6da809f2382` |
| 51 | `def` | [toFractionRingAlgEquiv](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/tofractionringalgequiv.md) | 540 | `declaration-track:6e1ac4ae774c08ee89566c3ef2a299e750b22b11e9daed8cb8803fa5a1c2409f` |
| 52 | `theorem` | [mk_eq_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/mk-eq-div.md) | 548 | `result-track:6fda985db62519e712d7f23353585a7b7c5c4446b0e7913d5f34610546ac6f28` |
| 53 | `theorem` | [div_smul](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/div-smul.md) | 552 | `result-track:240a82111fec989e32804df6e99a140373b0cc749b7d5cf11855127dbde8ac10` |
| 54 | `theorem` | [algebraMap_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/algebramap-apply.md) | 558 | `result-track:fd1423dcd5bbfcba4f2932d8ca46dce8b9c6725b01dc28f10eb0280a1966abd6` |
| 55 | `theorem` | [map_apply_div_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/map-apply-div-ne-zero.md) | 563 | `result-track:b37fa37471e267cd610c54a9135af42b1e5684d04f69edb37d23f3f2cc73745e` |
| 56 | `theorem` | [map_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/map-apply-div.md) | 573 | `result-track:f170e1742ad341ac10a900931901eeac9a6177aadf8e3e9757ddae479f5769ea` |
| 57 | `theorem` | [liftMonoidWithZeroHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftmonoidwithzerohom-apply-div.md) | 585 | `result-track:bff0af132325d393762c6e89a2a04ef90a678097cb7e37e9fb91f47f5203069d` |
| 58 | `theorem` | [liftMonoidWithZeroHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftmonoidwithzerohom-apply-div-source-edition-2.md) | 594 | `result-track:ef32bc0da2cafffff7ecca59efe766a91a12b93d3855ead7107dc1f2cbf03bed` |
| 59 | `theorem` | [liftRingHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftringhom-apply-div-source-edition-2.md) | 600 | `result-track:9c9e15974c4f71f1acf94ac066d6ecf4c2ede1d08ebb074664f0ef8c7f93e4ca` |
| 60 | `theorem` | [liftRingHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftringhom-apply-div.md) | 604 | `result-track:32aa2ba5368f2cbbc54cd2180db19c17feb48f90a2109850780630409013655c` |
| 61 | `lemma` | [liftRingHom_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftringhom-algebramap.md) | 610 | `result-track:910511ef1998ea8307d12520c024d53e9346a031b96b296edca2f648054baaef` |
| 62 | `lemma` | [liftRingHom_comp_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftringhom-comp-algebramap.md) | 615 | `result-track:2b3f412ac44a5e0b1dce834f82198187dc7f07074962bcfbe1ac7315b0724bd4` |
| 63 | `theorem` | [ofFractionRing_comp_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-comp-algebramap.md) | 621 | `result-track:3472deedf5ff2cc75fe0b0c5c377262011118db22a8a5b16259fd67a108044ae` |
| 64 | `theorem` | [algebraMap_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/algebramap-injective.md) | 625 | `result-track:53864fc8993676293df1c210a7d546ca859c75853b948a98919ae3af4ff0fe09` |
| 65 | `def` | [mapAlgHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/mapalghom.md) | 640 | `declaration-track:ec1b412a7c07a7bd6a2f95d9ec5f16a04e14c00570a0cabc929b8cb56fd837da` |
| 66 | `theorem` | [coe_mapAlgHom_eq_coe_map](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/coe-mapalghom-eq-coe-map.md) | 646 | `result-track:ac7bd9bf5dc256e6ab5f8d17cba27acc35778209a47e9f791fecc4a3d44cdb27` |
| 67 | `def` | [liftAlgHom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftalghom.md) | 652 | `declaration-track:46abac782ed19a9440ef6d2a0ca14a33b4e39fcd8ac432f9576800e8e9a9ddd2` |
| 68 | `theorem` | [liftAlgHom_apply_ofFractionRing_mk](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftalghom-apply-offractionring-mk.md) | 658 | `result-track:202a1adec1e8b51947780282b1e675d19f82be1f85b3ac2c7dec86c4534cb062` |
| 69 | `theorem` | [liftAlgHom_injective](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftalghom-injective.md) | 662 | `result-track:776dbf9bcc77878aa4265f55a27b4d25947e00f842f9d83667460dfdc1b8094e` |
| 70 | `theorem` | [liftAlgHom_apply_div'](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftalghom-apply-div.md) | 668 | `result-track:64376e51f7a13f425da31d61b41871c3c3db6af32dd8f89eadc7e63f64293823` |
| 71 | `theorem` | [liftAlgHom_apply_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftalghom-apply-div-source-edition-2.md) | 672 | `result-track:c1ade6403aed41a0ffb04f0b70abf859b853109a2eb69cad60a7ec6722df4873` |
| 72 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance.md) | 681 | `declaration-track:018d848c270f905c5ce43f03105e2baf3f8e050372b58ac3fbd8cfc6573d189d` |
| 73 | `theorem` | [algebraMap_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/algebramap-ne-zero.md) | 696 | `result-track:6677a9a54675d543da51934aa6d671c7bc4672b3a273c40412436cbcc2e3f0d9` |
| 74 | `theorem` | [liftOn_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/lifton-div-source-edition-2.md) | 700 | `result-track:e7d09b8dcb9f6bf752f488a5c70aecfc7e045ddb6c63d93e2c43c28d07ae8a68` |
| 75 | `theorem` | [liftOn'_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/lifton-div.md) | 708 | `result-track:638d9caac88b488f3a9f1f4e1753199a63b38b77f6b322a0f9bbd704959c31f9` |
| 76 | `theorem` | [induction_on](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/induction-on.md) | 719 | `result-track:af1445761bff131aad4a1acc56d7ff5a0a9266fd799d1ae0527d4928dbecfcbc` |
| 77 | `theorem` | [ofFractionRing_mk'](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-mk.md) | 723 | `result-track:8f11988ac3aad3a5679114155b6190077a9a29cedd248f9e87be8e05c90390f5` |
| 78 | `theorem` | [mk_eq_mk'](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/mk-eq-mk.md) | 728 | `result-track:13f7497b9b97cb29cf20aac3dbd9a3dd73523e58a00d000accddea15209b3823` |
| 79 | `theorem` | [ofFractionRing_eq](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/offractionring-eq.md) | 735 | `result-track:b0f7437567caa691342eb97c767cc8a61e5b87ca2f85a1bfd1bbc7f30a3b497f` |
| 80 | `theorem` | [toFractionRing_eq](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/tofractionring-eq.md) | 744 | `result-track:f1a73d01c18d3caeef0917f911940d467a635e7ac79c26c1296f2c6171d3f535` |
| 81 | `theorem` | [toFractionRingRingEquiv_symm_eq](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/tofractionringringequiv-symm-eq.md) | 752 | `result-track:ecfb00c1a56884f9c4cbf34a46dfc992f475007d41346ab1d17adef160fb65f5` |
| 82 | `instance` | [liftAlgebra](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftalgebra.md) | 769 | `declaration-track:fd90342e435b692c68f4d5a8f0e2b2e74f9bd1611820920a239c2ee0de3ed973` |
| 83 | `instance` | [isScalarTower_liftAlgebra](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/isscalartower-liftalgebra.md) | 773 | `declaration-track:84580fefc443a650ee4e7d2afd0aed0fe21b5d9be5eac8ab044ae36001608939` |
| 84 | `instance` | [faithfulSMul](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/faithfulsmul.md) | 781 | `declaration-track:d0e74b12520aa44587fbe36aece53edf128160b5e6fc5bb1e9122781cc98a8c8` |
| 85 | `theorem` | [rank_ratFunc_ratFunc](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/rank-ratfunc-ratfunc.md) | 793 | `result-track:b83cd520b65d3dc174a8a3d11ef542ebb789411dca71ea661ca3521a4c963fe9` |
| 86 | `theorem` | [finrank_ratFunc_ratFunc](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/finrank-ratfunc-ratfunc.md) | 797 | `result-track:250ecb8e8e1fef84697185e0edc5e1031dd6c0017328c241f4b8cc526ed2290c` |
| 87 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 814 | `declaration-track:d6a6b74747b31564124e490d51c8c39ef7a23a3030147971a77ddac413097772` |
| 88 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 820 | `declaration-track:9eb198bfd8c10c6cf420293f5b8dded86dee979d964141d269e79ae573a51af2` |
| 89 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 827 | `declaration-track:8dc0402e44e62f15328595c3172d38cf2e745044690939f07385e1b1ead97a0c` |
| 90 | `def` | [numDenom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/numdenom.md) | 856 | `declaration-track:04a38a9f743d7c123edf4a7754efade801c133b751a9db86fd0eae40f9c0a873` |
| 91 | `theorem` | [numDenom_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/numdenom-div.md) | 890 | `result-track:eda415b1f7d17968b455839440d8b044d12f8ad59e9c9c59ec276816f41080c0` |
| 92 | `def` | [num](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num.md) | 901 | `declaration-track:eef5315b4e06a38a548094695190838f50813007b9eb888dda2d368788752b3d` |
| 93 | `theorem` | [num_div'](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-div.md) | 905 | `result-track:1a87d20a42c6fb786197c53723b941b4f34d61eb0d7d0449f4dde259aa922144` |
| 94 | `theorem` | [num_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-zero.md) | 911 | `result-track:d42a9bba021d39a36f475770909f983d0af0476f922d3b9c038d1946a386cd7d` |
| 95 | `theorem` | [num_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-div-source-edition-2.md) | 915 | `result-track:f6c69acfc7bda604f4541a84c5a121e189417dad4104bb60e8ef2f8273ae3be6` |
| 96 | `theorem` | [num_one](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-one.md) | 923 | `result-track:16e29f4f2d26348fbb0f922111978232c8f9f3b626af0e2762b22437f0833ef0` |
| 97 | `theorem` | [num_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-algebramap.md) | 926 | `result-track:a597bb9ed4ecccc47b5ed55982762d98c4d8da0b1dce97da472d37ab4adc3d63` |
| 98 | `theorem` | [num_div_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-div-dvd-source-edition-2.md) | 928 | `result-track:f5eca143107e656e3cb1de4bc7ca5a7c19de36b001e60bfdf62f3abeab8432c1` |
| 99 | `theorem` | [num_div_dvd'](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-div-dvd.md) | 938 | `result-track:b2d33dd9239429e6d4640f3589b9a5341345f67dd3bc5d62607c7aa211949490` |
| 100 | `def` | [denom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom.md) | 943 | `declaration-track:bbdb86139a5047145dfabd9e49bc8cebe1a00a231af0c368547d045405425b78` |
| 101 | `theorem` | [denom_div](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-div.md) | 948 | `result-track:8585964146b4de987cf849e1eb463513ce3b9a6de1efb40da23a0a718c1df5b7` |
| 102 | `theorem` | [monic_denom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/monic-denom.md) | 953 | `result-track:6d05c4154e1c6c9dae3286464df94da4550dc93952be12565928beb15d6f15b0` |
| 103 | `theorem` | [denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-ne-zero.md) | 960 | `result-track:484f17c3b4c23a370a6194cb43bb7aa5859af3b1d9c2c7fe2ab5c6d95c076bd4` |
| 104 | `theorem` | [denom_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-zero.md) | 964 | `result-track:f61edb366b2b3a0b2324571c4dd7c0cb38af60b25d5a57f6e600ba6b49e3ef13` |
| 105 | `theorem` | [denom_one](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-one.md) | 968 | `result-track:12b10ea445765cda92c86f444ec4dcbeb7bf6020da97e626f2420e1d13c115f2` |
| 106 | `theorem` | [denom_algebraMap](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-algebramap.md) | 972 | `result-track:b67b930609066c7d1ad1713c6403952a7b31b544f0d472a6d50e5e60ffa2a346` |
| 107 | `theorem` | [denom_div_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-div-dvd.md) | 976 | `result-track:b02c2ed867762c117812de03c870ed64ef5755e36755e9b65c0ff9c522a5b206` |
| 108 | `theorem` | [num_div_denom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-div-denom.md) | 985 | `result-track:960b166048ae5c3d18295c9b30732edcd9a307726bd8457548c8348436347fc0` |
| 109 | `theorem` | [isCoprime_num_denom](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/iscoprime-num-denom.md) | 999 | `result-track:8d036e02e16fa70dc627b2aa5f0d784b40abfa81b4549a7f3d58c1903bde114f` |
| 110 | `theorem` | [num_eq_zero_iff](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-eq-zero-iff.md) | 1008 | `result-track:cd71e304d8ca3072e8a0aaa517aaf8c3d88830e06f14729992e99f9a813afc0a` |
| 111 | `theorem` | [num_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-ne-zero.md) | 1011 | `result-track:2b3b8018809977eaf8c92fb7ddf41037031c0e31e0f298b74d8d8df6ff359d9b` |
| 112 | `theorem` | [num_mul_eq_mul_denom_iff](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-mul-eq-mul-denom-iff.md) | 1014 | `result-track:0f8ec876ac6a51862a7662c2123eabbe01b70d0e3cfb1cafde9e69946028adf5` |
| 113 | `theorem` | [num_denom_add](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-denom-add.md) | 1022 | `result-track:38ddf9427881d8efd17e4a658a30f32b2f6b6a960ed4c5c4508ae1c774057655` |
| 114 | `theorem` | [num_denom_neg](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-denom-neg.md) | 1030 | `result-track:1637c045f489dfdd62949856a25bd86b6cfa7a5aa18734254e068846beaad69a` |
| 115 | `theorem` | [num_denom_mul](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-denom-mul.md) | 1033 | `result-track:ee656095083a69e6e4721a2d9fe2499ee2f8b2ea1ec003a4798257e146edd204` |
| 116 | `theorem` | [num_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-dvd.md) | 1039 | `result-track:3974afcefec11cd9b71a0f74d4e7e0a6a5b80a30bbaf78bfe27ec0e0d922b3dd` |
| 117 | `theorem` | [denom_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-dvd.md) | 1051 | `result-track:056e94ca99a6813a98d855ea6091dbd4a5a7c09a41308d076338810b4201fc77` |
| 118 | `theorem` | [num_mul_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-mul-dvd.md) | 1062 | `result-track:2721401cf08297b96e45094a93ab8368d067a22cd8b79de19c9c6ac78bb2c092` |
| 119 | `theorem` | [denom_mul_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-mul-dvd.md) | 1071 | `result-track:1e57fb0938b3340b3ca876c39db3742ca9c6bca6063bb0f5d6e6895765581489` |
| 120 | `theorem` | [denom_add_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-add-dvd.md) | 1076 | `result-track:6dd77a998a79808a2c1a3b0c1beb3303466a8910e2be12f9c91d5e5f4617eaa1` |
| 121 | `theorem` | [num_inv_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-inv-dvd.md) | 1083 | `result-track:70f6a8ac3761729340711fc47e8af4658c06c92c1a0595f9681263fa7c73bc44` |
| 122 | `theorem` | [denom_inv_dvd](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/denom-inv-dvd.md) | 1089 | `result-track:210fcede123446bb011853d5a3bdb3bbf664e63cf3fb734b1ea1a2cd003c9fae` |
| 123 | `theorem` | [associated_num_inv](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/associated-num-inv.md) | 1095 | `result-track:e37c44cc3cc08a1a4dc1eecf6dcbbf83c39fc57a3860339262d0b380b24ac91e` |
| 124 | `theorem` | [associated_denom_inv](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/associated-denom-inv.md) | 1100 | `result-track:9e8ac7d2afd92ee564a29b18d23d3b1d4e1793e2de3f5e2a1a1c176317116bbd` |
| 125 | `theorem` | [map_denom_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/map-denom-ne-zero.md) | 1105 | `result-track:35cd06eaec5c2afb22dc7aab8f06ca2eb8161a16bfb6bb33f2e86e6ab9fcec8a` |
| 126 | `theorem` | [map_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/map-apply.md) | 1109 | `result-track:758e4d40b717346946b99c13928036cc7bd2155bf4d2309e82454099fe654a57` |
| 127 | `theorem` | [liftMonoidWithZeroHom_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftmonoidwithzerohom-apply.md) | 1116 | `result-track:bbfc6ce52dd36598989dbc26a780ab180918bc191226d169b2b8d421e727d1dd` |
| 128 | `theorem` | [liftRingHom_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftringhom-apply.md) | 1121 | `result-track:f86f087e17471ed7242fa73edeb2a64c66e046d6b125375389b5d503588436ec` |
| 129 | `theorem` | [liftAlgHom_apply](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/liftalghom-apply.md) | 1125 | `result-track:528010cf56a4d58fe0a3806bc10bc59cbd7f560ff39e720d2114c23d72b7cfd9` |
| 130 | `theorem` | [num_mul_denom_add_denom_mul_num_ne_zero](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/num-mul-denom-add-denom-mul-num-ne-zero.md) | 1130 | `result-track:395261914d57f7494b00641110c4baa8eceade690a4d7df2b1feb0c285a5fb47` |
| 131 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 1141 | `declaration-track:37d20f3762008ab9556b26966e227b10b86d6c8295e29e63fbb0e99f06919829` |
| 132 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 1144 | `declaration-track:8a11ab6d337a478240c91cc6f578838fb5e9bc6431df5d623c797e9ba390b380` |
| 133 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/RatFuncBasicNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 1147 | `declaration-track:db5a62f2e9e0edb09eb7fdcf5c32f3bede27f96595a1eae7a51421329f0df099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e9ad09f5dd9fe5524d73ac466d1ac355b410974b129752c17ee3853b0291de6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Varianta43cc5eef45fe17bdccc2c5c2a84318f7203ad1573f9dc55b64044d09134a875.lean","GRWTSK/_verification/specifications/Algebra/Basic/Varianta43cc5eef45fe17bdccc2c5c2a84318f7203ad1573f9dc55b64044d09134a875.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
