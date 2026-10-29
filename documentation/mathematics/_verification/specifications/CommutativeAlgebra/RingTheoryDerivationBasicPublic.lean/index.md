# Verification target: Ring Theory Derivation Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0050329530bc00d6ac2907eeaa18c942ec9d96f",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0050329530bc00d6ac2907eeaa18c942ec9d96f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean.json)

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
| 1 | `structure` | [Derivation](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/derivation.md) | 45 | `declaration-track:967a04885b100784ef2a1da27b9995e8d6ad8ad7693256abf725edef6b70680e` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-4.md) | 67 | `declaration-track:38b27ad3329f777e82bc3e41db326042b737e6f0c852ede405c3c8c5b4402cd2` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-5.md) | 71 | `declaration-track:62d5da9a8253cf89ccbbebb31c281847e98e2c31070c3cc801fe7a447e9210c4` |
| 4 | `theorem` | [toFun_eq_coe](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/tofun-eq-coe.md) | 76 | `result-track:641a91e26d9021c45c0280b538e1462ab841ecf867db4bd2f9653d1aa0f3a4c6` |
| 5 | `def` | [Simps.apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/simps-apply.md) | 80 | `declaration-track:90a44482a01a9652172d8dd2b785067487770589e9363f0b673c5c7303c8dc72` |
| 6 | `instance` | [hasCoeToLinearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/hascoetolinearmap.md) | 86 | `declaration-track:7a3f9ea49250397f853ad9d5b23d2a7d5567a048bca426b83f39e842c4309276` |
| 7 | `theorem` | [mk_coe](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/mk-coe.md) | 90 | `result-track:d3de51097c7369f744866015d6914b6dd3eb01175f070b5b50fd3f4964c46cdd` |
| 8 | `theorem` | [coeFn_coe](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coefn-coe.md) | 94 | `result-track:f8e4b2feb2bbfcff6735890ce5a6558f37840a281562035f812bd84dbb430e35` |
| 9 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-injective.md) | 97 | `result-track:126fe182fbd34726052e45f71d8533bb43b9a14d8268529e6e8c5cb9f56d9445` |
| 10 | `theorem` | [ext](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/ext.md) | 101 | `result-track:0e6234e465f0c29d892873c7255ec6e6ec600db2869983d79cf3b2e165a45ee6` |
| 11 | `theorem` | [congr_fun](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/congr-fun.md) | 104 | `result-track:26e400e267678c25e633cfe8a476f4d5ba505001b124378c9323d79966e78485` |
| 12 | `theorem` | [map_add](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-add.md) | 107 | `result-track:0cd63e06579f57cce158f1cfd3c2ed29de0ed311c723f584da3cf2e83330fb3e` |
| 13 | `theorem` | [map_zero](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-zero.md) | 110 | `result-track:30c525406f477e5802c60ef28eef17b78b20cef71c0cbd80427fd6692f2bcba3` |
| 14 | `theorem` | [map_smul](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-smul.md) | 114 | `result-track:21106c92d83599e3803cfc4bd25837152c47c1e89c09b82c3d2c4ca63f728867` |
| 15 | `theorem` | [leibniz](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/leibniz.md) | 118 | `result-track:dfebd1cd51829faff1111d6628b7526dae50d4f8dff2fa9cc0d17eb9eb411a97` |
| 16 | `theorem` | [map_smul_of_tower](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-smul-of-tower.md) | 122 | `result-track:0bbd0fa2fcd6a160cd17585b0e8a7f0029c4622513994dd147762fd379bfe7c7` |
| 17 | `theorem` | [map_one_eq_zero](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-one-eq-zero.md) | 127 | `result-track:1cc5d06f11e55c2eea480ab2ec3c046988c8a17785095297ea81507ef1c11692` |
| 18 | `theorem` | [map_algebraMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-algebramap.md) | 131 | `result-track:21461290848088416f3b2801adf946115e8a94f50cbe582f5c422b793b487c04` |
| 19 | `theorem` | [map_natCast](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-natcast.md) | 135 | `result-track:d7a61f945751b47b07872253768508a7903fa94a262927707801e54f44022a8e` |
| 20 | `theorem` | [leibniz_pow](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/leibniz-pow.md) | 139 | `result-track:29ebdc08a5fc085d69b3d7acf90837a1e8f43251f3bb62e5603de174a8f084e7` |
| 21 | `theorem` | [map_aeval](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-aeval.md) | 151 | `result-track:f7d2e8964d9fcc377a3be55eac4d2ee2f4e6ff637afb317d7c20392b0706f5a7` |
| 22 | `theorem` | [eqOn_adjoin](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/eqon-adjoin.md) | 158 | `result-track:a27c6a96b946f783c0e62436034f209f0c6c19d553cc8a27f70dc7e31f78ec13` |
| 23 | `theorem` | [ext_of_adjoin_eq_top](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/ext-of-adjoin-eq-top.md) | 165 | `result-track:9d59d9383f51a6be2c90a6248a64369b8dd1a4021d05b3bc58591c6cf1952547` |
| 24 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-7.md) | 169 | `declaration-track:8ce304b21aa6496733ecd27a508557e246c54723825ac90af22bcf598616e863` |
| 25 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-zero.md) | 175 | `result-track:4c9d668feb5c4a54d032cfc91b4d3695694847e0f47ab13f6b442f9976f4e673` |
| 26 | `theorem` | [coe_zero_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-zero-linearmap.md) | 179 | `result-track:fe230bb0ca2b519222643199b40e7a3413d0ac0aa5b82e73e63ba440bf1be506` |
| 27 | `theorem` | [zero_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/zero-apply.md) | 182 | `result-track:e60a9c7b53309fab024e2cb9b4855098bbebed46a3d0e1b67d2880d705cfa9a0` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-2.md) | 185 | `declaration-track:1b3478968044c473e57e1bbec07715fd6779087728e4856e34a85849daf97b85` |
| 29 | `theorem` | [coe_add](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-add.md) | 193 | `result-track:67432cde667e1de3633ee23b20935343cb806830f79f37611159fa22cc80fa0f` |
| 30 | `theorem` | [coe_add_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-add-linearmap.md) | 197 | `result-track:058f6e6829e255dee4226711d09abed1249c551e80299a651a2e276a42dc996f` |
| 31 | `theorem` | [add_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/add-apply.md) | 200 | `result-track:47b1f665b3c8da25d5f21964fe787156b75b9c6498a7035493163783e23f1c5a` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-3.md) | 203 | `declaration-track:280d0a85ddfea8c82269b4ca2ae08747343e837f4cb81509de8689ccc5606b97` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-13.md) | 212 | `declaration-track:c8866c78cbc2f04839c05b532fe2f73efe2714789a8ee0b73fb467edf8e33e11` |
| 34 | `theorem` | [coe_smul](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-smul.md) | 220 | `result-track:53ebf12d86c146b659ddc70e6fee431c10b946efb1da4697af420515e1958422` |
| 35 | `theorem` | [coe_smul_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-smul-linearmap.md) | 224 | `result-track:8dd98786a0630105a19afe560bf286c371cb92b06c79e8d08911d21dc8385e51` |
| 36 | `theorem` | [smul_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/smul-apply.md) | 227 | `result-track:615dd6bd13de836eace93e849322b85890226656d59a1fe36127007a5c9908a7` |
| 37 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-11.md) | 230 | `declaration-track:bfa3997d64535c4d7f8213eb4b5c4cfea6d80bf74b273a7c769c1baca52179ef` |
| 38 | `def` | [coeAddMonoidHom](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coeaddmonoidhom.md) | 234 | `declaration-track:cbe53198f299f3439afd6bb132ec0aabcf155e2bce8bc2ce249dd34465d9abc4` |
| 39 | `lemma` | [coeAddMonoidHom_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coeaddmonoidhom-apply.md) | 240 | `result-track:4d2db1534e5855280d20ea87a2a24947fa11f04a8c3cb550e1b3635ec8d61d08` |
| 40 | `def` | [coeFnAddMonoidHom](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coefnaddmonoidhom.md) | 243 | `declaration-track:d3dd11d28a9163daaf4a2b9a9b9b6c247184217b630d56d042ef7ed298b5f88b` |
| 41 | `lemma` | [coeFnAddMonoidHom_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coefnaddmonoidhom-apply.md) | 249 | `result-track:d7e72af69678e5d4b62930085d32bbd4cd8c8e035ca660cb4a8e8e79b52ad32e` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-6.md) | 251 | `declaration-track:668883be80c067e09b02bd4b6316d49528651e60490561c08bc8467f32f1c718` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-14.md) | 254 | `declaration-track:df300339cac96e64961a7f947810239954afee69b4c3c956fd993a3172cd37d9` |
| 44 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance.md) | 258 | `declaration-track:0b10c8f17ce0ea1fe93c54b675298e01a98a5e83057e708b2cf0c6b059a7a495` |
| 45 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-9.md) | 261 | `declaration-track:b798a9e66c790c95c5c2ee2179fafee584cc1d1a5177522a9b2a9f4b6af11939` |
| 46 | `theorem` | [coe_sum_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-sum-linearmap.md) | 264 | `result-track:cdfa0f75f0a1f29cde2fe31ad59cbaf705d6caee7ee8f5805115e286bc6fca49` |
| 47 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-15.md) | 268 | `declaration-track:ea633b6c292b1cafff728c2c90154bbcaf896ee638b2eea48cc3f7eb4cbf7aca` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-12.md) | 271 | `declaration-track:c32011ed1791d9dd773303720f688c1e60149ca7a177b54b7dbab83c78448606` |
| 49 | `instance` | [instModule](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instmodule.md) | 276 | `declaration-track:615a1c015ce5b4813c58c0d0f857eb01a2e015710c6f02cd49e82e1a51cfce94` |
| 50 | `def` | [_root_.LinearMap.compDer](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/root-linearmap-compder.md) | 289 | `declaration-track:c28b106381b759123911a5bb0e2da53cd81d464dce33787dfdfb906b2ed129c4` |
| 51 | `theorem` | [coe_to_linearMap_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-to-linearmap-comp.md) | 300 | `result-track:3da8951b3cd21a7107f121f2017f699d5324ff4dc73b0827301d1467df5c0faa` |
| 52 | `theorem` | [coe_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-comp.md) | 304 | `result-track:161cff7fbcf5bbd4f96d783de0c0fa54d1a10da2fb2be61a33092d2495012a8f` |
| 53 | `def` | [llcomp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/llcomp.md) | 309 | `declaration-track:4755e576530ceaef75a2f1940def42755d21fbd61640e88105613fd2dca68dd5` |
| 54 | `def` | [_root_.LinearEquiv.compDer](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/root-linearequiv-compder.md) | 315 | `declaration-track:cebb9e52323af178333b6e9951a89176bd8e0b6b12f5d9c5b9fbdb6ff9654a06` |
| 55 | `theorem` | [linearEquiv_coe_to_linearMap_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/linearequiv-coe-to-linearmap-comp.md) | 322 | `result-track:b5a817e13efba0c34d254f3fc805a9c0dad2d2b3bc73b92d1cdad94e77be6ed1` |
| 56 | `theorem` | [linearEquiv_coe_comp](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/linearequiv-coe-comp.md) | 327 | `result-track:9f66a936d5a11894c881bf7257040bcb12c876472a10c791e8417a5b2b71cff5` |
| 57 | `def` | [compAlgebraMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/compalgebramap.md) | 337 | `declaration-track:9e526aa8eb76f1106e9e77053c80e156aafcffdc919abc4541b7076e2bb4465b` |
| 58 | `def` | [compAlgebraMapL](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/compalgebramapl.md) | 347 | `declaration-track:e1067f87fe61265352b87bcbf7352102fad52431dd75b14a3fee8cc9aa55382c` |
| 59 | `def` | [restrictScalars](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/restrictscalars.md) | 362 | `declaration-track:bdb79fa036fe5dfe686984933dbf24e4047891a6dcc011b58ab4c96fefd066c9` |
| 60 | `lemma` | [coe_restrictScalars](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-restrictscalars.md) | 367 | `result-track:bde5f694f861f1164fb55e9220d50f970df3607469f60e4db46601d607534248` |
| 61 | `lemma` | [restrictScalars_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/restrictscalars-apply.md) | 370 | `result-track:ece70f54b15dfff45dcb5d1d21b2aa7703f3238838a5d1614155f7beb72464ae` |
| 62 | `def` | [liftOfRightInverse](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/liftofrightinverse.md) | 388 | `declaration-track:75abb79069e140afa7a70a30889cb9d50fcd21813727d1dc1923d41f958033d7` |
| 63 | `lemma` | [liftOfRightInverse_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/liftofrightinverse-apply.md) | 409 | `result-track:15f93195b987baed4085e07bdac2f076d6ab81ce4ccacc953265de7900f59bcd` |
| 64 | `lemma` | [liftOfRightInverse_eq](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/liftofrightinverse-eq.md) | 416 | `result-track:95eb40bb53070c438aad9f7525829ab3c4f5c3cfbe59a059c96358310f6c8af3` |
| 65 | `abbrev` | [liftOfSurjective](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/liftofsurjective.md) | 426 | `declaration-track:7a63b64d867efc8aaa9cd751f028b059cae08cdf95cf7e86f7bfddcc1f0ecda8` |
| 66 | `lemma` | [liftOfSurjective_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/liftofsurjective-apply.md) | 430 | `result-track:fb5bb29f034e049e388437c2d1fc905b2b1a14248ba5b6eda1d122524aaea0ad` |
| 67 | `def` | [mk'](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/mk.md) | 443 | `declaration-track:3ddb4ab0e2b669e11c77c753d85131a22cd0fb5f8b6f93d67b7ed912cf242bd5` |
| 68 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-mk.md) | 450 | `result-track:a3478e03e24b2a292dad8b852d49900293fb2387cc658f505436e36c5c839884` |
| 69 | `theorem` | [coe_mk'_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-mk-linearmap.md) | 454 | `result-track:1f9215b51a2fe5ff78e47c3a608ae7433c45747b8ce30d01df60fc2e2dfafea2` |
| 70 | `theorem` | [map_neg](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-neg.md) | 469 | `result-track:453f08a29244032796f032cffc64240f8caecadde7d73b98fd6f0db8a5115252` |
| 71 | `theorem` | [map_sub](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-sub.md) | 472 | `result-track:9d5e82744505ebf9b4071c35725520e618deaba91265db14e138eec058a03438` |
| 72 | `theorem` | [map_intCast](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/map-intcast.md) | 476 | `result-track:4eaad18df4b996eadcdeb1e3caf8b0be6bc5c96fc633d0d8505ec6e04e04b2e3` |
| 73 | `theorem` | [leibniz_of_mul_eq_one](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/leibniz-of-mul-eq-one.md) | 479 | `result-track:1e200f9f4ed423fb8c7da289e5cee3ff97830870dc1c0fbbb90f45e6821fdf4c` |
| 74 | `theorem` | [leibniz_invOf](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/leibniz-invof.md) | 487 | `result-track:de0e1a15d87c21848c5000d2bb19043a3683b70b715367e4a16db7894f095b1e` |
| 75 | `theorem` | [leibniz_inv](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/leibniz-inv.md) | 494 | `result-track:d914abc2dbccb4775ac689a6e1ace1adc17e06660b5c525385b8e6a7f6dc6e71` |
| 76 | `theorem` | [leibniz_div](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/leibniz-div.md) | 499 | `result-track:bb37d29ec459b81c129d0eb8b7c6ada029ec88f7dfcf957a6bdb6b55aa18efb4` |
| 77 | `theorem` | [leibniz_div_const](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/leibniz-div-const.md) | 505 | `result-track:0038b0d21033301b74cb00a6f8005330c516bb32e785e81c5a72b5b8ddee44d4` |
| 78 | `lemma` | [leibniz_zpow](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/leibniz-zpow.md) | 510 | `result-track:877044b39c0c8901b7f9cd19db22b56cb58d4a060859f12ee33555b87c4a1e73` |
| 79 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-16.md) | 533 | `declaration-track:eed3b9280f3c14e765274b16bb08e62cced98f4f641533f66238822bb65c6099` |
| 80 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-neg.md) | 539 | `result-track:c8de501a211561a60eb88021311402331291057835d153feff66b7fd6cef0193` |
| 81 | `theorem` | [coe_neg_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-neg-linearmap.md) | 543 | `result-track:d08b19c6f8262fcde3c81489f6c80c446f8474ff255758a6d2749b6d4959fe93` |
| 82 | `theorem` | [neg_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/neg-apply.md) | 546 | `result-track:018608bbced24993087cf806b368fcfb203ff6530179ce7bd0856aa33dbbdc6d` |
| 83 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-8.md) | 549 | `declaration-track:a5b4f9f646699ea480a022ab390aa3a6a3372d6bb8c9b641d23c84c6974ed324` |
| 84 | `theorem` | [coe_sub](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-sub.md) | 555 | `result-track:6c351dffaaf86bb7df1b6aac8b9bb5f740675733ed3b9dcce4068d6a0e2af286` |
| 85 | `theorem` | [coe_sub_linearMap](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/coe-sub-linearmap.md) | 559 | `result-track:aaf6cb9cee7235b5c30291ef9d31b69b6b88903eab0f9b6eb289cff23c97c822` |
| 86 | `theorem` | [sub_apply](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/sub-apply.md) | 562 | `result-track:a73a149e640b322c5020386cf26c9c85c4cda8f8fb9bf82dd4d98a91a2978ad6` |
| 87 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryDerivationBasicPublic.lean/declarations/instance-source-edition-10.md) | 565 | `declaration-track:bc2274a4c69f2b275c840605d3181182d94ce3c2c35ec825cad6627ddaee2da7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47b99020c0680d9e8a7b27fa35631a640099017313a04c32dddb4c22291cd3c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant116b8ab5465b630facd36795352dbbef685076b021d18924ce3ac1d479ace8a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
