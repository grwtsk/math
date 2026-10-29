# Verification target: Open Subgroup Namespaced Is Open Of Open Subideal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63abc1298d30b2ebc2029c7315ba4a655367eb83",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63abc1298d30b2ebc2029c7315ba4a655367eb83`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OpenAddSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/openaddsubgroup.md) | 47 | `declaration-track:fd9c1edeaaf49ea914dfd219e5fcbf7ef6a8a36403aa356982771ece52ea6c5c` |
| 2 | `structure` | [OpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/opensubgroup.md) | 53 | `declaration-track:dbc770f2c81609ec33a706cfcda015e960ec32386526d03486b19dd7c5a83c1c` |
| 3 | `instance` | [hasCoeSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/hascoesubgroup.md) | 71 | `declaration-track:bdf032e8cf556a76122359563f7f814ca6e2171fd67b0bfc830421a3903c9acc` |
| 4 | `theorem` | [toSubgroup_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/tosubgroup-injective.md) | 77 | `result-track:feee536974ed10a16f7bef65ac2a6a5d8903a5d2147105c49fe7bbc4b4297f91` |
| 5 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:6192731777509a311094eae6ff61a11f0a2e8a0a03c60fa40793e95984a4bf82` |
| 6 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instance-source-edition-7.md) | 88 | `declaration-track:bdad4341c1c26ec2f33708ff2434d733c03f902585c5a1bb19922f26fe2eff96` |
| 7 | `def` | [toOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/toopens.md) | 95 | `declaration-track:c6563d10fe5b8f302abf37032120ac496eae2928bbeda51271c4781335e35b41` |
| 8 | `instance` | [hasCoeOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/hascoeopens.md) | 98 | `declaration-track:0d8c436d536709e25b20f69724bc8602cd59fbba2ddfa3123292ff7ac8c1d410` |
| 9 | `theorem` | [coe_toOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/coe-toopens.md) | 103 | `result-track:78b28c57eab7af9b16bcc971ae9108c70bacc2873fdd109e6311ad5b13523e5f` |
| 10 | `theorem` | [coe_toSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/coe-tosubgroup.md) | 109 | `result-track:f029357601c576a2e3184b54d623292a62c5028e7edde160d3a9af11d769e222` |
| 11 | `theorem` | [mem_toOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/mem-toopens.md) | 114 | `result-track:a9d7dddb3b103a98e82bc9e3daa4eba5a5fec2c48f8b2e55bb9c2ca9a7f70fad` |
| 12 | `theorem` | [mem_toSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/mem-tosubgroup.md) | 119 | `result-track:9586da761739d42dbb05e430ac174f932cd50d03fac55a2cda228bd2339f0136` |
| 13 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/ext.md) | 124 | `result-track:189ffe9256bc0b36d8ce2ac0986905e736becacd941b81b42194aa5f7913329f` |
| 14 | `theorem` | [isOpen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/isopen.md) | 132 | `result-track:2e0321f33fa87b850ec70772977b353f066408cad13883ff39279c50c8364a39` |
| 15 | `theorem` | [mem_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/mem-nhds-one.md) | 138 | `result-track:cef3b912f9b9ba4991fa280a71480471915ecd56f8001e668a40dd2fe0037ee6` |
| 16 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instance-source-edition-5.md) | 145 | `declaration-track:9509ddb7358408af76757265dec93b526f74bb1caf2643a49a4c0b7de8976dab` |
| 17 | `theorem` | [mem_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/mem-top.md) | 148 | `result-track:4447408035f75ca2d6b9ac37805380ad101da6a0f0b2a7c98ab2db999ae1f764` |
| 18 | `theorem` | [coe_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/coe-top.md) | 154 | `result-track:d34ddf3c57f2fd6a86778948496ea2d378676e65c24feb459764e6f280535686` |
| 19 | `theorem` | [toSubgroup_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/tosubgroup-top.md) | 160 | `result-track:698b0a503200eeea83e13560c10c08e0d41ee25c61171ec4016c27e798aca673` |
| 20 | `theorem` | [toOpens_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/toopens-top.md) | 166 | `result-track:f364f270f837e12cf23f7a824682366d30381f3811e29ca0504f649d6fc7bea3` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instance-source-edition-4.md) | 172 | `declaration-track:8c11a1121a7ae29acb24fcdee10cf1ac9597397c66f8a0cca87980c1c13bdb45` |
| 22 | `theorem` | [isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/isclosed.md) | 176 | `result-track:f29430fb8cbdf5d8d3b523d72e51d445ce55bd1d0c0b05a9d07d2dedd30f57aa` |
| 23 | `theorem` | [isClopen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/isclopen.md) | 189 | `result-track:c37a0c79554b386b571d4ed9d875b1d76630015137359a6fe1015733606e66dd` |
| 24 | `def` | [prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/prod.md) | 200 | `declaration-track:386924e1d91625d1261afa2cfc3e68b2a2cc8c6139fbb5fb2945a96e7c5230e3` |
| 25 | `theorem` | [coe_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/coe-prod.md) | 206 | `result-track:17c0335e0c137da80422bdec173e722cad8a4fed3ec5cba3b2f38d658798247f` |
| 26 | `theorem` | [toSubgroup_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/tosubgroup-prod.md) | 213 | `result-track:99b12ae639385f61dd172c488c9c6004a3988a3d2fbb90560e299ab06b618345` |
| 27 | `instance` | [instInfOpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instinfopensubgroup.md) | 222 | `declaration-track:82352205d57ad13cd0f4c4f993852ad2c6744c2d9f30b73f0ab101f102c72764` |
| 28 | `theorem` | [coe_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/coe-inf.md) | 226 | `result-track:96e6e68687f15bb49206760c0d5e869e6d15848e4143e5dc70f061632c40edb7` |
| 29 | `theorem` | [toSubgroup_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/tosubgroup-inf.md) | 232 | `result-track:21acf4c2aa6b147900449dae29b0e1d6faf865a5a222dae1cd143e4296518771` |
| 30 | `theorem` | [toOpens_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/toopens-inf.md) | 238 | `result-track:3227d134927c5acc5132c387e3691343e494f9d47ba3424e2d02676aec91ede0` |
| 31 | `theorem` | [mem_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/mem-inf.md) | 244 | `result-track:88f753c6acee6311c4c14fd302ecc5b5f438f9c8d82525e1a27688a2f9e75438` |
| 32 | `instance` | [instPartialOrderOpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instpartialorderopensubgroup.md) | 250 | `declaration-track:3c29385ac2bcfea956f7d2c3b55535e4e4f469c81599f3343b283bba75666229` |
| 33 | `instance` | [instSemilatticeInfOpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instsemilatticeinfopensubgroup.md) | 254 | `declaration-track:278078c68ec66886ebb8f601237b956ff932f20b9561d79a34f0d3d4de7f06dd` |
| 34 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instance.md) | 260 | `declaration-track:51e332f13b448751df0c051c4221ba934d49de7f273f68c872c942728d42fa78` |
| 35 | `theorem` | [toSubgroup_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/tosubgroup-le.md) | 265 | `result-track:d15d795b7ec354db8647b46885ca2ac1fd47079df1195fe1dd7e85fcf17f121f` |
| 36 | `def` | [comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/comap.md) | 276 | `declaration-track:595b62088538454ba6137137e2612f9886b8d676780c4f535bb183034a7b8cbc` |
| 37 | `theorem` | [coe_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/coe-comap.md) | 282 | `result-track:e085881615f4903735bb7b1e640c803d338622f6cf7f51aea85786f04c46d09f` |
| 38 | `theorem` | [toSubgroup_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/tosubgroup-comap.md) | 289 | `result-track:281e9b77dfe2a75a17b75b164055d86eef55dd5885dc85f48243424b7f226586` |
| 39 | `theorem` | [mem_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/mem-comap.md) | 296 | `result-track:02a51307b09dd77c99bf516e83379f1412a51c5d05ee37e5852737b28662384e` |
| 40 | `theorem` | [comap_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/comap-comap.md) | 303 | `result-track:0f876c915bb32e5c6858e2d4acb5c765a7a8de943eec73ee19e3102dcf2e4f1a` |
| 41 | `theorem` | [isOpen_of_mem_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/isopen-of-mem-nhds.md) | 317 | `result-track:ac38e7f3b6b75fc23d60d7b33cf6159f37a167299a54336d94ccb7e938878bea` |
| 42 | `theorem` | [isOpen_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/isopen-mono-source-edition-2.md) | 328 | `result-track:e328442eeeaeb429513d98c3bd040bc8f76d4d8a9b9e831589f296398845bc1e` |
| 43 | `theorem` | [isOpen_of_openSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/isopen-of-opensubgroup.md) | 335 | `result-track:210908033271cc471fecdf2b4852e4de33a7de8d548460d1dae9622f3419839e` |
| 44 | `theorem` | [isOpen_of_one_mem_interior](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/isopen-of-one-mem-interior.md) | 343 | `result-track:59e342872d4bf3038366049aebc0498a1ee95008e8dbfd14d5d6979843f1de1a` |
| 45 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instance-source-edition-3.md) | 356 | `declaration-track:8af6a71fbe380e27c204f41b1b409d2ddc1662b2b83dad95a1637e3463762174` |
| 46 | `theorem` | [toSubgroup_sup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/tosubgroup-sup.md) | 360 | `result-track:aa9194ca87cd3867f1b41b8ebccc5ba0452bf6595864ea92392d526620ba90fe` |
| 47 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/instance-source-edition-6.md) | 366 | `declaration-track:a6afe00a0959930e6d679bf48226a77f44eba582fb3670090ad5b985bfcf1fa0` |
| 48 | `theorem` | [isOpen_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/isopen-mono.md) | 381 | `result-track:4370f0fd5e7b4c8a6588c7def9e75b24c92932d08ff1605ab0dfa99e829def21` |
| 49 | `theorem` | [isOpen_of_open_subideal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsOpenOfOpenSubideal.lean/declarations/isopen-of-open-subideal.md) | 394 | `result-track:c2a05bc4356a8adf3a9cf25f60980e1e1ca179c85eb0d75f9dcdfa9dd18ee78c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65556ae04d39bdd620443eeb7bde79aba43e853ba4237567083afb4d0debb398 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OpenSubgroup/Variant0faad0705d5c773a1864b4dee79ba7f65eb2830078a3bd6405078131b50c6314.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
