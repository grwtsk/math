# Verification target: Valuation Subring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c72ec65bd8197689280fbeb442b5844bd9537b02",
  "lexical_observation_count": 127,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationSubring.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationSubring.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c72ec65bd8197689280fbeb442b5844bd9537b02`.

Source path: `GRWTSK/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Valuation.ValuationRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AsSubring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PrimeSpectrum.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ValuationSubring](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuationsubring-source-edition-2.md) | 34 | `declaration-track:f217c3e5fb2d4085003e3e880d3d76973a3daa95da430a556b88d1c6800c7d59` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-3.md) | 43 | `declaration-track:46832294b9bbbd708177da86dba0e822b6732a2c80af7577092c82e86afa7735` |
| 3 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-carrier.md) | 51 | `result-track:cf825d990353cdf8d3c3a96a8cbf66a907e91c8fe227541a10b77626f3600262` |
| 4 | `theorem` | [mem_toSubring](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-tosubring.md) | 55 | `result-track:1bf9ecf128681878114c16d25f69e845bd5e2ffc7f461bf7c6b28de177359d35` |
| 5 | `theorem` | [ext](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ext.md) | 59 | `result-track:1686d3060d809ac026e99aed19fc24bde6337c5341ff2ea28772c9e7fbd8067b` |
| 6 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/zero-mem.md) | 62 | `result-track:a92b9abd44c02d49c5d67c9f94dc80336221b3897456f5c2d6aa0e435730c448` |
| 7 | `theorem` | [one_mem](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/one-mem.md) | 65 | `result-track:63aafdd5e79e6eeac8f466ac7c9978d12235b0789fdbbb5a2390b17702f713c7` |
| 8 | `theorem` | [add_mem](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/add-mem.md) | 68 | `result-track:398bea4528a0d83f2698e3cc574ed17ec351eac8900de64c8d54a6d0df3a3174` |
| 9 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mul-mem.md) | 71 | `result-track:302900f80e6477099de4e1048a1e3457624b0215c62cbae221a063ac618248ba` |
| 10 | `theorem` | [neg_mem](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/neg-mem.md) | 74 | `result-track:bc14235c78c0ebb7bd76cf6baa23b126d0e53838d3b6ce185e822f4c4e40beb1` |
| 11 | `theorem` | [mem_or_inv_mem](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-or-inv-mem.md) | 77 | `result-track:df4ff559af56b9222989b5e9e0f837883f4e99ca29b4317643b4ffdffa6f62ef` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-10.md) | 80 | `declaration-track:b281f95c13cc6f3f3cd5af501f36459876601fc00e8bebf02af484a5fba4f446` |
| 13 | `theorem` | [toSubring_injective](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/tosubring-injective.md) | 87 | `result-track:e768ed94bfc0602cf11f874495ebb65f27e3f3788087e8fc73e883f7703599bd` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-4.md) | 91 | `declaration-track:7a428bf7b472eb46c72074a1b549d31bca5211cefa653685f1ff378cbd35978a` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-5.md) | 94 | `declaration-track:7b18c62b74d11b52dc7e36c121bd8195bb7395b0b1d19dd92d6a498b089da987` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance.md) | 97 | `declaration-track:29371d6979bfbdfd64900cd99857d38fee81fe94061fa6dbeb5404746917a69f` |
| 17 | `theorem` | [mem_top](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-top.md) | 100 | `result-track:b3ee0581e2d4ca1fadacb6be5837b018edb03bb78d4a4e28dd643734f5436cbb` |
| 18 | `theorem` | [le_top](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/le-top.md) | 104 | `result-track:285e98771db9f4c73dc61f0947551d901a9aeee6fbe05aa793016dcc37f65247` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-13.md) | 107 | `declaration-track:fb8ddc3b6366b44fa1b92a646ab9304362fc850dc5c1e2041929cc5cb4105fbb` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-8.md) | 111 | `declaration-track:a4e6f2eee419c4b94cc3ba11a205755fb043bf48d29524da588fe564d0c4389a` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-7.md) | 114 | `declaration-track:97a97636494ba69210bb11194485e1c413936833dfe343a97584c6d0c98bddd4` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-6.md) | 138 | `declaration-track:7f60326def2705210ff277808435eae80bd273444291ffee90ecdc0bdeaee3f7` |
| 23 | `instance` | [localRing](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/localring.md) | 142 | `declaration-track:7dd05fb06f9fdf7d594f69eb91a614ed81db583fdb7c456bfa6bf00d0a5a94e8` |
| 24 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/algebramap-apply.md) | 145 | `result-track:88cb84287c2dbc9af042c003bacdb80f1dbdf93b297f749da8d51079fa2fe0f4` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-2.md) | 148 | `declaration-track:30349a23f4523a557d4ceef35cdb289e153378af73d30b174b0f46cdb9a93fd3` |
| 26 | `def` | [ValueGroup](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuegroup.md) | 162 | `declaration-track:33e4c9410b4de19f4fb70c7f8b450e517676e43170e5e12284f9ddb1f8090ba0` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-11.md) | 168 | `declaration-track:c5def8043013baf6b9b7fe143f9e11c8673d5953f9a7b493e2b80c28f85be216` |
| 28 | `def` | [valuation](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation.md) | 173 | `declaration-track:2acb5cfa249cc48fdc13614d3b21334eb822757f2e9ac712fc26d6edba4bfe4d` |
| 29 | `instance` | [inhabitedValueGroup](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/inhabitedvaluegroup.md) | 177 | `declaration-track:297aa83d3d29ab9c6925a14c54161dc8223d5693708797c8ac454ba15cd8887c` |
| 30 | `theorem` | [valuation_le_one](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation-le-one.md) | 180 | `result-track:215c33de50ced5b48c22d7fa8325e75369b9624aed5201115f4a03429be2d370` |
| 31 | `theorem` | [mem_of_valuation_le_one](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-of-valuation-le-one.md) | 184 | `result-track:ccd79b1bd2385e4a6af44211288d75d23307b042192c7d5919984271cfcd49a0` |
| 32 | `theorem` | [valuation_le_one_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation-le-one-iff.md) | 189 | `result-track:9191d349265dacc10ddb55525aad75db857e470772534886bbc8b81828d2733a` |
| 33 | `theorem` | [valuation_eq_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation-eq-iff.md) | 193 | `result-track:a4ba635093988d13cc0706f5337de038fd5755e8c8736b4ce511b5eb6fe6afe7` |
| 34 | `theorem` | [valuation_le_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation-le-iff.md) | 197 | `result-track:10b426703c69abdaf97779f6b95f00faf3ac274e48356e8620ccd6fd3bd7650f` |
| 35 | `theorem` | [valuation_surjective](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation-surjective.md) | 201 | `result-track:9cd25766a8aca662255a93abef045270c78c2b10fcea6669b43fb087a10c5363` |
| 36 | `theorem` | [valuation_unit](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation-unit.md) | 204 | `result-track:7aa70ea3c3e85fd6e45bbb9becbb6c0b5a037db0ad0b1fc50c838055f5a9525b` |
| 37 | `theorem` | [valuation_eq_one_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation-eq-one-iff.md) | 208 | `result-track:b9d4a1071b299a642ee3b787a135245544a69f6ea0240da5966ddc456cd8a3e0` |
| 38 | `theorem` | [valuation_lt_one_or_eq_one](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation-lt-one-or-eq-one.md) | 218 | `result-track:87a62437c2573a25aa91fdbd1fba9072bed776054a939df73d94e0019eb916cb` |
| 39 | `theorem` | [valuation_lt_one_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuation-lt-one-iff.md) | 222 | `result-track:09ab1445d34d1d22544bda68f5a469ebbf80ab71a9558b6ae4541759139bb286` |
| 40 | `def` | [ofSubring](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ofsubring.md) | 230 | `declaration-track:87663ea97d6136bb5b35a0232a03709b24b50282bbebea906d8af6f786db3288` |
| 41 | `theorem` | [mem_ofSubring](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-ofsubring.md) | 235 | `result-track:1ed91f4e03548401b967d200fd0fc8c52b6157388f6bba187e98d3c16a04bc3e` |
| 42 | `def` | [ofLE](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ofle.md) | 241 | `declaration-track:1c6d1c63fa9fe050e5d90d6f5a620994b8d2d427f501950d0cc15a62215c015c` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-9.md) | 247 | `declaration-track:b137fbb9805357171a8af131eba12ef5e75fa92d3bf7dc6847f656210287a62c` |
| 44 | `def` | [inclusion](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/inclusion.md) | 255 | `declaration-track:91091f242bea7228bcd2f4d69d77e2176cb0a2140744fce44fdac1342507a2f1` |
| 45 | `def` | [subtype](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/subtype.md) | 260 | `declaration-track:00e75867cb8b118eb892b17343b3f7e744cc2a726b235f3ef0ba008401bda396` |
| 46 | `def` | [mapOfLE](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mapofle.md) | 265 | `declaration-track:13edd3d152a4df5594afedee3d9b8e8ea9b8a24086e4a0f9f864b0a26bf91ecc` |
| 47 | `theorem` | [monotone_mapOfLE](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/monotone-mapofle.md) | 273 | `result-track:1ef95560e1ad18061b44c599d6913e1ad9a88c3346817cbf1c767511cc1f0de5` |
| 48 | `theorem` | [mapOfLE_comp_valuation](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mapofle-comp-valuation.md) | 278 | `result-track:56f87a4bfd4a3744f32fb9965d3cfcc94d220fcf787e97656a3c1bf890e3aa20` |
| 49 | `theorem` | [mapOfLE_valuation_apply](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mapofle-valuation-apply.md) | 283 | `result-track:1d8bcb1ec5c0b84bd31bf3b6a6d08a50f87dad46373b536fd581aa007ab763a1` |
| 50 | `def` | [idealOfLE](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/idealofle.md) | 288 | `declaration-track:9280b5607722ec7ce3830490d31df910b89fe47d13ceaa396c55c1403579ff96` |
| 51 | `instance` | [prime_idealOfLE](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/prime-idealofle.md) | 292 | `declaration-track:5b287cacb2fe6794b3ced2d04301c73ab6c6fe5b6544eb104bb63d1a0483023f` |
| 52 | `def` | [ofPrime](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ofprime.md) | 297 | `declaration-track:a13b7fa34688d6d3e412aba7d863a76ee6600fb36228f3fd1069c018dc77b7ab` |
| 53 | `instance` | [ofPrimeAlgebra](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ofprimealgebra.md) | 305 | `declaration-track:2fef4e4e6e4380211329e26aabbb40422eea8b84ecdfa509c7002781e554821a` |
| 54 | `instance` | [ofPrime_scalar_tower](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ofprime-scalar-tower.md) | 311 | `declaration-track:90aa6eb7fc0b75888bc02c328955d606d3a0a753434c37838dedf2afdb33ffcc` |
| 55 | `instance` | [ofPrime_localization](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ofprime-localization.md) | 320 | `declaration-track:54eac33eef86ff7c3f6fe5213cd1e5b303e898d9d7000c86c841cd1ff07b7c4c` |
| 56 | `theorem` | [le_ofPrime](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/le-ofprime.md) | 327 | `result-track:c52622d051f85a751e2d07890f60015ab35008c39c31716ba060007661be4ba4` |
| 57 | `theorem` | [ofPrime_valuation_eq_one_iff_mem_primeCompl](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ofprime-valuation-eq-one-iff-mem-primecompl.md) | 332 | `result-track:4fc87519ae0267f74fdd7ecaaadec6f2fe2dbff54f7e099c24c0c5b8c4cff0d6` |
| 58 | `theorem` | [idealOfLE_ofPrime](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/idealofle-ofprime.md) | 338 | `result-track:6c78eb9837487810b67c97205a2e9019f2924ab6778d6c234badbbda84958ed9` |
| 59 | `theorem` | [ofPrime_idealOfLE](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ofprime-idealofle.md) | 346 | `result-track:690ebf920d06c013b8d98d71fa71dde2cf147f70060ddc6d8ae10f0610e508eb` |
| 60 | `theorem` | [ofPrime_le_of_le](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ofprime-le-of-le.md) | 367 | `result-track:73925fe0c991f584707b0b30d307a264abb6b2a270eba5ad4c63520aaa36914d` |
| 61 | `theorem` | [idealOfLE_le_of_le](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/idealofle-le-of-le.md) | 371 | `result-track:f149fdc51e6655a419af15e637633738d4414911e714b49d4054edd677b36b9c` |
| 62 | `def` | [primeSpectrumEquiv](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/primespectrumequiv.md) | 382 | `declaration-track:f3dc6bc26f52d40508f6f15ef37e0aa628a74ea3fe0900a177d4d013a20dfefc` |
| 63 | `def` | [primeSpectrumOrderEquiv](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/primespectrumorderequiv.md) | 391 | `declaration-track:e80810853e2e7e964c889966f14f2345c74acbe26708394ce66d20a38612f584` |
| 64 | `instance` | [linearOrderOverring](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/linearorderoverring.md) | 403 | `declaration-track:f03209796f841d4077939eec53b80689c6800e1e8bdc963e6d94b7627c2c1ea7` |
| 65 | `def` | [valuationSubring](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuationsubring.md) | 423 | `declaration-track:54f213183b9c4c02436317f8241d08323e63f380ee25b52d172416299a3124c3` |
| 66 | `theorem` | [mem_valuationSubring_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-valuationsubring-iff.md) | 437 | `result-track:49fdbe7b7558fe02587f44c4953d1b27afe2226a91bee2b40c5bd06475fe9755` |
| 67 | `theorem` | [isEquiv_iff_valuationSubring](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/isequiv-iff-valuationsubring.md) | 440 | `result-track:76b21011140afc60577ff7b159126e0a46eac959e947940982437a37d8e4570f` |
| 68 | `theorem` | [isEquiv_valuation_valuationSubring](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/isequiv-valuation-valuationsubring.md) | 450 | `result-track:3c6ea3508b6b887f50b4da20a636098621df5d4f549b6f4a9b389af37edbbd65` |
| 69 | `theorem` | [valuationSubring_valuation](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/valuationsubring-valuation.md) | 465 | `result-track:337ad080f0385ad37e30bd416f12bea77d756f5c0e668f895b909492b0bb76d5` |
| 70 | `def` | [unitGroup](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitgroup.md) | 472 | `declaration-track:98c07e78b876792d28b7e6f97861b7d51cb4f8ad9f0133b15eb0c666f37c7038` |
| 71 | `theorem` | [mem_unitGroup_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-unitgroup-iff.md) | 477 | `result-track:07afde2ad2e68a98b770447877e3b13672cd1fd4bab4379231b8d3ad8e7cfac4` |
| 72 | `def` | [unitGroupMulEquiv](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitgroupmulequiv.md) | 481 | `declaration-track:b67115617731ce7d856533a3dae8154631c5a699412a48f668561818fa63f1ef` |
| 73 | `theorem` | [coe_unitGroupMulEquiv_apply](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/coe-unitgroupmulequiv-apply.md) | 496 | `result-track:ce0b76c55182555a2e1aaa21030f332f4b0f00aa1390adbd3510ad1dd3cedfb9` |
| 74 | `theorem` | [coe_unitGroupMulEquiv_symm_apply](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/coe-unitgroupmulequiv-symm-apply.md) | 501 | `result-track:c941856cee493454bab1e8c99153f3a0feab193deea1cfd22571d5832cc93ae8` |
| 75 | `theorem` | [unitGroup_le_unitGroup](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitgroup-le-unitgroup.md) | 505 | `result-track:6f47cf4f7428c829ed1a0c498dc1706fb4c93a12ba95fbf2d4b170c31a908c85` |
| 76 | `theorem` | [unitGroup_injective](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitgroup-injective.md) | 524 | `result-track:a4282fa92e22863ff86c33bc618616d49b3f7a4dbcdcc7c1c0cb64b72277e2f6` |
| 77 | `theorem` | [eq_iff_unitGroup](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/eq-iff-unitgroup.md) | 528 | `result-track:0b8fa94337e1185676ef7f8454f6602949eb7e54d4fff5e39cdd08725cece0bc` |
| 78 | `def` | [unitGroupOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitgrouporderembedding.md) | 533 | `declaration-track:cb015da9b5edac220820e5ca98820f8d32d23e1956e6472f5035d7da8069f1bd` |
| 79 | `theorem` | [unitGroup_strictMono](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitgroup-strictmono.md) | 539 | `result-track:9c68a55cc3f699e2117e470cd50861ccd05f405312940537cc5927c7f90671b1` |
| 80 | `def` | [nonunits](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/nonunits.md) | 548 | `declaration-track:4603cf720f98aaf68a909a60ea041281833d2f5beb3cc03a0025921771d97b51` |
| 81 | `theorem` | [mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-nonunits-iff.md) | 554 | `result-track:cf4d3d8d71c2ab6bbf022567f4a75e028436c2e3b2c4241134b2a287d04ed887` |
| 82 | `theorem` | [nonunits_le_nonunits](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/nonunits-le-nonunits.md) | 558 | `result-track:1c05363ce2e9736c9c4e961637c1d0ac0364cf2e657c2415e895c20fe5856d23` |
| 83 | `theorem` | [nonunits_injective](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/nonunits-injective.md) | 568 | `result-track:8d67c16d19a3fb601a38798984939e4aff65fa813c7ba5b1afd3cbb7ead01e89` |
| 84 | `theorem` | [nonunits_inj](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/nonunits-inj.md) | 572 | `result-track:b89dee8c7df6f4c5dc62d8c649344255f907dcff65eff94a2d31488f0f90b7f6` |
| 85 | `def` | [nonunitsOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/nonunitsorderembedding.md) | 577 | `declaration-track:b580c7aca633bff2d87c9b4eb7c44efcd116e9aa409d8638c9d594cec9287057` |
| 86 | `theorem` | [coe_mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/coe-mem-nonunits-iff.md) | 590 | `result-track:1823090a160059c586d4e7a24931b0d89f5ccbeabe4d34f97bca5a83232101b3` |
| 87 | `theorem` | [nonunits_le](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/nonunits-le.md) | 594 | `result-track:076fd46d37f14b028045174e53fdf25182239220e5f1fe85443b5c4c9c6c7e76` |
| 88 | `theorem` | [nonunits_subset](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/nonunits-subset.md) | 598 | `result-track:8aed8657c03ddeb8c8dbe23e597ebc8764745305b26881f3315bb1857e3c4651` |
| 89 | `theorem` | [mem_nonunits_iff_exists_mem_maximalIdeal](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-nonunits-iff-exists-mem-maximalideal.md) | 607 | `result-track:e2f922858fa57f3a2df582aceab46b9d03eb6269eae84640b325c2dc80f655f9` |
| 90 | `theorem` | [image_maximalIdeal](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/image-maximalideal.md) | 614 | `result-track:c60287ed3f5a09aabd70dac0c358e61c645eb7cc16d10ab0ad6c5fe15d7b5bc8` |
| 91 | `def` | [principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/principalunitgroup.md) | 628 | `declaration-track:f6d6673b6d5160a6340de2744277a453e60a374b50e4627dc7faad37b3f73dd2` |
| 92 | `theorem` | [principal_units_le_units](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/principal-units-le-units.md) | 650 | `result-track:76078e12e19b131f13001b9362126212b63f4297ff6fce95ba4f2cbfef0793e9` |
| 93 | `theorem` | [mem_principalUnitGroup_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-principalunitgroup-iff.md) | 654 | `result-track:331e97fa5a4b4e042b8c2ee78141cdccefbabe5530aba643b0253becc18f9ca6` |
| 94 | `theorem` | [principalUnitGroup_le_principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/principalunitgroup-le-principalunitgroup.md) | 659 | `result-track:eb0822102881232c5bd9ec71fd5c83d5b8c6e32f3816ef7864e0e0d74234e794` |
| 95 | `theorem` | [principalUnitGroup_injective](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/principalunitgroup-injective.md) | 674 | `result-track:36de9e4dbb15547e9bf05f496e43b01c2610c4bb6e658941c8376b8110073e47` |
| 96 | `theorem` | [eq_iff_principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/eq-iff-principalunitgroup.md) | 679 | `result-track:eabd9ba3449106c79412dd4546b5bd0a74c32784e2507ae4552d828a8af987c7` |
| 97 | `def` | [principalUnitGroupOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/principalunitgrouporderembedding.md) | 685 | `declaration-track:16863e293228ddf460e470fd8b709240e58f465966c8696699067bc2a2886d9d` |
| 98 | `theorem` | [coe_mem_principalUnitGroup_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/coe-mem-principalunitgroup-iff.md) | 691 | `result-track:5582864f93c0d9bc36564bf59f9b266b8c6e9a041a231aab02571a3318425776` |
| 99 | `def` | [principalUnitGroupEquiv](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/principalunitgroupequiv.md) | 702 | `declaration-track:fcdee6451c85b8639495952bdc0ac9cbfb4cede24e39305f472f1692d742534a` |
| 100 | `theorem` | [principalUnitGroupEquiv_apply](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/principalunitgroupequiv-apply.md) | 716 | `result-track:ee21b245d01b3c9e5aac2e88a2f2748aa24aecf15de5e9f8770f3d5da00aa51a` |
| 101 | `theorem` | [principalUnitGroup_symm_apply](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/principalunitgroup-symm-apply.md) | 722 | `result-track:9d7f20592ae62a300434efeeb24733dcd14579db06935de6e5d48b6ce4519d72` |
| 102 | `def` | [unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitgrouptoresiduefieldunits.md) | 728 | `declaration-track:29bf149601abc5aa864b9c0a7f7070d70ca63840a57686aa944def73ae2b437e` |
| 103 | `theorem` | [coe_unitGroupToResidueFieldUnits_apply](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/coe-unitgrouptoresiduefieldunits-apply.md) | 733 | `result-track:21218273f7a9156daff1292b9e726d4f392e4470bc61ec75519524ef77e2af90` |
| 104 | `theorem` | [ker_unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/ker-unitgrouptoresiduefieldunits.md) | 739 | `result-track:b339782f16040527be4787c125573b2a682ef21240d9602e535bd451c6016fd5` |
| 105 | `theorem` | [surjective_unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/surjective-unitgrouptoresiduefieldunits.md) | 750 | `result-track:c43ee77c266ad49b5091e5287471a3e3c4fabd08a2097dba73deaa5c6f94778b` |
| 106 | `def` | [unitsModPrincipalUnitsEquivResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits.md) | 759 | `declaration-track:068a053732c8467290f31ed87531d31f75be3aa88b468c902fd22fa39fe6839a` |
| 107 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/instance-source-edition-12.md) | 766 | `declaration-track:f7075781eeba1d946ea583b4dfad67becd9b8158f69f96c3f6de7d93fa353bb8` |
| 108 | `theorem` | [unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits-comp-quotientgroup-mk.md) | 770 | `result-track:ad0995230c64a837b66d8967f8ce0b0678bcabb3e8d54d0d74af6c8096cce896` |
| 109 | `theorem` | [unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk_apply](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits-comp-quotientgroup-mk-apply.md) | 776 | `result-track:1b38afc0edd2f4a8d64fe6581935e0fb3cd0568896702d372cb750080d2b71e2` |
| 110 | `def` | [pointwiseHasSMul](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/pointwisehassmul.md) | 805 | `declaration-track:61dc52f3dddbb3b74d3bab5deae6921402589a1be4bffd7ee1266edb6611338f` |
| 111 | `theorem` | [coe_pointwise_smul](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/coe-pointwise-smul.md) | 818 | `result-track:e9e43c6d598b9a7de1d663f1256cb3eea241190968bcc86a065486f3e86fbe23` |
| 112 | `theorem` | [pointwise_smul_toSubring](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/pointwise-smul-tosubring.md) | 822 | `result-track:e395cdf413c2da9059a10c8f8dc9243dfe168d3f4fcf1dad225adbe90231ed74` |
| 113 | `def` | [pointwiseMulAction](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/pointwisemulaction.md) | 831 | `declaration-track:9e6355b0fcde9720d03e96a667f632fba560cc1f0c801dbd80cd664dd2035b14` |
| 114 | `theorem` | [smul_mem_pointwise_smul](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/smul-mem-pointwise-smul.md) | 839 | `result-track:c3154f0d6434d47dc1be4f081addc6918009cc1c5cf8a2407e39d5f8d2add922` |
| 115 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-smul-pointwise-iff-exists.md) | 843 | `result-track:16760a3595963a219c836aec1ecff361228827e140790b06f1da70ede7634f28` |
| 116 | `instance` | [pointwise_central_scalar](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/pointwise-central-scalar.md) | 848 | `declaration-track:e23d937640cf96cb8c10c586016126e9cf93ed98e38d763f769c201b00cff3c7` |
| 117 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/smul-mem-pointwise-smul-iff.md) | 854 | `result-track:fb7e1816a141838b902f29b637c1c42d5eab340dd5b2b3109efdc0c8b6843f9f` |
| 118 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 858 | `result-track:f2d34b96a0761709edd1c55ab83af865e36a7e269d5207da6828e8e7d62e45d1` |
| 119 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-inv-pointwise-smul-iff.md) | 862 | `result-track:72469a7bcdd678f51b661efaff31b3d28b7d093d7d30a2727aea74f2d31343ee` |
| 120 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 867 | `result-track:440aeddd86c363ec542a57d535fe62789f2f1e06f745644c79c67c3fb04be4f9` |
| 121 | `theorem` | [pointwise_smul_subset_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/pointwise-smul-subset-iff.md) | 871 | `result-track:f33fdbb1afe554ab3aaec1aa7f6d6eaa174ca3c5fb1c7cec7d5d16d964a8d2f2` |
| 122 | `theorem` | [subset_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/subset-pointwise-smul-iff.md) | 875 | `result-track:9e2608611339a2a4ed0af38ebade6033eb6d2d475db473d10c0d9fc64e846cc9` |
| 123 | `def` | [comap](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/comap.md) | 886 | `declaration-track:df11d79c82fedabaf7c46d04d8619aa9819ea279962b87dfa4a4b76ad408d885` |
| 124 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/coe-comap.md) | 891 | `result-track:bec9bd147ab3c3d3c4385c93a258d16972c7282b95b8831bfbb6c36fa7a2cc8d` |
| 125 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-comap.md) | 895 | `result-track:fa15f1749ffb3515bd1c38422f29ca0e11ec539d5b49fd833af7a745245c5419` |
| 126 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/comap-comap.md) | 899 | `result-track:dae1f1adb24cc88c72572ceac2441cfce009ec1091a54a2a04f735ec72cad89f` |
| 127 | `theorem` | [mem_unitGroup_iff](../../../../CommutativeAlgebra/ValuationSubring.lean/declarations/mem-unitgroup-iff-source-edition-2.md) | 912 | `result-track:848929ae169fee0ee3f63917d14f1d7c99062fd556a1f5141bd554390db9cc63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b587fe2d68f10b81f4280942f511113b900363499fd438528d962164e10fa42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean","GRWTSK/_verification/specifications/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
