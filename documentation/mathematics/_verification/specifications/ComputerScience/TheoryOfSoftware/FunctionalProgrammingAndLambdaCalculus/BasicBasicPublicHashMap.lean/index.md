# Verification target: Basic Basic Public Hash Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b83503ca03aed06ee63b18ede8e22647744b1c0",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc7849feae33d2991a76a64f445dd789c988fbc7bac421c3fb4bec697179fcd92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b83503ca03aed06ee63b18ede8e22647744b1c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc7849feae33d2991a76a64f445dd789c988fbc7bac421c3fb4bec697179fcd92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc7849feae33d2991a76a64f445dd789c988fbc7bac421c3fb4bec697179fcd92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HashMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/hashmap.md) | 64 | `declaration-track:a9d620c53a8697509775d17c9de1c98833b6810d6b0c9145b123a65c54fa8377` |
| 2 | `def` | [emptyWithCapacity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/emptywithcapacity.md) | 70 | `declaration-track:04392f0b8cda25b36aeb9b226a97f17768802fb54c21ad07e10104bbe42bea87` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance.md) | 74 | `declaration-track:0b65cb3a01305e335a090ec8b6e3497c93593ab02a2da162303b6216ea261a17` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-10.md) | 77 | `declaration-track:923d4dfd6f9db83128a478a4fb01c98837a816cb59d86f1ee970ff59e6d586a2` |
| 5 | `structure` | [Equiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/equiv.md) | 81 | `declaration-track:7c0940d79cfaf74f5762a215debf9a669c7653f767b8e8e25c7d2c526af5d6ec` |
| 6 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/insert.md) | 87 | `declaration-track:35b797c4927a21b8f255fa4db301ca567f481dbc119d32c688561e9609123936` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-12.md) | 91 | `declaration-track:af3b996cf24b7696afa849a67c66eb89fdba94bc8ec9ed3fc1f106307b2e4997` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:364cc55a28a9fd545338a6bb7dda11b6877efc01e8c9f2f178c1657b94d501d8` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-11.md) | 95 | `declaration-track:a37153f56584cf1658a2ea4472abba08e05a82ea2018041ccff970fee010c70b` |
| 10 | `def` | [insertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/insertifnew.md) | 97 | `declaration-track:758f63ba23137cecdba235795c79bc5cbdcad4e297b3ace4a843e67ed8269707` |
| 11 | `def` | [containsThenInsert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/containstheninsert.md) | 101 | `declaration-track:a11244a035fae7bfe147a5362a5856414cb2d757a3aba526ec2ad6024a924f8a` |
| 12 | `def` | [containsThenInsertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/containstheninsertifnew.md) | 106 | `declaration-track:6447d58254476f1395a40dd9880baa07e434aa59383924f69b9d3a6b86034b7b` |
| 13 | `def` | [getThenInsertIfNew?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/gettheninsertifnew.md) | 120 | `declaration-track:5b4257222e4638934e54e6185cd13664acfc4a88986c5f7369660e2baf31990b` |
| 14 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/get.md) | 130 | `declaration-track:074289b9a15177daf355f02c752b5403625864f290ff91e827abb39e3db1fcfe` |
| 15 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/contains.md) | 133 | `declaration-track:d94ef93705541193c288ea8561b06cfa44217942eaaaa0b95b9df1bfc22393c1` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-9.md) | 137 | `declaration-track:84b7f5dc15047c42d9e7736eb3a7e7f57c5b2e1a1f5085c270826a3df7072a35` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-4.md) | 140 | `declaration-track:4f4d8af969efed26987feacb844c0f83ee53415d958ab67cac47775400c1d445` |
| 18 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/get-source-edition-3.md) | 149 | `declaration-track:8eb134504678494b69469e3e466ab6975cb76eed9d6b43cb7fe6f479a50075b9` |
| 19 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/getd.md) | 152 | `declaration-track:7fbe8dfca71d0ca2d195ff7d4b8bb9e387eed844c6f9a003c641e9a9ea8fd276` |
| 20 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/get-source-edition-2.md) | 161 | `declaration-track:235ebc61ce54e689304303a86d2408bda0970502091b574c12cc2a9b2cbdb6d8` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-15.md) | 164 | `declaration-track:dbad05cd294cb553a7521b5b23c5a8d9c43ee736666f01a8723ecc48c2342b5c` |
| 22 | `def` | [getKey?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/getkey-source-edition-2.md) | 169 | `declaration-track:1b8412055a01264fc5843e2fa8ece88b340bbcf0f283108e52a8c31f8a8d5b16` |
| 23 | `def` | [getKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/getkey.md) | 172 | `declaration-track:0fd3ab735ac2d6078fbe07d4618cca2b2663c45eedf171c73844c0442f19984a` |
| 24 | `def` | [getKeyD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/getkeyd.md) | 175 | `declaration-track:1791a2747c56fad890e58f980338c83b6c5cae7e34a35d3be2de5d41ad897f04` |
| 25 | `def` | [getKey!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/getkey-source-edition-3.md) | 178 | `declaration-track:9ab819721afb72162c0d1993cfc2bd266a0331b61c5568c83d00d43ef4ef3345` |
| 26 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/erase.md) | 181 | `declaration-track:442041602eab183a470aebb8ccbc855c35c5d5f0812f639814274b48cb0a895e` |
| 27 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/size.md) | 185 | `declaration-track:490fb5d2cd543ad67b7d42754f187d1aea06c961d62ab2e893311f2e4cec8f33` |
| 28 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/isempty.md) | 188 | `declaration-track:d0d9e9090fba2168646fd0c00ef61c1f520f004a9b4b3b574e73a3d6bf66eeb1` |
| 29 | `def` | [keys](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/keys.md) | 191 | `declaration-track:743f22000e6e33b0151218267bcad8f34f57ebe6eb557f7c6e996a26ebbf230f` |
| 30 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/oflist.md) | 194 | `declaration-track:54d049a3226c8fb8f4564655c2c87a924b56082b90b09e8f5a8cfccaa7c28ee5` |
| 31 | `def` | [unitOfList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/unitoflist.md) | 198 | `declaration-track:c301045b24fe8243718b9d07e523817989c4325d0c5fe4dd23a8c99712d07766` |
| 32 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/ofarray.md) | 202 | `declaration-track:8309db9863e18105c8d4a2c4a05a1e43a8f051c9e1e07f41b4a911cf9009add3` |
| 33 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/tolist.md) | 206 | `declaration-track:d569984b27a7d56b2d8a7ebf7e5bc900abc4f1404cc0a09a30a5ee7497c0f0fc` |
| 34 | `def` | [foldM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/foldm.md) | 210 | `declaration-track:dc8b4e15f6c628aef421a4fee4350ab5c2dd40eb07babae47823806ab94ebb2f` |
| 35 | `def` | [fold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/fold.md) | 214 | `declaration-track:d8d5f71e3a8540037040c994f46d2de041fceb0b3567d4ad539f30f20ff37fe5` |
| 36 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/form.md) | 218 | `declaration-track:51c1922d8d22ba4773d9bb548dfe3742f21b747a7730dfee0f9de0368c9500b5` |
| 37 | `def` | [forIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/forin.md) | 222 | `declaration-track:9e13fb6924d42a3425932d0cfcfe60d8c7d68493f31cf5ae2b330ce8886e0952` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-14.md) | 226 | `declaration-track:c59536a1993142b15f034e4bb362e351b96990581a69e2ddbe043d5e16c55923` |
| 39 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-5.md) | 229 | `declaration-track:5b4233f45a05a2054eab3e23779c891caabc5b3043c635f8b42c725e1510dc40` |
| 40 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/filter.md) | 232 | `declaration-track:1d7c8a2c832c49c1b9fdb83ecaa2e3936241167b41c97775858b15b2ed1709ed` |
| 41 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/modify.md) | 236 | `declaration-track:5a788c901eac91565495d36678c9945825ad4f0890d8ab01b13e09aaaf8ec1b1` |
| 42 | `def` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/alter.md) | 240 | `declaration-track:8b2e534b04e64185dcf7c9908283cd99b396f234475d0e05e7a9f5ce96202ea8` |
| 43 | `def` | [insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/insertmany.md) | 244 | `declaration-track:b2bcf174510996462d2429f3da8529f36bef4cb7c35fa0c43ff6b39b20afffe9` |
| 44 | `def` | [insertManyIfNewUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/insertmanyifnewunit.md) | 248 | `declaration-track:ed6704ba69787245f450bc1bbec609da3b6db737f0e3dbd5a29ffd2fcadc4b59` |
| 45 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/toarray.md) | 252 | `declaration-track:c0198d2ab50eed895ed25d2b3e1dcda4c04488a4eb6a1718587df708dc70a2bb` |
| 46 | `def` | [keysArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/keysarray.md) | 256 | `declaration-track:68ebed30250252d8ecfb0fa1670e6100d43a04b7227c60ca5b28f085215f1153` |
| 47 | `def` | [all](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/all.md) | 260 | `declaration-track:962853b585e519cbf2d4884998ae1d5efc9c6b5359c5572aac76fe032f9b2768` |
| 48 | `def` | [any](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/any.md) | 263 | `declaration-track:4f3ce645c90fe1c4a229c1ebaf65d435908ef9eb6149e0657882bb1f1ef9fe85` |
| 49 | `def` | [union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/union.md) | 272 | `declaration-track:95f4d21d59074beaea368c1d0523d62e5cd43cd6cfe5d59758d0fe71d64da11b` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-8.md) | 275 | `declaration-track:6c7874e4c741fcc23cc31d5b186b54faf7d063908c8009aae85131be0d1fa30b` |
| 51 | `def` | [inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/inter.md) | 277 | `declaration-track:713b94d1c18949e4b3e08428b79b52cf96e0d0bca3c7e249c6ad51c1bf460657` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-6.md) | 280 | `declaration-track:5d439d5039a7f7af5e66d1b21c4a059f252be17922c611d1eb49af0853420987` |
| 53 | `def` | [beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/beq.md) | 282 | `declaration-track:075e25271b7f61255cca56b79e7e54a96ed49e6d097f411e8b3b59cbb051d249` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-7.md) | 285 | `declaration-track:612d7e5f1ddc83f426cc6308076b0bd4586db3f9d901ac99e4969c896c1cc263` |
| 55 | `def` | [diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/diff.md) | 287 | `declaration-track:d76aa2534f9a122bc0d6c349cfdfd6105c981d18782c8bf26077041e372be8d7` |
| 56 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-3.md) | 290 | `declaration-track:4cc9fe940b0e5ee556e4eedfa1c1439ec015a68603343a06f49ab2d0bd202cea` |
| 57 | `def` | [partition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/partition.md) | 296 | `declaration-track:3ca498bfebe22aeeb2ad91ad28e225096c0e8f9d475ce430bd2240fce7cb6a9d` |
| 58 | `def` | [values](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/values.md) | 301 | `declaration-track:1a4be8cdc82d47472a998f5b0948ac806a1a27f5aa2d1443e4cb5a009aee20ca` |
| 59 | `def` | [valuesArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/valuesarray.md) | 304 | `declaration-track:cee0404bfa54010755db44fb225e5ecc3b052592dab4a0d7b4a03626cc07df00` |
| 60 | `def` | [unitOfArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/unitofarray.md) | 308 | `declaration-track:49534f8d60e79a9a42c5c42776eeb2752841265dc6a340d9c1e9d58432b5dc12` |
| 61 | `def` | [Internal.numBuckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/internal-numbuckets.md) | 312 | `declaration-track:ea31ff28be1f4e189308b983e5b47f885708389f9566e13f0d82444a5c85fc80` |
| 62 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/instance-source-edition-13.md) | 316 | `declaration-track:b26410fa59c851de09dd9a5a57fd369b5172a21fdd97c6d6efb3008b1421c490` |
| 63 | `def` | [Array.groupByKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/array-groupbykey.md) | 335 | `declaration-track:0ac71ef46013cffa0af3200733c8abe4cd57600f49f82dfa257f64b1de44ae21` |
| 64 | `def` | [List.groupByKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashMap.lean/declarations/list-groupbykey.md) | 354 | `declaration-track:f0bffa525db512f274f7e697c7d288c65f35c77ad146b2e773cb64bd1c12ef63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0d6d53eb3755c2d51907671e35e21cd1f2477371fe7390f3ace2e753247cc14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc7849feae33d2991a76a64f445dd789c988fbc7bac421c3fb4bec697179fcd92.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc7849feae33d2991a76a64f445dd789c988fbc7bac421c3fb4bec697179fcd92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
