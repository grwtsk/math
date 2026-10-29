# Verification target: Charted Space Namespaced Mem Pregroupoid Of Eq On Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abd81ea31de08f385703acb1d45d7dc424966258",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/index.md) · [Full source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abd81ea31de08f385703acb1d45d7dc424966258`.

Source path: `GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.PartialHomeomorph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.LocPathConnected` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StructureGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid.md) | 168 | `declaration-track:dc7ae49f891ddae7ae9094d8870af3cb7e3a63a6b38a466c3943be6cd81cbc20` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-8.md) | 186 | `declaration-track:e8c90e5cedaa9c57527c9298b21ddafcdd4b47b9d26ae3a1d852c7e4e0f8d251` |
| 3 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-9.md) | 189 | `declaration-track:f26ba46d4620d5b094028e9b0e0e5754fd6eff7b9f2625ea94ad0e56d49c8f87` |
| 4 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-2.md) | 194 | `declaration-track:33613aec403f6d11a02c2740c15efb35ce465dbdf7a529c5e546e7db6fe096db` |
| 5 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-10.md) | 215 | `declaration-track:f2991eea6481179529e2199d4f9daafaff0b96ee0e24544ddefd0b0934fee6b9` |
| 6 | `theorem` | [StructureGroupoid.trans](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-trans.md) | 242 | `result-track:164fb08730472218e8d01967b719f0d04f1baff073820e372cb96f0b913392d0` |
| 7 | `theorem` | [StructureGroupoid.symm](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-symm.md) | 246 | `result-track:702d3e0ee05481e4b78df0a30c6d608d1b6ee9a5269651a10b82abba42fe245c` |
| 8 | `theorem` | [StructureGroupoid.id_mem](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-id-mem.md) | 250 | `result-track:82584fb528449cc438595278f2cc0a25acfa395d1142d380e6b6412a819e81ca` |
| 9 | `theorem` | [StructureGroupoid.locality](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-locality.md) | 253 | `result-track:402b96a7903c62c1b7a1031c85cfc6f8f9803925c769318d53492b7a4c3bfa6d` |
| 10 | `theorem` | [StructureGroupoid.mem_of_eqOnSource](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-mem-of-eqonsource.md) | 257 | `result-track:94acc25eee54b746c31c08cc1023039b2766210bc77e299dc0d6a2a1874d5840` |
| 11 | `theorem` | [StructureGroupoid.mem_iff_of_eqOnSource](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-mem-iff-of-eqonsource.md) | 261 | `result-track:ab69ae86504ed1c0bb7a35da2d4ff0933d48d2a2577d944e79914b21080aac1a` |
| 12 | `instance` | [StructureGroupoid.partialOrder](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-partialorder.md) | 266 | `declaration-track:07cc602fea2d97834e83df15f5e4d57fc4b150bc8c271f155a9f3730a9da6a96` |
| 13 | `theorem` | [StructureGroupoid.le_iff](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-le-iff.md) | 274 | `result-track:21cdede2237fb367dcac9196cc60c9ac64dffc4242a1384ac2d26193e1daac4e` |
| 14 | `def` | [idGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/idgroupoid.md) | 279 | `declaration-track:22a4dd03d1301a4479399b2f3d74ff18c250d63e3cc2a583f53b56054425e7fa` |
| 15 | `instance` | [instStructureGroupoidOrderBot](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/inststructuregroupoidorderbot.md) | 331 | `declaration-track:252dec279528d719ffb57ba87af1a23850cb6c28e3c7664e6f8c193a30658d21` |
| 16 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-6.md) | 345 | `declaration-track:bf36114708b8e7bfdc26603b121b4852e24dabe8da8d9523dbef9c76027e2045` |
| 17 | `structure` | [Pregroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/pregroupoid.md) | 351 | `declaration-track:7bbbf616ec26f1943163c5b8036e3eec829020aa3bd2c1ebd36d84ff82fec046` |
| 18 | `def` | [Pregroupoid.groupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/pregroupoid-groupoid.md) | 369 | `declaration-track:fd96c9e8f12fb00d3b65a4ecdf62dd17d0c9ea7d2fcc5314519057aa6cf9abd8` |
| 19 | `theorem` | [mem_groupoid_of_pregroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/mem-groupoid-of-pregroupoid.md) | 408 | `result-track:66afabb17b920ec1c174d519e69cf78034e4f54afe4bc4e168f74eb88af45efb` |
| 20 | `theorem` | [groupoid_of_pregroupoid_le](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/groupoid-of-pregroupoid-le.md) | 412 | `result-track:1a4f86661faba2176d8de3eda4b0191532bbf52ef94b289b281cf726f8cb71cb` |
| 21 | `theorem` | [mem_pregroupoid_of_eqOnSource](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/mem-pregroupoid-of-eqonsource.md) | 418 | `result-track:5d92bfe72221d52aaba128a071996261d24c974ef59a656396477abc24c7ff3b` |
| 22 | `abbrev` | [continuousPregroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/continuouspregroupoid.md) | 424 | `declaration-track:12efe6c3f0edf15a70d652593b91533d4173b779cb262c781b39df72f7e5fefe` |
| 23 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-5.md) | 431 | `declaration-track:9294443dfba0b5862e57eb45c19d11ed64c0de8be5512664c6e37a255bccdd30` |
| 24 | `def` | [continuousGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/continuousgroupoid.md) | 435 | `declaration-track:a76bd1a22bc5d20118ca62224eccf2a5ad323efe704ea49962e533c6f5e29500` |
| 25 | `instance` | [instStructureGroupoidOrderTop](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/inststructuregroupoidordertop.md) | 439 | `declaration-track:4a44716f19e03d27ccdc1f7a7e8d939027f6631a618686503d45eda9b9a1d858` |
| 26 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance.md) | 443 | `declaration-track:2b729634c4a9805ac4648a7273997fcbea1ba480fc8ac856808fe90713947ebc` |
| 27 | `class` | [ClosedUnderRestriction](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/closedunderrestriction.md) | 462 | `declaration-track:94831187fa9528034952db90571e7530e5aa2bdedd35b01f6daf8fd234234b71` |
| 28 | `theorem` | [closedUnderRestriction'](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/closedunderrestriction-source-edition-2.md) | 466 | `result-track:ee8aef088bdb368434642b04acfde8e97df5fd4eb589d121659bdbc31073c04e` |
| 29 | `def` | [idRestrGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/idrestrgroupoid.md) | 472 | `declaration-track:567bfd3a7dd518ad1bd41f541c41b843415574e9cc2d8aa45b6e9f1cf7512985` |
| 30 | `theorem` | [idRestrGroupoid_mem](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/idrestrgroupoid-mem.md) | 500 | `result-track:87b18c53aca5378e2f29980681f97d84a5c8de5a91ea16a809da85a10f4cba16` |
| 31 | `instance` | [closedUnderRestriction_idRestrGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/closedunderrestriction-idrestrgroupoid.md) | 504 | `declaration-track:fd050c698ee51dd83a36b1bd94e6d47d1d215fbb13c156d7b4bd200b00543f09` |
| 32 | `theorem` | [closedUnderRestriction_iff_id_le](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/closedunderrestriction-iff-id-le.md) | 513 | `result-track:15b3127bdff18dea1ca207206d105ac700a279c6fe2453af33db3d15bd9f5f5b` |
| 33 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-3.md) | 539 | `declaration-track:595a62c3c6911b876ba22714b4994907dd87fc18319e2461d79f159dd87b3e8e` |
| 34 | `class` | [ChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace.md) | 556 | `declaration-track:fc5b92a28ad1e19fdac975067ae6994ea8f9abf1e4df491b7a57f11cd95cc2be` |
| 35 | `abbrev` | [atlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/atlas.md) | 565 | `declaration-track:a21ae3f59a1009e0167b351b17e25846eb7c6cd426bdac4db08a81604ecaade1` |
| 36 | `abbrev` | [chartAt](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartat.md) | 570 | `declaration-track:3746aeadde9936d9129095c509751df9505e4ad849f57e71a009487a8d1ecc99` |
| 37 | `lemma` | [mem_chart_source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/mem-chart-source.md) | 575 | `result-track:338f6c19a9ef5d2e865b5e0f621393a6f162ddcb8efb625e22cf2285868d1ef9` |
| 38 | `lemma` | [chart_mem_atlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chart-mem-atlas.md) | 580 | `result-track:4fd8d59fb620ad8968b78860ffd29d289b4e4296b3f0cd955aebe560550edbc4` |
| 39 | `lemma` | [nonempty_of_chartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/nonempty-of-chartedspace.md) | 584 | `result-track:8f1296249a808d1713cff7aa0aa90b0e1481c8af77b6e7139f8ecf48d758f4be` |
| 40 | `lemma` | [isEmpty_of_chartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/isempty-of-chartedspace.md) | 588 | `result-track:5e27c9d56e6681af0298b0f49b9f938bbdf546330a40a68d48e6cb9eb9ac38d9` |
| 41 | `theorem` | [mem_chart_target](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/mem-chart-target.md) | 601 | `result-track:5cc37594e4c2f8eca58acf43978af6b5b8620d8493b81c01037222683ce7f10c` |
| 42 | `theorem` | [chart_source_mem_nhds](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chart-source-mem-nhds.md) | 604 | `result-track:ca07907333fbab86292a98fb4de57c2f164923adfb5a904aad03a29c8613560d` |
| 43 | `theorem` | [chart_target_mem_nhds](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chart-target-mem-nhds.md) | 607 | `result-track:08aea152beb7b364c6ee1a41c994f0384c66463040d578d593db70992d53dc5c` |
| 44 | `theorem` | [iUnion_source_chartAt](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/iunion-source-chartat.md) | 612 | `result-track:1b8ab65773204da0c39ff45f57300158600c195fe2838d41a89d30c8fbe4bba5` |
| 45 | `theorem` | [ChartedSpace.isOpen_iff](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-isopen-iff.md) | 615 | `result-track:02ceaf49f0cfd3bb0edb293b63d509a871e764697ab1ef0e5600cfb4e3ff2bc4` |
| 46 | `def` | [achart](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/achart.md) | 622 | `declaration-track:030cf444ec686b1e374924e04356701135cce3b46d96b2bb21cc44c289a836a8` |
| 47 | `theorem` | [achart_def](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/achart-def.md) | 625 | `result-track:c5814bf5b831956ffe8ab7567ad5b84173d561f63037aff731a3ad8a8ec3e10c` |
| 48 | `theorem` | [coe_achart](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/coe-achart.md) | 629 | `result-track:15afd8b3da9819302a772358aaaa308d91123207f30197c0459336d8240c2d25` |
| 49 | `theorem` | [achart_val](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/achart-val.md) | 633 | `result-track:42ad8618800669481be7b1658124abc37e7d1df70eeb462af862ae566b7c17e1` |
| 50 | `theorem` | [mem_achart_source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/mem-achart-source.md) | 636 | `result-track:93eb075a6985dac25c75445e347bbef4e2c4c85c134ccdaa5608d87e039306d6` |
| 51 | `theorem` | [ChartedSpace.secondCountable_of_countable_cover](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-secondcountable-of-countable-cover.md) | 641 | `result-track:934074310e6853649e6775b1b5984d9c4fabd4fe3ba3243dabcbffcca67e14ef` |
| 52 | `theorem` | [ChartedSpace.secondCountable_of_sigmaCompact](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-secondcountable-of-sigmacompact.md) | 652 | `result-track:9091e57d73178cdbf603a3bf2a8e2af85b2625640bdca7c130ce20e9e3970a34` |
| 53 | `theorem` | [ChartedSpace.locallyCompactSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-locallycompactspace.md) | 663 | `result-track:f2d875dc5c894ba1894552280b0769ae4dc2a690bfd581301cb2df8e70091d40` |
| 54 | `theorem` | [ChartedSpace.locallyConnectedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-locallyconnectedspace.md) | 676 | `result-track:f34c7818212c7ec6dcb6d4754f9fe4fc40b5dd252ca6eb6bbb4254d65aa062f9` |
| 55 | `theorem` | [ChartedSpace.locPathConnectedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-locpathconnectedspace.md) | 689 | `result-track:a6b76ad98fa3cbad8e07c7b87da9c5f04441985814f9b43e8d9a6637f99dbbd1` |
| 56 | `def` | [ChartedSpace.comp](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-comp.md) | 706 | `declaration-track:ed67aa49fe137df9f90325f8f5b9f250f719e1b0ecc1b0fdf619a80abe7c5bb1` |
| 57 | `theorem` | [chartAt_comp](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartat-comp.md) | 714 | `result-track:03ed1597015b16426f104f7790774a1c87287a03ced9ecd97fe927da1597f91b` |
| 58 | `theorem` | [ChartedSpace.t1Space](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-t1space.md) | 721 | `result-track:2146006db8ccb47dc5725a5488c1a7670a4f5f03c2e309742903015b7abc107b` |
| 59 | `theorem` | [ChartedSpace.discreteTopology](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-discretetopology.md) | 732 | `result-track:23b0b53af141cf866e9fbdd8b0bea866ff7439aad75c184dce0a682487f82565` |
| 60 | `def` | [ChartedSpace.empty](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-empty.md) | 747 | `declaration-track:71aa7c8d81b06ac0ed55cd27c3356e42e21155fde0a7c46b4707f2935cf5acda` |
| 61 | `instance` | [chartedSpaceSelf](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspaceself.md) | 755 | `declaration-track:4fdc2f089ffd027ad99d7d3c5464e15ba6bd89a82106a074873668c428aaf576` |
| 62 | `theorem` | [chartedSpaceSelf_atlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspaceself-atlas.md) | 764 | `result-track:d954b6eeb474bf04da9debdfbad782f9fcf3afeb9e59eeb3f95e37b5c5de75ba` |
| 63 | `theorem` | [chartAt_self_eq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartat-self-eq.md) | 769 | `result-track:8325d9ea4b700731f749ec90367092bae921a03fdc834e8667449cf906194a98` |
| 64 | `def` | [ChartedSpace.of_discreteTopology](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-of-discretetopology.md) | 776 | `declaration-track:213a620ddc7bf65845e1aaa9d3414bab0bb10fe2438c8956bc3aa7ee5c102f51` |
| 65 | `lemma` | [chartedSpace_of_discreteTopology_chartAt](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-of-discretetopology-chartat.md) | 788 | `result-track:331a2db7995bcdcf1cf0f8b5f4fb2d334014787e740439e3fdb84a94b4b55b5c` |
| 66 | `def` | [ModelProd](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/modelprod.md) | 814 | `declaration-track:4dec76f4cb1c822b4895fe00a8eb9d3f6a0509407718631b701f5d6806fa72b1` |
| 67 | `def` | [ModelPi](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/modelpi.md) | 819 | `declaration-track:143346373d8a15e44c199b3bfc50672467140adf33c7a7c23fdee17c3eaa3c1f` |
| 68 | `instance` | [modelProdInhabited](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/modelprodinhabited.md) | 826 | `declaration-track:d7bffd991252a6efea2e3defb1fe516376d0a3142ca83d525cbfa1f274f05ad1` |
| 69 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-4.md) | 829 | `declaration-track:71822966ad88337d1e5ad1afdd93cb71f549e1b7408784ce8b42582066e0f7cf` |
| 70 | `theorem` | [modelProd_range_prod_id](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/modelprod-range-prod-id.md) | 835 | `result-track:0d5bf5a5f62fbb5227647515734455630b943cc43c19f53232a9d5925103f17c` |
| 71 | `instance` | [modelPiInhabited](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/modelpiinhabited.md) | 846 | `declaration-track:8812743877cb13f310fe292ff533886095545e218029981f901d513f8ccf5b0d` |
| 72 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-7.md) | 849 | `declaration-track:e0d7797406aa60ae01a5826991f466af0d83a2bcb1d78aa50c859aa65ad04b16` |
| 73 | `instance` | [prodChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/prodchartedspace.md) | 856 | `declaration-track:99d08037f86d7c6c90629a857c46c06fa33e34d416ef3caa1706bb0afbbd7f7c` |
| 74 | `theorem` | [ModelProd.ext](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/modelprod-ext.md) | 867 | `result-track:f3285a39a22b22f9eca82e583c5106818401aa1f4c97c9b55cfe72871be35071` |
| 75 | `theorem` | [prodChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/prodchartedspace-chartat.md) | 874 | `result-track:e231ded258c96696f24b53dac9b3dc6062b9f16fe1e185352e09f24b43ec16bc` |
| 76 | `theorem` | [chartedSpaceSelf_prod](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspaceself-prod.md) | 878 | `result-track:4fca47254c01f6a8dd2f790df17f01a132a55cee6c0443f17fbfe715572d1d65` |
| 77 | `instance` | [piChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/pichartedspace.md) | 889 | `declaration-track:e916e2365a39706e58ce3400041c96221d562620b0a366e364a3703c51579bbc` |
| 78 | `theorem` | [piChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/pichartedspace-chartat.md) | 898 | `result-track:4b14952c60b4e0ee72b1852a29e3248cc3c16a09ebb47976d64d455bbf55f8c6` |
| 79 | `def` | [ChartedSpace.sum_of_nonempty](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-sum-of-nonempty.md) | 913 | `declaration-track:f4408dff92f41e68f0d06d958a02ba5408944b72e918088d75e13140ff2dd246` |
| 80 | `instance` | [ChartedSpace.sum](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-sum.md) | 941 | `declaration-track:f7a4913a74390d273a1c358087abf1db73cf8017075444cda4e5e8226bebf40c` |
| 81 | `lemma` | [ChartedSpace.sum_chartAt_inl](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-sum-chartat-inl.md) | 948 | `result-track:c7f059748ad1c8b31a657c107bfba3a58d425ca597533e8eb7b47d6f56067189` |
| 82 | `lemma` | [ChartedSpace.sum_chartAt_inr](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-sum-chartat-inr.md) | 955 | `result-track:482a76487f744316679764f4612ea128a710dcaf2b43c96df20b15a7271e909b` |
| 83 | `lemma` | [sum_chartAt_inl_apply](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/sum-chartat-inl-apply.md) | 962 | `result-track:52b8356fbeb369209033d2ae8afc52a94038191c99c9dc4cd57dbd8467ce99dd` |
| 84 | `lemma` | [sum_chartAt_inr_apply](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/sum-chartat-inr-apply.md) | 968 | `result-track:6a9f22cf24017f598f3effa9bbed9ca48e1a51bc6c30b690b384f94641f763cb` |
| 85 | `lemma` | [ChartedSpace.mem_atlas_sum](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-mem-atlas-sum.md) | 974 | `result-track:fa6626908b0f4cdcb2a4b60322dd813a770cde5aa856a257f438ad0e18a520d6` |
| 86 | `structure` | [ChartedSpaceCore](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartedspacecore.md) | 996 | `declaration-track:3e2c4f8f7c0e82bf65075599fb0d25b5117d704548c43a71b9be1705bddc0483` |
| 87 | `def` | [toTopologicalSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/totopologicalspace.md) | 1012 | `declaration-track:b91dacdbcb834e8224e0c131b2a94b525c3b9c2fa632c7b3d7517ba767bd98c7` |
| 88 | `theorem` | [open_source'](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/open-source.md) | 1017 | `result-track:2c390cc5458f48ed4d0f486b8e24e47c79efe710316ef10e3d19a19413ae705e` |
| 89 | `theorem` | [open_target](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/open-target.md) | 1023 | `result-track:7b42d2207c4fdce2eb436fc54dc982c948f9c2a338f709a2a579b6469491d312` |
| 90 | `def` | [partialHomeomorph](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/partialhomeomorph.md) | 1032 | `declaration-track:d21fb16cd93e15470f12eb44744d2651a6a4153082a9ed661ee23ab6b111127a` |
| 91 | `def` | [toChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/tochartedspace.md) | 1066 | `declaration-track:0f66837fc49a0cc4b5b353660a37647fd1524cdc7c332bca4e553197542214d4` |
| 92 | `class` | [HasGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid.md) | 1084 | `declaration-track:65bc9580747bf99c00978c7570e39b75716996a8fcc784723fda7e2edbc810a4` |
| 93 | `theorem` | [StructureGroupoid.compatible](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-compatible.md) | 1091 | `result-track:6930ab7d9c4398107ddd22b355d15ad00ef26fe65a0f40ddabb38e2a0b75ce94` |
| 94 | `theorem` | [hasGroupoid_of_le](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-of-le.md) | 1096 | `result-track:8fc892ce86f40fbd7b97f5f078e82af73f021887b8aced4ffb057484af39a859` |
| 95 | `theorem` | [hasGroupoid_inf_iff](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-inf-iff.md) | 1100 | `result-track:0a37e725b7ffdfb832c6bb002d7250e7318aeef6c695aafd991d55bd84aeb5d3` |
| 96 | `theorem` | [hasGroupoid_of_pregroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-of-pregroupoid.md) | 1105 | `result-track:089e656065fb33c4c4587af80c03d28bdbe298665be6fb5351bc2e082bb6a2e0` |
| 97 | `instance` | [hasGroupoid_model_space](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-model-space.md) | 1111 | `declaration-track:aaee92646d9de9873b11be36821a90a3c20f64e47e8ad0b26681747bbbeacc87` |
| 98 | `instance` | [hasGroupoid_continuousGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-continuousgroupoid.md) | 1118 | `declaration-track:59ad6888b56c83f4a12b45e897338d883e03a2f2925596f9e16c6c87856c1ec1` |
| 99 | `theorem` | [StructureGroupoid.trans_restricted](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-trans-restricted.md) | 1125 | `result-track:0e0345191bbc021f66357d8eb851ddca2e537e2395e3fb482e7efc822f55c328` |
| 100 | `def` | [StructureGroupoid.maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-maximalatlas.md) | 1140 | `declaration-track:be5911621eb0cf7ed0e1f6391f953208350e276e925744d1e98b6ed939f8381d` |
| 101 | `theorem` | [StructureGroupoid.subset_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-subset-maximalatlas.md) | 1144 | `result-track:1be78351c9083b8f8dcc49ccff87f40b2123ef26a3b3b8d54960b4a8fc13ab9b` |
| 102 | `theorem` | [StructureGroupoid.chart_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-chart-mem-maximalatlas.md) | 1147 | `result-track:3134b0eb24b3fc2866f731d18e6746e150d956f850d505ab076853637a2322d2` |
| 103 | `theorem` | [mem_maximalAtlas_iff](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/mem-maximalatlas-iff.md) | 1153 | `result-track:74a95625db278a2104e4682defcacb429b8b84006dcb1c610b0dc55d3ecf2273` |
| 104 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas.md) | 1159 | `result-track:6ef8f575a779b3f9fdc5d85d10b7c596abd95ddd5130868c62c93e8ed8231353` |
| 105 | `lemma` | [StructureGroupoid.mem_maximalAtlas_of_eqOnSource](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-mem-maximalatlas-of-eqonsource.md) | 1184 | `result-track:fef58172245cbbe17513f4f1af8337e1444b9b6d7d332d547c74d3428dcc0647` |
| 106 | `theorem` | [StructureGroupoid.id_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-id-mem-maximalatlas.md) | 1194 | `result-track:f63d33c6197f1f8fa4ac0e133beadd4e22d6c011f3b31fdcf11d0fd1165713f9` |
| 107 | `theorem` | [StructureGroupoid.mem_maximalAtlas_of_mem_groupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-mem-maximalatlas-of-mem-groupoid.md) | 1198 | `result-track:f087e856be5b18c5ced02d9fdaa5c777f3040c424912e64fcee5aef7ca3815b9` |
| 108 | `theorem` | [StructureGroupoid.maximalAtlas_mono](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-maximalatlas-mono.md) | 1203 | `result-track:2cf8b7ebbf930d481a9ae909bfadab655a3ccf57f72f2b77357e14f70ccc043a` |
| 109 | `def` | [singletonChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-source-edition-2.md) | 1221 | `declaration-track:3fde9bcb995386ceb9fd7062505a54a7a324d91a0911762f28fd698b55e98b99` |
| 110 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-chartat-eq-source-edition-2.md) | 1228 | `result-track:d27e7237075487580903756413419b962352de1983b99f12d19304952a1d5a9d` |
| 111 | `theorem` | [singletonChartedSpace_chartAt_source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-chartat-source.md) | 1232 | `result-track:9d37bc1078254a1a9ee949a50f0702f34fecabfb8d47588aad7968b37fcc5459` |
| 112 | `theorem` | [singletonChartedSpace_mem_atlas_eq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-mem-atlas-eq.md) | 1236 | `result-track:c59af55b8c20b8ac6c58ee743b87ac2d5b00e3e71f0e1094a5be1fc58fd61ee9` |
| 113 | `theorem` | [singleton_hasGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/singleton-hasgroupoid.md) | 1243 | `result-track:40e7f16271b5f18a830fe0d423160785f8e95f23dddfa2fed230060942bfb1b6` |
| 114 | `def` | [singletonChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace.md) | 1262 | `declaration-track:1d118d9865df8835eb81825c7b2d1b2bf2cf5772090e3badf2fb7771bce5cd0a` |
| 115 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-chartat-eq.md) | 1265 | `result-track:87611d519919c2be6d3b403a8408e503ed780ccc705567c12aebb0cd179c9104` |
| 116 | `theorem` | [singleton_hasGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/singleton-hasgroupoid-source-edition-2.md) | 1269 | `result-track:e7ecf458da046159c84fe5c388604869f39207d2747c968ded5a382fdb5fcc1e` |
| 117 | `instance` | [instChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/instchartedspace.md) | 1285 | `declaration-track:262f2ddc98df7345bc0749986eeacbae97e80f09222b310ca1b7bfe193894416` |
| 118 | `lemma` | [chart_eq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chart-eq.md) | 1295 | `result-track:08ed35a2079edc967aa2cfbdd8a3ae41fa0b3d37d2ccefb18bacf014fe392bc5` |
| 119 | `lemma` | [chart_eq'](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chart-eq-source-edition-2.md) | 1303 | `result-track:f87901ee7ea814b1d32747781d96e6a48b38c0a26811955eefc5bb14921262a7` |
| 120 | `instance` | [instHasGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/insthasgroupoid.md) | 1310 | `declaration-track:29214dfcdc1d9184c82575283942b556045080414a74875ee65717e5c675d17e` |
| 121 | `theorem` | [chartAt_subtype_val_symm_eventuallyEq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartat-subtype-val-symm-eventuallyeq.md) | 1322 | `result-track:0c055f2e9340d31c59eacacf73fc776ea4217c50c54a631e62d621dfa46f5a57` |
| 122 | `theorem` | [chartAt_inclusion_symm_eventuallyEq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/chartat-inclusion-symm-eventuallyeq.md) | 1330 | `result-track:3a0bb827e3dd2586f23613f068b2f44058f9f4a3019ca28cf14965c5721c3510` |
| 123 | `lemma` | [StructureGroupoid.restriction_in_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-restriction-in-maximalatlas.md) | 1347 | `result-track:8cd847d057aa8a22ef8a5197c06cfe9b772cf210fbf8fd8c992515cd0d5df98a` |
| 124 | `structure` | [Structomorph](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structomorph.md) | 1364 | `declaration-track:c1eae59aa5cf4c28ec3d3d310c0d8597656b860f5c233ecf8c85e41de2a94873` |
| 125 | `def` | [Structomorph.refl](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structomorph-refl.md) | 1373 | `declaration-track:5b5bbb14805640aa617b34b149f8d1679cb55d6a3409397492e6d40cd9e11885` |
| 126 | `def` | [Structomorph.symm](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structomorph-symm.md) | 1382 | `declaration-track:ff61ef0a7aa3d885bcd33da25f4aae6a4f98614f377a6be99e334ce9de6732cd` |
| 127 | `def` | [Structomorph.trans](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structomorph-trans.md) | 1392 | `declaration-track:52943747b41a3b134bf32362f6faa892ae139e257140ef94eb6ee891ef528219` |
| 128 | `theorem` | [StructureGroupoid.restriction_mem_maximalAtlas_subtype](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-restriction-mem-maximalatlas-subtype.md) | 1442 | `result-track:3f8af84ae9d13c54945a376ba72baf424372bbf093f3433cb16279456ba6b00e` |
| 129 | `def` | [PartialHomeomorph.toStructomorph](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSource.lean/declarations/partialhomeomorph-tostructomorph.md) | 1467 | `declaration-track:3ec6ab3521a85f0a29b692400ee2df75bad62f8a4bec80780708396043df3f49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aec4868176216bc3035ef45f65e00a8e6fc811a22d68c0d6d960958a5a2f1fc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
