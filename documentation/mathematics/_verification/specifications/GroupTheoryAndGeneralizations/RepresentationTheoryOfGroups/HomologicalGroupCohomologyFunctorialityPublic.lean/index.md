# Verification target: Homological Group Cohomology Functoriality Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcc55ede3007a77d6bd354599141272f03caab9f",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Varianta11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcc55ede3007a77d6bd354599141272f03caab9f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Varianta11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Varianta11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [congr](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/congr.md) | 44 | `result-track:ad2baa48a9b854879f3c70049c93539b9cb5170eb8635d1aae2f817772cd0dce` |
| 2 | `def` | [cochainsMap](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-source-edition-4.md) | 53 | `declaration-track:a5ebe42d56924f380675b6d8fbfde9d7e1a6924e5cf2f8888216a314a42d3294` |
| 3 | `lemma` | [cochainsMap_id](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-id.md) | 64 | `result-track:7effe70e58bd611727a9e76e8735f51f5221d6313e6277dfc320ec3a35f13ab3` |
| 4 | `lemma` | [cochainsMap_id_f_hom_eq_compLeft](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-id-f-hom-eq-compleft.md) | 69 | `result-track:276a2f0338fa581d1e3fc2801ac41a5b4931e358b0ce904e74633daed3c3b220` |
| 5 | `lemma` | [cochainsMap_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-comp.md) | 73 | `result-track:cb83fa881791fe55306379ae6b80885d5d7aa84939b0c0879a6f12401393d921` |
| 6 | `lemma` | [cochainsMap_id_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-id-comp.md) | 81 | `result-track:039244d4e2db0fe31c53a56f89fa7ff5d34fc8a4cf67c3b1455720f2948b245e` |
| 7 | `lemma` | [cochainsMap_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-zero.md) | 87 | `result-track:576b988c31d8e5caadcd40298ed99b9f729a839d8eb6168d960c433119a0df97` |
| 8 | `lemma` | [cochainsMap_f_map_mono](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-f-map-mono.md) | 89 | `result-track:5ef93208cbbd98a83da4b2b3c875b221df0cf69f7840cd5c5dddac553a64cc44` |
| 9 | `instance` | [cochainsMap_id_f_map_mono](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-id-f-map-mono.md) | 95 | `declaration-track:7db63b9b85ebe7a4c2b6e70ca4b01dd1b7f5ee876e0d0eb8deda4b52c3b1a444` |
| 10 | `lemma` | [cochainsMap_f_map_epi](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-f-map-epi.md) | 99 | `result-track:24e7d6fe7b3bf41da4b148eadd2d18c1ad681661259134d83dea30a3c73aa871` |
| 11 | `instance` | [cochainsMap_id_f_map_epi](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-id-f-map-epi.md) | 105 | `declaration-track:45f4e67efdb9edc45da982a2005cb73542f2e50dbc91111d76d9efd04ebb6d31` |
| 12 | `abbrev` | [cocyclesMap](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cocyclesmap.md) | 112 | `declaration-track:976434677a1243c4aeddf3a916a6f4a65439991f020ade63b21c0a325396b6a3` |
| 13 | `lemma` | [cochainsMap_congr](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-congr.md) | 116 | `result-track:e6f39155af0373334bba77c46139d2ef31b9278e5707deb1257d69e89efbfba4` |
| 14 | `lemma` | [cocyclesMap_id](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cocyclesmap-id.md) | 122 | `result-track:c755ce02bf2e46613fdfddc4b581c464c39f43ecfa354e236682de6affb61f78` |
| 15 | `lemma` | [cocyclesMap_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cocyclesmap-comp.md) | 126 | `result-track:6e4b4abcd2c8e87908d62ba5bcf7de542f431f972e8d99b7104fdaa2f935bfcb` |
| 16 | `theorem` | [cocyclesMap_id_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cocyclesmap-id-comp.md) | 134 | `result-track:ed85633ddbdd61809b6a034aa6a3410b197e0a4408e5c8163627fbe9b8c61f84` |
| 17 | `abbrev` | [map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map.md) | 142 | `declaration-track:39b7ed478426234d3bab33e39dc880c0490398645b3bc38df834be847681c48c` |
| 18 | `lemma` | [map_congr](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map-congr.md) | 146 | `result-track:bba26e9da7777432c4efc505bfdd25a1fe9a160ca41dc69d18f5ccbad5e5f026` |
| 19 | `theorem` | [π_map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map-source-edition-2.md) | 153 | `result-track:84f92af8042c8002463e3f2b60f98924e1ca4c1fbfed9f03e922c809fe828ede` |
| 20 | `lemma` | [map_id](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map-id.md) | 158 | `result-track:44666ed6d2c7e41c9b7f2e790fb75561d326a3d062dc1b0f82f9bc0fa8e044fa` |
| 21 | `lemma` | [map_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map-comp.md) | 162 | `result-track:84e03c96829610ca9022f2127e5ffb5da70f84bf4328580b8549c1f5cf2fcadd` |
| 22 | `theorem` | [map_id_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map-id-comp.md) | 170 | `result-track:c824add2df8eded941ab737ae778c9301a0fa46297cb0bb4a03283d03fe1a451` |
| 23 | `lemma` | [map_eq_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map-eq-zero.md) | 178 | `result-track:d68dad7f703f95533d9167ca8e7870e3f84571f684e61a75741fee53ccb84450` |
| 24 | `def` | [mapIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapiso.md) | 189 | `declaration-track:967e3c234f18be59da3229d43e5f0b289437d6427de068749d06082e96a40116` |
| 25 | `abbrev` | [cochainsMap₁](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap.md) | 205 | `declaration-track:656eb84e088a2460858a5f300032583ca2e17bebb9f770a3e152809aa9340c15` |
| 26 | `abbrev` | [cochainsMap₂](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-source-edition-2.md) | 211 | `declaration-track:7a80b36108815c333b86a34c1ae49164eeed7035a4409cefe203ea6571e56c00` |
| 27 | `abbrev` | [cochainsMap₃](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-source-edition-3.md) | 218 | `declaration-track:9ef301a188d5b1ef61c5cd2e516296eefc36e012d19d3d5fe003c4052992dd3e` |
| 28 | `lemma` | [cochainsMap_f_0_comp_cochainsIso₀](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-f-0-comp-cochainsiso.md) | 224 | `result-track:ca0544b9508f41d5359b8f64cafa9915bf8d8b31339141ff9c9f113e05f2e852` |
| 29 | `lemma` | [cochainsMap_f_1_comp_cochainsIso₁](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-f-1-comp-cochainsiso.md) | 231 | `result-track:a765264431dfdd4a7ce11763d9fb7031c5e50c7a37dcaa8508ce0e31a0d4f3fb` |
| 30 | `lemma` | [cochainsMap_f_2_comp_cochainsIso₂](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-f-2-comp-cochainsiso.md) | 235 | `result-track:86bfbd482003ccf44a93218e908265dcccc2971b8d54b054f287cacae74a4c16` |
| 31 | `lemma` | [cochainsMap_f_3_comp_cochainsIso₃](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsmap-f-3-comp-cochainsiso.md) | 243 | `result-track:b4efa78a03a2ce140277e9753a9b26c0aa5f66f523fc3bc1f7f0de4a573b8ea2` |
| 32 | `theorem` | [map_H0Iso_hom_f](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map-h0iso-hom-f.md) | 258 | `result-track:f593b18261e424ca24fd5969750a937852fd8f2134eb9ecd8d318ab40ae8974e` |
| 33 | `theorem` | [map_id_comp_H0Iso_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map-id-comp-h0iso-hom.md) | 265 | `result-track:8709e5c3b397168c4dad1bbd40c430411a47d3117ef5b4b492a6b8817bdbd4be` |
| 34 | `instance` | [mono_map_0_of_mono](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mono-map-0-of-mono.md) | 270 | `declaration-track:232cf5beee6e70800be04008830fe990df911ee65691d471e5476ce090b67fc5` |
| 35 | `theorem` | [cocyclesMap_cocyclesIso₀_hom_f](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cocyclesmap-cocyclesiso-hom-f.md) | 278 | `result-track:f29e33fff84113d49e7031b4485d6fdef82bc54d73a185132344c02b249455a0` |
| 36 | `def` | [mapShortComplexH1](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh1.md) | 291 | `declaration-track:3ea371b9ad7a6d01da65d60fda6ab38c97826091d23e1310e2089516d845a4c6` |
| 37 | `theorem` | [mapShortComplexH1_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh1-zero.md) | 306 | `result-track:402d528ae6f9cd6336b0bfcfe6a4cccc0b08374e25f8690bd9ef68afd67e6f6c` |
| 38 | `theorem` | [mapShortComplexH1_id](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh1-id.md) | 311 | `result-track:39986ba73ef646e69d5787d78eb7e913a6fa4c73745ff7614405f42aed9c2a6e` |
| 39 | `theorem` | [mapShortComplexH1_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh1-comp.md) | 316 | `result-track:d2a2f85185d6ebf982a897f38df22d3da61c3b31e5b74ed2cd449d826ae06ad5` |
| 40 | `theorem` | [mapShortComplexH1_id_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh1-id-comp.md) | 323 | `result-track:f5eca643c5924fc43e6ed9e6edd65b39c5e7d3f1269cb22b0eca0b5a831293b9` |
| 41 | `abbrev` | [mapCocycles₁](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapcocycles-source-edition-2.md) | 329 | `declaration-track:a9cc5c411717db416637f5b96ac8819e1b9c144adfce6fd14f3cfdd100b09056` |
| 42 | `lemma` | [mapCocycles₁_comp_i](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapcocycles-comp-i.md) | 336 | `result-track:3cc9f090aad1772102d0272c1274ac96ea052298e8dfe5d8580d7cad1acc8bb9` |
| 43 | `lemma` | [coe_mapCocycles₁](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/coe-mapcocycles.md) | 342 | `result-track:344b7a8fc36a86a6116aafeba1dc53b79c3bd9872f9694d96c25d00e572f5bf5` |
| 44 | `lemma` | [cocyclesMap_comp_isoCocycles₁_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cocyclesmap-comp-isococycles-hom-source-edition-2.md) | 347 | `result-track:485ee08e9cb084875a462efa4365ff0dd011d2b4f00046d8f2c33643e2bc6cd8` |
| 45 | `theorem` | [mapCocycles₁_one](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapcocycles-one.md) | 354 | `result-track:f985017f28bc7285d4cd3d40841f7660a43288e2cfecd7d2f2279225af63a0a3` |
| 46 | `lemma` | [H1π_comp_map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/h1-comp-map.md) | 362 | `result-track:53fe10a0bc2a7174d5348c1086fca90960abf9a92c97f1420ae73f7df8f453ad` |
| 47 | `theorem` | [map₁_one](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/map-one.md) | 367 | `result-track:6eb8105237eabb18a9bbf4436191c450281d9461ffec9a728d8bfdd8fd9cfe66` |
| 48 | `def` | [HInfRes](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/hinfres.md) | 377 | `declaration-track:c6ccb0323aaa8d91ec3f4957ebe8b3accbacdb5a88f9deba0baf0f2c14e75e17` |
| 49 | `abbrev` | [H1InfRes](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/h1infres.md) | 387 | `declaration-track:f3c7c24eb3922e3dd2b4032b2ef596d9be7115020bf6f6cb52a066223df55b39` |
| 50 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/instance-source-edition-3.md) | 390 | `declaration-track:edc84715dc996e2f98df8c8d7ba68dc1cb780b047f8392ee16c36e92e3e60781` |
| 51 | `lemma` | [H1InfRes_exact](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/h1infres-exact.md) | 403 | `result-track:23ec69712a51b3a56040f4d7c246aac92dd35687571b7f494341097a07f25c37` |
| 52 | `def` | [mapShortComplexH2](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh2.md) | 451 | `declaration-track:1e9b70324aea3280966b916c2190965e59ca77241d38d9a3946e9335d972c886` |
| 53 | `theorem` | [mapShortComplexH2_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh2-zero.md) | 466 | `result-track:93f4f6f70048557f9cf9df464150421e03030ce26c3870da31cdabf9d652bd8e` |
| 54 | `theorem` | [mapShortComplexH2_id](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh2-id.md) | 470 | `result-track:45af57894283d3f399025eb340fb3077be01e587a680c34c2761ebb4c8f83c2b` |
| 55 | `theorem` | [mapShortComplexH2_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh2-comp.md) | 475 | `result-track:9834005f635ff4b0bb4b22e4b6975103014d5aea9fa7a84c639dedc4456ea0a6` |
| 56 | `theorem` | [mapShortComplexH2_id_comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapshortcomplexh2-id-comp.md) | 482 | `result-track:60927ee93b20922bda6a24468afad0c3f369818cf80fd144f253df4fc6ef3f43` |
| 57 | `abbrev` | [mapCocycles₂](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapcocycles.md) | 488 | `declaration-track:2b86b7dc05644c77bd0fa373f035b1c0f5debd051da9d88a36a37b2c27a4b41c` |
| 58 | `lemma` | [mapCocycles₂_comp_i](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/mapcocycles-comp-i-source-edition-2.md) | 495 | `result-track:812958c298bd4e863f42baf85080e8543b51c1ef6bf2b339bfdfc7d18691f3a6` |
| 59 | `lemma` | [coe_mapCocycles₂](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/coe-mapcocycles-source-edition-2.md) | 501 | `result-track:f1a6eba522795e8b48ab1d537b8b35cb4fa827602fd7ea4d3f722edbf4b92e3b` |
| 60 | `lemma` | [cocyclesMap_comp_isoCocycles₂_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cocyclesmap-comp-isococycles-hom.md) | 506 | `result-track:322f2fc5819b40e5b507d1a01a374e5de2e57a2ff5392aac4539f21c6bd6c57f` |
| 61 | `lemma` | [H2π_comp_map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/h2-comp-map.md) | 513 | `result-track:8a457e31d291d92e867153527f345c105adbd1edfaed5b4b13173f0ec8fd5053` |
| 62 | `def` | [cochainsFunctor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/cochainsfunctor.md) | 523 | `declaration-track:7f77be614d81c3e490777fb4e18c2a8050d584cd80ac1618b8acbded95558141` |
| 63 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/instance-source-edition-4.md) | 529 | `declaration-track:ef7c2148d3c0f62c73f060c7cd5222dcdf940fbf4de7813fc9c83cd7205f50c2` |
| 64 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/instance-source-edition-2.md) | 530 | `declaration-track:baea54dfc4ce03ad51c7ebdcb624f5a4c5cda88c299e1384c9895be5044c9e99` |
| 65 | `def` | [functor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/functor.md) | 535 | `declaration-track:486a23710d5816a55484ec3b006912dd4c98fcd9e001b8b64f356c79217f2f8b` |
| 66 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/instance.md) | 544 | `declaration-track:2cf223ddede6b18692f3b4dcab47c1fb3c35bc5fdd3af26038767c58e24004ea` |
| 67 | `def` | [resNatTrans](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/resnattrans.md) | 553 | `declaration-track:e3fb29a2606ecddeface4802dc9319f771a39da4971da86e372f59261d8b68f1` |
| 68 | `def` | [infNatTrans](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityPublic.lean/declarations/infnattrans.md) | 567 | `declaration-track:2b531dfaca09603585d03d6ba7068d3c765fc937580bded538bfd15457b9db48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8979bb190639d3ccf2a19cb31aa3301f1f689a289247efa29fbfb9cd082fb0b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Varianta11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Varianta11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
