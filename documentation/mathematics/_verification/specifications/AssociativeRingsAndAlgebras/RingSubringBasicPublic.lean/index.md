# Verification target: Ring Subring Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0117ed1c96374a40383c8d1c40ee90b11ef0fb20",
  "lexical_observation_count": 198,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0117ed1c96374a40383c8d1c40ee90b11ef0fb20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean.json)

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
| 1 | `theorem` | [toSubsemiring_strictMono](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/tosubsemiring-strictmono.md) | 77 | `result-track:f2e175bf99f64ca1daaadd2b8ea0d60f1dba898dddb467554e54104e06b2f726` |
| 2 | `theorem` | [toSubsemiring_mono](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/tosubsemiring-mono.md) | 81 | `result-track:8a218e7c1f3e68caf3362fc0c35a8fe5a95f8eb71dcd68f02a26b9e574fb4ab2` |
| 3 | `theorem` | [toAddSubgroup_strictMono](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/toaddsubgroup-strictmono.md) | 85 | `result-track:39c1ba1ad1a9abf71ae6ef4732401b05a2665fbb3acbc64ac20fe17fdc0bdbfa` |
| 4 | `theorem` | [toAddSubgroup_mono](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/toaddsubgroup-mono.md) | 89 | `result-track:84912b1e1c960ad380ae7d8dc5e7ae31a5200d4194ee5413bd10c620679d68c7` |
| 5 | `theorem` | [toSubmonoid_strictMono](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/tosubmonoid-strictmono.md) | 93 | `result-track:6a4b06ae9b0b910b3d09360abf9f4ea5f7fdd7d379afe9fb3ab7d9cc5c33c74d` |
| 6 | `theorem` | [toSubmonoid_mono](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/tosubmonoid-mono.md) | 96 | `result-track:5be314f609b55499eb1520161cdf35870dbe00e9903e3699e5ac2d93270c2d43` |
| 7 | `theorem` | [list_prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/list-prod-mem.md) | 106 | `result-track:a5ff377990a94847b3470e8aff75f94bfb17e737b995260fd018767235879f79` |
| 8 | `theorem` | [list_sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/list-sum-mem.md) | 110 | `result-track:07d882d5f09b6649e4c5dab6fa5ec1d89568a117caed94f3b2570cc1385f5b54` |
| 9 | `theorem` | [multiset_prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/multiset-prod-mem.md) | 114 | `result-track:0f857b1207ef419efe4feddea3ee087ff8d6e0d884b47758747d087481b4db58` |
| 10 | `theorem` | [multiset_sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/multiset-sum-mem.md) | 120 | `result-track:804db53c8bdc26c194dcb77b9acd7688abd178899bfd9a5ed816cbca6107defb` |
| 11 | `theorem` | [prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/prod-mem.md) | 126 | `result-track:7f59e00e7b86189a4550f4398e812ee99cb7b3f6ba9107f7d467ea9c25a87395` |
| 12 | `theorem` | [sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/sum-mem.md) | 132 | `result-track:eb31cacf87dd58920b41af3ed741aa867153c1aec00dbbf574627e719991897a` |
| 13 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance-source-edition-5.md) | 140 | `declaration-track:b28463dbb166a1491bd96cda6aa726209793ebbabe93085a654779d1502586f1` |
| 14 | `theorem` | [mem_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-top.md) | 144 | `result-track:8a11538053086cf72e5e6907f12147702519f135c6d3cbee4a05a1bc95f425bb` |
| 15 | `theorem` | [coe_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-top.md) | 148 | `result-track:e774cb6cf611c1fa0d64ae4eccdafb6932cedb4e9dd5b187036aef3ad89aa1a5` |
| 16 | `lemma` | [toSubsemiring_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/tosubsemiring-top.md) | 151 | `result-track:869a988d8eae4e2aa6aa3d1f482b1aff71d395cd77fe1f3e5f432dd1e1d79f48` |
| 17 | `lemma` | [toAddSubgroup_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/toaddsubgroup-top.md) | 152 | `result-track:d0ef637efd7b4809026664745cbc575eeb66327e644ba09ec6d389ce414258d9` |
| 18 | `lemma` | [toSubsemiring_eq_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/tosubsemiring-eq-top.md) | 154 | `result-track:f02d6f19fa4b271019fdfa1b8279538fcb47d0ef2d0fec9d976381aada3f2e66` |
| 19 | `lemma` | [toAddSubgroup_eq_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/toaddsubgroup-eq-top.md) | 157 | `result-track:32f943c78a52c964963a5cf23cdaf190c73ad476a9a6d038ccc338afa98198b5` |
| 20 | `def` | [topEquiv](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/topequiv.md) | 162 | `declaration-track:79d12d0ca3532e3baf731b0e55d69179b969ae036c17bf0d6fa575fb740c4560` |
| 21 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance-source-edition-4.md) | 165 | `declaration-track:a0947eba863071bea0b3c4f898e29297e0615e68df38c78af13710b04bc64cc8` |
| 22 | `theorem` | [card_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/card-top.md) | 168 | `result-track:e2640b9c2c5ca4ba555600af889b98ccc9446c3c4505dd77d29916488dbf2a7d` |
| 23 | `def` | [comap](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap.md) | 175 | `declaration-track:cbc32560b884619476c7dc7087762ce3ee8481cca3ac77efbe1af6495ba376a1` |
| 24 | `theorem` | [coe_comap](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-comap.md) | 180 | `result-track:3c7c7486691b94bf4533fbf0f0bc3eef0997985522de8f2f8f0c75175c3cdc52` |
| 25 | `theorem` | [mem_comap](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-comap.md) | 184 | `result-track:27417a4655848225bbaee21558f29d77bf7fc932c47e73653e93b8b4c1ff56d2` |
| 26 | `theorem` | [comap_comap](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap-comap.md) | 187 | `result-track:f956778ef9238a5ca3724814030519a6c9b1d1e83630285b43393fb78fc52eda` |
| 27 | `def` | [map](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map.md) | 195 | `declaration-track:bb992b9d0c739b88f915266a0c9dc993dc2f36a188fb97f6604d21d8c135cf2f` |
| 28 | `theorem` | [coe_map](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-map.md) | 200 | `result-track:58c4a66a6c1a92c0275743b9dac788ddd06667949ffa5563ab31df4ccb07e971` |
| 29 | `theorem` | [mem_map](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-map.md) | 204 | `result-track:6e0437aec47e7ba5ebd16e31c2f9786ea7d01bf792de21a702c87c8e9dfbe9e3` |
| 30 | `theorem` | [map_id](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-id.md) | 207 | `result-track:755e0a7b32296586684c4e0ec24099ddd6c8bc5c4ece94f0936ed153546bb915` |
| 31 | `theorem` | [map_map](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-map.md) | 210 | `result-track:e428eb5f5903cc9656a197064c072e45dd49a2c12e9f7abd2b7e51de2410e999` |
| 32 | `theorem` | [map_le_iff_le_comap](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-le-iff-le-comap.md) | 213 | `result-track:6e6d2033a6dc3240341e2d740ef27c8e255c7d536651efba0ac1a1a49ca79ff8` |
| 33 | `theorem` | [gc_map_comap](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/gc-map-comap.md) | 217 | `result-track:604df71c3ee01ec1ef9e54c4c44c19e8d273d23b8d3f41c3533fb61014d1eb3a` |
| 34 | `def` | [equivMapOfInjective](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/equivmapofinjective.md) | 221 | `declaration-track:a48c784b64e676c7c27a42de11d09fc554ad498db95aab1052052ed44850f062` |
| 35 | `theorem` | [coe_equivMapOfInjective_apply](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-equivmapofinjective-apply.md) | 227 | `result-track:8d98c79b70374a9f6f628516a95bf0866d75c99c7cb7dab85146458d5709a34f` |
| 36 | `def` | [range](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/range.md) | 241 | `declaration-track:f3df8b35114fa1a7f4f7b3ad251e6ee7358712a9b100e57522e08c19a9c91a51` |
| 37 | `theorem` | [coe_range](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-range.md) | 245 | `result-track:9807ce6e8e4b42b160e559a2f3c328e961c8e0779ba74d4f434854e42f0648c8` |
| 38 | `theorem` | [mem_range](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-range.md) | 249 | `result-track:47cc0a899c5547b622de3cf1fad2ad6358d2cf75aa40acd51bc1d7f7b1005860` |
| 39 | `theorem` | [range_eq_map](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/range-eq-map.md) | 252 | `result-track:a9ac6b1ecc42b1235a9d87e06fee4efe6e61098d1684e89dc084c95eeaf5a964` |
| 40 | `theorem` | [mem_range_self](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-range-self.md) | 256 | `result-track:ee74af9f5a1e53c7a9db386cc76dfb6f80ea9ed7cb11633795585a87b9cd98ad` |
| 41 | `theorem` | [map_range](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-range.md) | 259 | `result-track:a6773088287e57542774bf4bba5be7fc1434c687fe67377115d82288223a2424` |
| 42 | `instance` | [fintypeRange](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/fintyperange.md) | 265 | `declaration-track:fac5f6548800497b03dcb2cc15eb9619c2d2265bbac43085a1fd9a9e37dec142` |
| 43 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance-source-edition-10.md) | 275 | `declaration-track:ee5feda5fd5abfb120f7583bf4ca1acfc483bd0589cdd3f8b6c6a6f002908605` |
| 44 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance-source-edition-6.md) | 278 | `declaration-track:b60b66ad7d17666008b4ad5ef34a1cdfe121268b3a1d07fffeca250ddabd7bcc` |
| 45 | `theorem` | [coe_bot](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-bot.md) | 282 | `result-track:f5e8b7348d41ea5849f5bdaf9c7501bf0e74d7855f36325020f02fb1ff5e10fe` |
| 46 | `theorem` | [mem_bot](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-bot.md) | 285 | `result-track:15f08dc54bca2efc10995a43c6c37c8d87bff026968d5f83beb342b77950c8ed` |
| 47 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance-source-edition-2.md) | 292 | `declaration-track:087766236319a6db19692dd45b8a279442456e24b67b85f2a53e2d8fdc5d0509` |
| 48 | `theorem` | [coe_inf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-inf.md) | 297 | `result-track:63a899ab181515e2e5264621bebbb559a91f2c5650231ff0e99cfa9fa8197d01` |
| 49 | `theorem` | [mem_inf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-inf.md) | 301 | `result-track:8fddbe629511d25350180302f590883ddb27652b093f9028b7915133e305235c` |
| 50 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance-source-edition-8.md) | 304 | `declaration-track:d98eb2627f1f7de834e8baf20ad3a7dc2244382cf8ea76c90569d5b73611a226` |
| 51 | `theorem` | [coe_sInf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-sinf.md) | 310 | `result-track:53a6547e93f26333f3937a21ad20016c0223066bbeb22ded7d0fd8156ad15e5c` |
| 52 | `theorem` | [mem_sInf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-sinf.md) | 314 | `result-track:17b3ca20a87f308fb68942c77dea8e2b5ab169d4a5a4ea57343f35a7eabb83a7` |
| 53 | `theorem` | [coe_iInf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-iinf.md) | 318 | `result-track:4679d4df4e602a943e7a3307fa405f29105ef39305c90c291a08dcb8f17df8a9` |
| 54 | `theorem` | [mem_iInf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-iinf.md) | 322 | `result-track:4c05d6688216fe20061679f7a2711c9624e9cf54e1361c1c5a3ec9f84c2e3b42` |
| 55 | `theorem` | [sInf_toSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/sinf-tosubmonoid.md) | 326 | `result-track:7c0405faee5ad39a8d1e49e5cf98ea5b52990520cecb578ce7bdbc362e300955` |
| 56 | `theorem` | [sInf_toAddSubgroup](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/sinf-toaddsubgroup.md) | 331 | `result-track:07f4d5b7ba6da0bd931b8f68b939e375a79d57161a417efe4f0a7c577be1c0b8` |
| 57 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance-source-edition-3.md) | 336 | `declaration-track:8430d896765f5e44dec649133095b545bbefe06e4b004d10fd2e017b9a440c49` |
| 58 | `theorem` | [eq_top_iff'](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/eq-top-iff.md) | 350 | `result-track:8ff5e6264feeec42aa77fd078dcae35d5278c177ca85e497924c683676590b3a` |
| 59 | `def` | [center](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/center.md) | 361 | `declaration-track:9d6222a11d0526a89789648a16d4abee7a56e3f4c5f83a42256e79a28857163a` |
| 60 | `theorem` | [coe_center](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-center.md) | 366 | `result-track:d4251788aa76dd17c33510cd464c390fb3b4c6e67aa529e78190a4c6dec22a37` |
| 61 | `theorem` | [center_toSubsemiring](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/center-tosubsemiring.md) | 370 | `result-track:214eb202e4fa5ae31f567b13ef4b5b918f300c255683fd582a26ff7fb5ae60ef` |
| 62 | `theorem` | [mem_center_iff](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-center-iff.md) | 375 | `result-track:15431f46222f0094e4792a7e7b7dec2ba9095eaf3ab3467d0fbfec46c154f2fd` |
| 63 | `instance` | [decidableMemCenter](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/decidablememcenter.md) | 378 | `declaration-track:59288ba76620b52fdb5efaed13c5f1abd8052ef54d3f837659af75373a1e4db6` |
| 64 | `theorem` | [map_center_le_center](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-center-le-center.md) | 381 | `result-track:fbcf93aa033edf412169a86610d8e79ae993db1a0fcfb37322bb178fcfb93338` |
| 65 | `theorem` | [comap_center_le_center](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap-center-le-center.md) | 385 | `result-track:67ddc7d87cd585fefbda4d02d74a65f09b736d675c99f8b6ff993157b96e69a6` |
| 66 | `theorem` | [map_center_eq](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-center-eq.md) | 390 | `result-track:e2843700744d073d71a19156f216ff312619f4a2e0d1a4a6cc40211f6929ab56` |
| 67 | `theorem` | [center_eq_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/center-eq-top.md) | 395 | `result-track:e1c80822ac7bf80292b59bee9be1bb2fb70465b9a120c15e64800f7217a2b53e` |
| 68 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance.md) | 399 | `declaration-track:03851b97ded0ef5d9342d86d6bfd8b4a54830f2c2bc20d3c6fd8c520d1298b48` |
| 69 | `def` | [centerCongr](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/centercongr.md) | 404 | `declaration-track:120d8a0018af79e3010ef3a34711db51b924ff9f3b595d0112aec65ff6e1f1aa` |
| 70 | `def` | [centerToMulOpposite](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/centertomulopposite.md) | 409 | `declaration-track:38deb11525f05576c0e15e48ce25cee986752f7195049d689a8acc6aa1369e4c` |
| 71 | `instance` | [instField](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instfield.md) | 418 | `declaration-track:8e3681734d45d1df17c3720faa4e5ace29eb585087b53085006f786722b98ada` |
| 72 | `theorem` | [center.coe_inv](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/center-coe-inv.md) | 431 | `result-track:e489c844660b2d845855adf90b473b896fa939700cffd8a0c7e9be26a86ac1f8` |
| 73 | `theorem` | [center.coe_div](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/center-coe-div.md) | 435 | `result-track:d28b50f9708d553d285cfa549248d5050d008e4e4efcc244dd757e5f21a88a93` |
| 74 | `def` | [centralizer](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/centralizer.md) | 443 | `declaration-track:efce1fe15b6326c7b4f9979440528b8e10d5906110dea4402830007113637c05` |
| 75 | `theorem` | [coe_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-centralizer.md) | 447 | `result-track:38ad32c1174c39b1fa046325655576435cdcd54e00fe9a89ba867055bfe91d1e` |
| 76 | `theorem` | [centralizer_toSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/centralizer-tosubmonoid.md) | 450 | `result-track:9c497766585c3b7a57f0f2fa746e1acfffa3486892c75987e6265b86a6b45046` |
| 77 | `theorem` | [centralizer_toSubsemiring](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/centralizer-tosubsemiring.md) | 454 | `result-track:43c8921582c2291182b03da0b0b1d6b1da2da2022cb26dec18ab51378a9122bd` |
| 78 | `theorem` | [centralizer_toNonUnitalSubring](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/centralizer-tononunitalsubring.md) | 458 | `result-track:a0a6fdbe7674df66829376c220b3de1d48caafc362259e0f8a42bd1b95816230` |
| 79 | `theorem` | [mem_centralizer_iff](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-centralizer-iff.md) | 462 | `result-track:706148b35d24e82265577bd142e91ca062c63f00d7f41389ac6630362b016838` |
| 80 | `theorem` | [center_le_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/center-le-centralizer.md) | 465 | `result-track:493aa643739004c1163946a526cf5228feddc8d8483591217f05c494a960cd94` |
| 81 | `theorem` | [centralizer_le](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/centralizer-le.md) | 468 | `result-track:8851ad620a2f21d9e44e395a4d03ecf01587cb81a27512377fc7290e7224100c` |
| 82 | `theorem` | [centralizer_eq_top_iff_subset](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/centralizer-eq-top-iff-subset.md) | 472 | `result-track:863311385f23993adfd073a1e7300e240d59c39267628a19aa6f74cd2e9ea599` |
| 83 | `theorem` | [centralizer_univ](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/centralizer-univ.md) | 476 | `result-track:5057f62fc6e314c3fd5d7103bc9749cec828bab0d4616f20da9c258a9f808225` |
| 84 | `def` | [closure](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure.md) | 485 | `declaration-track:1946cc2fb5cc27d917ac002eef6a6f1a9074a67ec7084387b1f83cd5a3215b27` |
| 85 | `theorem` | [mem_closure](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-closure.md) | 488 | `result-track:05ee0e63f546e2db511fa78edf135f8f6df6310f8ab482f70ba9a334565b12d7` |
| 86 | `theorem` | [subset_closure](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/subset-closure.md) | 493 | `result-track:e99c82e86db05cbf894eaf74df5bfbf90a8bfae07aa721fbe6efba5b792ff1c9` |
| 87 | `theorem` | [mem_closure_of_mem](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-closure-of-mem.md) | 496 | `result-track:b0dad3f1a3d817ebc92514b208be53effeb45ec2de615501a1c5eeeafb6640f4` |
| 88 | `theorem` | [notMem_of_notMem_closure](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/notmem-of-notmem-closure.md) | 498 | `result-track:af808a6ce8a5c26801dede5841b8a82e011df82fb7ecc01c01f91b9c9fd1a8e0` |
| 89 | `theorem` | [closure_le](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-le.md) | 503 | `result-track:0fece8d790b115302f5316bff3c85d2a31a0ccbbd3fc35bfa581e42f6608f5c9` |
| 90 | `theorem` | [closure_mono](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-mono.md) | 509 | `result-track:a2d4f6052869a09ab97d8ea91ada9fffa95deb55fc8624840a6d48427b38df54` |
| 91 | `theorem` | [closure_eq_of_le](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-eq-of-le.md) | 512 | `result-track:536b4db3e25df175031f67a6b116e22405e3aed91d94f99b105ce15258be8da1` |
| 92 | `theorem` | [closure_induction](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-induction.md) | 520 | `result-track:470757c88e74c7241792cdd14cf0ad15fc2e6582a7764e9dda2fe8d1af73607e` |
| 93 | `theorem` | [closure_induction₂](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-induction-source-edition-2.md) | 538 | `result-track:7dcdd9be46dfa176eb289949bed9608382010e975e8add9d376a5b123b7cc585` |
| 94 | `theorem` | [mem_closure_iff](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-closure-iff.md) | 564 | `result-track:0d627b8931f3ec7478dcce104495f7cb593ff114b694dedc8619a607a16a23cb` |
| 95 | `lemma` | [closure_le_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-le-centralizer-centralizer.md) | 594 | `result-track:f507d1527c598fbc3606a32df8a80ce1578b18e7a1c4a4a42fe70b6525d3cfb1` |
| 96 | `theorem` | [isMulCommutative_closure](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/ismulcommutative-closure.md) | 599 | `result-track:4ef65d9c451f2e5ab5c0555a0ec61f2bce3b3d50c78ac86607c0251d4fa6ae40` |
| 97 | `abbrev` | [closureCommRingOfComm](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closurecommringofcomm.md) | 609 | `declaration-track:31b6d98b6a80de747ba91806c5bc5a378f1fa2e2f52bda8916c5bac08ca5205b` |
| 98 | `instance` | [instIsMulCommutative_closure](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instismulcommutative-closure.md) | 614 | `declaration-track:3a8ff06c7fd597a1d1c105ffd21b1a12f84e53450880afab8f026b957fbd563b` |
| 99 | `theorem` | [exists_list_of_mem_closure](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/exists-list-of-mem-closure.md) | 618 | `result-track:5fb40a03afd057ab72822a91fe9c372b574a8ba0add7ae8848ca5118f7f40b0f` |
| 100 | `def` | [gi](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/gi.md) | 640 | `declaration-track:d51bc4bd1d929fb7fefe97e40da04be14178555a5f6be86ea364c2cb69af3bd0` |
| 101 | `theorem` | [closure_eq](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-eq.md) | 648 | `result-track:02def23d04662167398c853ef1e52cfc23d5a01e364f40e8b03e571324f20517` |
| 102 | `theorem` | [closure_empty](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-empty.md) | 652 | `result-track:d6b7bed9a9e95850fd8b929ba4ae9bf120154b251b2d79f0f8e4b076b263114d` |
| 103 | `theorem` | [closure_univ](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-univ.md) | 656 | `result-track:be0731658d9958d706a95726fc827b0529ace9f80ac98c29a69436427d97547e` |
| 104 | `theorem` | [closure_union](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-union.md) | 659 | `result-track:5958b1f1adb8cc08956336791b33b38110c3d9ae0e04a802947b64f084379e02` |
| 105 | `theorem` | [closure_iUnion](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-iunion.md) | 662 | `result-track:c564057aea99be26565920e8bb17330f4870ea881934efe673b40c13615b3eb0` |
| 106 | `theorem` | [closure_sUnion](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-sunion.md) | 665 | `result-track:64d4e42c56b7e53bf05e3bd479bb9f8c6c69062f31910119303f73f5b15ba837` |
| 107 | `theorem` | [closure_singleton_intCast](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-singleton-intcast.md) | 669 | `result-track:4df5c6cc99f7d21da3b25310981f011d9feb9f4ce2f925aac7d674e24a9acc6d` |
| 108 | `theorem` | [closure_singleton_natCast](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-singleton-natcast.md) | 673 | `result-track:b2a39a6c5f2d17bda5a4f1628215ddfc679703fac64af7e4a8f6f941ef08a07e` |
| 109 | `theorem` | [closure_singleton_zero](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-singleton-zero.md) | 677 | `result-track:725233b9bf81e838aa588f658f95a4cfcc25bae05818c5c455b4a9c823206790` |
| 110 | `theorem` | [closure_singleton_one](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-singleton-one.md) | 680 | `result-track:97a7909b696541287ce52d96121f44b4cde959b525838fb743538909fb47d757` |
| 111 | `theorem` | [closure_insert_intCast](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-insert-intcast.md) | 683 | `result-track:fe390f82c2a5d04de9e88c4fd8414923177209b519b4aeb6b5bce9f6a549f111` |
| 112 | `theorem` | [closure_insert_natCast](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-insert-natcast.md) | 688 | `result-track:371204ffe97b4eedc74679864bfa9f0ff1bcb025a99f7544c5794c92943e069e` |
| 113 | `theorem` | [closure_insert_zero](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-insert-zero.md) | 692 | `result-track:a9e160a865e08271f6123a84b93cede1417eedb4ff19dc2175d0baf445a22b7e` |
| 114 | `theorem` | [closure_insert_one](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-insert-one.md) | 696 | `result-track:1c3e4bd076f1a8291fd6908e0de82ed5d7a616787976b4aed67b8e388e57b7ae` |
| 115 | `theorem` | [map_sup](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-sup.md) | 699 | `result-track:703c69d6c8870f8ec112ec59205a65a2e7d1c0b4bdf5ef2620359185d8d9821c` |
| 116 | `theorem` | [map_iSup](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-isup.md) | 702 | `result-track:7cd14cc4cf40b04be00890c3a2bc4ca7b42d54d292a1389c5ad5e9681f25e1f5` |
| 117 | `theorem` | [map_inf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-inf.md) | 706 | `result-track:d3a4bab57e458671b2c2f115deb5fd2132597bc47d1ee9843810a6079ad8138b` |
| 118 | `theorem` | [map_iInf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-iinf.md) | 709 | `result-track:b06695241acf20c71b7714354b10095a6b4ce0c4cdbfb044b8a149b5815c14ce` |
| 119 | `theorem` | [comap_inf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap-inf.md) | 714 | `result-track:7d35b964bb2fb979267ce6b1f13f6644697ecb606a07906c32da2049151d2d3e` |
| 120 | `theorem` | [comap_iInf](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap-iinf.md) | 717 | `result-track:ba4abaebd82efb336ac5c23b1ba664a3d56ffc41293a4900dac317b3f4329fc4` |
| 121 | `theorem` | [map_bot](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-bot.md) | 722 | `result-track:a91cd2f5427ae10d141263e671c48dd6ef9186a0253f1df69730f62c66c3b4e9` |
| 122 | `theorem` | [comap_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap-top.md) | 726 | `result-track:1d35c39098015799fc5c889ec2ce6c109e52ac3239779c85d95cae6ac40a01b7` |
| 123 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/prod.md) | 731 | `declaration-track:392d42d6ec6f988ddc493acfc5b21cb3cf3423808e8f0bda6947342b4d16a0ad` |
| 124 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-prod.md) | 735 | `result-track:63f3698113609e9d8a585e7bd3d52831dd461ebf86428bd394ad5da747606fb2` |
| 125 | `theorem` | [mem_prod](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-prod.md) | 739 | `result-track:a620b5755faa520cfe4fa731c75c8ed2066d6f42f091c03560cb48f0fc9cdd75` |
| 126 | `theorem` | [prod_mono](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/prod-mono.md) | 743 | `result-track:c71ab3b5c2bd4c387044814c55aa03e08b932cdaa31a74dba24ad6f2f1f909a9` |
| 127 | `theorem` | [prod_mono_right](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/prod-mono-right.md) | 747 | `result-track:2ca39fc89b4042ee653c80374edbb28c9fca677cb26c5937523d9b6937ec880e` |
| 128 | `theorem` | [prod_mono_left](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/prod-mono-left.md) | 750 | `result-track:bf59e79376d40a6302141700cf9cb839dbe04622d1ea5acf0a79232d153bcddf` |
| 129 | `theorem` | [prod_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/prod-top.md) | 753 | `result-track:710a42d22a98e062605443d71dedc71ce2bd3b122c2e7fe23c1fea57e3ef7c7b` |
| 130 | `theorem` | [top_prod](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/top-prod.md) | 756 | `result-track:90f18ee1e5096bb31f61a58c3e2b9e9aa1f3aced0519fcc7b263926ab84a5379` |
| 131 | `theorem` | [top_prod_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/top-prod-top.md) | 760 | `result-track:391099565e43c8921b54a40a99c45807436813c8e5507da04a9623e328a4b585` |
| 132 | `theorem` | [center_prod](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/center-prod.md) | 763 | `result-track:ae7c0cdc1153fa71753c4787e2a15235762172a467b15c37a5ca1a49d17d3f92` |
| 133 | `def` | [prodEquiv](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/prodequiv.md) | 767 | `declaration-track:81b3b27e8b466269b709ff0a9aa4bb38f06b698c549350cc4947a18b199c9bdf` |
| 134 | `theorem` | [mem_iSup_of_directed](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-isup-of-directed.md) | 775 | `result-track:c5d5dcde8cda0c0437519de65e9dd388de52ceed0a25d35fec6fb11a1b37c274` |
| 135 | `theorem` | [coe_iSup_of_directed](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-isup-of-directed.md) | 784 | `result-track:e47ac4814f8253bb1fae82031311f007f02182c25ff6cf6e008b60de3a2f5480` |
| 136 | `theorem` | [mem_sSup_of_directedOn](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-ssup-of-directedon.md) | 788 | `result-track:bb5009958c9381ba065a30d4d312a56a22f2a696a4f6afeb6600e08cbeda7048` |
| 137 | `theorem` | [coe_sSup_of_directedOn](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-ssup-of-directedon.md) | 793 | `result-track:4b7ef7a01ff35082940e139909b6872129e621517b693eea341cae6921655474` |
| 138 | `theorem` | [isMulCommutative_iSup](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/ismulcommutative-isup.md) | 797 | `result-track:35a171b6451e503866131fdbd28bbcd8f0a6d07a23af5840455311a7bfb20957` |
| 139 | `instance` | [instIsMulCommutative_iSup](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instismulcommutative-isup.md) | 803 | `declaration-track:0687152289eae622d501f81025c14a083a8d0726fc0b1c7cb1794ae6bb2f77cd` |
| 140 | `theorem` | [mem_map_equiv](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-map-equiv.md) | 808 | `result-track:22256760c480205bac544c201f57911922af931d50ce2df6ea99a8249de2bca5` |
| 141 | `theorem` | [map_equiv_eq_comap_symm](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-equiv-eq-comap-symm.md) | 812 | `result-track:4bd14dc002e955bcc413f0d54ff50fc710e37ab7698c4d8a539696164f78ea0b` |
| 142 | `theorem` | [comap_equiv_eq_map_symm](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap-equiv-eq-map-symm.md) | 816 | `result-track:46d8fed401b2ddb088688b44eed911b93da55b3594c1a21262636826adfbf257` |
| 143 | `def` | [rangeRestrict](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/rangerestrict.md) | 831 | `declaration-track:1b4365d43738bbe1d356f8ebb88063f1e6c2d984d118338af70da8cd6b81ddb2` |
| 144 | `theorem` | [coe_rangeRestrict](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-rangerestrict.md) | 835 | `result-track:6e0bc25d9996bce1dfefd2682c25d23e25d3b908baadbab5f16c329f039f416e` |
| 145 | `theorem` | [rangeRestrict_surjective](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/rangerestrict-surjective.md) | 838 | `result-track:76f984c08042cbf2e9b49ba2906a05e84a6f7d30d5a693b2d766d5ba0094aca1` |
| 146 | `theorem` | [range_eq_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/range-eq-top.md) | 843 | `result-track:9c41cae5488afef0e969fd9bf76b5332d997e522f225fed4923de3bf159fdfe6` |
| 147 | `theorem` | [range_eq_top_of_surjective](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/range-eq-top-of-surjective.md) | 849 | `result-track:b854a4b88c366e77289ca17184891316c19f90f83f440247645b72743e5ea84c` |
| 148 | `theorem` | [domRestrict_comp_rangeRestrict](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/domrestrict-comp-rangerestrict.md) | 854 | `result-track:ebff740b2592849c5974efc95c7ee7125381b40e1ee46a4f4fa5e7eaef89104c` |
| 149 | `theorem` | [range_prodMap](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/range-prodmap.md) | 859 | `result-track:03a1cd2647838c76bba814416494970507ef7be9c3800564b9397ef1a82bb58e` |
| 150 | `def` | [eqLocus](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/eqlocus.md) | 869 | `declaration-track:f206812612e242b33233016e9384e66b6b2168b9f04e4fb691857119841bc80e` |
| 151 | `theorem` | [mem_eqLocus](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-eqlocus.md) | 873 | `result-track:ddbdda649bcb6f0aef8c8428b466a638782cbd6f3a1546bfa744f4c6728ac9e7` |
| 152 | `theorem` | [eqLocus_same](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/eqlocus-same.md) | 876 | `result-track:e15e96ca7e69e375902e4533f86197c2ff94efaa6c3fc98db3f7ab19b858e45b` |
| 153 | `theorem` | [eqOn_set_closure](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/eqon-set-closure.md) | 880 | `result-track:465fb1b2af5ab9e599a57b8e944e33ef5c3d422d16c5c3193a550e1ccd9718f2` |
| 154 | `theorem` | [eq_of_eqOn_set_top](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/eq-of-eqon-set-top.md) | 884 | `result-track:6c02b52e227406accca86ea9a2f0f2e7843f60f8ff5b5a52cc6ac649b7faa2ea` |
| 155 | `theorem` | [eq_of_eqOn_set_dense](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/eq-of-eqon-set-dense.md) | 887 | `result-track:6057c113b6886bd7b7cfaeb97faf3d8d4fc1edfa6d9f87144fe97b0c57ddf4c6` |
| 156 | `theorem` | [closure_preimage_le](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/closure-preimage-le.md) | 893 | `result-track:82ef2125d990213bfe37bebf0309c18efb337bb4122bcd86df04b227112a628e` |
| 157 | `theorem` | [map_closure](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-closure.md) | 898 | `result-track:1abd91edf61081d8e8a79fea7b5fbac1de57f2962aede7f5fd78462799eb290c` |
| 158 | `theorem` | [mem_closure_image_of](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/mem-closure-image-of.md) | 908 | `result-track:e0d77bacd7cdc1ad5e4225e4024ec5e5e986e5be499e1341063743fa8c7b97fe` |
| 159 | `def` | [inclusion](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/inclusion.md) | 914 | `declaration-track:b69716fd2437dff065ce5c5d289db928fee6167ecb5f4b4c45c8906e4f88c831` |
| 160 | `theorem` | [coe_inclusion](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-inclusion.md) | 918 | `result-track:db08e81ab6d72f5d4dfcf5b956baa545d9711482506842b5278938b90b31a5be` |
| 161 | `theorem` | [inclusion_injective](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/inclusion-injective.md) | 921 | `result-track:2cd5dabcafcb51acc6b0b81411e52a69a55814dab6b577af294d02f4c4530e69` |
| 162 | `theorem` | [range_subtype](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/range-subtype.md) | 926 | `result-track:a0b1d339a330cfd00ea31c7a33ebbd93b3a5ffbb0a49b68642f688f42c1f30fa` |
| 163 | `theorem` | [range_fst](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/range-fst.md) | 929 | `result-track:b22a7440c19ce8d87d14a1a25d595c4a9a4062e5e9add1e64bf0d5ca4f1cc774` |
| 164 | `theorem` | [range_snd](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/range-snd.md) | 932 | `result-track:53bdd485b6be2297d904ce5c2bf706fa68fffa984e5871b6333cf793c654dd7a` |
| 165 | `theorem` | [prod_bot_sup_bot_prod](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/prod-bot-sup-bot-prod.md) | 936 | `result-track:64b7edc72137b762a7c84ed65e62801e4940d87c262d34ee131a8b8fef54ada0` |
| 166 | `def` | [subringCongr](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/subringcongr.md) | 951 | `declaration-track:e748b8d4384ac328dd117907bded9f8130fd75c1a53a87ff1be25a1cda40cb80` |
| 167 | `theorem` | [subringCongr_symm](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/subringcongr-symm.md) | 957 | `result-track:bed33df7d374bd5d14276ec96a9737687af49071a2aa8bcf61de876a5046dc73` |
| 168 | `theorem` | [coe_subringCongr_apply](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/coe-subringcongr-apply.md) | 961 | `result-track:109f04ca459859249f05a7674a45824fdc9354dc725aead398846db3de9589b7` |
| 169 | `def` | [ofLeftInverse](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/ofleftinverse.md) | 966 | `declaration-track:3bcc57f1a5905a6a74b1c1c12f4984b4baecb7005d50b031e05dbfd2183554f5` |
| 170 | `theorem` | [ofLeftInverse_apply](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/ofleftinverse-apply.md) | 977 | `result-track:ed65d70b8bb87bd9b96880929df818fe3a0b48bfb987449f354d8e9397cd28d1` |
| 171 | `theorem` | [ofLeftInverse_symm_apply](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/ofleftinverse-symm-apply.md) | 982 | `result-track:6361b38394657c11b2679a86c674b9e3ec3b5fd4fabad4f2028398ead5aa922f` |
| 172 | `def` | [subringMap](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/subringmap.md) | 988 | `declaration-track:a1c13bed4dad64fd34f3725dd8fb34685c4c63169d28f6d3c23b3fec856c20c3` |
| 173 | `def` | [restrict](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/restrict.md) | 995 | `declaration-track:5e788fc06497eb2c69b6508467f26f877c78db010975f3e7ea76fad00591e0ab` |
| 174 | `theorem` | [InClosure.recOn](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/inclosure-recon.md) | 1012 | `result-track:b9768052fc0b1414567e563b721edc8ecfd48b1a828144fdf60976434bb679f4` |
| 175 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-11.md) | 1082 | `declaration-track:cf07198eab3dcd2dc6b20b45fd52dbfc2a0946092a132f7b7dc42095ca7569ee` |
| 176 | `theorem` | [smul_def](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/smul-def.md) | 1084 | `result-track:321d960b170493928bfb68541ab9a50a069e2e3139a3483053bfa5966189439f` |
| 177 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-8.md) | 1087 | `declaration-track:adc9c853922627627f967e7531f0a6106f7270d083ceb499d8f9246f6bbba47a` |
| 178 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-3.md) | 1090 | `declaration-track:3c1b51d37799edbf0c7b604d23fe61990bf27e3b9452dd3e18924ca2bd435fc5` |
| 179 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-9.md) | 1094 | `declaration-track:b294d14594afce836a88f02acbbb8fdec9868e1f59cc6ef6b1dc13cd6dd86127` |
| 180 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-10.md) | 1097 | `declaration-track:bb57b19fd043bdc4fd29608440d9321a53d2409a873df3ef49f509bc9a66d98a` |
| 181 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-4.md) | 1100 | `declaration-track:59bccbe68abdde931429cbea69bb4ea9ed65788f92e426a15cd3b9729967e7a2` |
| 182 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example.md) | 1103 | `declaration-track:0db85fbbc317ed37a90baa5812a822729146582f4b89e8c6271377b90be4e974` |
| 183 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-6.md) | 1107 | `declaration-track:99612daff00faedff893a9460f453d46801fcca048ec53abd489fc2d1379eb77` |
| 184 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-12.md) | 1111 | `declaration-track:db6c3d7d1f598de7ef666ad861c6b433f10f9e6c74f71732e7c182979599840a` |
| 185 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-2.md) | 1114 | `declaration-track:28e996a41c4ab4f8dcbba24ff5588ba906c3fcaa5db7170870820bcb0722a320` |
| 186 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-7.md) | 1118 | `declaration-track:a3d33f515a980e53dea816bcc1281d4d3f3f0918df25fb63cc10d883ae460ead` |
| 187 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/example-source-edition-5.md) | 1122 | `declaration-track:7d9d3a221b951429f088178ec4e4d8133f52911471b8f456a8c5c518aed69b94` |
| 188 | `instance` | [center.smulCommClass_left](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/center-smulcommclass-left.md) | 1126 | `declaration-track:4e9dfe4fc9f443daf351c43e6576adaafb08d0cf29bd763ae959272a0bacc15a` |
| 189 | `instance` | [center.smulCommClass_right](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/center-smulcommclass-right.md) | 1130 | `declaration-track:20f720f563d409e88e2bcf2e2d67ca0138c3b511ea0edb6dcf078dbb1ee82c0b` |
| 190 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance-source-edition-9.md) | 1134 | `declaration-track:e32889230eb3df28ef2f5d5cc1937ddac8dfe11d7f27674a55536ef386a39fce` |
| 191 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/instance-source-edition-7.md) | 1139 | `declaration-track:c2d97064a0c076f3c21e01ed21704cbd625e198e2e1d8246c970d5230870b6bd` |
| 192 | `theorem` | [map_comap_eq](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-comap-eq.md) | 1149 | `result-track:de9f846e4f5f6cead8a483202c1ff54cc09c905052fc5481dc3e0afba6df7281` |
| 193 | `theorem` | [map_comap_eq_self](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-comap-eq-self.md) | 1152 | `result-track:a506d09cb4683ba287d2adf5d3226227be571f405744c95f677b9a8f2c1e569f` |
| 194 | `theorem` | [map_comap_eq_self_of_surjective](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/map-comap-eq-self-of-surjective.md) | 1156 | `result-track:b9ae6b14d5edb301958659abd8f11ac8dd5b540412bdab9353a8bf15e93d5c7a` |
| 195 | `theorem` | [comap_map_eq](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap-map-eq.md) | 1160 | `result-track:13649a58b05840730fad69519e6c19ebebc3b04921940e85fcc451cefa303822` |
| 196 | `theorem` | [comap_map_eq_self](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap-map-eq-self.md) | 1174 | `result-track:b9562cd6f4ed944043098f861e5310febe208fcdfb979a203cdebbcbe860a3d1` |
| 197 | `theorem` | [comap_map_eq_self_of_injective](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/comap-map-eq-self-of-injective.md) | 1179 | `result-track:deb9fa8ff14051fad06147dc0bb68ecb8c5f171f4494d79e7056a0b7f1762fc6` |
| 198 | `theorem` | [AddSubgroup.int_mul_mem](../../../../AssociativeRingsAndAlgebras/RingSubringBasicPublic.lean/declarations/addsubgroup-int-mul-mem.md) | 1185 | `result-track:dc88c2dd209553487c2ea400f86e3dc7c7f4961fb0482d499ee1c08e20bae2d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f11c104b67e7ca69b7fbd28fed689e20fdcc6ae455eedae2cedd4c63e2be9830 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
