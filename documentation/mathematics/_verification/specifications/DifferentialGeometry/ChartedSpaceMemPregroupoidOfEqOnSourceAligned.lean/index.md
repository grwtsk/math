# Verification target: Charted Space Mem Pregroupoid Of Eq On Source Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f73560526c32ca7ceb4c68d3b7b39da3540080d7",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/index.md) · [Full source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f73560526c32ca7ceb4c68d3b7b39da3540080d7`.

Source path: `GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Align` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalHomeomorph` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StructureGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid.md) | 166 | `declaration-track:903c47fe19b83bb2668eda7fb22e86a35821fd276957b92de91299dcd3ad68d7` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-7.md) | 178 | `declaration-track:a9fb3fdeb859420e05c31dd0e6d27d67af562a94244918bb8bb2773c4a19b490` |
| 3 | `theorem` | [StructureGroupoid.trans](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-trans.md) | 181 | `result-track:1b324c258ab56b08b7a47cd0449622663485a514ceb286a5c94c7cceb9f83260` |
| 4 | `theorem` | [StructureGroupoid.symm](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-symm.md) | 186 | `result-track:c1f777beedc4ce8c4ded679c36e6d6b4c6bd0ccfb6710faa8aeeab56143a9c14` |
| 5 | `theorem` | [StructureGroupoid.id_mem](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-id-mem.md) | 191 | `result-track:45d202a138f1fa58c5321dbd53b754ddf03af1d6dd0afb974697e4b4e05d8524` |
| 6 | `theorem` | [StructureGroupoid.locality](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-locality.md) | 195 | `result-track:e398b396f4ffce335c7b915f725e98b2721610dafc8c57da761d935c53d5d7ac` |
| 7 | `theorem` | [StructureGroupoid.eq_on_source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-eq-on-source.md) | 200 | `result-track:79ee285b55507a7c9cd05d303963ab81b45d92d26603d5c8ec272f4ede6057f5` |
| 8 | `instance` | [StructureGroupoid.partialOrder](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-partialorder.md) | 206 | `declaration-track:430e353d616d49a8fd98f3a4b55b6672763564dee25df679edad01bf74484e25` |
| 9 | `theorem` | [StructureGroupoid.le_iff](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-le-iff.md) | 215 | `result-track:d58d189b9c6d4fb60695a5d24525901b8e975a0bbdc97b5e17ace9f5bb6a31d2` |
| 10 | `def` | [idGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/idgroupoid.md) | 221 | `declaration-track:2f431399ddddb8e9b1afd0aec8a9ea3cae6e7c9e95235685e50e6f53431b6d6a` |
| 11 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance.md) | 274 | `declaration-track:010cb7cba745c42271cf4289ba1bed22248a229040de1196fdaa3a0d38fc09e1` |
| 12 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-3.md) | 288 | `declaration-track:347c6d44ee46aa8890ee8615b32b402ea40d80e383d84fe7da1b3df4d36fb566` |
| 13 | `structure` | [Pregroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/pregroupoid.md) | 295 | `declaration-track:4a01b983b8e89861b8f77cbe3b9295ce1e2898632343a1e06578a6be492b3f17` |
| 14 | `def` | [Pregroupoid.groupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/pregroupoid-groupoid.md) | 307 | `declaration-track:1dc96d26a69f359fceab83ea1da73067bbdd8b4f22afcf994459e6d22c421d9d` |
| 15 | `theorem` | [mem_groupoid_of_pregroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-groupoid-of-pregroupoid.md) | 347 | `result-track:619d4158a54aa28607eb831c463845e043fea9d99144fc9308de4f77d720f8b6` |
| 16 | `theorem` | [groupoid_of_pregroupoid_le](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/groupoid-of-pregroupoid-le.md) | 352 | `result-track:797a74aabb6794f76a1bbca521ec397b4e7c2b17e4106eb88c0b554fde009250` |
| 17 | `theorem` | [mem_pregroupoid_of_eq_on_source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-pregroupoid-of-eq-on-source.md) | 359 | `result-track:9d3b20c519f2d46084950934a72a44321a2a75c198ea518bf82565d644be6e3c` |
| 18 | `def` | [continuousPregroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/continuouspregroupoid.md) | 367 | `declaration-track:0a1f930f2a20cbdf75589ecf17e3570ccc17d918452f92118ba9a48bd5668ebc` |
| 19 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-5.md) | 375 | `declaration-track:4746ae55fb71651faa79ee9dccca090b7ef76ccd52422a79b488a6c3c680fc84` |
| 20 | `def` | [continuousGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/continuousgroupoid.md) | 379 | `declaration-track:368429c927c35656740cb39548942b52c0207ad214e2d563ec01f2d5c07719f8` |
| 21 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-8.md) | 384 | `declaration-track:e3cdc5b937a7986145f79fde8fa2c00bc6e228b68a1a723d140894217fd5c79d` |
| 22 | `class` | [ClosedUnderRestriction](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/closedunderrestriction.md) | 390 | `declaration-track:69fa1311173023a6ed619645d88340b859637fec53b562f0397ab87ce93da683` |
| 23 | `theorem` | [closedUnderRestriction'](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/closedunderrestriction-source-edition-2.md) | 395 | `result-track:c46e1dc40adccb1bd25601a619c0022a5654330bef4f36416af312819fef7cfe` |
| 24 | `def` | [idRestrGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/idrestrgroupoid.md) | 402 | `declaration-track:6baecb1608153999574fa88863f9298070f3c57cff32905dc4f8ed20ba4bc5e9` |
| 25 | `theorem` | [idRestrGroupoid_mem](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/idrestrgroupoid-mem.md) | 431 | `result-track:62c4546364f605c99eda488d7b2373df4e3c27a766bfda325221ff1e1d740fbd` |
| 26 | `instance` | [closedUnderRestriction_idRestrGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/closedunderrestriction-idrestrgroupoid.md) | 436 | `declaration-track:3d5dbd94d520744494d0de81e611b43b98d5129399ee0fb3cca35c32d8454589` |
| 27 | `theorem` | [closedUnderRestriction_iff_id_le](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/closedunderrestriction-iff-id-le.md) | 446 | `result-track:f7afe9a7a2c5a55528953b336fae1a5cf68abdc9a8d147c0e9caae17cc0d49ed` |
| 28 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-4.md) | 473 | `declaration-track:3dde6badd79b4912c503e705006ab94bafc119897303ebad1494779978ab7e15` |
| 29 | `class` | [ChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace.md) | 491 | `declaration-track:8c1cbd2fe01168895174ca35a9edceb6ce119ed820470a083d47f96e6013303b` |
| 30 | `abbrev` | [atlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/atlas.md) | 498 | `declaration-track:a12a193b588583a26368d47dedbb7a373fb25028fa5487ab6e6f1f200c69da96` |
| 31 | `abbrev` | [chartAt](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartat.md) | 502 | `declaration-track:7f4ff1e791a83676c601a3d39a5a12028f249996ee57a84392fe23666aca328b` |
| 32 | `lemma` | [mem_chart_source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-chart-source.md) | 507 | `result-track:3edb5e806cb7f0ffb9d630725a7a6985c82b42b4403c897cc2b55fdfb3b7dfe7` |
| 33 | `lemma` | [chart_mem_atlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chart-mem-atlas.md) | 512 | `result-track:4754a78f1fe5963b310faf9e4e717ccf8c4caa4f336404f2b72b362e1abafa77` |
| 34 | `instance` | [chartedSpaceSelf](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspaceself.md) | 519 | `declaration-track:eb2ae24e2a308bd500e918b40156376487d460e77a1820a6a0c7f9540903cab1` |
| 35 | `theorem` | [chartedSpaceSelf_atlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspaceself-atlas.md) | 529 | `result-track:26e27ae3023ac14bbb8f365de6539248fadf468f46e8b494313be39ec7cf3d92` |
| 36 | `theorem` | [chartAt_self_eq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartat-self-eq.md) | 535 | `result-track:3ebb3f5ecb7c016e5602fff9b73e2728e6783267087f1d9401cff029e849b807` |
| 37 | `theorem` | [mem_chart_target](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-chart-target.md) | 544 | `result-track:37fdee9ab740d60d869fdef0d5776a8e61b81c245c75cd8605bd87f9d3d0d1b1` |
| 38 | `theorem` | [chart_source_mem_nhds](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chart-source-mem-nhds.md) | 548 | `result-track:0c1aaea24409c6ad85b7ac0a0c2e3e3006425072bddf5e0c679da540a161575f` |
| 39 | `theorem` | [chart_target_mem_nhds](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chart-target-mem-nhds.md) | 552 | `result-track:1b18e03bdb91398be35af150c4c61801e56e1715e08bcaca86fa97f5dd93b311` |
| 40 | `def` | [achart](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/achart.md) | 558 | `declaration-track:dfe97978c9ab8fca56ef8f5f4022bb70783c5b9d51c95d8aa0dcab1eec263911` |
| 41 | `theorem` | [achart_def](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/achart-def.md) | 562 | `result-track:cb62f251d58d1e7c1fb0fd35af0e14461754991b96a96e4346bc87f56ffd4d4b` |
| 42 | `theorem` | [coe_achart](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/coe-achart.md) | 567 | `result-track:45ec07f29ff0c731f98739dbd8ea2c460a271c9bbd3c0b56a8ad5d41f131e056` |
| 43 | `theorem` | [achart_val](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/achart-val.md) | 572 | `result-track:c4a9e4f09ac7efbf7c58e03a0ea10a406d46faf900bf0e113096a7d884d1e28f` |
| 44 | `theorem` | [mem_achart_source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-achart-source.md) | 576 | `result-track:e819a1d02edf843978a2af71e14b3653eca4fa909e6fbdcefb1751174a8bb05c` |
| 45 | `theorem` | [ChartedSpace.secondCountable_of_countable_cover](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-secondcountable-of-countable-cover.md) | 582 | `result-track:8381d3bb3c40a6ede8d71a932f9a9fa2a92662806507098677a93c01885dc2d4` |
| 46 | `theorem` | [ChartedSpace.secondCountable_of_sigma_compact](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-secondcountable-of-sigma-compact.md) | 594 | `result-track:88a88037920432f1ef185cb5c714556eb01db88c76be40ffd880e0cc143ccff3` |
| 47 | `theorem` | [ChartedSpace.locallyCompactSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-locallycompactspace.md) | 603 | `result-track:f1907d2d9b6e8bbd74105db94d3af91f9621327a96986938ada0cca7b41c9c91` |
| 48 | `theorem` | [ChartedSpace.locallyConnectedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-locallyconnectedspace.md) | 617 | `result-track:f4497f65986a77e6cb5ec5a8ec7e55f6bcda42ea67a12a99987cde5d882a854e` |
| 49 | `def` | [ChartedSpace.comp](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-comp.md) | 631 | `declaration-track:936f3b8d4de99e18217cdfa0b9431cfbcc8b0519e51b1a15f462706f391b962b` |
| 50 | `theorem` | [chartAt_comp](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartat-comp.md) | 640 | `result-track:058b0ac916f856fe6f369be8e85361fa7e4aaffd1f6004e67bccef99127295ce` |
| 51 | `def` | [ModelProd](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelprod.md) | 665 | `declaration-track:4e7fbb7c36c381d7168b7866a0d88cb944ed5c5564c31ea846093e6828c17cd4` |
| 52 | `def` | [ModelPi](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelpi.md) | 671 | `declaration-track:4e57844cf545e1e094e3160cc1e29861becaed5b7acade047ec5995120ef9cd5` |
| 53 | `instance` | [modelProdInhabited](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelprodinhabited.md) | 679 | `declaration-track:6292b5b195abf31da82247fa6104b7ce8e3e1566d55f96c4a558222c0c1ad25d` |
| 54 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-2.md) | 683 | `declaration-track:263d7c39a3131fec5f909e6b1d5d22a1f83285ee3a2bcdd3ff4e9183a4231f88` |
| 55 | `theorem` | [modelProd_range_prod_id](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelprod-range-prod-id.md) | 690 | `result-track:6c106aec89d0a8e633a8b7a7803786a5d89b5f14f6f253342e452ad89d3b03df` |
| 56 | `instance` | [modelPiInhabited](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelpiinhabited.md) | 703 | `declaration-track:0c45bbfb18bd58fd3e4a3dca4cdb5ef50473cae2adca988e763b388c8294a809` |
| 57 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-6.md) | 707 | `declaration-track:8afe30598afc078026bd40d7ded0987211c2dc51fd8cb05522ae54bb6432df47` |
| 58 | `instance` | [prodChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/prodchartedspace.md) | 714 | `declaration-track:b8ccf2a8716d638697b0d033ac9302bba227ee87ff3f6a345fbd6453865be635` |
| 59 | `theorem` | [ModelProd.ext](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelprod-ext.md) | 726 | `result-track:f37a66fd8fb0ffd12e55452e3a199298e29ea05a24651a829263294041372de7` |
| 60 | `theorem` | [prodChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/prodchartedspace-chartat.md) | 733 | `result-track:ebfa38e2a38a052c3ada340e308d1d61ba4cc50873ae5456098429d4812b0607` |
| 61 | `theorem` | [chartedSpaceSelf_prod](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspaceself-prod.md) | 738 | `result-track:f6f63caaf6ac64c856de3091ee8d715ea3ecbc336e61be48b919ec3167990b42` |
| 62 | `instance` | [piChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/pichartedspace.md) | 750 | `declaration-track:3dea073af40d19fe549abebeffc8caf62355f8967a3253643e25630b60489605` |
| 63 | `theorem` | [piChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/pichartedspace-chartat.md) | 760 | `result-track:859d7e35c7416df203a8b4d7b5d384c15ff332151f28a6eb3d9deb827c48107b` |
| 64 | `structure` | [ChartedSpaceCore](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspacecore.md) | 777 | `declaration-track:9714604dab87a679125d05d4a69325f0c46efa1b7db462da08734273eb90e1dd` |
| 65 | `def` | [toTopologicalSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/totopologicalspace.md) | 792 | `declaration-track:be98250f4460344a924c244425e989b285cca6eeb4060cae626b5c24c34de42b` |
| 66 | `theorem` | [open_source'](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/open-source.md) | 798 | `result-track:280f783ae964c3501f6c0e17762c9030aee631d0ce20f889cc0a29ca847073b8` |
| 67 | `theorem` | [open_target](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/open-target.md) | 805 | `result-track:3db2c910fabd1b8b436fae58af986a0053cc5f03d243c2081c8bb01b5cd72780` |
| 68 | `def` | [localHomeomorph](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/localhomeomorph.md) | 815 | `declaration-track:782bcc37d44662ac6b5ab1dc61d8c47f9d91276d6c556834652911d36bd7d6be` |
| 69 | `def` | [toChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/tochartedspace.md) | 849 | `declaration-track:7f58989b90ac996eb99724fe4a0f08e82a00fdb523b1ab3a868266d777296b3c` |
| 70 | `class` | [HasGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid.md) | 870 | `declaration-track:3a5841e7eb10f7002001770e3a3bdccaa77f76ea948930fba632982043549117` |
| 71 | `theorem` | [StructureGroupoid.compatible](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-compatible.md) | 878 | `result-track:7233997e1db96ecc368a16dd424a7e15f0ff3509b5b387fa88d9d50dc4697a44` |
| 72 | `theorem` | [hasGroupoid_of_le](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid-of-le.md) | 884 | `result-track:7ab1c9ed836212f16ad2bc28d136eb0be48703293cca36cdb9324fde338b2db4` |
| 73 | `theorem` | [hasGroupoid_of_pregroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid-of-pregroupoid.md) | 889 | `result-track:91fb00fc7af294f48eecd5c71e3b24a1c8ba2a65f5b3125168a3e9df73e130be` |
| 74 | `instance` | [hasGroupoid_model_space](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid-model-space.md) | 896 | `declaration-track:592be72ac1860a6a6443a4c6b8547817a6fa7f82ba255f6fbc01a4a179c93eb4` |
| 75 | `instance` | [hasGroupoid_continuousGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid-continuousgroupoid.md) | 904 | `declaration-track:7c64db61cb1788fea695df8008953d50657473eb528cec4621d083593118b8e1` |
| 76 | `def` | [StructureGroupoid.maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-maximalatlas.md) | 917 | `declaration-track:ec96a4c02306f348caff0d3d416dbfdceeb7451c8e052cac5009904715efd267` |
| 77 | `theorem` | [StructureGroupoid.subset_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-subset-maximalatlas.md) | 924 | `result-track:7d455f3e3b101e173e987ab775e520f24831db182c3cc2941f979b88740248d8` |
| 78 | `theorem` | [StructureGroupoid.chart_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-chart-mem-maximalatlas.md) | 928 | `result-track:3f583053df0d61b43ee701c5e35b55d83ff61da1aa6f5ac25754c512e92bc02c` |
| 79 | `theorem` | [mem_maximalAtlas_iff](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-maximalatlas-iff.md) | 935 | `result-track:129529af3cbf82607358c5134f3ac70b788657ec9a23442df5dcab14f8137ead` |
| 80 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas.md) | 942 | `result-track:dad6cb7aafa5b6058e2a52c6fcae1873ebf2cf745c7aace84dc07c2d62b72912` |
| 81 | `theorem` | [StructureGroupoid.id_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-id-mem-maximalatlas.md) | 969 | `result-track:82d6f5867ee71b25872ba5ed88cca4d2f9fd616b33614516e76073880fd2da90` |
| 82 | `theorem` | [StructureGroupoid.mem_maximalAtlas_of_mem_groupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-mem-maximalatlas-of-mem-groupoid.md) | 974 | `result-track:ffdabc585859da373f0973b7c1a7827b6b1d2e4f6e87fd1749569a08142e68ac` |
| 83 | `def` | [singletonChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-source-edition-2.md) | 994 | `declaration-track:d2f3ceb666e95e8637a273cd60888d1d4de59e9a41c0165659cebc4937a78958` |
| 84 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-chartat-eq.md) | 1002 | `result-track:cac2e0396b02264bbff8f8fa3123f6b56df6fa0ea9438bd3cd644d4a11039a84` |
| 85 | `theorem` | [singletonChartedSpace_chartAt_source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-chartat-source.md) | 1007 | `result-track:608935093f13d30cd99692986466b1ad02dd2cdf7e452c2ad8298985f7d2edca` |
| 86 | `theorem` | [singletonChartedSpace_mem_atlas_eq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-mem-atlas-eq.md) | 1012 | `result-track:e48dbf84ecc4e891b23ece243ec31f14645dbf4b83e29c4ce56c9e5d8225b35b` |
| 87 | `theorem` | [singleton_hasGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/singleton-hasgroupoid-source-edition-2.md) | 1020 | `result-track:89cbef9b9c32a20c8215fc28d042f7b80467abb0a3965ff26df24f9a136ed97a` |
| 88 | `def` | [singletonChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace.md) | 1040 | `declaration-track:60f46453f02f5d79380f4d6ec0e9508240d28ee3d0086cf5adad5677a2f4371d` |
| 89 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-chartat-eq-source-edition-2.md) | 1044 | `result-track:cc60e9be1cfd9370ecd67a0041182fbecabc12321189f237ee3c3952540a9106` |
| 90 | `theorem` | [singleton_hasGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/singleton-hasgroupoid.md) | 1049 | `result-track:84772362e58e931650840d69efb9913a357f262c47c214925c24f796400eec4c` |
| 91 | `instance` | [instChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/instchartedspace.md) | 1067 | `declaration-track:4bc475d796e05cb42e24afc3f9753d6330e7667c47e220f9e7d3ff85e75700ae` |
| 92 | `instance` | [instHasGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/insthasgroupoid.md) | 1078 | `declaration-track:4bed8a26adfbc6645e0d2926020a3f0dd936846c564a0650c7b5cf6e7450b334` |
| 93 | `theorem` | [chartAt_inclusion_symm_eventuallyEq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartat-inclusion-symm-eventuallyeq.md) | 1092 | `result-track:2d44baea35c1ce36d5493b9be1225d9a709a08b2ac3a3321f1ae63273f5f0024` |
| 94 | `structure` | [Structomorph](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structomorph.md) | 1114 | `declaration-track:307858fb0b8c1845e3861b1fa1388e92d95576f5b68e4f80f2c7106c7b484663` |
| 95 | `def` | [Structomorph.refl](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structomorph-refl.md) | 1124 | `declaration-track:c9fb215bc76d623797a86e1924a471ae585bfeafd7ca461f4aa5df5652f7b23e` |
| 96 | `def` | [Structomorph.symm](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structomorph-symm.md) | 1134 | `declaration-track:a13d8fe23dacfc5f508b4b053b4f9e1f742b5aa6b6cf7993e65a13fe4edb081f` |
| 97 | `def` | [Structomorph.trans](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSourceAligned.lean/declarations/structomorph-trans.md) | 1145 | `declaration-track:2d5ec612f45821bcac80d8d5353191a73bdc1d8bb1d841037911ce46dc94bfea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3764afced6005acc602f737288dbcf54bd5cceb0de1dc2a7dd9a3d4e10fe657d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
