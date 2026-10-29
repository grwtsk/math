# Verification target: Group Prod Namespaced Fst Mul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25fe9851d5df8dfcf85457f821579e438206caae",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant3493847e30eacf9faefd7fd655bf1429eb2c5fb4d47b57106f2307d3793816c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25fe9851d5df8dfcf85457f821579e438206caae`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant3493847e30eacf9faefd7fd655bf1429eb2c5fb4d47b57106f2307d3793816c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant3493847e30eacf9faefd7fd655bf1429eb2c5fb4d47b57106f2307d3793816c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMul](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instmul.md) | 49 | `declaration-track:04269554e8c0615e4a60ce467286bab2d35802928331968411ad16a7c6fee58c` |
| 2 | `theorem` | [fst_mul](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-mul.md) | 53 | `result-track:18b72ca0d7c24bda4b28c8d0ab48a141c02c260a62a0396e82b19b56d2c1bf5d` |
| 3 | `theorem` | [snd_mul](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd-mul.md) | 59 | `result-track:c58213f0f2421dc3d16e2267f729eb0820b1ad794fab1427607c5acf538c570f` |
| 4 | `theorem` | [mk_mul_mk](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/mk-mul-mk.md) | 65 | `result-track:7994e763f44700aac76ec2e9d699cf50a4ce26a2ffc2efaf134ccc9cd2c6eae8` |
| 5 | `theorem` | [swap_mul](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/swap-mul.md) | 72 | `result-track:8e20ea8da726bd797332771d80fb1fac46e899f01cfbea9d1f8d72460d7f2952` |
| 6 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/mul-def.md) | 78 | `result-track:5ea3fb04f0721ee2b0e8abf76c71a223d60fa39c377c0a66fe0bb5477995fada` |
| 7 | `theorem` | [one_mk_mul_one_mk](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/one-mk-mul-one-mk.md) | 84 | `result-track:19ebd11f3675063226993f6bafc8ff4aaffd236fc403496d1dde0f0334cfc836` |
| 8 | `theorem` | [mk_one_mul_mk_one](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/mk-one-mul-mk-one.md) | 91 | `result-track:d704b0b1c9af9d62ec88d980b7299e260fc9e7d1c8997efebd806108124dfc26` |
| 9 | `instance` | [instOne](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instone.md) | 98 | `declaration-track:c9ba9c45c71ba2179abb0435d29cd3e5e3b8c46584b3aa299e47ab2643bb4694` |
| 10 | `theorem` | [fst_one](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-one.md) | 102 | `result-track:9732ab506882e21ed750a9fa38b07716e6f7b429c262f68c975a8d967be3cbfe` |
| 11 | `theorem` | [snd_one](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd-one.md) | 108 | `result-track:ed6a0f459ad733bb4548aa1b66ce742b5c7b752c766f31e16bc49caa44ffbe51` |
| 12 | `theorem` | [one_eq_mk](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/one-eq-mk.md) | 114 | `result-track:dc4b2e9fd57c4ccdb2b525138b3ecc513f51eb28ed3215cd61f011dc02960d25` |
| 13 | `theorem` | [mk_eq_one](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/mk-eq-one.md) | 120 | `result-track:de7508b718371e982a78e65414b5ea4be1e4b8b6a4041a44d7e79a347646bf54` |
| 14 | `theorem` | [swap_one](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/swap-one.md) | 126 | `result-track:be5cd3a36558f39e98956f74af91e8a0e9ead3dda866e1059444c5fdccd5648f` |
| 15 | `theorem` | [fst_mul_snd](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-mul-snd.md) | 132 | `result-track:d10b146beb2c0ae001416e37d1ce3f75cab01af4d186e07779777b7d48b0745b` |
| 16 | `instance` | [instInv](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instinv.md) | 138 | `declaration-track:4916ddd12aa796f973dfe979aba5c990e3f0d2f5b9660c5ab6740d1a3504452a` |
| 17 | `theorem` | [fst_inv](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-inv.md) | 142 | `result-track:406418deb49f811e4acad07105dd00192c76e44840e030b652726e7ad35a2558` |
| 18 | `theorem` | [snd_inv](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd-inv.md) | 148 | `result-track:504f5091a12302ad8a6a0f8f4f9300827e668f465f59ff26fa040d7348065f47` |
| 19 | `theorem` | [inv_mk](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/inv-mk.md) | 154 | `result-track:2d47cfcbdebf7ed1b685a4a48d7ac0ee4bb5d792f64584d1af709420b8abebc2` |
| 20 | `theorem` | [swap_inv](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/swap-inv.md) | 160 | `result-track:2923052db31a1e685a89044f76a258775cc7e78c4b3be29aedb397b47eaccb1b` |
| 21 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-2.md) | 166 | `declaration-track:024940b40f9344c31a181def7d39fd6e35c0f46ac532829b2f580eb60e98fd58` |
| 22 | `instance` | [instDiv](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instdiv.md) | 170 | `declaration-track:d8aecedf421a58f6c3688363fa5e9490108586a992483e843475461cdde09cdc` |
| 23 | `theorem` | [fst_div](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-div.md) | 174 | `result-track:86286a9041803fb3e1f1b97fbc95bf2f65cf6a2569ad83f53202e2e91dd30e48` |
| 24 | `theorem` | [snd_div](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd-div.md) | 180 | `result-track:57fc5ac1ebfed2b0073d3ee7dc9e808f695fea8dcacc0161aea43a30d1cac072` |
| 25 | `theorem` | [mk_div_mk](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/mk-div-mk.md) | 186 | `result-track:a6242cefe4de84abd1a3e870b393f93050685fd9c527ea7f296f0673e3d148a1` |
| 26 | `theorem` | [swap_div](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/swap-div.md) | 193 | `result-track:2408e32ca2014cf4d0229040076d4aa4a97c9de801893f93bd48dc40c5585d91` |
| 27 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-6.md) | 198 | `declaration-track:439c722d533ce297409935a72e591ae71f0341b678d5bd3cf69556a8997de582` |
| 28 | `instance` | [instSemigroup](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instsemigroup.md) | 203 | `declaration-track:b9f49c13ba64c028a4618a0f3090d9515cd94bcf97abe5a63ac7655d13216073` |
| 29 | `instance` | [instCommSemigroup](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instcommsemigroup.md) | 207 | `declaration-track:08536bc92592ecc227fcacb3cd791f2489fa5c7beab8691b0c52294e66486376` |
| 30 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-14.md) | 210 | `declaration-track:f59cb8a83796936e2e585163195e7a7b59323b141d932e8db10defbcff371225` |
| 31 | `instance` | [instMulOneClass](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instmuloneclass.md) | 215 | `declaration-track:e9300737223a43243a9927a4466e27e876358b29719ac1fa1601f36fd98096c2` |
| 32 | `instance` | [instMonoid](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instmonoid.md) | 220 | `declaration-track:83aba8439cf1a920134115a822d77e64be6caac33af58175b9b99600b0acb601` |
| 33 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-5.md) | 228 | `declaration-track:3de1e099d37f9a8031100f03e920d5de95dcb76a20b0778e7eef4215e7b191b1` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-10.md) | 236 | `declaration-track:bf8e83fe02261ecb6bab13797ec84b35357517a5b6676d76bf03e97eb625bb28` |
| 35 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-9.md) | 244 | `declaration-track:850cd32bace0b736f95dce480bdff57311d86f41c803236e51ec6eb431666f09` |
| 36 | `instance` | [instGroup](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instgroup.md) | 248 | `declaration-track:7def28a5b5fd2753eea9c650a416bdf83e58f0fb9c4ba05037e0bfac644ddb9d` |
| 37 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-12.md) | 252 | `declaration-track:d72872c4f7a3857cff10f849dd66116d903cb569f714d5afbae714f987991d5f` |
| 38 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-3.md) | 257 | `declaration-track:0266f4d46e62e6ef62081a4de8b091560cf5e07e7e3696312477ae87f43d9dbe` |
| 39 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance.md) | 262 | `declaration-track:021fab3bda351f0609c5bd297393474bbe0bed8f5174591847548dfbc6d1f05c` |
| 40 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-7.md) | 267 | `declaration-track:472cc40b240baca8212f4f861801901f63c9c4995603b7808e264e01f2f6259f` |
| 41 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-15.md) | 272 | `declaration-track:fa118f4d8dadea303d24e6525dfb911cad0a90a557e5bb2328492bcb93faa5d1` |
| 42 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instcommmonoid.md) | 276 | `declaration-track:7eb42deeaff9b15304c3d83f4bce569b934f813b8bf772aecda45fed02f33de2` |
| 43 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-4.md) | 280 | `declaration-track:1a573ec733d9d22f976721ebdb2ddd662ef72a2a5094fc79156fb27843c1f5bf` |
| 44 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-8.md) | 283 | `declaration-track:7a04035622547105d025829da94f2e3fda458070b75feb6b614823c958e492db` |
| 45 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-11.md) | 287 | `declaration-track:cbd9620f8fb5bd65ba370417b6fb22803d88b3910d11c6b704fbcb842299bd21` |
| 46 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instance-source-edition-13.md) | 291 | `declaration-track:d80031f1bdc03c5bfd51201fc6533d2d54c296d0ec70646bc2c24e3d314d678a` |
| 47 | `instance` | [instCommGroup](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/instcommgroup.md) | 296 | `declaration-track:a78db7b8205f646600dd520d2a2f4a5dca07ce19b19a953c2f956b3376d496ad` |
| 48 | `def` | [fst](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-source-edition-2.md) | 311 | `declaration-track:a1ea9311abe968f632888e7c89b0d39467ab9e1a65f2a8ca4a1395e040ae78eb` |
| 49 | `def` | [snd](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd-source-edition-2.md) | 320 | `declaration-track:948cb9522273d41fc762ac11af9e12b008c26c9498865e99d60ef56f5741d5b6` |
| 50 | `theorem` | [coe_fst](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-fst-source-edition-2.md) | 328 | `result-track:2688512ca5fdd3a6b1065c665d892dcdc445b03fd4e40e20ba8a0a46b5b27e83` |
| 51 | `theorem` | [coe_snd](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-snd.md) | 334 | `result-track:24d511ca5d5b488f9ff0ec7186909a590b5c014d5685d1e2fe0615d5f669f4f9` |
| 52 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prod.md) | 344 | `declaration-track:77628d87d35c5c42f69bb098623719823830f43301d470386ff68bd1e5e78b29` |
| 53 | `theorem` | [coe_prod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-prod.md) | 352 | `result-track:83bc834b0d7723a15bc7442f4850c44503c6cea7c966704a60c76569a62fcc48` |
| 54 | `theorem` | [prod_apply](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prod-apply.md) | 358 | `result-track:87ab0bb4709e18f850d5228b56c122c676806b90f368edda6b35044032ad6e30` |
| 55 | `theorem` | [fst_comp_prod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-comp-prod-source-edition-2.md) | 364 | `result-track:a689a6e662d3afc78875fdda636d214a7f8843032b0cde71fe5f6f2ed1ad28ef` |
| 56 | `theorem` | [snd_comp_prod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd-comp-prod-source-edition-2.md) | 370 | `result-track:bc994b1946ad8ecebcc88b9c7bfed4f7ccb587e81d85fefb93cb5206f07bfe0a` |
| 57 | `theorem` | [prod_unique](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prod-unique-source-edition-2.md) | 376 | `result-track:da2e0dc9fcd285755e7701bf0185368e3e91e12c73886b5840e00ddd3c6e3beb` |
| 58 | `def` | [prodMap](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prodmap-source-edition-2.md) | 390 | `declaration-track:61ae0a5749c7d771c1ca5a8086f387f919cb59777304478b0689a591e7552886` |
| 59 | `theorem` | [prodMap_def](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prodmap-def-source-edition-2.md) | 396 | `result-track:915194e9fca65fbe773d66c38a7b3f962e741e3f774e7ca7febc8532ddd98ff8` |
| 60 | `theorem` | [coe_prodMap](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-prodmap.md) | 402 | `result-track:bd8b55e12ec14f99c9e3525ee1e812f0768ea7cf07304f5e6c23d61641fb8d35` |
| 61 | `theorem` | [prod_comp_prodMap](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prod-comp-prodmap-source-edition-2.md) | 408 | `result-track:fd13db1cf8f961b772ef45ef49b91497c1182ce54d7bedabe2477e0b469fc7e7` |
| 62 | `def` | [coprod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coprod.md) | 425 | `declaration-track:20c2ac261d33d32c8e558578efb7f3093423a4fdc723382edee3489fa9befc02` |
| 63 | `theorem` | [coprod_apply](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coprod-apply-source-edition-2.md) | 431 | `result-track:3623e34ebff06ddc0ce8589b03935454631877a002b5e8f68718b6bcff4ab6a4` |
| 64 | `theorem` | [comp_coprod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/comp-coprod.md) | 437 | `result-track:a0204213af6e4802ee66cb5f5f9473272c563dff449e0096f16fd0d575df5db3` |
| 65 | `def` | [fst](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst.md) | 455 | `declaration-track:1afb2513bab395828a14b0c0ea38417731c3cd00d3edd6bdd06baa9d23589bf5` |
| 66 | `def` | [snd](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd.md) | 466 | `declaration-track:7ed778fd3604dfd6d2d62e90cd04dc119930d4c751d22a072b4df40a66af1992` |
| 67 | `def` | [inl](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/inl.md) | 477 | `declaration-track:f0d8958e3093f5eaa89469a995055f0447870e5d92b507fa37f1891b87d07d29` |
| 68 | `def` | [inr](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/inr.md) | 488 | `declaration-track:5fcba583c326def1e187b41394c8fafad6af16f26879032872acd42228f50eb9` |
| 69 | `theorem` | [coe_fst](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-fst.md) | 498 | `result-track:1ef2e47707ba67b4904fb0aaf94c119545565b65b47d4f1f509758b680dd6366` |
| 70 | `theorem` | [coe_snd](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-snd-source-edition-2.md) | 504 | `result-track:81261990166b7a39cebfb7fb8379c17526b19898a5487b127ac34b8db7faf490` |
| 71 | `theorem` | [inl_apply](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/inl-apply.md) | 510 | `result-track:23ce0abf1a0103df157721e1547640461c450edfefc0a0725b2ae7b2d87862dc` |
| 72 | `theorem` | [inr_apply](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/inr-apply.md) | 516 | `result-track:1bfcb9508b04a54eaf81e453dac2c6ece38160c9cac49fe335787f2f6fadf52b` |
| 73 | `theorem` | [fst_comp_inl](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-comp-inl.md) | 522 | `result-track:25f3e1d2eb1627d08cf5de756349dbf99e20eb5095a82362d00bf1bec0c48d09` |
| 74 | `theorem` | [snd_comp_inl](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd-comp-inl.md) | 528 | `result-track:2876f6fdfa0809027f887c40ef19ce12f89eaedd07bd92ee472837dfd0f85c7f` |
| 75 | `theorem` | [fst_comp_inr](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-comp-inr.md) | 534 | `result-track:5a1d01306fcc6a560da7e31df6c164c008af6d19419e88c8625c95fd21cc5726` |
| 76 | `theorem` | [snd_comp_inr](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd-comp-inr.md) | 540 | `result-track:187b98b7bfb5253c05510111fe9f098e5861e32922377fc4d080a1f08e1dffad` |
| 77 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prod-source-edition-2.md) | 554 | `declaration-track:c30ac0651739cc3934a81126bfed358fd39250e11c5ac1fd5cc5613364c200c6` |
| 78 | `theorem` | [coe_prod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-prod-source-edition-2.md) | 563 | `result-track:a322ce88073c5eb94994e0fb655b105a4c5666360907c929734aa4e1d2995dca` |
| 79 | `theorem` | [prod_apply](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prod-apply-source-edition-2.md) | 569 | `result-track:e909c551b2c8fd611520762bb4417f946d6be4824bbe8a2d7cb9bf26bf9c01f0` |
| 80 | `theorem` | [fst_comp_prod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/fst-comp-prod.md) | 575 | `result-track:61b2dd706bed5375a8550bebfca3816dab67ce6cafa5a463e245ada45522a872` |
| 81 | `theorem` | [snd_comp_prod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/snd-comp-prod.md) | 581 | `result-track:06e9ef48fbc6d14041fcfb415701ce067b4031b4551ca46818c602725a4a2258` |
| 82 | `theorem` | [prod_unique](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prod-unique.md) | 587 | `result-track:83df881d4c42c9952459c0e1521dae8281209086731a754b5974fee4c98a0a8c` |
| 83 | `def` | [prodMap](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prodmap.md) | 601 | `declaration-track:245445f5e2f61aa8094f6b44c01041b019b7d1a576296ad7d9c4ff25fdebe9b9` |
| 84 | `theorem` | [prodMap_def](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prodmap-def.md) | 607 | `result-track:53037e3381c73094932a69c47d672defbbed6c98b3643c9cf2ed597dd420b23c` |
| 85 | `theorem` | [coe_prodMap](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-prodmap-source-edition-2.md) | 613 | `result-track:ed1537e166d4058e7e1ec5db993de8e80fe997d00901fb41216bfef03513347f` |
| 86 | `theorem` | [prod_comp_prodMap](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prod-comp-prodmap.md) | 619 | `result-track:e5abac9d9ce57ed9e8f78f2b111df54d17673faad99aa2369e0781effd707390` |
| 87 | `def` | [coprod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coprod-source-edition-2.md) | 636 | `declaration-track:5416f717bc325673f86982e007a926475f553b3acdcb8556e48cf71be1cf3337` |
| 88 | `theorem` | [coprod_apply](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coprod-apply.md) | 642 | `result-track:2661f0716fd6736540b4f02a5c06e25b674fd92af600d95f00c8a39362dfbf75` |
| 89 | `theorem` | [coprod_comp_inl](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coprod-comp-inl.md) | 648 | `result-track:8e26413251fdfe443717e730f9ca4a6a71f30a7d0a53196ada8e91d47b9377c7` |
| 90 | `theorem` | [coprod_comp_inr](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coprod-comp-inr.md) | 654 | `result-track:a94db4b52f964c002e7af4ca63a053c3628253a526efe8c9eaa8b9cf23b81c18` |
| 91 | `theorem` | [coprod_unique](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coprod-unique.md) | 660 | `result-track:0b3a413df3ebdc08a37452045648af12a5c77afcc96f05aee6dce09707c54cb3` |
| 92 | `theorem` | [coprod_inl_inr](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coprod-inl-inr.md) | 666 | `result-track:e2a256658721afc12039bc3a6fa4f7152133903319462f32966bbc5966a0b06e` |
| 93 | `theorem` | [comp_coprod](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/comp-coprod-source-edition-2.md) | 673 | `result-track:de4c32c45ee589eff074c032c504a8325ee28c27e3f1058e46a9c8c8073c74cc` |
| 94 | `def` | [prodComm](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prodcomm.md) | 694 | `declaration-track:24603d32aa6eb0d282aa8ae11134df870528338111fb50e4957a363488b52fdd` |
| 95 | `theorem` | [coe_prodComm](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-prodcomm.md) | 700 | `result-track:b3c9ed26afa9f2e1eeca6a8467dcdb15c117cefcde36b42e7d8a93ecf1e5d998` |
| 96 | `theorem` | [coe_prodComm_symm](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/coe-prodcomm-symm.md) | 706 | `result-track:9d2f5313d688ed5820f4f043ba2fcfb72dd6fdbae382b2d6857803039bd06c20` |
| 97 | `def` | [prodProdProdComm](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prodprodprodcomm.md) | 720 | `declaration-track:8c1916f77b642debafab2fd07d9080f4e08d614a129a79769156c38ff9b2d2d0` |
| 98 | `theorem` | [prodProdProdComm_toEquiv](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prodprodprodcomm-toequiv.md) | 729 | `result-track:f0375907500053767a0701be1ad683659217df67bd26385d021e08cdeca87e38` |
| 99 | `theorem` | [prodProdProdComm_symm](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prodprodprodcomm-symm.md) | 736 | `result-track:54dcb1318b4e86e5cad2a82564707ce5157ee06964af496021f6d4d6f79d4026` |
| 100 | `def` | [prodCongr](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/prodcongr.md) | 744 | `declaration-track:ad8d11c338bc02a24b003ca48310ef1491cb43313ef06f1d80415f63e9dc8ea2` |
| 101 | `def` | [uniqueProd](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/uniqueprod.md) | 752 | `declaration-track:adc4dde1845df83bff09f8aae1a6b5ec500f37ee669120d7d61691846d550b46` |
| 102 | `def` | [prodUnique](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/produnique.md) | 759 | `declaration-track:a01bdbf43be5bf06573d9e3d2277a915b91bb6030ce15f00b2461f344eea51ad` |
| 103 | `def` | [prodUnits](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/produnits.md) | 775 | `declaration-track:268c35500ca625f9accf34bdfc84b841aa449600898216bdd54ebedda38c6a51` |
| 104 | `def` | [embedProduct](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/embedproduct.md) | 802 | `declaration-track:641d05b0bd779e9800a0a77a74aadaa60eaaedc602da047f2c5fb99c592c912d` |
| 105 | `theorem` | [embedProduct_injective](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/embedproduct-injective.md) | 813 | `result-track:5c54c9f7b8bfa2911665c646e3877b484f1e8e1e02467381f3534cbc793fb0be` |
| 106 | `def` | [mulMulHom](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/mulmulhom.md) | 829 | `declaration-track:410f97f7e9db7d33646b0f10cb96cde76dfc21ad5fb6098e584f1089fd117269` |
| 107 | `def` | [mulMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/mulmonoidhom.md) | 840 | `declaration-track:6975b682d2a2545b6ca528f1deae8aedc1b8e5ad1c1b94dbca60de23f035c245` |
| 108 | `def` | [mulMonoidWithZeroHom](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/mulmonoidwithzerohom.md) | 849 | `declaration-track:cbda597d934ee5a47fcabb580f423dd5693c50f433482cb73a2762efa4a7336d` |
| 109 | `def` | [divMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/divmonoidhom.md) | 856 | `declaration-track:c6cfc377579443172634a467838abcd3bd842ae68f053c2e94b8f5f498e6b564` |
| 110 | `def` | [divMonoidWithZeroHom](../../../../GroupTheoryAndGeneralizations/GroupProdNamespacedFstMul.lean/declarations/divmonoidwithzerohom.md) | 867 | `declaration-track:f3d528e71716801db25137870de2f88807547421a41ec8d5d09502fd5b503c6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3454a2051587179ebc7da7f8c5bb630d0369daf6ed2f47d99f2ce6afe2c0a78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Prod/Variant3493847e30eacf9faefd7fd655bf1429eb2c5fb4d47b57106f2307d3793816c1.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Prod/Variant3493847e30eacf9faefd7fd655bf1429eb2c5fb4d47b57106f2307d3793816c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
