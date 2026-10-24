# Verification target: GRWTSK.Topology.MetricTopology.SemiNormedGroupCat.Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3096da393de8c9766687054ecf0a2d24a6aeffb",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3096da393de8c9766687054ecf0a2d24a6aeffb`.

Source path: `GRWTSK/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.BundledHom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SemiNormedGroupCat](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/seminormedgroupcat--2f60fd0870a72c01ed71dde3.md) | 29 | `declaration-track:2f60fd0870a72c01ed71dde3d2927aa2f46e73247cf0256f4b2b7d9dda17f262` |
| 2 | `instance` | [bundledHom](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/bundledhom--65f1eb20ea8d462b7e0690b1.md) | 35 | `declaration-track:65f1eb20ea8d462b7e0690b12b05213e8d23ddc2b0356d4c9b91dfcae2e2d5a5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--be6b2826e09833345c9efebd.md) | 46 | `declaration-track:be6b2826e09833345c9efebdcfeb13841889edbddf2dbc4f64f42668989aa07d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--7d7bafb3ba1c3b0f07adb99a.md) | 50 | `declaration-track:7d7bafb3ba1c3b0f07adb99a57552797a9f6210564745589d3a587c12254dc0e` |
| 5 | `def` | [of](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/of--1b3e460bb23261f2ca3bbe0e.md) | 54 | `declaration-track:1b3e460bb23261f2ca3bbe0e5209bc5a6fdce4b301692610d3b84b4c472fa7ab` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--1c4e07e696bf41a0dee19c89.md) | 58 | `declaration-track:1c4e07e696bf41a0dee19c890d1f3b828f869284e8d47779ac7dcaef2e6ab0cf` |
| 7 | `instance` | [toAddMonoidHomClass](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/toaddmonoidhomclass--81237c00fe399adfaceb56bc.md) | 62 | `declaration-track:81237c00fe399adfaceb56bcf8f20d7bf460b090a018ce337ca5c597cb64df1e` |
| 8 | `lemma` | [ext](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/ext--3d0031653fe2fd29cda0dc7d.md) | 70 | `result-track:3d0031653fe2fd29cda0dc7de67b5065bdab6539dfb0e1e069b69617ee02913a` |
| 9 | `theorem` | [coe_of](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/coe-of--52cc9522126286c10538349c.md) | 74 | `result-track:52cc9522126286c10538349c937f69a1c86912233d29bf1c1ad158cb23176d88` |
| 10 | `theorem` | [coe_id](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/coe-id--f298f2410880b1db80711cc3.md) | 80 | `result-track:f298f2410880b1db80711cc3fd522d267322911d16346720c82535afa82771ff` |
| 11 | `theorem` | [coe_comp](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/coe-comp--62f0b014f500a22efd5dabfd.md) | 86 | `result-track:62f0b014f500a22efd5dabfd2840085df86ef0021ed949893c08a67850b462af` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--fe3b3d3044bdb82c03d572dd.md) | 91 | `declaration-track:fe3b3d3044bdb82c03d572dd720c81e47a478c83715aacd4eeb4e920177d80f9` |
| 13 | `instance` | [ofUnique](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/ofunique--e2ec1f9a242ba9cc07701579.md) | 94 | `declaration-track:e2ec1f9a242ba9cc07701579df8143244570fdb53a809e6653a05275e5c788a8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--373300fb2813e59bc3cbf3d8.md) | 99 | `declaration-track:373300fb2813e59bc3cbf3d873819f2f1338a9a2f0fed8947faef8eec85f91e3` |
| 15 | `theorem` | [zero_apply](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/zero-apply--ecb3fca26b281c89411482ff.md) | 103 | `result-track:ecb3fca26b281c89411482ff085a25469e43609dd6a180f3ef0dd75aa44870fa` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--72f55a654a7ac3e080b4fd27.md) | 107 | `declaration-track:72f55a654a7ac3e080b4fd277b8eaf7637337e29cf1f3edb540f06bb02b730c4` |
| 17 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/iszero-of-subsingleton--acfb389f20934596b6adb393.md) | 109 | `result-track:acfb389f20934596b6adb393d8e2c1b658df823f82cfe0b5930981f7abcac48e` |
| 18 | `instance` | [hasZeroObject](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/haszeroobject--67278c761a0ba496aa890a94.md) | 115 | `declaration-track:67278c761a0ba496aa890a948de8216cd4d6cda65a158667fb360542c20fefcf` |
| 19 | `theorem` | [iso_isometry_of_normNoninc](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/iso-isometry-of-normnoninc--279567c896ab1760c4e60cca.md) | 119 | `result-track:279567c896ab1760c4e60cca6992ab0d0dfcefe88affbd5c7ac8f4c89d338d17` |
| 20 | `def` | [SemiNormedGroupCat₁](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/seminormedgroupcat--ab3b5fa9fc4dfdad05c83cd0.md) | 134 | `declaration-track:ab3b5fa9fc4dfdad05c83cd0815f40cc0cd3c28ef1a9f7371e8577a3bd2b98c0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--2c48a8e2e130c0e73f53787e.md) | 140 | `declaration-track:2c48a8e2e130c0e73f53787e09a199db03fc15f6403f6b3ffde4a17b1a0c9ff4` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--41ccb1cfa981aa2a504c01f5.md) | 143 | `declaration-track:41ccb1cfa981aa2a504c01f5da6919d4a2555ffbae32b1a6fefaeb0a24e6cbbe` |
| 23 | `instance` | [instFunLike](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instfunlike--28f3ecefbd0f1e74cfa028bf.md) | 149 | `declaration-track:28f3ecefbd0f1e74cfa028bfffd3fcc2fe00015c654d5858a66ec71adca12cfb` |
| 24 | `theorem` | [hom_ext](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/hom-ext--41dcfdcfa2be6a479eeaa80e.md) | 154 | `result-track:41dcfdcfa2be6a479eeaa80ee3d0ff065e250e2cf053a2fe785d4d656c9ceec8` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--c013b01bb2ae6e21487b1e34.md) | 159 | `declaration-track:c013b01bb2ae6e21487b1e342f8ad2928de727081fe1289f5241cfd02a82836c` |
| 26 | `instance` | [toAddMonoidHomClass](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/toaddmonoidhomclass--14c74fd966492276f5bab415.md) | 166 | `declaration-track:14c74fd966492276f5bab41506a2174a9bf2e450d9201f97d2665153352d4820` |
| 27 | `def` | [of](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/of--172e2bb633dd29201a029044.md) | 171 | `declaration-track:172e2bb633dd29201a0290444263fe3c4ecc862219363604b2db1b63a1bfe507` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--a6d37948494b50f2ef669610.md) | 175 | `declaration-track:a6d37948494b50f2ef669610d3128fa7e2832c07ae08f1c9f42f864b7f581d83` |
| 29 | `def` | [mkHom](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/mkhom--37ac41d87cd2f809be0d6b2d.md) | 179 | `declaration-track:37ac41d87cd2f809be0d6b2dbcaf2e8f91cb63273776160ac38ae59d774d62f7` |
| 30 | `theorem` | [mkHom_apply](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/mkhom-apply--2302a39e217ec3d6d9b6d733.md) | 185 | `result-track:2302a39e217ec3d6d9b6d733cdc1ef118b836e91c439591ea44e54faec9c9b8e` |
| 31 | `def` | [mkIso](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/mkiso--358390afdc6dd321a7c023da.md) | 192 | `declaration-track:358390afdc6dd321a7c023dad58ce6657d65ebce5b9c558331cb44ce244fd1ad` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--e49b235a55c424fb7d56fe81.md) | 200 | `declaration-track:e49b235a55c424fb7d56fe81725cec59205939ec6abeae899ef310557ef09599` |
| 33 | `theorem` | [coe_of](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/coe-of--b3b4d6a137bc5797a0488ecf.md) | 206 | `result-track:b3b4d6a137bc5797a0488ecf274c1b13ac9f335b70498703e4a16ab8c7c56276` |
| 34 | `theorem` | [coe_id](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/coe-id--68bc42982ed94b0d3bbc3640.md) | 212 | `result-track:68bc42982ed94b0d3bbc364014c69eb58bf0a70d73109da6f494e17ee02296cb` |
| 35 | `theorem` | [coe_comp](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/coe-comp--02e46fa1ab4f014e99c7bfa6.md) | 218 | `result-track:02e46fa1ab4f014e99c7bfa6dbafd9b440c4eb1c67d69bc82a9cbff4c477d993` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--2dc3a982955e43742d18fcbc.md) | 226 | `declaration-track:2dc3a982955e43742d18fcbcfdde3f68248f5d303d665ca4cbc6cdac5efe035d` |
| 37 | `instance` | [ofUnique](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/ofunique--e83ae23ac91007c3b3790752.md) | 229 | `declaration-track:e83ae23ac91007c3b379075291ddce80751470bf9cb357a07667a8f67e5b5645` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--f89085189a3ad4b80514a32e.md) | 235 | `declaration-track:f89085189a3ad4b80514a32e218546f7b21cdd843b79ede7fe78140ef3131f1a` |
| 39 | `theorem` | [zero_apply](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/zero-apply--e6c04c541c59b845b3bdd79d.md) | 239 | `result-track:e6c04c541c59b845b3bdd79d6d319e19a741061831c1e7c8e030f63784eb3660` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/instance--ebb32f3df0e6aaba6c11fe15.md) | 243 | `declaration-track:ebb32f3df0e6aaba6c11fe155634c5441aac459cbd7117347a75ec76db95d7f2` |
| 41 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/iszero-of-subsingleton--6d421876afabe2b0110d11ae.md) | 245 | `result-track:6d421876afabe2b0110d11ae625c9fc6283555ee5ce0b8c4fdf43b96233bd428` |
| 42 | `instance` | [hasZeroObject](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/haszeroobject--ba29c293fa2af2cef27457a6.md) | 251 | `declaration-track:ba29c293fa2af2cef27457a6798de668eac919a94fa15a2d22bac476e4bbdd8d` |
| 43 | `theorem` | [iso_isometry](../../../../../mathematics/Topology/MetricTopology/SemiNormedGroupCat/Variantcf52cf830449bd6975bf14397f10e6733b814965816a89986fe8cbd70a9cd4c7.lean/declarations/iso-isometry--1a2a12e38e3ae84d86a63680.md) | 255 | `result-track:1a2a12e38e3ae84d86a63680bb625011f584c5fb5f8d87125eb0cf761862aab1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
