# Verification target: Restrict

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "245149ebad2f6e9bc434db4a967fe5291f7a5819",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `245149ebad2f6e9bc434db4a967fe5291f7a5819`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Dual` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictIndepMatroid](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrictindepmatroid.md) | 78 | `declaration-track:3c956bb01eaa34599c89f19e7e1ef90ce04d2abe98c84710df39d47823075836` |
| 2 | `def` | [restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict.md) | 123 | `declaration-track:2fa6b76f57f399bab794bc7d25bf411da06f5e3293ea0b3aca81afcf27a5cdf4` |
| 3 | `theorem` | [restrict_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-indep-iff.md) | 128 | `result-track:70ea84d8a9e6a921f4a05c75fbd1e0fa3da138fafe3b00db985c2a684490d520` |
| 4 | `theorem` | [Indep.indep_restrict_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/indep-indep-restrict-of-subset.md) | 130 | `result-track:88d2033538f361be778ad191d54cf8a4af0ea7c4564c5d51eed035f02d312b4e` |
| 5 | `theorem` | [Indep.of_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/indep-of-restrict.md) | 133 | `result-track:ab382eb1600b0124854ed39376997cf3ad16059b7173660abeba1f4997038c61` |
| 6 | `theorem` | [restrict_ground_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-ground-eq.md) | 136 | `result-track:b612df3049453c1f7b278e8570cbc833d96d1e99d668c6aeea68699cba345a43` |
| 7 | `theorem` | [restrict_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-finite.md) | 138 | `result-track:92c7a495fedaf70991a52b779e8b8c146e75bd2f07d1e5c622043300477fe142` |
| 8 | `theorem` | [restrict_dep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-dep-iff.md) | 141 | `result-track:3677f7b4db11c4dbe775ece92b6d59c308c45b055b314253416764e42961d718` |
| 9 | `theorem` | [restrict_ground_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-ground-eq-self.md) | 144 | `result-track:cdfc439d660097b8770b9e96245b09411491484649e646e18e482986f5ab9f90` |
| 10 | `theorem` | [restrict_restrict_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-restrict-eq.md) | 147 | `result-track:2684e413b7cccffef065d9d14e5cbeecc08103c7fc3e1c8f35ccfdc304efd874` |
| 11 | `theorem` | [restrict_idem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-idem.md) | 153 | `result-track:336365e5feb2e8f88e2f1c1f35755bc08a2095666551d0b7b3b23802c97c9d5a` |
| 12 | `theorem` | [isBase_restrict_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbase-restrict-iff-source-edition-2.md) | 156 | `result-track:a40c8b31434fff3b28e1c5b99a0453441ba68162f4afe3d5b35c6b56ccb8ce94` |
| 13 | `theorem` | [isBase_restrict_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbase-restrict-iff.md) | 160 | `result-track:68df19eb7f58bb0618d5a56dd84fb98bb6b4e5e760ee425e0a810626feb5c806` |
| 14 | `theorem` | [IsBasis'.isBase_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-isbase-restrict.md) | 163 | `result-track:c7b3c1aceb9d69b55a9370508c44e1215ce14160d7f447657f4c7380bee3fec6` |
| 15 | `theorem` | [IsBasis.restrict_isBase](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-restrict-isbase.md) | 166 | `result-track:52edae988af4f0080c4c5656b20346f7b7091448faa992a5070eb0c5bc6fc7bd` |
| 16 | `instance` | [restrict_rankFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-rankfinite.md) | 169 | `declaration-track:77392cf24fa3bdd86fc01452786a72dc8874fb49e35e5b0e0dc0355ed0cbce82` |
| 17 | `instance` | [restrict_finitary](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-finitary.md) | 173 | `declaration-track:7d74e759ed06a42214199cbc38d149a05645e0c6f1ff2912d8d12a31c9555d4e` |
| 18 | `theorem` | [IsBasis.isBase_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-isbase-restrict-source-edition-2.md) | 180 | `result-track:f7b956b32f3f2494b2bad150d9d0ec3bc3581611862d57227f7aa77af97acff1` |
| 19 | `theorem` | [IsBasis.isBasis_restrict_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-isbasis-restrict-of-subset.md) | 183 | `result-track:92b6126e7ca4cf286eaeec96bc15aa1bde951acfdcfeb9551f316588fbc49a65` |
| 20 | `theorem` | [isBasis'_restrict_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-restrict-iff-source-edition-2.md) | 187 | `result-track:b88b11856cc74686f9bcb16450b28bc8059b2d9a55d1c08049edaf3ffebf5495` |
| 21 | `theorem` | [isBasis_restrict_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-restrict-iff-source-edition-3.md) | 191 | `result-track:c090b773e8a100bd8c650c58c2f6792eed58e5dcc7de9d05ac8f68bb11f3ce2a` |
| 22 | `theorem` | [isBasis_restrict_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-restrict-iff.md) | 198 | `result-track:2ed05e43c7b37205761c494e1021346b7e447503a9909fecd566c83e9c96533b` |
| 23 | `lemma` | [isBasis'_iff_isBasis_restrict_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-iff-isbasis-restrict-univ.md) | 204 | `result-track:5531cfe76da7d4821301f83239b835949ad57e8c22756fcf54cbb9d37fda9aef` |
| 24 | `theorem` | [restrict_eq_restrict_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-eq-restrict-iff.md) | 207 | `result-track:3d31b9c77152bdb38f9df4009aa767cdf6cf0619b47b986f219f10fd8fe00ace` |
| 25 | `theorem` | [restrict_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-eq-self-iff.md) | 214 | `result-track:81fb55b45874d73f6deb28039967f932780efa81f450dc6c8e3f3d13723d339a` |
| 26 | `def` | [IsRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction.md) | 224 | `declaration-track:b0f5393f4a6425abd687aa1dbd9925783fc281ef8e902ad19dd2d6360ad74db1` |
| 27 | `def` | [IsStrictRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isstrictrestriction.md) | 229 | `declaration-track:12606c403a5a6fb6ff299be2a9e283fccc6ed5ae351e352b528e9bc0b1c1af44` |
| 28 | `structure` | [Matroidᵣ](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/matroid.md) | 241 | `declaration-track:6d00f1492155345ed5025a21a3ac5987e4a023582177f7508ab9e516eeb9bd81` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/instance-source-edition-2.md) | 245 | `declaration-track:b8bf318927ddf24dcf29dcfe08142f6b67a5c063115cae7d4fc9ba31c53fe703` |
| 30 | `theorem` | [Matroidᵣ.coe_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/matroid-coe-inj.md) | 248 | `result-track:4f458a9002cae3bc193c9e266aa7d92834e55d53f59d8676d8642df548a32eac` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/instance.md) | 252 | `declaration-track:62b726682c3af4835b3a0672c5ec9ea2116c8505a3234fb7e9cb26b309e37e0c` |
| 32 | `theorem` | [Matroidᵣ.le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/matroid-le-iff.md) | 266 | `result-track:4c45cf022f42f2cec14c2608f53d762c2ef22fb2906ca584dc469b14dd1fda8e` |
| 33 | `theorem` | [Matroidᵣ.lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/matroid-lt-iff.md) | 269 | `result-track:f9fe0027f31c35786312c260ee2467fccaf1356b8e5ecccf07cfbfff788908fa` |
| 34 | `theorem` | [ofMatroid_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/ofmatroid-le-iff.md) | 272 | `result-track:e2cd8a5f4beb2430e586904b1bbaef2b2784f1418d35ef07464845f4afcbea97` |
| 35 | `theorem` | [ofMatroid_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/ofmatroid-lt-iff.md) | 276 | `result-track:832ad557179a295d701c1da3a6df3f588f87b6ed033654009791e6893dc8a41b` |
| 36 | `theorem` | [IsRestriction.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-refl.md) | 280 | `result-track:dfce9ee705cb855ce45d9bd202c59c6cd79d13107711d514c175434d2c895d9d` |
| 37 | `theorem` | [IsRestriction.antisymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-antisymm.md) | 283 | `result-track:c31358cdf82d74af2ff918d1eec8506d0b52e3640894eae797edaa16f45fc577` |
| 38 | `theorem` | [IsRestriction.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-trans.md) | 286 | `result-track:0bb0f81897fb714fc87df06302168fb46da535d5dba1b626749480178d76fc98` |
| 39 | `theorem` | [restrict_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-isrestriction.md) | 289 | `result-track:1dbffc2c3ed32f30d3052ee7529d5fc3721f604257a86787cf1385e06ea9a713` |
| 40 | `theorem` | [IsRestriction.eq_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-eq-restrict.md) | 293 | `result-track:84b77ee61097cf6f847d493770ae113658d3b711193c24c2605fb68e102c0970` |
| 41 | `theorem` | [IsRestriction.subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-subset.md) | 296 | `result-track:543ec1955a3bc3df52b77ec2a1b505e4cf7fe2afc18665529cc8f2730c97db41` |
| 42 | `theorem` | [IsRestriction.exists_eq_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-exists-eq-restrict.md) | 299 | `result-track:1a9fa802f86a3bf2ff62f719c0230aeb11a6070b8d1ea26660787ebef246412a` |
| 43 | `theorem` | [IsRestriction.of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-of-subset.md) | 302 | `result-track:27a2610370261cbb6e8474454c827a1dc84e2255db7ab318591939cdc7e7dc52` |
| 44 | `theorem` | [isRestriction_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-iff-exists.md) | 306 | `result-track:e92d8879ebf1421319b322f56c3992b3313708539f9e2fa101a8024945a93cf7` |
| 45 | `theorem` | [IsStrictRestriction.isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isstrictrestriction-isrestriction.md) | 309 | `result-track:23d5a3c32d7035b55c94573098d2c6e18f501bf661345902c9d2a51be984742b` |
| 46 | `theorem` | [IsStrictRestriction.ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isstrictrestriction-ne.md) | 312 | `result-track:5f09efbe8f0fc9180291e16f9fc78da1901292ce660a5534431e694d1f81aaa4` |
| 47 | `theorem` | [IsStrictRestriction.irrefl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isstrictrestriction-irrefl.md) | 315 | `result-track:63605e3546e39994bba69f9f92cf86c62ff048dca455d5e714ec2e0b9653f226` |
| 48 | `theorem` | [IsStrictRestriction.ssubset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isstrictrestriction-ssubset.md) | 318 | `result-track:b3236eb9c2fe1657d215af673e62454519b98136398e41ac31cb85c2e4b52cf4` |
| 49 | `theorem` | [IsStrictRestriction.eq_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isstrictrestriction-eq-restrict.md) | 323 | `result-track:ebce19e2febde4fe1994d535bb431e70bc6b97662cb8749d0f7be5f59d6a2c46` |
| 50 | `theorem` | [IsStrictRestriction.exists_eq_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isstrictrestriction-exists-eq-restrict.md) | 326 | `result-track:9c9cb2dad682cbb9ae41d2523c53ef3e5c7129a1b959fbe2c48c32d1fe9971d0` |
| 51 | `theorem` | [IsRestriction.isStrictRestriction_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-isstrictrestriction-of-ne.md) | 329 | `result-track:46e3bce50410796af897f4b2db0dd524882f38c0e75a23cc7706f06551437868` |
| 52 | `theorem` | [IsRestriction.eq_or_isStrictRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-eq-or-isstrictrestriction.md) | 332 | `result-track:2aa9c0f9e16432ea934db9d72a6ee2b2d0b109510358ef13c9d56a836e0bf4ab` |
| 53 | `theorem` | [restrict_isStrictRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/restrict-isstrictrestriction.md) | 335 | `result-track:7fe1949f7c60a5c6ce1cb48206e66dac0de1285bac4e4907b650543f90d32dca` |
| 54 | `theorem` | [IsRestriction.isStrictRestriction_of_ground_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-isstrictrestriction-of-ground-ne.md) | 340 | `result-track:ff092c11f558a7a06cf6aa9ef5c33254b2c3e254b27167d14f6f40bbdf42f3b9` |
| 55 | `theorem` | [IsStrictRestriction.of_ssubset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isstrictrestriction-of-ssubset.md) | 344 | `result-track:2f4873dd202b6305adcd71eeade066a4ab340e0756aae8626d38b83fe3da1040` |
| 56 | `theorem` | [IsRestriction.finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-finite.md) | 348 | `result-track:aa88a14c56cc81685756a711375eb24a5d7383be2141643f9391f0c73f2d86c4` |
| 57 | `theorem` | [IsRestriction.rankFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-rankfinite.md) | 352 | `result-track:81016bbf8388e0d1575e3d105a8f127ef316d5dd1a8b3b45e380f530a908008f` |
| 58 | `theorem` | [IsRestriction.finitary](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-finitary.md) | 356 | `result-track:2d5fb1703e54029f2e758027f2c22f15d31b2d474efb295a4efbc7977e6f6ff8` |
| 59 | `theorem` | [finite_setOf_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/finite-setof-isrestriction.md) | 360 | `result-track:56916056c69819640dab51b586c7c47fa285edeb88f82c46b98983476a7d3434` |
| 60 | `theorem` | [Indep.of_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/indep-of-isrestriction.md) | 364 | `result-track:7efca0d68361b1ae70fd083e5a1470e8f6b987ce5df59a9630631afefca4841a` |
| 61 | `theorem` | [Indep.indep_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/indep-indep-isrestriction.md) | 367 | `result-track:a7874d37da06e79f352032875df530cf7901347ec132c551744e8dcfd474ee90` |
| 62 | `theorem` | [IsRestriction.indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-indep-iff.md) | 370 | `result-track:4129b198d89b0cca23274464b204ab3efc3184d2b6c56a974757934312782cd3` |
| 63 | `theorem` | [IsBasis.isBasis_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-isbasis-isrestriction.md) | 373 | `result-track:374a7926634745687f334099f3e6c2d358f1b0a0b3d7d3d7f53f1b609a53627f` |
| 64 | `theorem` | [IsBasis.of_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-of-isrestriction.md) | 377 | `result-track:85a3ba31391d70d9106a74821e1287e2619bf68b1372f68489ae607faf005c00` |
| 65 | `theorem` | [IsBase.isBasis_of_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbase-isbasis-of-isrestriction.md) | 380 | `result-track:9d06c6d3fd993190a2ae71eebb24c1d0f3c81b68fd090bf7a03c2380d8da972b` |
| 66 | `theorem` | [IsRestriction.base_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-base-iff.md) | 383 | `result-track:e393708569ea860133a66310a12e04ff83b2b8bb8d6bb07b112b540328581942` |
| 67 | `theorem` | [IsRestriction.isBasis_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-isbasis-iff.md) | 387 | `result-track:5777bd3fccbf31a5deb79eb7bc9ca30accb027a26d45ee7b31fd9911f5c97735` |
| 68 | `theorem` | [Dep.of_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/dep-of-isrestriction.md) | 390 | `result-track:01914ebdd813707c075ab6f2ca6480a5fa742ae54f1ec4893d4d0f0bfab839db` |
| 69 | `theorem` | [Dep.dep_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/dep-dep-isrestriction.md) | 395 | `result-track:d2239487d6fbc8643c1f93cef23d4baf68d5d6895feefd987e28d78a7b8bd892` |
| 70 | `theorem` | [IsRestriction.dep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isrestriction-dep-iff.md) | 399 | `result-track:2f8b9541ae054c3cddd3ba4c5a75620470178e910a23ab3e634c7868715acaaf` |
| 71 | `theorem` | [IsBasis.transfer](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-transfer.md) | 416 | `result-track:612d70ff8751e75a1f65dfc49ecb936996323635dec45e19e2cc382920ac3c53` |
| 72 | `theorem` | [IsBasis.isBasis_of_isBasis_of_subset_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-isbasis-of-isbasis-of-subset-of-subset.md) | 421 | `result-track:fb729e049adcfaf4fe132522940c11bee4ad2405fa55dad31711baeed8eca43e` |
| 73 | `theorem` | [Indep.exists_isBasis_subset_union_isBasis](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/indep-exists-isbasis-subset-union-isbasis.md) | 427 | `result-track:964d045d9a8a955117aacf81c92350675044ff3c92c039a5f667b197e41d03e0` |
| 74 | `theorem` | [Indep.exists_insert_of_not_isBasis](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/indep-exists-insert-of-not-isbasis.md) | 434 | `result-track:d71ec387dfba6cbe36f7f8da697fffd842fffbd1597d9f13a340093bcb8ee035` |
| 75 | `theorem` | [IsBasis.isBase_of_isBase_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-isbase-of-isbase-subset.md) | 440 | `result-track:9ff68e472a728f9e918706a1d18e7ad1208250d761d3c44f05feb6cc3cfc4762` |
| 76 | `theorem` | [IsBasis.exchange](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-exchange.md) | 444 | `result-track:dd723195121661f6016a54a253b99fbdddf184540b28251fe52b1e12bcd90c89` |
| 77 | `theorem` | [IsBasis.eq_exchange_of_diff_eq_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-eq-exchange-of-diff-eq-singleton.md) | 449 | `result-track:85629acff3257b02c3041f634af042aa570a0f54c1e874d1bdb6ab37c50172c5` |
| 78 | `theorem` | [IsBasis'.encard_eq_encard](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-encard-eq-encard.md) | 453 | `result-track:9f2408087f8ef355d420fca177766ed3790f58d666d5addedfb6aba1d0c3e65e` |
| 79 | `theorem` | [IsBasis.encard_eq_encard](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/isbasis-encard-eq-encard-source-edition-2.md) | 457 | `result-track:e14d6c24f938d4513ec18038a6154036879b242a8956d21079ac5d40a35b2ea3` |
| 80 | `theorem` | [Indep.augment](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/indep-augment.md) | 461 | `result-track:aead990ad4e982f0853f4482d5a1d6c337ccec873d1e3da5d1a047703452c837` |
| 81 | `lemma` | [Indep.augment_finset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Restrict.lean/declarations/indep-augment-finset.md) | 472 | `result-track:0bb615214580400d92ea660b6fc6718b12d9c2ed502a6348f3504830987e4e67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=694779fec1e961a439f5280040a6cf9f3b5082d394c4df6a7208e6ac31ff4c68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
