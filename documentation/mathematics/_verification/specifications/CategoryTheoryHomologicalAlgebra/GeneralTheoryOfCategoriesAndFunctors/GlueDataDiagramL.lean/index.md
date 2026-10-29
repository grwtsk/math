# Verification target: Glue Data Diagram L

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Types` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/gluedata.md) | 50 | `declaration-track:170b2a8179d1ae248cb523c448f450b149f6c3d5f7dc88303be646a05caf6614` |
| 2 | `theorem` | [t'_iij](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/t-iij.md) | 77 | `result-track:2a04a04fb95ee49c2d6a7b0e1fd4eeb6ab1331446a6a586cf7bb603b3692630b` |
| 3 | `theorem` | [t'_jii](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/t-jii.md) | 88 | `result-track:ec48123462ba830b8b998f8e3a6d4c720aad51959bcc5e985ea2b3e9c6c8a161` |
| 4 | `theorem` | [t'_iji](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/t-iji.md) | 93 | `result-track:a1f6336d483bea15461cc0c0beede00d5bd4a1268346127199e4acf71a045a04` |
| 5 | `theorem` | [t_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/t-inv.md) | 99 | `result-track:26f7bff658250ed082cea7e4e88cc2f34713d6b12ff968a903d63854de2b1932` |
| 6 | `theorem` | [t'_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/t-inv-source-edition-2.md) | 108 | `result-track:fd6c8fb0b8785e98948e4c6cf9a0c651eb61cbd7efb2846eca87068b11d171a6` |
| 7 | `instance` | [t_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/t-isiso.md) | 114 | `declaration-track:18c1450a1c7f79dc99145ebc06dc1fad6a42a23b064a99f2982c4cf05785f32c` |
| 8 | `instance` | [t'_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/t-isiso-source-edition-2.md) | 118 | `declaration-track:93f5642f1d69885d65bdde40de0ab315214159c3a17222800c2c6228f55ba198` |
| 9 | `theorem` | [t'_comp_eq_pullbackSymmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/t-comp-eq-pullbacksymmetry.md) | 123 | `result-track:8f1e1223612678d5bc4a0b36970c0a508ffaa4727b6267c56cb7a0277f3ec386` |
| 10 | `def` | [sigmaOpens](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/sigmaopens.md) | 133 | `declaration-track:1fffffd0f44aa0c2ac2b7af002f64b1866b661d45f5882465b38948dba2e3f7a` |
| 11 | `def` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagram.md) | 138 | `declaration-track:1314f04dbd6c375c499c2020f493d4e3a3a3557b3477228ee73f401a57e2831f` |
| 12 | `theorem` | [diagram_l](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagram-l.md) | 150 | `result-track:81b5e7192478562f3716485c6cbcad724c97952bee379798ecfb329fc2e49758` |
| 13 | `theorem` | [diagram_r](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagram-r.md) | 156 | `result-track:b0b6ff38a8ed593e99477aafb1adf4331899cdb90c313abf141726c19966f57d` |
| 14 | `theorem` | [diagram_fstFrom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagram-fstfrom.md) | 162 | `result-track:97099eb4cc472e217a22a6fb93a009fe99baf1482fc6fe8e6e8be3f2aabb8d9b` |
| 15 | `theorem` | [diagram_sndFrom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagram-sndfrom.md) | 167 | `result-track:5e5cd2b889bafd07c69595cd0804e20497f5e6e39155ed909418fae7206bc003` |
| 16 | `theorem` | [diagram_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagram-fst.md) | 172 | `result-track:63a6b860583c653a9d7bd43a7456c96336486b914d5681acca4e20535916baca` |
| 17 | `theorem` | [diagram_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagram-snd.md) | 177 | `result-track:2387f3f7f46ae9f7375fa074f281c875eb1ca1c2f376447c91ba49798b5d5c12` |
| 18 | `theorem` | [diagram_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagram-left.md) | 182 | `result-track:91575dd4e45e2958a99881b18028bfb81157540287583ea2b5fe4bf13e3e4473` |
| 19 | `theorem` | [diagram_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagram-right.md) | 187 | `result-track:b91d0ab68b90319f8d7d9df09149dcd32462c2497313ca4281e285b9d3f63430` |
| 20 | `def` | [glued](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/glued.md) | 196 | `declaration-track:bc86d3da0bf1010b661c8bcdd88b4715b52c2f0da691f5a3f4b70f55f4b13f20` |
| 21 | `def` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/anonymous-source-edition-2.md) | 201 | `declaration-track:eb596d3563c9d5f23a15bd65254293896292124cee686d4a7adce0e02d57c86e` |
| 22 | `theorem` | [glue_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/glue-condition.md) | 206 | `result-track:dad43af53ef60d52845727b15b241ab34a770cb53b67eedf2927adc063185586` |
| 23 | `def` | [vPullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/vpullbackcone.md) | 212 | `declaration-track:f3ddf65dcda8cd837cc5d2427a073379cb98cc9c0ac73aff5ae0cc7cda5d3975` |
| 24 | `def` | [π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/anonymous.md) | 220 | `declaration-track:69ae52ba18bb65f751de1daf29ce32c56c33507b615116c52915af04313709a9` |
| 25 | `instance` | [π_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/epi.md) | 224 | `declaration-track:15c698f071de376cfe365e6ce2e11d3f010a40cd6e79f966a0a140e7dbd167c8` |
| 26 | `theorem` | [types_π_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/types-surjective.md) | 231 | `result-track:9642dd6ca5abedca45e355323f138bd3a909f2496a4916b776eec7c46b7b58d1` |
| 27 | `theorem` | [types_ι_jointly_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/types-jointly-surjective.md) | 235 | `result-track:b48cd8da1d234677ed76ceb54cb20870c1c2a92a4476ce464350e856f2739112` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/instance.md) | 255 | `declaration-track:8122ae82980ce0d5c7c6baa59f84b3077c1db05400525fb96988ffb238339012` |
| 29 | `def` | [mapGlueData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/mapgluedata.md) | 260 | `declaration-track:3df9e32d0246aa3995d0fb92e9cfce958b756ef3ca657583cd2746724dbf0910` |
| 30 | `def` | [diagramIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagramiso.md) | 282 | `declaration-track:a791200e8a4d6598488dbd52e7f186aedbf7c677b53a633beb106dd0560bc9d6` |
| 31 | `theorem` | [diagramIso_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagramiso-app-left.md) | 301 | `result-track:3a1bc0f220e9a30ab0e1c05366f7e4f56085778f63a0f642c2bc78522ee8555f` |
| 32 | `theorem` | [diagramIso_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagramiso-app-right.md) | 307 | `result-track:a904248daeb175c3282ad5c4c2408cec6d8048ee59378d372fe25825588f23a8` |
| 33 | `theorem` | [diagramIso_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagramiso-hom-app-left.md) | 313 | `result-track:2b5674a9a655e70aa11c03976f1a21cd09e4a7f0276e40c4c73821b062faff68` |
| 34 | `theorem` | [diagramIso_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagramiso-hom-app-right.md) | 319 | `result-track:50542766c7f296a1a1b13070b516649fd5610d4ed75166f979a9f8a85011a524` |
| 35 | `theorem` | [diagramIso_inv_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagramiso-inv-app-left.md) | 325 | `result-track:f803c7396b383a68f832e54e782131852565c3a21493a98ae551b51bb2c719ae` |
| 36 | `theorem` | [diagramIso_inv_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/diagramiso-inv-app-right.md) | 331 | `result-track:0752790a747412254c9edcd9b6194f98b860e63b455a344264b2fc5d13c603e9` |
| 37 | `theorem` | [hasColimit_multispan_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/hascolimit-multispan-comp.md) | 341 | `result-track:f62e1837dcc551e79f40db122d288bc2ee3e39a8c3773b1b0d737e2ca997a63b` |
| 38 | `theorem` | [hasColimit_mapGlueData_diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/hascolimit-mapgluedata-diagram.md) | 350 | `result-track:3efcfac085abc46fe35b8baf5cebedd36489314053f5753f295318cdf455efe4` |
| 39 | `def` | [gluedIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/gluediso.md) | 357 | `declaration-track:9b3e692acc1fde33f0627249758610ca311d36b7b263d92c406aeb7e6520dec1` |
| 40 | `theorem` | [ι_gluedIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/gluediso-hom.md) | 363 | `result-track:c68dd68d49a07c047fdd26b136b2ff5cfba4ed9ac189b0c3b4def4fd15e1aa58` |
| 41 | `theorem` | [ι_gluedIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/gluediso-inv.md) | 372 | `result-track:54b1538b82071e53f8882d63ee3d367bada83b30337e244f67ce789e388d649d` |
| 42 | `def` | [vPullbackConeIsLimitOfMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/vpullbackconeislimitofmap.md) | 378 | `declaration-track:9ba5c4dd213af669010bc733843e613f5d84b3bfcb9e912378f02f4f92a43a91` |
| 43 | `theorem` | [ι_jointly_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GlueDataDiagramL.lean/declarations/jointly-surjective.md) | 405 | `result-track:79170e1be7573631196cf352a3d715f4c815786f21333ff3418bd554b11f0654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f11505e70bc2575e65da074b2c93465d317df93aec4646b98fa6aac83e41069f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
