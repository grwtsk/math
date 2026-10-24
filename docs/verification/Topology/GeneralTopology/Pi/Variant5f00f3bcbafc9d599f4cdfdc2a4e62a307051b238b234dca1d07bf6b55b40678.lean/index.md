# Verification target: GRWTSK.Topology.GeneralTopology.Pi.Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1537f2a1361182834f48e0f638347878911e303",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1537f2a1361182834f48e0f638347878911e303`.

Source path: `GRWTSK/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Bases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi--3d953894067adab5d7cca63a.md) | 44 | `declaration-track:3d953894067adab5d7cca63af542ad3848733870b6f658db7c108dd3b7a74e8b` |
| 2 | `instance` | [pi.isCountablyGenerated](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-iscountablygenerated--544824fce916ba5280594f4a.md) | 48 | `declaration-track:544824fce916ba5280594f4a999595c53010fd3fc0ad4e530e3aeb9d716d47ce` |
| 3 | `theorem` | [tendsto_eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/tendsto-eval-pi--14facfc13cd4b84b15e48a61.md) | 53 | `result-track:14facfc13cd4b84b15e48a61eadb2717a35ac9c9d3e82ece96a77e6554c5d1fd` |
| 4 | `theorem` | [tendsto_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/tendsto-pi--297f269c7dea4141a900cf88.md) | 57 | `result-track:297f269c7dea4141a900cf88378e14e9b8f041653c02b2a814f144ae33b8ede9` |
| 5 | `theorem` | [le_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/le-pi--e03171edd4d30fc6b669b0c6.md) | 62 | `result-track:e03171edd4d30fc6b669b0c6648535b6ccc4e0605339e54a9efe6404882bafec` |
| 6 | `theorem` | [pi_mono](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-mono--ac49051f032d881442957b63.md) | 67 | `result-track:ac49051f032d881442957b63504c0a17d8633b78ffa580cb77e67a0e9ce3308c` |
| 7 | `theorem` | [mem_pi_of_mem](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/mem-pi-of-mem--8da9d8a8ad100e96899bbb6a.md) | 71 | `result-track:8da9d8a8ad100e96899bbb6a32a94217eee38ad61a6e9edd5ae8832cfeb2c47e` |
| 8 | `theorem` | [pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-mem-pi--23566b5b24f80dd0cdce1c06.md) | 75 | `result-track:23566b5b24f80dd0cdce1c0639180173363c96a54fa4d7ed6c1204989651a341` |
| 9 | `theorem` | [mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/mem-pi--67891253f40e933b9fea6484.md) | 81 | `result-track:67891253f40e933b9fea64840ffe0e6797b29468a1f49b30e29af4ff2eac3e96` |
| 10 | `theorem` | [mem_pi'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/mem-pi--41516d7af7e12cc7f513bf06.md) | 92 | `result-track:41516d7af7e12cc7f513bf06b9a7fcbf0cef56d537ac15570a1fd3bb117c25b1` |
| 11 | `theorem` | [mem_of_pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/mem-of-pi-mem-pi--0aa1cc3d13d2c52f3b54a3b2.md) | 97 | `result-track:0aa1cc3d13d2c52f3b54a3b230be661f6d98419d37e1dbd80d806707a5ed37a0` |
| 12 | `theorem` | [pi_mem_pi_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-mem-pi-iff--54c87478f858e78e010cd8fc.md) | 109 | `result-track:54c87478f858e78e010cd8fc66d555bcf5d0d2858eaaf440b7f588d7e52994df` |
| 13 | `theorem` | [hasBasis_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/hasbasis-pi--d8889a982a4818444b2e2048.md) | 114 | `result-track:d8889a982a4818444b2e2048876e7959ead0af22519677a16ce3bcda0bd8439a` |
| 14 | `theorem` | [pi_inf_principal_univ_pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-inf-principal-univ-pi-eq-bot--1ebd8602017e58c9e765aafe.md) | 122 | `result-track:1ebd8602017e58c9e765aafe4451c8efa1b661f98a41c628b788d8c1bf46285d` |
| 15 | `theorem` | [pi_inf_principal_pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-inf-principal-pi-eq-bot--d6b3237fbf8c22294485f236.md) | 137 | `result-track:d6b3237fbf8c22294485f2360de1e4ca1ab38b45028ea3d902e987606d3e3f48` |
| 16 | `theorem` | [pi_inf_principal_univ_pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-inf-principal-univ-pi-nebot--2732082a4b4961893f2074aa.md) | 145 | `result-track:2732082a4b4961893f2074aa0cdca41d9574d2e47d975291104326c98be44126` |
| 17 | `theorem` | [pi_inf_principal_pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-inf-principal-pi-nebot--9e6a87e04dbd40f3517c2c13.md) | 150 | `result-track:9e6a87e04dbd40f3517c2c13a2759cdf2b94252199cb7e71a77a1d7262e35a9b` |
| 18 | `instance` | [PiInfPrincipalPi.neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/piinfprincipalpi-nebot--666df8dce485e33313d4ac45.md) | 154 | `declaration-track:666df8dce485e33313d4ac45a1d5d1bd44fba179168311c9428c37629c07ae79` |
| 19 | `theorem` | [pi_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-eq-bot--c407982ebcd5ac02a03f3725.md) | 161 | `result-track:c407982ebcd5ac02a03f3725a2930fa5f8cd958312146b7462f7e18e05586864` |
| 20 | `theorem` | [pi_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-nebot--85afd46700dad3a2e3d2142c.md) | 166 | `result-track:85afd46700dad3a2e3d2142c85975ace405ba1d7dc93a6e178334960ab0359f8` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/instance--6841bd7171c99837e8aa202f.md) | 169 | `declaration-track:6841bd7171c99837e8aa202f43b59e6db4a1920e49feb3b53a73e6f4b4ca6e0a` |
| 22 | `theorem` | [map_eval_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/map-eval-pi--c0028da50811b429c42e30b4.md) | 173 | `result-track:c0028da50811b429c42e30b4ba489b5b21b8c13b699fec1af03a91916dfa5311` |
| 23 | `theorem` | [pi_le_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-le-pi--b4ce83985cbef8d7a2f63aed.md) | 183 | `result-track:b4ce83985cbef8d7a2f63aed3ff65c64edb27d6b4a8d4c504de466483f9f2ac8` |
| 24 | `theorem` | [pi_inj](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/pi-inj--ca012a6ccd2fceb3a9195e8c.md) | 188 | `result-track:ca012a6ccd2fceb3a9195e8c237fc7a15a4168c0d4f6c734d4ffcc2e865045f4` |
| 25 | `def` | [coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/coprod--9f571cb2d9fda6f92d30fdbc.md) | 205 | `declaration-track:9f571cb2d9fda6f92d30fdbc01fc71e1fabd10ab55a2f992e711ba8d596d2ae0` |
| 26 | `theorem` | [mem_coprodᵢ_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/mem-coprod-iff--21d00a428c9569f409c3882e.md) | 209 | `result-track:21d00a428c9569f409c3882e49a8b0e33a87427a02bac8d34bd13e67b665b80f` |
| 27 | `theorem` | [compl_mem_coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/compl-mem-coprod--c2e7ef92741ceaaa0d15290a.md) | 213 | `result-track:c2e7ef92741ceaaa0d15290a5e8581c92a76a237b04c5c1f3196789308323dae` |
| 28 | `theorem` | [coprodᵢ_neBot_iff'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/coprod-nebot-iff--c3dc67966815d4729d29599e.md) | 218 | `result-track:c3dc67966815d4729d29599eeda3b4be9a739829fb63d7fff38b693783e9424c` |
| 29 | `theorem` | [coprodᵢ_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/coprod-nebot-iff--ebece52fc023bc835162ed50.md) | 224 | `result-track:ebece52fc023bc835162ed50695602bfc949c8c6248cf90b4d57d498ef43c781` |
| 30 | `theorem` | [coprodᵢ_eq_bot_iff'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/coprod-eq-bot-iff--4b34eb2180ed7d2b3b398ed9.md) | 228 | `result-track:4b34eb2180ed7d2b3b398ed90c3d82b0bc1d666e1772003b4d1b55493e422f85` |
| 31 | `theorem` | [coprodᵢ_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/coprod-eq-bot-iff--1b5dd0e77e55332e1dfbe045.md) | 234 | `result-track:1b5dd0e77e55332e1dfbe045083800c02037a3b9ffb454adea8262f7a72ee9cd` |
| 32 | `theorem` | [coprodᵢ_bot'](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/coprod-bot--a0f4818d0538a10c83d375eb.md) | 238 | `result-track:a0f4818d0538a10c83d375eb5c906a4d361259ad3ecc6149d3ad104b30826192` |
| 33 | `theorem` | [coprodᵢ_bot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/coprod-bot--5c9c700e99b5a11dcbc852db.md) | 243 | `result-track:5c9c700e99b5a11dcbc852dbe52457d0183374c8cf1312d24be70ee7f1a3059d` |
| 34 | `theorem` | [NeBot.coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/nebot-coprod--62f995c6abf73b7d432959ef.md) | 247 | `result-track:62f995c6abf73b7d432959efffdd8686fefbd5a2a898220043cb6a376c2d83aa` |
| 35 | `theorem` | [coprodᵢ_neBot](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/coprod-nebot--ce40b64ddf8b151745f6876e.md) | 252 | `result-track:ce40b64ddf8b151745f6876ef2496375e848b299268bf9ce5301226198ba2239` |
| 36 | `theorem` | [coprodᵢ_mono](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/coprod-mono--73b14d2114e9efd45c30c447.md) | 258 | `result-track:73b14d2114e9efd45c30c44769ff93adb9ab58b490b3e4d7b03c2a54f1667e03` |
| 37 | `theorem` | [map_pi_map_coprodᵢ_le](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/map-pi-map-coprod-le--5f7f264b4b84330339415f99.md) | 264 | `result-track:5f7f264b4b84330339415f99de239c30bf64b0982c429ff9c33638516546b7cf` |
| 38 | `theorem` | [Tendsto.pi_map_coprodᵢ](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/declarations/tendsto-pi-map-coprod--ffb4cb9eb598d077aab175dd.md) | 273 | `result-track:ffb4cb9eb598d077aab175ddbae2477f6d314f6757a7f1838b83ebab8e3c4cdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
