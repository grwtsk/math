# Verification target: Linear Algebra Prod Prod Symm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41502994584fc64e692d2cd94c36bff7280903f7",
  "lexical_observation_count": 131,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41502994584fc64e692d2cd94c36bff7280903f7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Span` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PartialSups` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-source-edition-2.md) | 59 | `declaration-track:fed976d23c1b5d2c8634b7c513ff9fe0364bdb3a1f42b89846fd67dfb49caace` |
| 2 | `def` | [snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/snd-source-edition-2.md) | 66 | `declaration-track:31a89be557b3444021f5e5fdf0abf21d34005d03d83a0c785281ae43cc980f73` |
| 3 | `theorem` | [fst_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-apply.md) | 75 | `result-track:c668904f6b386edb6ff861ea18d3f847e78b50b10a0b47a7db941ea87fc54ef1` |
| 4 | `theorem` | [snd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/snd-apply.md) | 80 | `result-track:64c6e2183d1feaf6734abedff66d7fef2fd383a0fb4a15f82348fc02915c44dc` |
| 5 | `theorem` | [fst_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-surjective.md) | 84 | `result-track:be93491233baa9c22b5f31a7fe532e53c480ba0b111c74ffb42caa920d12a13d` |
| 6 | `theorem` | [snd_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/snd-surjective.md) | 87 | `result-track:d821591986351a956e5f6a2aa9f531240c20efb22d57168e10dc0e5243ddfe94` |
| 7 | `def` | [prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod.md) | 92 | `declaration-track:bdfa1577d25820886d1c28ef1ee67f4f88e58cda835c90ddf89223433d5bfa62` |
| 8 | `theorem` | [coe_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coe-prod-source-edition-2.md) | 98 | `result-track:acd80ade04feb04cdf823e5028ad1d302ed61a28eb83882bd5be3c2fd2cdd3ea` |
| 9 | `theorem` | [fst_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-prod.md) | 103 | `result-track:ec0d1443220bad9e3f0190cc505480327b3d0a991c0ff89f149c37dfcb65e8fc` |
| 10 | `theorem` | [snd_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/snd-prod.md) | 107 | `result-track:05460484ff23e27b76f8449c174b8e8f1e946c0e4afc37b12eabef90cd0a85fd` |
| 11 | `theorem` | [pair_fst_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/pair-fst-snd.md) | 111 | `result-track:fd1b8898c71a97db3ef53222277c64655deb2a31e089d7809b515297611e7c3f` |
| 12 | `theorem` | [prod_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-comp.md) | 114 | `result-track:f8a052bc5165e51202c43ef7a1a1d63c3bd710774bb64a304c62f0cbe0a460f2` |
| 13 | `def` | [prodEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodequiv.md) | 123 | `declaration-track:57ca685202e1217b77a183bf2a8e841b4a920d1eff027e88e6c71bbbe51b0596` |
| 14 | `def` | [inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inl.md) | 138 | `declaration-track:a2457d2afd0a8632b1d1bf8fb0126582b67adb6d442d86b073eaf72def906fee` |
| 15 | `def` | [inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inr.md) | 143 | `declaration-track:0f050221f04f276cf0d00cf0638bd27367e384eaa927b9c067140c44c47a5e65` |
| 16 | `theorem` | [range_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/range-inl.md) | 147 | `result-track:6e7ed6339ed5808308f08d85e933323f225b9e3a75d4d8323e994a7e447f535f` |
| 17 | `theorem` | [ker_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/ker-snd.md) | 157 | `result-track:0b1b8978ecb5cd500473f33f79682401275ca8a66a3615de323e472b06d9b3db` |
| 18 | `theorem` | [range_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/range-inr.md) | 161 | `result-track:62578bbd6d2bdd034c9603823728407f3353d629981b6da037a63bad78e51927` |
| 19 | `theorem` | [ker_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/ker-fst.md) | 171 | `result-track:2f13b472e3fb379832619d8bff1ac68f16311f30f44473c3d908eccdb5eb74ad` |
| 20 | `theorem` | [coe_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coe-inl.md) | 178 | `result-track:be17564439062f265959d823215d9271dc7b209e258941cb6732246f8e0cda34` |
| 21 | `theorem` | [inl_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inl-apply.md) | 182 | `result-track:806c22295a61d235a7a8edd187e0bd92165d14355449d599f95fb8492b8fcc29` |
| 22 | `theorem` | [coe_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coe-inr.md) | 187 | `result-track:480506a91ac08ff53dd6a86fa1fcd6e1456d91e694299396eca9aa9c14686818` |
| 23 | `theorem` | [inr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inr-apply.md) | 191 | `result-track:8a7269108bb62f4f1ff473ac0148d20d3da49887cd88f4a2ce6c9d333587b451` |
| 24 | `theorem` | [inl_eq_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inl-eq-prod.md) | 195 | `result-track:bbdb4bdaa508b13466be2eb106e5cfaa7f18dd9ee071fbda04bd44d5272fc9f4` |
| 25 | `theorem` | [inr_eq_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inr-eq-prod.md) | 199 | `result-track:05817e250f74fd6870b8818804fcb6083023807353d7a29160a33b9073992781` |
| 26 | `theorem` | [inl_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inl-injective.md) | 203 | `result-track:37ce92ce73c2b5575e2e70a29e915b306709f68b5d529f7d7e4487dc516ce770` |
| 27 | `theorem` | [inr_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inr-injective.md) | 206 | `result-track:8c1aaef38e7d1bd16cf86250a655c92faf9e555b2e48516c8bd0ffc89898b175` |
| 28 | `def` | [coprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprod.md) | 210 | `declaration-track:925e335789c83a8f2007d201b1bd476d97f256374e8b8e2ff23986460c28d7c5` |
| 29 | `theorem` | [coprod_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprod-apply.md) | 215 | `result-track:eeb273cc22fb654cfd63437f6d3b679da92e9cb3dea3e40f41003aa4782836b6` |
| 30 | `theorem` | [coprod_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprod-inl.md) | 221 | `result-track:1c1bb46132cdde8b69788b866612c91c741a70f24e6694d5cba79190da6b9969` |
| 31 | `theorem` | [coprod_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprod-inr.md) | 226 | `result-track:ccfad5cd7c2a92398ca79aadd5bc324979dec7bf9021d2e4180dac4df6bcb37a` |
| 32 | `theorem` | [coprod_inl_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprod-inl-inr.md) | 231 | `result-track:3b02dfca0fee1be77a1d24d0245b1f913139a1bf562e1f024644783407415d46` |
| 33 | `theorem` | [coprod_zero_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprod-zero-left.md) | 236 | `result-track:56f7cf0d454662fed344f8e2c54c40ef1d636143f97b1f1b3706231829979bc6` |
| 34 | `theorem` | [coprod_zero_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprod-zero-right.md) | 239 | `result-track:7895e6ef0874a7680dc82fa3313318950e324f139051c3108f3738bd8c93ea08` |
| 35 | `theorem` | [comp_coprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/comp-coprod.md) | 242 | `result-track:88d91ac84dad0f269ce29fa9bb587f084a10c10cc10f4188d36f2b72a03dad00` |
| 36 | `theorem` | [fst_eq_coprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-eq-coprod.md) | 247 | `result-track:d56aa7539c44da763925afd2247be8479909d55c203dffeb733827a60bd33bfb` |
| 37 | `theorem` | [snd_eq_coprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/snd-eq-coprod.md) | 250 | `result-track:3f29c2997dad14fe9dbe2bf26bd44fcdcc02f9f704c8d2d442db555c6908f5de` |
| 38 | `theorem` | [coprod_comp_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprod-comp-prod.md) | 254 | `result-track:a06dc77a2414f93b887af6adcf5ed6b5cd641294c91e4740a3b3f5d7fdc090a6` |
| 39 | `theorem` | [coprod_map_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprod-map-prod.md) | 260 | `result-track:c3759ce5399c15cf472bad0da71838812cbbbfc2c49e3bb12899d46b0d4f569a` |
| 40 | `def` | [coprodEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coprodequiv.md) | 273 | `declaration-track:49872dd787a283006fb9e0a89ca72f43881dc9e73c044b612e3dcd4c035a8aa5` |
| 41 | `theorem` | [prod_ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-ext-iff.md) | 289 | `result-track:4221fd0cdce1071ce079935a85b1f52d8fa383f7afddb2747b950f1db2514984` |
| 42 | `theorem` | [prod_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-ext.md) | 300 | `result-track:e16adf0e00aaa3f8bcbca8484edf0760fcd53ad2a939009b0ddd7072fea15baf` |
| 43 | `def` | [prodMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap.md) | 306 | `declaration-track:b5a2e8ac650db7e70ba2d83294fbe0696424395bee819eecee475c47761088c4` |
| 44 | `theorem` | [coe_prodMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coe-prodmap.md) | 310 | `result-track:269e8c9cd451d2b91edb778f93f453a754af6d11f87666285c48b31a78d54987` |
| 45 | `theorem` | [prodMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap-apply.md) | 315 | `result-track:55c7fc40b264d87c5fa9680f08023f17065a3d7c6525ab639a0f6e2ab2692de1` |
| 46 | `theorem` | [prodMap_comap_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap-comap-prod.md) | 319 | `result-track:7166b3c05b1c4e0d40a0a373186b200206ef8210f2306397178a5b2e76ce04b9` |
| 47 | `theorem` | [ker_prodMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/ker-prodmap.md) | 325 | `result-track:63eb525f15a2a63d1f086dcd6fa590e698244a36291ffc1c2ceeb512e1a6c094` |
| 48 | `theorem` | [prodMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap-id.md) | 332 | `result-track:8be2faae53d57a1ddeb83e35adea1a69a89316dbab2ff560ebf287755182d923` |
| 49 | `theorem` | [prodMap_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap-one.md) | 337 | `result-track:7935338c65d219bbe596f5165daa86412c7b450522600d099cfc434a44860ff7` |
| 50 | `theorem` | [prodMap_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap-comp.md) | 341 | `result-track:f276752343110084835b8ea0acec1ddb6921f2fbfa45823622ad00777d02d189` |
| 51 | `theorem` | [prodMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap-mul.md) | 347 | `result-track:e5a6a4e2ee6298af4369dda33fe9c126b9dcd0a7238caae2cf1f2320306ee4f0` |
| 52 | `theorem` | [prodMap_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap-add.md) | 352 | `result-track:d36beeda0b6579884ddf3b0cafcfd3f1e41584999d88a4055dbade1326e730fa` |
| 53 | `theorem` | [prodMap_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap-zero.md) | 358 | `result-track:516b571843449a868d547059dc2c2c29122ccdb909a1c7693cb5e7712e02e5fa` |
| 54 | `theorem` | [prodMap_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmap-smul.md) | 363 | `result-track:1b8995d743e324e64b97b9e3fa54bd4bb138ea9daa9b0b2064ded86a9e4c8e7b` |
| 55 | `def` | [prodMapLinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmaplinear.md) | 372 | `declaration-track:40fda04a2d24d7f586b0dc5cb14c82fe51f6d56e9652a96256370ff0878574f9` |
| 56 | `def` | [prodMapRingHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmapringhom.md) | 382 | `declaration-track:12409df72b69a062a329669cfa92b0c1f0c2ed3b32a981ed3b8edb5227df6d02` |
| 57 | `theorem` | [inl_map_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inl-map-mul.md) | 399 | `result-track:8fa24cbad4b181ece6fe7e49aa50fcc81d19a040232436d150896c84a86661ae` |
| 58 | `theorem` | [inr_map_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/inr-map-mul.md) | 404 | `result-track:772c9de4635386399de070f75153952ca11fe8ea30fe103d87698e0cbd345e51` |
| 59 | `def` | [prodMapAlgHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodmapalghom.md) | 427 | `declaration-track:8b6913ef76dafb08004fd1b9b4affc28bb4c333881a6991d277db176c7b5e81c` |
| 60 | `theorem` | [range_coprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/range-coprod.md) | 440 | `result-track:d7f73629a18fafdfa722d1c21e08c703a9407c0108d4a80a8f5350d316396e87` |
| 61 | `theorem` | [isCompl_range_inl_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/iscompl-range-inl-inr.md) | 444 | `result-track:e3b9f21188121e1b9343ed2bd5b8c692a525ee9572ab5fddc53dd9342c06d66d` |
| 62 | `theorem` | [sup_range_inl_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/sup-range-inl-inr.md) | 457 | `result-track:9960d19c4d3d58676448c74732f88516c298214f584c16ae0d434031537fa84a` |
| 63 | `theorem` | [disjoint_inl_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/disjoint-inl-inr.md) | 461 | `result-track:ed02eea56886369b914625c3b8022338d7b9d4501de9f860cbb88b34db52cd3e` |
| 64 | `theorem` | [map_coprod_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/map-coprod-prod.md) | 465 | `result-track:1984a42d87e90061358534706aa3dabee0347e7f2c315e5aa53d172160829d9c` |
| 65 | `theorem` | [comap_prod_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/comap-prod-prod.md) | 475 | `result-track:a673fff4090ebd6cabbdc6bd61287ae1d0c5de48c6227af7303370d1fc120c29` |
| 66 | `theorem` | [prod_eq_inf_comap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-eq-inf-comap.md) | 480 | `result-track:29a625fa1abe1f37bb91fbe39ae406203a77f83d2e2b34170727a2f83aa83457` |
| 67 | `theorem` | [prod_eq_sup_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-eq-sup-map.md) | 485 | `result-track:6d015491fe3d95cfce18f0aa94dd5e3bda21169fab04f98c76787e0103295276` |
| 68 | `theorem` | [span_inl_union_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/span-inl-union-inr.md) | 490 | `result-track:673e57643c62f322cc893d50bd2afc60f9032df567a64d94ac022b7a1f417772` |
| 69 | `theorem` | [ker_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/ker-prod.md) | 496 | `result-track:076ac74f04b6f641d914c8fdc8623036e9aca53dde25c1d32843c0902ff69fb8` |
| 70 | `theorem` | [range_prod_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/range-prod-le.md) | 500 | `result-track:2897ff9bf9a3797fe65c0ecd7617617a9a0558a82930cfe1104977f6de525f2f` |
| 71 | `theorem` | [ker_prod_ker_le_ker_coprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/ker-prod-ker-le-ker-coprod.md) | 507 | `result-track:39a473c2afd252738f1491b1de013eea0d806b1bffde4f4cd42c62890bc13fa1` |
| 72 | `theorem` | [ker_coprod_of_disjoint_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/ker-coprod-of-disjoint-range.md) | 514 | `result-track:5a14d00523f47d29c78d5793f08678e72dbc3e9e6682ecbbca7d200af93ef5e8` |
| 73 | `theorem` | [sup_eq_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/sup-eq-range.md) | 541 | `result-track:4c1baa8d0802e642beb45670dca4c5e14a53ebbccf6ef3788213f1080ac56220` |
| 74 | `theorem` | [map_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/map-inl.md) | 548 | `result-track:81ace699f9c9c424333d27a34473b31837e98acff1408980747ede45e40bea45` |
| 75 | `theorem` | [map_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/map-inr.md) | 555 | `result-track:b79f8c532970a856e6a0b9b4d4ffce96218213472ad394ae166b3f154f4820af` |
| 76 | `theorem` | [comap_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/comap-fst.md) | 560 | `result-track:1950e4b88217b7e6af89776a8503ce9fa5bbf0011133afb86f4aac329a9a84f9` |
| 77 | `theorem` | [comap_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/comap-snd.md) | 564 | `result-track:e32e879b69a5942968931b611a4cd829ab3dea22d932bd451c98ea11cc3e2ca6` |
| 78 | `theorem` | [prod_comap_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-comap-inl.md) | 568 | `result-track:497c1356d15bebfa5451fe7f233b54d18901e17a1e534b33a603cdbd685eed34` |
| 79 | `theorem` | [prod_comap_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-comap-inr.md) | 572 | `result-track:43a7d491386be0e21e7e2def7f827a6b072940924e44f65fbb13a2c2fdbef35a` |
| 80 | `theorem` | [prod_map_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-map-fst.md) | 576 | `result-track:533ad3d71f1a61596bd0072c38465cb93d97ea9cc3a4093fc786be43a7d085d2` |
| 81 | `theorem` | [prod_map_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-map-snd.md) | 581 | `result-track:73d70d3776ea9cfd56ea5382613b6879ef563d9680d6038c93284764d859825a` |
| 82 | `theorem` | [ker_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/ker-inl.md) | 586 | `result-track:6de7f9ecfa9ed38587f94c35f8815ed799e8a6fa30ab48b73569ea94da73fc8c` |
| 83 | `theorem` | [ker_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/ker-inr.md) | 590 | `result-track:7b2b79f647d9d3623761fc6c0950af46526e2e4ea17712923ba94c705022d4d9` |
| 84 | `theorem` | [range_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/range-fst.md) | 594 | `result-track:c14956d71e226f0fc4879d9af497fd7231f98d5f72136a81bb989c033becd594` |
| 85 | `theorem` | [range_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/range-snd.md) | 598 | `result-track:1c7d2ffe4bf18b3080974ca71d516c16966ae752078027ffdae497ff88022e38` |
| 86 | `def` | [fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst.md) | 604 | `declaration-track:ac1d2c93a5272f666b980e54be7e85f1c8e3c91e36ea301fb2c7361c1a5eef37` |
| 87 | `def` | [fstEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fstequiv.md) | 610 | `declaration-track:9e627602375a3caaa034ed4fe5357781359647473187252f87420064588f9a25` |
| 88 | `theorem` | [fst_map_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-map-fst.md) | 624 | `result-track:1470d88c0c917eb06bc36b13a302ff2bb9057887b30c9f88923ff5a354f51b7a` |
| 89 | `theorem` | [fst_map_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-map-snd.md) | 631 | `result-track:e1f5de532c2ffb129eb924f3eefcd13dee76c828537af6596d5c683b7d76b742` |
| 90 | `def` | [snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/snd.md) | 639 | `declaration-track:01315886af95855cf567f59f90a8074654d2fb16b029e6540b14d8527a86e68c` |
| 91 | `def` | [sndEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/sndequiv.md) | 645 | `declaration-track:94104172b80a0f623f5861a8793e2e2e14e3c0414657f45609da5899df1ab1b7` |
| 92 | `theorem` | [snd_map_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/snd-map-fst.md) | 659 | `result-track:76783c51a9dc15098fc888a276ea9eff07620b8ccad241de1e0b922b83c68904` |
| 93 | `theorem` | [snd_map_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/snd-map-snd.md) | 666 | `result-track:e25f00d44c78017218386fcef10038c5216c328e1adf82a0c16864df901b7856` |
| 94 | `theorem` | [fst_sup_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-sup-snd.md) | 673 | `result-track:55e8514a76f74abc3bae0e6e22217a332796aedbf479435fffd28d937c42235a` |
| 95 | `theorem` | [fst_inf_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-inf-snd.md) | 682 | `result-track:857e3739663c13833875bf052c73c5fb1d89eeb8ce81a9e3a7266c23fe534722` |
| 96 | `theorem` | [le_prod_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/le-prod-iff.md) | 689 | `result-track:8f55f495c2b3f8086822a58cec9b405e33bfa69676b7920bdd7395d8c141febb` |
| 97 | `theorem` | [prod_le_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-le-iff.md) | 702 | `result-track:8d9abfe15cc536d189639ace480c62b2fbb38c20cfcc8dc4f48fcdd6901a0c0e` |
| 98 | `theorem` | [prod_eq_bot_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-eq-bot-iff.md) | 723 | `result-track:cfc00589669d2a3b2bd8877b463e77cac880d509457ad11b3ab619d5d13ee444` |
| 99 | `theorem` | [prod_eq_top_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-eq-top-iff.md) | 728 | `result-track:ceea64b97be3531d72e3957d2160115699b3f6088f233ece51c7ea5f42a2ec66` |
| 100 | `def` | [prodComm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodcomm.md) | 739 | `declaration-track:6a639da1b58fcde12cc672f34dc7214bdaf1574ca20d3a6078509517422cbf2c` |
| 101 | `theorem` | [fst_comp_prodComm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/fst-comp-prodcomm.md) | 750 | `result-track:fdec088b5124ed0198b765ee7bda9fb4a913d1110ae7fb850982ac31433524c1` |
| 102 | `theorem` | [snd_comp_prodComm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/snd-comp-prodcomm.md) | 754 | `result-track:54f83cfe5dbe49007acbd63076cf682b67c3b3c8c51e2aefc91237fb1732a5b8` |
| 103 | `def` | [prodProdProdComm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodprodprodcomm.md) | 769 | `declaration-track:ffa2433b25a7a2457ba464c9b20af8ed145950922d9606b948aa475df213c762` |
| 104 | `theorem` | [prodProdProdComm_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodprodprodcomm-symm.md) | 777 | `result-track:7dc102041eebe3adf5cfa5bd68dc203bd18fa5ff073e296a38d82918802352fa` |
| 105 | `theorem` | [prodProdProdComm_toAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prodprodprodcomm-toaddequiv.md) | 783 | `result-track:3197deb84339f2a14330e2a437e5e8209f58e51c36855e17e8778c1b0fe6f82a` |
| 106 | `def` | [prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-source-edition-2.md) | 803 | `declaration-track:fada1228f2f5a309c2b6fcee0be0e41a79184119622f55d9bb3bf035c13bb1d0` |
| 107 | `theorem` | [prod_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-symm.md) | 808 | `result-track:80b8bdefc2e23a5b2291340c61982fd1d3be3465a438ba92074a8f01f6e770b6` |
| 108 | `theorem` | [prod_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/prod-apply.md) | 813 | `result-track:50d4b0fbe9fa385a1ad5d95e8759702101ab79fb2e797f99f9258460dea60844` |
| 109 | `theorem` | [coe_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/coe-prod.md) | 818 | `result-track:3618e41b8285b97f8d34fa8c3e29e1f4517b84f712ad870e631f79c860bcd994` |
| 110 | `def` | [skewProd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/skewprod.md) | 835 | `declaration-track:b7e81433f72b0edea715f2613a34aa3bb8a42e20bbf536d2864307a45a82e61f` |
| 111 | `theorem` | [skewProd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/skewprod-apply.md) | 845 | `result-track:1f022744e029b6c28bd3217b6ed34049e0beb076f13e1c277b5fd38b8e632034` |
| 112 | `theorem` | [skewProd_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/skewprod-symm-apply.md) | 850 | `result-track:1cfccf3083ddb600831e6458d5839d192d2c6c34688bf202ab80c0de1b2c5ed8` |
| 113 | `theorem` | [range_prod_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/range-prod-eq.md) | 869 | `result-track:76fb1f8ea6b3e1b0d4d38496f76c07a03044349c885244bae683bb7ed5be759f` |
| 114 | `def` | [tunnelAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tunnelaux.md) | 919 | `declaration-track:dfe400f7249ca313e634ad4e39f77d74d66a6587f7245ff53733fedb3b86e040` |
| 115 | `theorem` | [tunnelAux_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tunnelaux-injective.md) | 923 | `result-track:9f5f1cf131117cf7fc37c14c378581d4bd4a5edbaaee4d68efeca7ac0e10389c` |
| 116 | `def` | [tunnel'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tunnel-source-edition-2.md) | 929 | `declaration-track:601eab469ae6c5afb52cff52ff534f93dddc66bdfaa1ce94615bb33191dbe251` |
| 117 | `def` | [tunnel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tunnel.md) | 940 | `declaration-track:081b9229d42b94c17f3542ae824a50496004497998c46c9e368288c01135d040` |
| 118 | `def` | [tailing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailing.md) | 951 | `declaration-track:bdd6aff9050097e2b03a2b1838e3e9f04152300ef042842909699ce455efeb8b` |
| 119 | `def` | [tailingLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailinglinearequiv.md) | 956 | `declaration-track:3abb1145ce571527f6b2d5bb98770fdb5d87264554a0e3d31e6ade8afd2aaba6` |
| 120 | `theorem` | [tailing_le_tunnel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailing-le-tunnel.md) | 961 | `result-track:d6cdbe59a72d29d6d5514da821223b2aff2f9054f490d879c607ad4fd8b6eca1` |
| 121 | `theorem` | [tailing_disjoint_tunnel_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailing-disjoint-tunnel-succ.md) | 968 | `result-track:d6bc51373c025394cbdb771b3aa8eb79d0701bb448415544a62b29c25789154c` |
| 122 | `theorem` | [tailing_sup_tunnel_succ_le_tunnel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailing-sup-tunnel-succ-le-tunnel.md) | 977 | `result-track:1a6a89bdbde263a1d6370952e130ce8dc70372ada271680863800714af4bca51` |
| 123 | `def` | [tailings](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailings.md) | 986 | `declaration-track:e238c3573d49a063c1613a37fa1f8cc0d34446111529bf2faed661bf237e7988` |
| 124 | `theorem` | [tailings_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailings-zero.md) | 991 | `result-track:c1876b1aebb608db165bf1954d71c6b0062fd93399a3fd3f9e42b33987f2ec81` |
| 125 | `theorem` | [tailings_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailings-succ.md) | 996 | `result-track:ec99e50a73efa83632931ce0a0c640e69cdd521286c3ff181c7bd787d9e77688` |
| 126 | `theorem` | [tailings_disjoint_tunnel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailings-disjoint-tunnel.md) | 1000 | `result-track:8f56b3c61ce2c298ecb87a182dbdc65724e9f6a6224ea5cbeb4bef30602b715c` |
| 127 | `theorem` | [tailings_disjoint_tailing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/tailings-disjoint-tailing.md) | 1012 | `result-track:c1160e7766f9e78fe2d3ff56eec507819b5cf0c01a2374c03389be8288b0df24` |
| 128 | `def` | [graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/graph.md) | 1025 | `declaration-track:e82d1df9f8913c90388a2d0a3f9fd09aa200992905bbbccc0f1677df3c3743c8` |
| 129 | `theorem` | [mem_graph_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/mem-graph-iff.md) | 1038 | `result-track:54418a2f9720783075a331c0ea5d293311c69d5d969608c7c8e1d1eabfa751ac` |
| 130 | `theorem` | [graph_eq_ker_coprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/graph-eq-ker-coprod.md) | 1042 | `result-track:4019f77e11497c84102067d3685b7a7e17791acb0b5e5be16d2e47dd2d470e97` |
| 131 | `theorem` | [graph_eq_range_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdProdSymm.lean/declarations/graph-eq-range-prod.md) | 1048 | `result-track:7023ecb98b4728de529a9866ae807a573a4e8ba00a54a400d5f0dbafb3d5358a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61263902ff478435fcff71335aae483b8b4deb902cd96156994c693b5a1dbd8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Prod/Variant8f05aeba822408507bb83ba7866a2fcba58e753dc986d0b0fffd491481c1090e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
