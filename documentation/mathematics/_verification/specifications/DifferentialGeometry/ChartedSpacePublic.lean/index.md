# Verification target: Charted Space Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "809ef539879eabdf0907b06ac7bee0b3a65d22ba",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ChartedSpacePublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/ChartedSpacePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `809ef539879eabdf0907b06ac7bee0b3a65d22ba`.

Source path: `GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean.json)

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
| 1 | `class` | [ChartedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace.md) | 141 | `declaration-track:f6d35f33b7c4bf405e45493a0646d1eab735db9cd0f0b572fde62274ae278f58` |
| 2 | `abbrev` | [atlas](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/atlas.md) | 150 | `declaration-track:a3c86a0822b3a22fa178df742f9418f29e8d2338c1704d356deb4b84a2a4ebd1` |
| 3 | `abbrev` | [chartAt](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartat.md) | 155 | `declaration-track:c084579d3213cef37f162f8616d2f2bf52c1f7a7eaad7ef440e9678e36a98cfe` |
| 4 | `lemma` | [mem_chart_source](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/mem-chart-source.md) | 160 | `result-track:a4d54632d4583cce2e50c5cfbbafcea038fbf7cf6129da323426d2b3102aa69e` |
| 5 | `lemma` | [chart_mem_atlas](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chart-mem-atlas.md) | 165 | `result-track:569f89d7a27ff0818834a8f28e58700e9f6f6bdaa51cba3c57e0d1f7930da664` |
| 6 | `lemma` | [nonempty_of_chartedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/nonempty-of-chartedspace.md) | 169 | `result-track:9a3d9506402ec02cd9e8f8279aec18e1dd80d91ba821f5062c61466b9549eebd` |
| 7 | `lemma` | [isEmpty_of_chartedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/isempty-of-chartedspace.md) | 173 | `result-track:8ef2549cf5a096a3177473642b12eb4e67a2998a7e9e8cd5c9fec961ee4457c6` |
| 8 | `theorem` | [mem_chart_target](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/mem-chart-target.md) | 185 | `result-track:4d7bf1171662d34e1f4c45f016e77c4bb60450875551bf4eef0b67ceed6b857a` |
| 9 | `theorem` | [chart_source_mem_nhds](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chart-source-mem-nhds.md) | 188 | `result-track:5cf392883b07899a77185ecdf4655079895f803dee82f01d021b092b00332833` |
| 10 | `theorem` | [chart_target_mem_nhds](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chart-target-mem-nhds.md) | 191 | `result-track:7e2eb84f4f994d11bc9af772f0a001ad9c11d64faf08e53f65da1a6fc85609ab` |
| 11 | `theorem` | [iUnion_source_chartAt](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/iunion-source-chartat.md) | 196 | `result-track:5f9c4cfb2cc662be1e1ef15a5a0f9e0734a1285135554dd7803bca8203ceed46` |
| 12 | `theorem` | [ChartedSpace.isOpen_iff](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-isopen-iff.md) | 199 | `result-track:790475ad2ed45b5539db6c1e3f924b5fa5021e112a077dfa673eb2c67bfcbf24` |
| 13 | `def` | [achart](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/achart.md) | 206 | `declaration-track:2e325a4e273ddf5cd4cf8f56a3b65b53fefdee9fd7209b478b3032ade132c12b` |
| 14 | `theorem` | [achart_def](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/achart-def.md) | 209 | `result-track:98cc7e8242d8876f89436235524aadf10271a722b9b1a453bc2ed5e44dc13e31` |
| 15 | `theorem` | [coe_achart](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/coe-achart.md) | 213 | `result-track:54c24fbc707c8cab982ed5704c0f2d1c5c9d3ebd462254291d1b3e2923aada5d` |
| 16 | `theorem` | [achart_val](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/achart-val.md) | 217 | `result-track:7048a3e6c78c36474631f9b64727f1b32138ade4b2f38ca2bc0074f9870de312` |
| 17 | `theorem` | [mem_achart_source](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/mem-achart-source.md) | 220 | `result-track:f1346fd6863801dd5b403b3b59298f94dd24151cc27c2e30e78b33b29b3a07c9` |
| 18 | `theorem` | [ChartedSpace.secondCountable_of_countable_cover](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-secondcountable-of-countable-cover.md) | 225 | `result-track:83351e3da6473457866312faad7f9a1752ceeefabb1d7d60bff74dc537ca37bc` |
| 19 | `theorem` | [ChartedSpace.secondCountable_of_sigmaCompact](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-secondcountable-of-sigmacompact.md) | 236 | `result-track:c2e72d24c08117d970151d2f18f35734bfc6c0ec3dcd5a2bfafeffba8b7ddb7f` |
| 20 | `theorem` | [ChartedSpace.locallyCompactSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-locallycompactspace.md) | 244 | `result-track:d6dcfe3540f7011e8277a45fe17a399f657ad52b4ca6bfb4b4dbbd1f44c5c075` |
| 21 | `theorem` | [ChartedSpace.locallyConnectedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-locallyconnectedspace.md) | 257 | `result-track:ad29d5e6bb7477786e56e29074e0ff857e771267eac69d37dc18b2bc72219830` |
| 22 | `theorem` | [ChartedSpace.locallyPathConnectedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-locallypathconnectedspace.md) | 270 | `result-track:bc7b0f9f7b6fe163cfdd2c6b723eeecae81ce850728df3d2ee4b9495d250ea91` |
| 23 | `def` | [ChartedSpace.comp](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-comp.md) | 293 | `declaration-track:6926bc69dbbee38316e425979e4dffe47653cb00e0c14156177ea0fdf56e129a` |
| 24 | `theorem` | [chartAt_comp](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartat-comp.md) | 301 | `result-track:54795ca8e3ae871f02c92b2a7df3423f4faeddce4144627c7bb8817be3614acf` |
| 25 | `theorem` | [ChartedSpace.t1Space](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-t1space.md) | 308 | `result-track:ef4a98d132480b959949ae05854c3c6d5a66c73f510c02e9b0e633b5a099870b` |
| 26 | `theorem` | [ChartedSpace.discreteTopology](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-discretetopology.md) | 319 | `result-track:e7a33ab5ced0f43fa381ec56db6bdbb717be678b0c4dd3b090bfcf3a5c8bdad4` |
| 27 | `def` | [ChartedSpace.empty](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-empty.md) | 335 | `declaration-track:8dbe15f810e3fed043c67bcb2f164eac1ce28f67068be96e4e5ee888652e17f6` |
| 28 | `instance` | [chartedSpaceSelf](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspaceself.md) | 343 | `declaration-track:2f29b970718a745529a94db104f7110505dcdc6f97fd16d2ef62ed93b25bfd59` |
| 29 | `theorem` | [chartedSpaceSelf_atlas](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspaceself-atlas.md) | 352 | `result-track:76a1609ccaf4bc66ba94aef6fe0e24610e97f1fb988094590f6f777ebfb9a45a` |
| 30 | `theorem` | [chartAt_self_eq](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartat-self-eq.md) | 357 | `result-track:9488da41548f3c2998fb53bf8d5527d7dc9fed3e4b413d310c7e07c36e6c7f12` |
| 31 | `def` | [ChartedSpace.ofDiscreteTopology](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-ofdiscretetopology.md) | 365 | `declaration-track:f23715698e53de7d42ccf98cfea62fc354531b238b5587f7d1eea01d34ecbe74` |
| 32 | `lemma` | [chartedSpace_of_discreteTopology_chartAt](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-of-discretetopology-chartat.md) | 380 | `result-track:42c05a38d0d3f6e3eb6a5e6a5137d2aac076bd989eeca48dbb46c4004e38266f` |
| 33 | `def` | [ModelProd](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/modelprod.md) | 407 | `declaration-track:d0db4fbdbd106a2f54e32c27c80d9f3d0a07b05cfaa258102fac135031ffd12e` |
| 34 | `def` | [ModelPi](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/modelpi.md) | 413 | `declaration-track:e0e30e19ceb028b48e03c780fb5bb4402d7e3a4189c2b881e936169b846c8cb8` |
| 35 | `instance` | [modelProdInhabited](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/modelprodinhabited.md) | 418 | `declaration-track:5b78a5caa9000c77438c93fff9a01b3c04a5cffdeb8567b9bc476c57e87897ea` |
| 36 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/instance.md) | 421 | `declaration-track:3ba79d87a7563eeb850978d62436e45e4a704865fe0df8a923a56e617b9f4cf3` |
| 37 | `theorem` | [modelProd_range_prod_id](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/modelprod-range-prod-id.md) | 427 | `result-track:19416e2b173fe916623972806ebf54da8fffd68f2dd0a4fb0401b38446fa5855` |
| 38 | `instance` | [modelPiInhabited](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/modelpiinhabited.md) | 438 | `declaration-track:8cd6f49bd9f7e10ac200916a85a44bc047393e7b03a17197577514b93b3ca5ef` |
| 39 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/instance-source-edition-2.md) | 441 | `declaration-track:d419e2db28bbf07dd0383ee9555a066bca0326423c9cdb5f550dda59e040cd6b` |
| 40 | `instance` | [prodChartedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/prodchartedspace.md) | 448 | `declaration-track:d2f0560401d34c46a48f7a711c7c9bb2e63a5cf5910c803d0996f225827771d4` |
| 41 | `theorem` | [ModelProd.ext](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/modelprod-ext.md) | 459 | `result-track:d39533acd048ba50c122d928d1d0f1835c6d3504c76d82a1963838da49c75bd4` |
| 42 | `theorem` | [prodChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/prodchartedspace-chartat.md) | 466 | `result-track:293d3b1b38ad200f2b616af84e21e1428bd5793ed21250fe299551a714d93663` |
| 43 | `theorem` | [chartedSpaceSelf_prod](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspaceself-prod.md) | 470 | `result-track:87b1829cbe0cca0c5c27cc44d4a9be71f9d12bf2de6654ccc8ee2386ad2c3fc5` |
| 44 | `instance` | [piChartedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/pichartedspace.md) | 481 | `declaration-track:5d58db63c45b1323531813f3023911b6dc2e71a9871abf2abd2b30635c6211bb` |
| 45 | `theorem` | [piChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/pichartedspace-chartat.md) | 490 | `result-track:d9b093de891b2c7336dcb871a799f1d36da4838303db5154594e1848be194c76` |
| 46 | `def` | [ChartedSpace.sumOfNonempty](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-sumofnonempty.md) | 506 | `declaration-track:aaaa666834ad22a0c35e199b9385b565d1f68b60d35ebad872d77d0431547d6f` |
| 47 | `instance` | [ChartedSpace.sum](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-sum.md) | 536 | `declaration-track:e56db0105b86b1abe7b6d12d8709f165561ef7aa6a48802962496b804b9dda3a` |
| 48 | `lemma` | [ChartedSpace.sum_chartAt_inl](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-sum-chartat-inl.md) | 543 | `result-track:b1df4f697fb5e80997ef9af59a10f00fa08be43ab100289e82494ece5728f75e` |
| 49 | `lemma` | [ChartedSpace.sum_chartAt_inr](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-sum-chartat-inr.md) | 550 | `result-track:8b2be67ff4ebf5697f6403a694ba1586ffba950ddc27300edb495213391a42f4` |
| 50 | `lemma` | [sum_chartAt_inl_apply](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/sum-chartat-inl-apply.md) | 557 | `result-track:6806022f270ff37e451526dffa5221ac9862a3718afc68d87d96ed36a5d5cc76` |
| 51 | `lemma` | [sum_chartAt_inr_apply](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/sum-chartat-inr-apply.md) | 563 | `result-track:cd230673153d38d99859bb5f9c46bfe8adcd829ec2814d4644965874f71e4979` |
| 52 | `lemma` | [ChartedSpace.mem_atlas_sum](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspace-mem-atlas-sum.md) | 569 | `result-track:6a091438f33a96556eda2ce0ee8026f536827fab378657aa5b0bacef288afb92` |
| 53 | `def` | [IsLocalHomeomorph.chartedSpaceOfRightInverse](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/islocalhomeomorph-chartedspaceofrightinverse.md) | 589 | `declaration-track:b08d12a42e664e6e83beebea7d3be1598dd754c86b6b02e16d46269b87e56198` |
| 54 | `def` | [IsLocalHomeomorph.chartedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/islocalhomeomorph-chartedspace.md) | 602 | `declaration-track:5db22c2067965fb48ff5c60346067f062521a7928e823a2cba23ca40032be57f` |
| 55 | `def` | [Homeomorph.chartedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/homeomorph-chartedspace.md) | 610 | `declaration-track:297acab3979ca877a699930c4cf1581772476d75b3992a296c966d0774019c1c` |
| 56 | `structure` | [ChartedSpaceCore](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/chartedspacecore.md) | 625 | `declaration-track:d63d8b73026514c26ee71e3332179b5b51c81bc46f5937211dfa86d0ae7a1fa6` |
| 57 | `def` | [toTopologicalSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/totopologicalspace.md) | 642 | `declaration-track:40701b5a39488c120b95b5e29b58e31ff5df0fedee3b6cf55653fe88589224e2` |
| 58 | `theorem` | [open_source'](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/open-source.md) | 647 | `result-track:9a3bfc55488b9a1dc01cce8ae76ff2753668a7f62a16cac6276c4b3113def640` |
| 59 | `theorem` | [open_target](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/open-target.md) | 653 | `result-track:a7e64cce89da81bdb591f30b3b8d8860ad0619586cb2e27ae9afd536dc5c2bea` |
| 60 | `def` | [openPartialHomeomorph](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/openpartialhomeomorph.md) | 662 | `declaration-track:9f1e441459abe83539ef3085292a0bb9d46df68ffeeb06c01598a6cdbb1ee83b` |
| 61 | `def` | [toChartedSpace](../../../../DifferentialGeometry/ChartedSpacePublic.lean/declarations/tochartedspace.md) | 697 | `declaration-track:d5182d255c969682bff3b60f5b4955f4916fb913413127fadff516896509c3da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=660aeaf5039eb35e0eb93a98ab616877f5f786c8ff5c17f4faea6d5c3131bc7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
