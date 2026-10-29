# Verification target: Hom Group

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65d81378047e4331a9bb0763cb2e4c80736a27fb",
  "lexical_observation_count": 201,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65d81378047e4331a9bb0763cb2e4c80736a27fb`.

Source path: `GRWTSK/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.CCLemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/zerohom.md) | 84 | `declaration-track:cd8990fd223933181146c64396057848d823487e319b35c60718945eaba92b74` |
| 2 | `class` | [ZeroHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/zerohomclass.md) | 96 | `declaration-track:f485b04d3499ea343b916b73f12d2533ad85be838e17addbb0c459c65f05e63d` |
| 3 | `theorem` | [of_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/of-map.md) | 108 | `result-track:cd336f24ff354bb514c61f06fa9ae8833c0a6a895bf144bc13a904efeef17c89` |
| 4 | `theorem` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/of-injective.md) | 113 | `result-track:1d9cff358ef37a19f9ee6deb993b154690bc20024cb22b873b9a091a18001e0d` |
| 5 | `structure` | [AddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/addhom.md) | 131 | `declaration-track:4e8ca2957d3e7527ebacee98429ba6c2e41e7be1c41b6bc92bbe6e23495ea81c` |
| 6 | `class` | [AddHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/addhomclass.md) | 141 | `declaration-track:9d30e26f4b552e1a57caf4ab1fc59ca7bc18be16d394a43ae2ef7d5d67a709aa` |
| 7 | `structure` | [AddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/addmonoidhom.md) | 161 | `declaration-track:62f6b89418266c2c77272fdf85252003943a2a495d710497261aea748bafcd91` |
| 8 | `class` | [AddMonoidHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/addmonoidhomclass.md) | 176 | `declaration-track:ce946970c0fa19062342ba75476749399ae19bc7ca76b030caf16adaf260484c` |
| 9 | `structure` | [OneHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom.md) | 195 | `declaration-track:611205a11e3c1e55aba4d7a34695e4fd15ba49621cab3fd8fe0a9ffd3a62b158` |
| 10 | `class` | [OneHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehomclass.md) | 206 | `declaration-track:2febd2e1bbe8c299382feb52ba820db0bf2fb178266af83171f00694c1298591` |
| 11 | `instance` | [OneHom.oneHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-onehomclass.md) | 213 | `declaration-track:744ac8336c96174083a554dccd723b63edfc0aa037cae1b56a7ec1bee904b73a` |
| 12 | `theorem` | [map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-one.md) | 221 | `result-track:8d5c64005a35c31ee04c63074d8605fad314b8502071cf484e36c00b4323987b` |
| 13 | `theorem` | [map_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-eq-one-iff.md) | 227 | `result-track:ec1398c08ab3db41c04d82bc7b8dcc8e217c5c3dbaf02a02ad19494b1afdfc24` |
| 14 | `theorem` | [map_ne_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-ne-one-iff.md) | 233 | `result-track:d7dda9b17d1f4557d4515e1685fcd4263d94dfb86e4717973edd1eec0d9a45d9` |
| 15 | `theorem` | [ne_one_of_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/ne-one-of-map.md) | 239 | `result-track:86d71b4890121d627424de4bbdcba7e1b9dc4c6b99cc4231d04150d707e64cab` |
| 16 | `def` | [OneHomClass.toOneHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehomclass-toonehom.md) | 249 | `declaration-track:c16d012e53a4e82edca8416545408efa055b686fc74fbfb314c60fd74aaa6f43` |
| 17 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-18.md) | 256 | `declaration-track:dae6ce1ac2b2b83daebf726fd8424d80e7fe82057f680d065294a7e76be4c39b` |
| 18 | `theorem` | [OneHom.coe_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-coe-coe.md) | 260 | `result-track:be2245b5952e05316285499bd9e7ca035a3987d2f4a957f8866ccff18941d428` |
| 19 | `structure` | [MulHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom.md) | 279 | `declaration-track:4420a9db6e6d9d1d61b29b30dbee16e957445b5f4beffac20ea7ccdb7e107553` |
| 20 | `class` | [MulHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhomclass.md) | 294 | `declaration-track:ede161475bb05dbf818de5a8ebf6355a610e67975ce1eb2e615357a724867b3f` |
| 21 | `instance` | [MulHom.mulHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-mulhomclass.md) | 302 | `declaration-track:3a2a134cf2e2f194e3ad277741f776bfb27d1b5af1d24da9710868e88f2dd59b` |
| 22 | `theorem` | [map_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-mul.md) | 310 | `result-track:2ecc680ea94f292a18f28ccb734598893c5b1aae845f4bfb3d4262724b579b57` |
| 23 | `def` | [MulHomClass.toMulHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhomclass-tomulhom.md) | 320 | `declaration-track:c585ca20d8d658f7956925802686afd2b92635722010e938bd06e4f60bb38b75` |
| 24 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-10.md) | 327 | `declaration-track:740cf022bf2d630b569b1a7399300c4034f4cfe4dd0e8527488be85ef83ca897` |
| 25 | `theorem` | [MulHom.coe_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-coe-coe.md) | 331 | `result-track:98cc1e8f67b6c4e570ca42c736fd2306c2c13c5a6af593557c4eb11eb876576f` |
| 26 | `structure` | [MonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom.md) | 350 | `declaration-track:c7ed0e4558d9cfcd6ff1fe81ba872ab9b55fa134a487e7744239b7b381df39a1` |
| 27 | `class` | [MonoidHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhomclass.md) | 366 | `declaration-track:eb5feeae448683f5299508181fa0efeaad2dda5f17bb362d43fb37136d44bb20` |
| 28 | `instance` | [MonoidHom.monoidHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-monoidhomclass.md) | 371 | `declaration-track:cf2f8c5f1cf84264fbf46119d9b9e6bafc8623cbc2cbd17294f7f6ea20e60346` |
| 29 | `def` | [MonoidHomClass.toMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhomclass-tomonoidhom.md) | 393 | `declaration-track:bd26f58cebbde046a44a32c12526ce692a4fd5585ae7c4daa6a9877d43e54a92` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-5.md) | 400 | `declaration-track:4e7992bdf91cb261e1b9391ebddc086a952d5ad3825ea625912702c18b18af17` |
| 31 | `theorem` | [MonoidHom.coe_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-coe-coe.md) | 404 | `result-track:bc62bc8326d6541776239e6189b4c4ad9e74c119157e689f78389afcd3b5cc49` |
| 32 | `theorem` | [map_mul_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-mul-eq-one.md) | 409 | `result-track:9131dd148d072d4e8e4fd094f7672dba0607a0470952c0885cff4e428db603ea` |
| 33 | `theorem` | [map_div'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-div.md) | 415 | `result-track:1d65f115de9c1fbaf40dd0e73a6ca92290fb4e57cd6c7ace413f8976b843f6ad` |
| 34 | `theorem` | [map_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-inv-source-edition-2.md) | 423 | `result-track:dd85bf9048d7dba015a4357dce09712d44bc7b62941757dcc0dae49f25fec1fb` |
| 35 | `theorem` | [map_mul_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-mul-inv-source-edition-2.md) | 431 | `result-track:a619a8e10e2421becff65c8062d262e4b0dce26ea330548a1dab11cde5b83e39` |
| 36 | `theorem` | [map_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-div-source-edition-3.md) | 438 | `result-track:bdc5b43e9216cf3ff113afa4029727c0bd2b0a35d0e116088cdf81fac7eff432` |
| 37 | `theorem` | [map_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-pow.md) | 444 | `result-track:ec3c74f6a21ecb7923ff2f08d610b6827681abc6cb8e2aa88593d78e9b26553a` |
| 38 | `theorem` | [map_zpow'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-zpow-source-edition-3.md) | 452 | `result-track:cab5ab634014c563b575a59914f3b956972ec6ebf8b4f91bb8b7085c77824756` |
| 39 | `theorem` | [map_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-zpow.md) | 462 | `result-track:682149a9080526772f55b208f02591c5080acc71c9a09fe9866636cbe978f89e` |
| 40 | `structure` | [MonoidWithZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom.md) | 483 | `declaration-track:c743aff38e59292911bed6725d136793fa1a67aa5c131d3655bb40928f5f7ea8` |
| 41 | `class` | [MonoidWithZeroHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohomclass.md) | 498 | `declaration-track:3755a608d7f05d37936acbb3041778a0192dd57f6c8d9ba98172d6af1cb7aa24` |
| 42 | `instance` | [MonoidWithZeroHom.monoidWithZeroHomClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-monoidwithzerohomclass.md) | 502 | `declaration-track:10dd088f30510b5a6681e3a4a2f342f933fcbfc4a425fec2a48579a93b5a6b2c` |
| 43 | `def` | [MonoidWithZeroHomClass.toMonoidWithZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohomclass-tomonoidwithzerohom.md) | 518 | `declaration-track:754efe3ae3f1366a6793fb227e597795b83e89441965b9f8491f3a1fc16690fc` |
| 44 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-19.md) | 523 | `declaration-track:df4cef8564892cc151d523824f172928e2139553a5c6a707ecd6c764440b6549` |
| 45 | `theorem` | [MonoidWithZeroHom.coe_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-coe-coe.md) | 527 | `result-track:722a06e23cca1d5a6d8d3878a0277189c89a9eb5d9fa8d97a7beeab6133d3c69` |
| 46 | `instance` | [MonoidHom.coeToOneHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-coetoonehom.md) | 543 | `declaration-track:00ee66d4a14020808b83d85455a82b329986cc4216b8fc5b4bad819d079ecb8e` |
| 47 | `instance` | [MonoidHom.coeToMulHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-coetomulhom.md) | 553 | `declaration-track:0ffb80c77c76dd334d1e459603a2a59b68e49c3e0cc0456124a276257ab268a2` |
| 48 | `instance` | [MonoidWithZeroHom.coeToMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-coetomonoidhom.md) | 561 | `declaration-track:0cc9d70c42e4d9cc024508bd42b60a83ec04a3b86f671672adea2490e78b1b5f` |
| 49 | `instance` | [MonoidWithZeroHom.coeToZeroHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-coetozerohom.md) | 568 | `declaration-track:fb74720bfef2e2911537e8b4dfb4ba532bab1f178e9c2989a269627d298db5c0` |
| 50 | `theorem` | [OneHom.coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-coe-mk.md) | 582 | `result-track:5222bf1a0e02d4b0bd1e989d1da53508bb4066d847cd7f709f7875c1f62cd40e` |
| 51 | `theorem` | [OneHom.toFun_eq_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-tofun-eq-coe.md) | 587 | `result-track:95c81f182b1fb45c94e3072cfd7620b3d8241dd9e57530d8c97e265246de0392` |
| 52 | `theorem` | [MulHom.coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-coe-mk.md) | 592 | `result-track:41d8713ff18630e4d963e5d5581e51f4e9404cb100e9107c44480844a90f3203` |
| 53 | `theorem` | [MulHom.toFun_eq_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-tofun-eq-coe.md) | 597 | `result-track:2cab0cab8748897c4ece2f303b695ed1a5e0323a6a99d668d6bbb888af549054` |
| 54 | `theorem` | [MonoidHom.coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-coe-mk.md) | 602 | `result-track:6e044de1982c9076e6caa332e7f533879f63851c1a411e73e3972c3684bf0bbc` |
| 55 | `theorem` | [MonoidHom.toOneHom_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-toonehom-coe.md) | 608 | `result-track:fe127f5e0be342b174f7fb4360857c674ff049c832e8f078fc1e155d23d7a563` |
| 56 | `theorem` | [MonoidHom.toMulHom_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-tomulhom-coe.md) | 614 | `result-track:19065d9d59286ebbbec891a9b8a0784c2e59d2d3b5f479fd83f1c28d8d12eacf` |
| 57 | `theorem` | [MonoidHom.toFun_eq_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-tofun-eq-coe.md) | 620 | `result-track:c3a628a6033fc6c4fdd93c4826f189310dcd633ed558c21c7c57338dc27774eb` |
| 58 | `theorem` | [MonoidWithZeroHom.coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-coe-mk.md) | 625 | `result-track:6ea8ecbbe154108662ad146150de05710c9d7d9401d4c38a0a4861b43ef8c6a3` |
| 59 | `theorem` | [MonoidWithZeroHom.toZeroHom_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-tozerohom-coe.md) | 630 | `result-track:155b0f47cf810c0a9214d9682ead55a3e023d63075c2d55d0660de0c33902102` |
| 60 | `theorem` | [MonoidWithZeroHom.toMonoidHom_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-tomonoidhom-coe.md) | 634 | `result-track:c12673569a68d75e4492b7fed10d71b0414392b0e8b90002d4782ad8219a4ac3` |
| 61 | `theorem` | [OneHom.ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-ext.md) | 639 | `result-track:e3f73b681791a00d9244498acfd301022c8afebc7df6ad21f8e30df70259a960` |
| 62 | `theorem` | [MulHom.ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-ext.md) | 645 | `result-track:bfc539d36748e7083cc30698f4bffd9b0fded30bb4faf7362a692e20c8700ce1` |
| 63 | `theorem` | [MonoidHom.ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-ext.md) | 651 | `result-track:09fe083d62202b36c8d8889db0103507ce769f823b258ca2a2f88b13776ced8b` |
| 64 | `theorem` | [MonoidWithZeroHom.ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-ext.md) | 657 | `result-track:3d5be591fb8a446604857797e1941be28240e9ee054cc3abb1cccc9391677f6e` |
| 65 | `theorem` | [OneHom.congr_fun](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-congr-fun.md) | 665 | `result-track:5f825a2c283064558b3b955690aa8b8489bcebad6fc06ade2d391c1bb09ff58b` |
| 66 | `theorem` | [MulHom.congr_fun](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-congr-fun.md) | 672 | `result-track:f89d3df733f2171139fd2d5ac51de6b5e6c24c2de54560a0f4eae9dc16ef6679` |
| 67 | `theorem` | [MonoidHom.congr_fun](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-congr-fun.md) | 679 | `result-track:473f5e76df86058d20647e86330242004ad6f1e7fc466ef91aa5db9cf2d59b81` |
| 68 | `theorem` | [MonoidWithZeroHom.congr_fun](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-congr-fun.md) | 686 | `result-track:37360f71875631ff50fa5f33c3d0feafacf11ee28ca63d7c5180fa1f8fd7cd39` |
| 69 | `theorem` | [OneHom.congr_arg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-congr-arg.md) | 692 | `result-track:762595eb99d950fc7d13dd648eddc11221d31e07c96e6f07d524e2c8ea36c802` |
| 70 | `theorem` | [MulHom.congr_arg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-congr-arg.md) | 699 | `result-track:2cfc76a374ab2d1b03afeb730baf84f5d9aad4aa7b0dfdb3e9a86c536b58849e` |
| 71 | `theorem` | [MonoidHom.congr_arg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-congr-arg.md) | 706 | `result-track:3746c5e83425625c100765e6908179f50d251ff741af5d790623f5e83f1bf0d2` |
| 72 | `theorem` | [MonoidWithZeroHom.congr_arg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-congr-arg.md) | 713 | `result-track:952e70469693e6685da0ffe6215e6fdf42d6a276603ef68b6be6a0fdda8b3203` |
| 73 | `theorem` | [OneHom.coe_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-coe-inj.md) | 719 | `result-track:3d2f2cc0b64b921d02fcee9c5c2f6acd9e95f7bf9eb217bc2cda1db91d254991` |
| 74 | `theorem` | [MulHom.coe_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-coe-inj.md) | 726 | `result-track:5184decd19b6289dcd776d65cd397648a569c7ac22af7030a216d52f1d9cab91` |
| 75 | `theorem` | [MonoidHom.coe_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-coe-inj.md) | 733 | `result-track:5c569bde4be87f783b23beea1be3962b72e1542acd37561fc6d07591e00f6b3d` |
| 76 | `theorem` | [MonoidWithZeroHom.coe_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-coe-inj.md) | 740 | `result-track:5f91529fc4560a81f2189f9b4b94ff98fb27b5be72d12f68a2e20110cc564cec` |
| 77 | `theorem` | [OneHom.ext_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-ext-iff.md) | 746 | `result-track:45f19d7cd3e7db758d635270ab2ae1aec55cbe931994ea0702796354de415c60` |
| 78 | `theorem` | [MulHom.ext_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-ext-iff.md) | 753 | `result-track:cd4f14c3a31aae9bfd1269eac5db4bdac58d2f745e5870f04a97c1c7bad45965` |
| 79 | `theorem` | [MonoidHom.ext_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-ext-iff.md) | 760 | `result-track:1502851a97d228b6cbd6149d30ee606a455db82bc7830656565160faf10be268` |
| 80 | `theorem` | [MonoidWithZeroHom.ext_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-ext-iff.md) | 767 | `result-track:1f8025c0e7a40a2768a48cc982ccbcfd17f1e6fbe9cc0ffbce9cac246f439e3b` |
| 81 | `theorem` | [OneHom.mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-mk-coe.md) | 774 | `result-track:6714aa7de2d6a6dedd75a1a7689f50a2a3b32bb8a14feb3799bb90dcfcc4a589` |
| 82 | `theorem` | [MulHom.mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-mk-coe.md) | 780 | `result-track:9b32c88e4cdb200b7218f7c9d00182b6f2fa0a38ce0f52a9ac10463428332a97` |
| 83 | `theorem` | [MonoidHom.mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-mk-coe.md) | 786 | `result-track:8b3e1478c0a3425d64b56adb0188d85b1ffd8323854c8d06dd01100ff93dc2ad` |
| 84 | `theorem` | [MonoidWithZeroHom.mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-mk-coe.md) | 792 | `result-track:cbbaf69a61481310a858abdc235486f9ed5f813db3e0720199746f08147e7da4` |
| 85 | `def` | [OneHom.copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-copy.md) | 803 | `declaration-track:c2e8d83a17b7fa03457fa7d388203a60fc976fd4b3ed04e16d697c9d5c3183d3` |
| 86 | `theorem` | [OneHom.coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-coe-copy.md) | 811 | `result-track:91097a377bef2be6e6f2d766bea49d3e1c9fbae12ea1598191732dbd043f2e32` |
| 87 | `theorem` | [OneHom.coe_copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-coe-copy-eq.md) | 818 | `result-track:50c7fdf352b45b5c64baafa9d200b675aa94f2ad9fc9e7639199edc38ddb099f` |
| 88 | `def` | [MulHom.copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-copy.md) | 829 | `declaration-track:50736f7594876e7c8ad075d989544d7d05c7b2a141cd38ec26929efaa9d206bf` |
| 89 | `theorem` | [MulHom.coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-coe-copy.md) | 837 | `result-track:90de4a9a08f7e964d0b753638de08a89cb2a15cab0e41c4ce24bf0a0ab1ecbf9` |
| 90 | `theorem` | [MulHom.coe_copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-coe-copy-eq.md) | 844 | `result-track:b7c1f4e37af39244b855b479cf1a42bd9e805ffbb5cd0312363dd12d1587cd8e` |
| 91 | `def` | [MonoidHom.copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-copy.md) | 855 | `declaration-track:131e650b20600c1caafdaae4e47885156edd0852de2f8a7c125196a40c568f19` |
| 92 | `theorem` | [MonoidHom.coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-coe-copy.md) | 862 | `result-track:5c90b3ddd293e1aef68c8dac70e30353104b8202b28a740ffdd0e29f7da1a700` |
| 93 | `theorem` | [MonoidHom.copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-copy-eq.md) | 869 | `result-track:d7798a38362346cffe46588393537ed6dcff6bd268946af332064f2b38bb2045` |
| 94 | `def` | [MonoidWithZeroHom.copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-copy.md) | 877 | `declaration-track:52a09086c689c75cec17df25f887acacf496c04458db5699272e0b5f9d593e5c` |
| 95 | `theorem` | [MonoidWithZeroHom.coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-coe-copy.md) | 883 | `result-track:a3be9c1181260f284ce7edca84063cfda1056db4205b8fcab1b397725ffc6091` |
| 96 | `theorem` | [MonoidWithZeroHom.copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-copy-eq.md) | 888 | `result-track:dd17b537af6429e821a097a3b6b8193066b98575a7a17f705b977b9f29926b66` |
| 97 | `theorem` | [OneHom.map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-map-one.md) | 894 | `result-track:700e3289b44bf7d3a31eeb7440d3aaf2adaa45b07da380824b6375249f76746e` |
| 98 | `theorem` | [MonoidHom.map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-map-one.md) | 901 | `result-track:4ce52619e9f96f17176db585b806731fd290add239a40dc395c38f33ae00ada4` |
| 99 | `theorem` | [MonoidWithZeroHom.map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-map-one.md) | 906 | `result-track:000950dc7afeebe844f6a67ed0933a369f36f5f9ff577a4aa3491e7f80243a1b` |
| 100 | `theorem` | [MonoidWithZeroHom.map_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-map-zero.md) | 913 | `result-track:d640d628a8922c36376c42f5e0f5f27c784ec53d890644401c963ac54cdd1cf1` |
| 101 | `theorem` | [MulHom.map_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-map-mul.md) | 918 | `result-track:48b8c19ec8239f53485186b866b7ef24daf692707cfd655144d614ab0d58b12a` |
| 102 | `theorem` | [MonoidHom.map_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-map-mul.md) | 925 | `result-track:7d35a138d1ba7e08172c4061d57885388df6963555627b6d2a9f7fed157317ba` |
| 103 | `theorem` | [MonoidWithZeroHom.map_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-map-mul.md) | 930 | `result-track:93d3be98380c9fc187af5d3817d98cbacb818de26a3408ae037444f6319967af` |
| 104 | `theorem` | [map_exists_right_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-exists-right-inv.md) | 946 | `result-track:896156d75c56a0d10e33194aeb49c8c42e4d96fb5efb6ae2153890f01e3bf3ab` |
| 105 | `theorem` | [map_exists_left_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-exists-left-inv.md) | 958 | `result-track:145ccbad749c166858ea2932575b3ebf08b8bfc56232d33798b1fe96f3506825` |
| 106 | `def` | [invMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/invmonoidhom.md) | 973 | `declaration-track:e77c303a2b8a390539340dcbfa1919b6eb7d95e207224182bf6799a7e64f5b76` |
| 107 | `theorem` | [coe_invMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/coe-invmonoidhom.md) | 981 | `result-track:da1e709f745a6dfc931a51ad809cf9c6b580ed5d21e154944952856ba7ec2e2e` |
| 108 | `theorem` | [invMonoidHom_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/invmonoidhom-apply.md) | 985 | `result-track:38a648629566cca4f1383ba05b0844136c884cefc13247c8792a96302fd69eba` |
| 109 | `def` | [OneHom.id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-id.md) | 992 | `declaration-track:564503c3906bd6e4a239c6e19a05cb9fbae16e5b50cc7eca7c72117721370c12` |
| 110 | `def` | [MulHom.id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-id.md) | 1002 | `declaration-track:7b0ef6fd432f46ffc46ebac1a1648e73e72eae66bbc8cd4001ad7de5d607cc04` |
| 111 | `def` | [MonoidHom.id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-id.md) | 1012 | `declaration-track:05d60e1c142183498809c905ea34e6cd680672fdbc130397d275280361b63640` |
| 112 | `def` | [MonoidWithZeroHom.id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-id.md) | 1023 | `declaration-track:989d458c135082a73fe107c573e18153ff443fe481ca4db5ad11f6a03bcbbf8c` |
| 113 | `def` | [OneHom.comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-comp.md) | 1042 | `declaration-track:bb884fbab9fb28cd10f834044401951ba70945523a889f3f5ef228e0b218ccc9` |
| 114 | `def` | [MulHom.comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-comp.md) | 1050 | `declaration-track:dc880ed1c24ff9e839ef43081550ee6cdc856f8ff33bcfc755a0aabad59cc5c8` |
| 115 | `def` | [MonoidHom.comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-comp.md) | 1058 | `declaration-track:af5b73d2f4ffacd2160e897f342bcafbcaa42d54db792fc3bb7d65b1d2692f00` |
| 116 | `def` | [MonoidWithZeroHom.comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-comp.md) | 1067 | `declaration-track:dcecef4525be9ac547e74e9dc743f30c38dadc1519fa4fa4ce45533044ccae3a` |
| 117 | `theorem` | [OneHom.coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-coe-comp.md) | 1085 | `result-track:a4244a4d3758dc1dc9a1df0cc37c63b79576ca398bb131eeb52cd94a56dff14e` |
| 118 | `theorem` | [MulHom.coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-coe-comp.md) | 1091 | `result-track:78be56ddde8736cae653e72bcff53989ee6ddcc3ffe281a32bba466fa9a7abf3` |
| 119 | `theorem` | [MonoidHom.coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-coe-comp.md) | 1097 | `result-track:4e98330aed5b09a91ce07f25c3598a1f33fcbfdeda51f4e47f014bd575361238` |
| 120 | `theorem` | [MonoidWithZeroHom.coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-coe-comp.md) | 1103 | `result-track:72dab75e58490468d49c3425da8d9387d58e1ba6c0899cbc43b43c3936a024c9` |
| 121 | `theorem` | [OneHom.comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-comp-apply.md) | 1108 | `result-track:c4e48a52790594f42bedbba87e7134022145b3fd26be4e8d0e9d3dda2524fdd7` |
| 122 | `theorem` | [MulHom.comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-comp-apply.md) | 1114 | `result-track:2aaceb1b3c6ecc4da432195f352262751b2856a09f7f8446d9915315e05ce7b6` |
| 123 | `theorem` | [MonoidHom.comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-comp-apply.md) | 1120 | `result-track:d4a9124e96c19bbfd28bbc18fcdbcb54e2ff09fe7f7a1ce91167a7831307a1d1` |
| 124 | `theorem` | [MonoidWithZeroHom.comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-comp-apply.md) | 1125 | `result-track:334934bdf193d226fc50e8841ce5f7bde3a54b5e141f88523e5b880f935683dc` |
| 125 | `theorem` | [OneHom.comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-comp-assoc.md) | 1131 | `result-track:e5d62b0fa1e108f969234c65772408ad437d5bb8bd73331a17eb14e7a176e8b4` |
| 126 | `theorem` | [MulHom.comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-comp-assoc.md) | 1138 | `result-track:5713b1d66b3b5c07d94a6e611402b5926c73a857ffb051a834fc63229992ac3f` |
| 127 | `theorem` | [MonoidHom.comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-comp-assoc.md) | 1144 | `result-track:217d02a792154e2477ca68340d0ed56d2b5498214d2e8e923df762b10b096798` |
| 128 | `theorem` | [MonoidWithZeroHom.comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-comp-assoc.md) | 1150 | `result-track:d0606834f8ecd9de45c5f797e5b96009f348041877f2e67d1fc22c0bc9b73b4b` |
| 129 | `theorem` | [OneHom.cancel_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-cancel-right.md) | 1156 | `result-track:25c0d7e15a92990a7feecb754c991b4e5e040603998554b3bce32dc660037a8e` |
| 130 | `theorem` | [MulHom.cancel_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-cancel-right.md) | 1163 | `result-track:6c3890a372aceea95af43bb60c16b213aea3a2603c5484e79246f246d05af57a` |
| 131 | `theorem` | [MonoidHom.cancel_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-cancel-right.md) | 1170 | `result-track:61e9a9f787088fb2123c1d464ae30ab1b7cd93039668f27eddd7c92e898b77ab` |
| 132 | `theorem` | [MonoidWithZeroHom.cancel_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-cancel-right.md) | 1177 | `result-track:e579c569042782bf5671baf47028dca87340abe7862af294420c6778bba98394` |
| 133 | `theorem` | [OneHom.cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-cancel-left.md) | 1184 | `result-track:6f642b13b2e7e92c7a6e17bfcf2884007233ff2ba0526bc65fe6ee5a88449dde` |
| 134 | `theorem` | [MulHom.cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-cancel-left.md) | 1192 | `result-track:37796022f0ab1f780a78b9d474bd37331a1a965a2b22429cbf4816ee17906969` |
| 135 | `theorem` | [MonoidHom.cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-cancel-left.md) | 1200 | `result-track:d8cf17caea7f47fd128d96a37ac8ce64b8d849c359a8c52ce6927efbf2457c45` |
| 136 | `theorem` | [MonoidWithZeroHom.cancel_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-cancel-left.md) | 1207 | `result-track:5f082d053e3665f543edbf7dec504b6e1f7e954439061a3134e7f5908b0c0a22` |
| 137 | `theorem` | [MonoidHom.toOneHom_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-toonehom-injective.md) | 1219 | `result-track:0d099d2cc1ffee98b3b5d2aeefbb5e588abad545eba1e3d0047e4b2020dc3e90` |
| 138 | `theorem` | [MonoidHom.toMulHom_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-tomulhom-injective.md) | 1226 | `result-track:e39d7bdce0364af0fe6d3d2a006e2644af3359f4bc72fc744ff0ad3deaa20878` |
| 139 | `theorem` | [MonoidWithZeroHom.toMonoidHom_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-tomonoidhom-injective.md) | 1232 | `result-track:9584f78806c325e80d8c1598a370c36eba80e774aa42c8220f71d3f52b9ee893` |
| 140 | `theorem` | [MonoidWithZeroHom.toZeroHom_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-tozerohom-injective.md) | 1239 | `result-track:9a86ffbe84ef429dcb30681f0b75183b518277ae596aa1f5887c52ff1e8410ed` |
| 141 | `theorem` | [OneHom.comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-comp-id.md) | 1245 | `result-track:d38c27babb96e645ab84ca958b801b5fe648675ad07ff1c8163aaa3bc37f9c95` |
| 142 | `theorem` | [MulHom.comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-comp-id.md) | 1251 | `result-track:e9511c4dff373d6398750db73c4b83df5a03986d7483179945a047dd227da58b` |
| 143 | `theorem` | [MonoidHom.comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-comp-id.md) | 1257 | `result-track:864f6cf0cd53ec05f1cfddc8d8d557bb0497abab204eb3974ecd018ed83b43c2` |
| 144 | `theorem` | [MonoidWithZeroHom.comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-comp-id.md) | 1263 | `result-track:544049137b65cf6970f739db5d4bc1dc5f626f91f519363e386041677d68dd88` |
| 145 | `theorem` | [OneHom.id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-id-comp.md) | 1268 | `result-track:f73b6ecb42a2b76f13e00cfe9893aab4f1792c313466ed6a994ce1d2e73d364b` |
| 146 | `theorem` | [MulHom.id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mulhom-id-comp.md) | 1274 | `result-track:51edd987beeee00fe802818cf4a69c01e73bd7639cceed2baa5e94a5797bb378` |
| 147 | `theorem` | [MonoidHom.id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-id-comp.md) | 1280 | `result-track:2ea0a25a9936eee1d16b2ecc0e63cc767784c4f0384750b99566030e087a70ef` |
| 148 | `theorem` | [MonoidWithZeroHom.id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidwithzerohom-id-comp.md) | 1286 | `result-track:c8bbfed83b3a2c35f129745021ae04f2972f005d20f655c315ffe12d6e888aea` |
| 149 | `theorem` | [MonoidHom.map_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-map-pow.md) | 1291 | `result-track:7a3d2753f714dc8dc96cde7b3990bbf01185dc586188c60ecf1a35abec74e21a` |
| 150 | `theorem` | [MonoidHom.map_zpow'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-map-zpow.md) | 1297 | `result-track:3ad6a34e952afaf05dbd684bea089d51b43cb8db77112e1c49097c6424b1782d` |
| 151 | `def` | [End](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/end.md) | 1310 | `declaration-track:58f9eee39b706cd0f3207ad2cbe6c48349f304342be9d95e616caeae0238387a` |
| 152 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-8.md) | 1315 | `declaration-track:715ceb5b61625ab4e7dc2c61682db3af8ce4b8b71e119fe2eaff5d12d76d4127` |
| 153 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-3.md) | 1322 | `declaration-track:4170ff86adce0d901b06d381c072f526f87a18e0215bfe48e2b66eb0f1ef4ed5` |
| 154 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-11.md) | 1324 | `declaration-track:91f751af9bee72035019d64f8e5127a81da188a9eecc75549eb3d6cb17d7a83d` |
| 155 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/coe-one-source-edition-2.md) | 1329 | `result-track:e3db2e5956110d299174f9f1104e1bd27bf035027691193492fbefb4e84b422e` |
| 156 | `theorem` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/coe-mul-source-edition-2.md) | 1333 | `result-track:c99d3c3c59fc7308d8c9f56c4bb835692bd2a099fdc43130efec4b427385cebe` |
| 157 | `def` | [End](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/end-source-edition-2.md) | 1343 | `declaration-track:d13ca6f9b82a2338eff8497ab5e53d21bb61fcefeee76e422a88f20806207b6e` |
| 158 | `instance` | [monoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoid.md) | 1348 | `declaration-track:787d0406852db17aacd9fba96ab47eb053bbee85d7d01fc514ee1e0d911eefee` |
| 159 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-16.md) | 1355 | `declaration-track:aaa7bfa157dd479815cd492d37791f7e1cc754209d0ed59e28694689a06dd7cd` |
| 160 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-20.md) | 1357 | `declaration-track:e696887b5a892940fded69d925046cef9fdeeb367de59a2d644254a9496ecda9` |
| 161 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/coe-one.md) | 1362 | `result-track:95f03be4df566bc684d4a38e8e15df6548e49a7af55cceee2bc2ca89d307b30b` |
| 162 | `theorem` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/coe-mul.md) | 1366 | `result-track:c840bd5b66a25511f789480bf8b1471fd7cfa53b3e0952fe42206548156fb1f6` |
| 163 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-4.md) | 1375 | `declaration-track:489c24711bd05fa4f6aa202906bf28a7e290c5588f938b21524ea349b4678e0e` |
| 164 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-12.md) | 1379 | `declaration-track:93d0330ffe495fba01e304763646cf59bad5cee6e4e97a5db1fe1794deb95fc5` |
| 165 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance.md) | 1384 | `declaration-track:177f78049963bb5ec90784ca23c40a6598833dc72e3af0661799244a20b45cb9` |
| 166 | `theorem` | [OneHom.one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-one-apply.md) | 1388 | `result-track:47cbef1408df6fd8f085288214df8130d8c9b224df11b5d55801069b6ab0bc9e` |
| 167 | `theorem` | [MonoidHom.one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/monoidhom-one-apply.md) | 1393 | `result-track:a023e1598fe904a71ad0659c1df69dcdef6843cf63a58660a4a6bc16da7df366` |
| 168 | `theorem` | [OneHom.one_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-one-comp.md) | 1398 | `result-track:7f9f2e0fc293ae4425644f9c1d2b8bcd546de7ae5a5bede7195e29a6bb2ac1af` |
| 169 | `theorem` | [OneHom.comp_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/onehom-comp-one.md) | 1404 | `result-track:9f2b0e3929bd4dde485ae65a492af21b69d836f3af987dfc661bc880bdc074d6` |
| 170 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-13.md) | 1411 | `declaration-track:a2e3c599f34438e7bac07deef7b9b8259bb3fa033a8655c0c3c2c7d05249e210` |
| 171 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-14.md) | 1414 | `declaration-track:a40211550bdcbc7e19ca121083cea5f1b6a5559f18c1a9d7d8f692803647dec9` |
| 172 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-2.md) | 1417 | `declaration-track:1c2e5fe3c217dae97232cd2009afb6eecd298d0e70331b80c14bdb2f60104a72` |
| 173 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-15.md) | 1420 | `declaration-track:a42fc099552103ad76f2dde81fe992495b48a1fb8334141ae636318fd26e2e96` |
| 174 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-7.md) | 1428 | `declaration-track:6d53e86831c94678ba1e1b7a76cb390bf67d477edceab79615ed5f3de550263c` |
| 175 | `theorem` | [mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mul-apply.md) | 1437 | `result-track:1f27aec74f9bffa0d3648d23d43eef52355bde621effe8d09e0319520b891ebd` |
| 176 | `theorem` | [mul_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mul-comp-source-edition-2.md) | 1443 | `result-track:55cd88798300e3d081a9ab181121182b251d8293af4666806ac91b195330d3a6` |
| 177 | `theorem` | [comp_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/comp-mul-source-edition-2.md) | 1449 | `result-track:82cfd7cd01f2a609da62b7ca4ea10070bc512fcd1fec749187a90de63776b3d4` |
| 178 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mul.md) | 1465 | `declaration-track:32f0d49d9e1095d550b5cb8521a8bf5169467f81592fe68bcd4de92e1eb925c7` |
| 179 | `theorem` | [mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mul-apply-source-edition-2.md) | 1479 | `result-track:50afb1e7cfdcad47bf1765046251931bef32534029c3df240cd6c03848ea2d14` |
| 180 | `theorem` | [one_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/one-comp.md) | 1485 | `result-track:950421de8362ebeef455b04e2c382ca2ddba875e306ebd63e53b7dabdc81857b` |
| 181 | `theorem` | [comp_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/comp-one.md) | 1491 | `result-track:efdfc0fa4e776c4c86840d0ec02532a4b5bc15245a1bccc92efa838e3a34cfa9` |
| 182 | `theorem` | [mul_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mul-comp.md) | 1499 | `result-track:0d7b6c33c14953f447c7100e1138941d937170858a0d8927723d00f77a00d8b1` |
| 183 | `theorem` | [comp_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/comp-mul.md) | 1505 | `result-track:2226c14763511918970cd7619318863864a094315022575d16eeeb5112960a3b` |
| 184 | `theorem` | [map_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-inv.md) | 1514 | `result-track:3917b9fb91dfe7c8979b1af05019c8a652297b58e7b8008975492d0d1e694e91` |
| 185 | `theorem` | [map_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-zpow-source-edition-2.md) | 1521 | `result-track:95ad7a242232ea398e06324896cbb5f82b566a3aeb9135ceed80621ebd388fd0` |
| 186 | `theorem` | [map_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-div-source-edition-2.md) | 1528 | `result-track:2e77e86baccf41676bdd149eb70bcdf68dba5f79cc5344b0adeac3eda68b5466` |
| 187 | `theorem` | [map_mul_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/map-mul-inv.md) | 1535 | `result-track:0fa23b11beceef745f7409fc141c3f811caebc803301adaba9479595bfa033b5` |
| 188 | `theorem` | [_root_.injective_iff_map_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/root-injective-iff-map-eq-one-source-edition-2.md) | 1546 | `result-track:cf88b8bbfc8d21e6bfc20445ba60204dc861111d1e4c11afdbe4800e2704115a` |
| 189 | `theorem` | [_root_.injective_iff_map_eq_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/root-injective-iff-map-eq-one.md) | 1560 | `result-track:60f9a4292ef72093155da3db98eb6a0cd752932743179cbfb1952a4ada24ac2b` |
| 190 | `def` | [mk'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/mk.md) | 1572 | `declaration-track:b9db9ddc1426517771a3919ceb9f22c85802195317be7dd0c7ba48f384d4e3a5` |
| 191 | `def` | [ofMapMulInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/ofmapmulinv.md) | 1588 | `declaration-track:08aa5f90be87677012c13ecf93c8b97de2151a751bb8ea55198abd80377b19bb` |
| 192 | `theorem` | [coe_of_map_mul_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/coe-of-map-mul-inv.md) | 1601 | `result-track:5392d19e3f611b4d5002165675060ad82f8fd7849f70393023ccf75017504f65` |
| 193 | `def` | [ofMapDiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/ofmapdiv.md) | 1609 | `declaration-track:f8a757f2cda6b177d26c99d49b180357dc553ba638147ab6162dc53163cb25ec` |
| 194 | `theorem` | [coe_of_map_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/coe-of-map-div.md) | 1615 | `result-track:51a47718575f4df6df7ef36a56043ee15a4d36af59e2e71a1b6e68039423f830` |
| 195 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-9.md) | 1624 | `declaration-track:73f1e8637d00312bece89cdc56827849667f0e302b4f3fef5fa5bb1dab5ccb34` |
| 196 | `theorem` | [inv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/inv-apply.md) | 1628 | `result-track:a215363e881c28d8a6a12993ddd223cdf07fa887a0e1c0d9cc26f43f9d17a216` |
| 197 | `theorem` | [inv_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/inv-comp.md) | 1634 | `result-track:d96720100beb55d380c58299ba379f8d042b6e6d61483ccaeb43f2118a50099c` |
| 198 | `theorem` | [comp_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/comp-inv.md) | 1642 | `result-track:e2ffde5e92daa8176f12b25212b8b03390b10c25771e154aae016313a249d7a3` |
| 199 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-17.md) | 1653 | `declaration-track:c7790ed5d163078f1f539cd5b62b19f06e634afafd9d46727ad649c72ad82140` |
| 200 | `theorem` | [div_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/div-apply.md) | 1658 | `result-track:5b2aa886ddfa8501983190160c8c5155adf20722da8aaf0cb57b30a99698805b` |
| 201 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/HomGroup.lean/declarations/instance-source-edition-6.md) | 1667 | `declaration-track:60f6fc94ab5766b30ca387524182a4010f7e92c2adb97939bf85bedc482c52dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c278e21ec30c79ccf3c50696f085cda36afeceb837fe7777c0be518fe7b77616 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Group/Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
