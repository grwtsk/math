# Verification target: Charted Space Mem Pregroupoid Of Eq On Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74c23f180d2dede9651863f616ffa757b9c3dd0b",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/index.md) · [Full source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74c23f180d2dede9651863f616ffa757b9c3dd0b`.

Source path: `GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.PartialHomeomorph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.LocPathConnected` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StructureGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid.md) | 160 | `declaration-track:8888fb746eac3902d40e7896544865aa0d3afb3b4b27855c74a84283fa063e83` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-8.md) | 178 | `declaration-track:a2c16dc03f7fb492f5bbcd9b6063b19d0677fce5e74e0e9c3bb1534be098cb91` |
| 3 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-10.md) | 181 | `declaration-track:e4e45c73d01b29fc127419b3de0fa2108452dfaa0def321a62589917d3684ebb` |
| 4 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-3.md) | 186 | `declaration-track:121072dbcab23e926838cc01ee6efa4e7d24e73d0f0ed9a34a25c75596765f53` |
| 5 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-9.md) | 207 | `declaration-track:e02bf2c8cc4c21888fc07c6b8b861f1688019d6a181c65e9ba6151d216383039` |
| 6 | `theorem` | [StructureGroupoid.trans](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-trans.md) | 234 | `result-track:2862a2eb44d6665a1896be4ad95a1689a18d0cd23f563669f57e2c4c6e7b32de` |
| 7 | `theorem` | [StructureGroupoid.symm](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-symm.md) | 238 | `result-track:e93c498eba7d465875dd2d7a5fc36f550668f900131765794b4a95703724c937` |
| 8 | `theorem` | [StructureGroupoid.id_mem](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-id-mem.md) | 242 | `result-track:117d57cb2d011061606057aea723d222855a6cf6652c98fa9cc339b71ecba47b` |
| 9 | `theorem` | [StructureGroupoid.locality](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-locality.md) | 245 | `result-track:3bfdb9bcaf35b7c704fa74a9cc57e15bfa31a88414edf9709150aa96fb3f3968` |
| 10 | `theorem` | [StructureGroupoid.mem_of_eqOnSource](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-mem-of-eqonsource.md) | 249 | `result-track:b3482a74ab873884c18f80c5aaa725e5fc32daaf65635e95658a010e1db3684c` |
| 11 | `theorem` | [StructureGroupoid.mem_iff_of_eqOnSource](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-mem-iff-of-eqonsource.md) | 253 | `result-track:1c1c3856112ef2c639cc20289b761676c3e4b878c84f72e2b98db2015f8c558f` |
| 12 | `instance` | [StructureGroupoid.partialOrder](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-partialorder.md) | 258 | `declaration-track:eea62422e36eeae51ac1fd6ae1a7f96f80ef961dcad5d5f60fa94f23506f92b1` |
| 13 | `theorem` | [StructureGroupoid.le_iff](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-le-iff.md) | 266 | `result-track:8b304bd430f176b15d7fafa43a7bb5134c4c9a193a147c4c8e95fa20ff972ac4` |
| 14 | `def` | [idGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/idgroupoid.md) | 271 | `declaration-track:947f8d096af4d04312233988ade2ef22fb11bc623d271ae39a92bec4cd0a7349` |
| 15 | `instance` | [instStructureGroupoidOrderBot](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/inststructuregroupoidorderbot.md) | 323 | `declaration-track:cb58dd97734e2038f0e9730ffc212b68c3d96df404ebff979f35c18c8297c18d` |
| 16 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-5.md) | 337 | `declaration-track:4c0dc3327e48b55ab478754a99476fb3e02a79b868610016b3183c2b9f38f838` |
| 17 | `structure` | [Pregroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/pregroupoid.md) | 343 | `declaration-track:73c44510925a02eda218812b184457dd2d9f3d5e20aaa4b92bf05a751fee14a8` |
| 18 | `def` | [Pregroupoid.groupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/pregroupoid-groupoid.md) | 361 | `declaration-track:816a6ea48378b8facab26d83cbe686e3071b9ff260fd516174560cefc2a55fc6` |
| 19 | `theorem` | [mem_groupoid_of_pregroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/mem-groupoid-of-pregroupoid.md) | 400 | `result-track:1db5ff267e2ec9434aaba4a1fd0038da0868520cf17e84e35440184f08e549f7` |
| 20 | `theorem` | [groupoid_of_pregroupoid_le](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/groupoid-of-pregroupoid-le.md) | 404 | `result-track:09e95a436cdb31a4c5a6af5c9d619230583d9490177a65efd38ba467b12a52ba` |
| 21 | `theorem` | [mem_pregroupoid_of_eqOnSource](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/mem-pregroupoid-of-eqonsource.md) | 410 | `result-track:8cb859bee1bbd322b98a01fcad5357ba30aa43deb0d64922c98a338a15b0ba70` |
| 22 | `abbrev` | [continuousPregroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/continuouspregroupoid.md) | 416 | `declaration-track:450e842870ac6b38bbc434425de5cd22753001fd7a11958c4c1c1ed9883ab973` |
| 23 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-7.md) | 423 | `declaration-track:86f4d9d398f2e0caaca3f0a4853b412af536dbb54de3d5c860f430110eca9d44` |
| 24 | `def` | [continuousGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/continuousgroupoid.md) | 427 | `declaration-track:2d35439e8832fa4c5fe5f6ed3a6f7a17fffc1e130eba35bd155d862d47535ebc` |
| 25 | `instance` | [instStructureGroupoidOrderTop](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/inststructuregroupoidordertop.md) | 431 | `declaration-track:7a801fc9496c1b33bf2d41271b2af71d15b4f19d172fe13b1e1ef7ca4844941b` |
| 26 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-4.md) | 435 | `declaration-track:4646b5959470cfd939ad58c78214da502252b1913780940d91b466d2c390e0be` |
| 27 | `class` | [ClosedUnderRestriction](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/closedunderrestriction.md) | 454 | `declaration-track:3f663c42bf621ee622c80942607b6e81ea6e7fc85bc056da5005f38b33825a3e` |
| 28 | `theorem` | [closedUnderRestriction'](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/closedunderrestriction-source-edition-2.md) | 458 | `result-track:47ac575975ece936deb7d82c91db5581bfcc95d1626c24fdc452068a2d619ad5` |
| 29 | `def` | [idRestrGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/idrestrgroupoid.md) | 464 | `declaration-track:8eea2785dc527f03e199809bd0f48c9c969056617e4fce5d0bd5a2b4e359deff` |
| 30 | `theorem` | [idRestrGroupoid_mem](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/idrestrgroupoid-mem.md) | 492 | `result-track:8280a8e8e6801fa77d88128903bf8d14550d8f5adaf30128b3e2fb1050361f79` |
| 31 | `instance` | [closedUnderRestriction_idRestrGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/closedunderrestriction-idrestrgroupoid.md) | 496 | `declaration-track:98ff31cf0a8fc06e7e16bfeff5c7f403c26a4109e65823a70718944ba9680953` |
| 32 | `theorem` | [closedUnderRestriction_iff_id_le](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/closedunderrestriction-iff-id-le.md) | 505 | `result-track:6c550f29cb9e0199c8b12f2eb97c4cd0eef3900815e7e11351a498abb1e43803` |
| 33 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance.md) | 531 | `declaration-track:046b78d46efa74afe6543caae1e04a84e2269a53895279aa60aaef0fb96502d9` |
| 34 | `class` | [ChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace.md) | 548 | `declaration-track:7c2242241298b7eab78e7616d523b3bd0ba7016e808c4db548f19099291bfe29` |
| 35 | `abbrev` | [atlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/atlas.md) | 557 | `declaration-track:605b3ab282a28e2efac45408a83c0bec4d2cd57679d738497fb32806e948c2c8` |
| 36 | `abbrev` | [chartAt](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartat.md) | 562 | `declaration-track:bafd7ec0d609555da7c1a5c5b4751db9d5dd85d2f6ce75307bc9d03009b1d473` |
| 37 | `lemma` | [mem_chart_source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/mem-chart-source.md) | 567 | `result-track:7e1fbeda90ab7cadfa6727bb308127b4861f656dc2a60e159e734593edd1ceb5` |
| 38 | `lemma` | [chart_mem_atlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chart-mem-atlas.md) | 572 | `result-track:7bf0dab7e229f49ca338f543c6f504a7ec6fc96ed39402f508892578dbecd61d` |
| 39 | `lemma` | [nonempty_of_chartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/nonempty-of-chartedspace.md) | 576 | `result-track:021b4febf492bd2dfc2b15efde01b1d1a839a8572f8da68f9d963b359b1c37c4` |
| 40 | `lemma` | [isEmpty_of_chartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/isempty-of-chartedspace.md) | 580 | `result-track:f4a43419b33272b50dd9850f44f6e44f5c48bc3f592b1452f530b353043f49aa` |
| 41 | `theorem` | [mem_chart_target](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/mem-chart-target.md) | 593 | `result-track:ebb056f6488eb20558e236fd611ee92574f67cf121e333319af2ec28ece89fb5` |
| 42 | `theorem` | [chart_source_mem_nhds](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chart-source-mem-nhds.md) | 596 | `result-track:ad84dfc49a8b976de63c73c643312640b456a0ec69734edbf6a794f811f4c86b` |
| 43 | `theorem` | [chart_target_mem_nhds](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chart-target-mem-nhds.md) | 599 | `result-track:6b04b2a366f7cc148b6f9f2993c494d1aa720d3d1968307f304f147ce141b5f2` |
| 44 | `theorem` | [iUnion_source_chartAt](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/iunion-source-chartat.md) | 604 | `result-track:34ee0b895495573b1ad244c35b457a4e789ba559b91c68242ffe90e8955d3d2f` |
| 45 | `theorem` | [ChartedSpace.isOpen_iff](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-isopen-iff.md) | 607 | `result-track:39bc0bf088dfbaf9669ed46b83f72c909e002517daa7a0647aed5e23ae6e0e39` |
| 46 | `def` | [achart](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/achart.md) | 614 | `declaration-track:cd69e4abf5ab9bcdb827b3b51f364d8b39e4467af562252bbefb75f148bcb0eb` |
| 47 | `theorem` | [achart_def](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/achart-def.md) | 617 | `result-track:8f6df1c3722de19fbb6d9fda71f51e9e37f6655ad6115808ce9fc1b358fd9f09` |
| 48 | `theorem` | [coe_achart](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/coe-achart.md) | 621 | `result-track:972c01611dd1c7c1d3513580db297f3ba7b568d53e50569fdd385c81d95b100e` |
| 49 | `theorem` | [achart_val](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/achart-val.md) | 625 | `result-track:aba3d99fbe1d17ad6ad8249274d556c36a2f25f51d45a756ed55cc8f3f08fc6a` |
| 50 | `theorem` | [mem_achart_source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/mem-achart-source.md) | 628 | `result-track:4d570312696de8e1946401cfacb414c75a43eaf449fae9ac7a8ed21fc88db553` |
| 51 | `theorem` | [ChartedSpace.secondCountable_of_countable_cover](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-secondcountable-of-countable-cover.md) | 633 | `result-track:7940a821318ce83eed0355eba93350d7c86ff488ececd0ab8bcffe69aa3d37ef` |
| 52 | `theorem` | [ChartedSpace.secondCountable_of_sigmaCompact](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-secondcountable-of-sigmacompact.md) | 644 | `result-track:62e18f6ddb055ff1ec2cb16844bc121aee0d97b3b04cb9cfefff1eaac7405c86` |
| 53 | `theorem` | [ChartedSpace.locallyCompactSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-locallycompactspace.md) | 655 | `result-track:f3b09a6d769299c809b0db7595b3dc5b1d8f638b7394942ffbb475e274808b11` |
| 54 | `theorem` | [ChartedSpace.locallyConnectedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-locallyconnectedspace.md) | 668 | `result-track:843bc4785cdd243eb8e09092eca61401ad6837b23d47895d8763166cdb5653b2` |
| 55 | `theorem` | [ChartedSpace.locPathConnectedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-locpathconnectedspace.md) | 681 | `result-track:03c41c2de76fa19dac9a92795ce9f6736c57be8456d2e2df2335c3d52196b6ac` |
| 56 | `def` | [ChartedSpace.comp](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-comp.md) | 698 | `declaration-track:3475088ce499742b96b96f5694b64e596e4a18d668ab983d2ad3efd21fda3f50` |
| 57 | `theorem` | [chartAt_comp](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartat-comp.md) | 706 | `result-track:4345c21fd034e70f3da8035371481aaaf68570488266d49dde17a0b26397ef14` |
| 58 | `theorem` | [ChartedSpace.t1Space](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-t1space.md) | 713 | `result-track:6d64c9b89c2dc7ce2579578af9eaa1aa2c792834950b6177b9063668c20dcee6` |
| 59 | `theorem` | [ChartedSpace.discreteTopology](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-discretetopology.md) | 724 | `result-track:506f7c0b5779e6a609896cd3decbe83517acb2dbf4c2581d863d9fb0cba5e6d1` |
| 60 | `def` | [ChartedSpace.empty](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-empty.md) | 739 | `declaration-track:8da82fd89d2cc93a4c3542adc50aeb39927260ce9f8744d84561ae38f2604b69` |
| 61 | `instance` | [chartedSpaceSelf](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspaceself.md) | 747 | `declaration-track:846b5af4de62660cfae61d629ba0755a7255eb64b705dba647fc1c1d96cf9c60` |
| 62 | `theorem` | [chartedSpaceSelf_atlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspaceself-atlas.md) | 756 | `result-track:93a3ef5f3f1a67d6dcb16db0eff06923bcfe4b96475f6b487d0b9fa33609f406` |
| 63 | `theorem` | [chartAt_self_eq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartat-self-eq.md) | 761 | `result-track:328e456b4cb5d65bdd896c5e49785ac28fe5119042f80db4154533075ab513b2` |
| 64 | `def` | [ChartedSpace.of_discreteTopology](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-of-discretetopology.md) | 768 | `declaration-track:f8221094717640493007319caa68a6ef3400145c98911089ce2aac1af7545284` |
| 65 | `lemma` | [chartedSpace_of_discreteTopology_chartAt](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-of-discretetopology-chartat.md) | 780 | `result-track:34ecfb37a44c3adb19b877fc07bef3a735a246ff5646422258a5b890653d7cdb` |
| 66 | `def` | [ModelProd](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/modelprod.md) | 806 | `declaration-track:04531b5e841e5e1951116611eaa67882419c72f923fc7412e2f9524981696667` |
| 67 | `def` | [ModelPi](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/modelpi.md) | 811 | `declaration-track:a32d5a7db22b72e21eecb49c7e961aca478982a463b226aae4ab438725e760aa` |
| 68 | `instance` | [modelProdInhabited](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/modelprodinhabited.md) | 818 | `declaration-track:d0c64c657796def8cd6520d64c6b4d16827e1ae2be44f87bf95e539c2ead8e72` |
| 69 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-6.md) | 821 | `declaration-track:66e3f0240fbb3622d5448ceb536dd2f586f50bb8259637aae6ed13054c4744fc` |
| 70 | `theorem` | [modelProd_range_prod_id](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/modelprod-range-prod-id.md) | 827 | `result-track:7f6f8885de7eadd7466f21d5b4bbee406962586e23a6dbe53fd9f6b1144c7ed1` |
| 71 | `instance` | [modelPiInhabited](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/modelpiinhabited.md) | 838 | `declaration-track:d173e5563d89461a1c4c3a09bedb816de0554a2fe6314c7239d8b18888207ff3` |
| 72 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instance-source-edition-2.md) | 841 | `declaration-track:0912d1f6d2cedfcbf2eabd6ff2a8e8de6ca093e28cbb0a523e9f79137e7dcd48` |
| 73 | `instance` | [prodChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/prodchartedspace.md) | 848 | `declaration-track:52fe2eb43cdb87242d75471a3986e799f5733fb2c3dfd2dfa2a242dfbee80735` |
| 74 | `theorem` | [ModelProd.ext](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/modelprod-ext.md) | 859 | `result-track:ed53d90c9e4efb8659ba96142aadaff7f3f9ebf98cae66f7834fe9e7652902fc` |
| 75 | `theorem` | [prodChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/prodchartedspace-chartat.md) | 866 | `result-track:5c8cd00b6fa0bd962e83288084686da060125fd0c4627882cc3ca0ab06737339` |
| 76 | `theorem` | [chartedSpaceSelf_prod](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspaceself-prod.md) | 870 | `result-track:ba3af07dce4e7026e8a82a188235e59f2f757d177835848a086357b30c24f795` |
| 77 | `instance` | [piChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/pichartedspace.md) | 881 | `declaration-track:602b6cef287bc4c4d80851d7453bbd0b22b9ad8bbc31da4839054c78dbbb2f41` |
| 78 | `theorem` | [piChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/pichartedspace-chartat.md) | 890 | `result-track:6d13dd653028afc22ed71f4c94e274d4c856b3ef0b5a1e9d7e998fd8e441046f` |
| 79 | `def` | [ChartedSpace.sum_of_nonempty](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-sum-of-nonempty.md) | 905 | `declaration-track:6e746e0e5000aeb34a7eacd3d284343acc507c26e4a94901c07f83862b5c9270` |
| 80 | `instance` | [ChartedSpace.sum](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-sum.md) | 933 | `declaration-track:81abce4b86b293ed6d6b86e38dbed895713dc4e95d6eb4375679c989652c57ec` |
| 81 | `lemma` | [ChartedSpace.sum_chartAt_inl](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-sum-chartat-inl.md) | 940 | `result-track:e3dd40a278436951118bf6c10bbf3cce0b44b4100f9d1ce1b12c303a570d3924` |
| 82 | `lemma` | [ChartedSpace.sum_chartAt_inr](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-sum-chartat-inr.md) | 947 | `result-track:590e8468ad17a965de6ca3d9821e7a27e3bce5f3085d338a6f8a87d8d7bf6075` |
| 83 | `lemma` | [sum_chartAt_inl_apply](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/sum-chartat-inl-apply.md) | 954 | `result-track:381360a9188de8dff2a9b4aa9ececce228d39e0ca92761e3f960e45b78a8401d` |
| 84 | `lemma` | [sum_chartAt_inr_apply](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/sum-chartat-inr-apply.md) | 960 | `result-track:a06fee329c7065fc232f7bd05cb26b39987109bcdf774ab6b8fac5d00cbe19d7` |
| 85 | `lemma` | [ChartedSpace.mem_atlas_sum](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspace-mem-atlas-sum.md) | 966 | `result-track:161dce29ee472432b784b62cad0167e6feb1ab0ef430bf265349556dacdd88e5` |
| 86 | `structure` | [ChartedSpaceCore](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartedspacecore.md) | 988 | `declaration-track:5c9ca68f816b20f30bdface68db8a6a72571aedcb3b22ee0fc5a812167a8cdeb` |
| 87 | `def` | [toTopologicalSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/totopologicalspace.md) | 1004 | `declaration-track:3dc4da501d5cfe98350928169fde0b41c791e1e7e9708cbb918b7786f39af1a5` |
| 88 | `theorem` | [open_source'](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/open-source.md) | 1009 | `result-track:85fcac2fafdd007cfdd7671cab4d4ebb4ee50825c3263b1f73fb3ec8cac7af20` |
| 89 | `theorem` | [open_target](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/open-target.md) | 1015 | `result-track:576a0c38997e4f4f44a61ce35ba6ab7f333f05e7be2665b94f546291f2be8c4f` |
| 90 | `def` | [partialHomeomorph](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/partialhomeomorph.md) | 1024 | `declaration-track:27f943aa2b8ab60c757de778123f719cb8ddcfdf4b1f7ac533cae07933b14b8b` |
| 91 | `def` | [toChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/tochartedspace.md) | 1058 | `declaration-track:0af87e3657fd651a2fc2e7ccc015a7b5d076805f3c467dab46aeca15efea9b35` |
| 92 | `class` | [HasGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid.md) | 1076 | `declaration-track:64d581bb754490ef1aee49ced64754214669c740809a65e679826096e03545a6` |
| 93 | `theorem` | [StructureGroupoid.compatible](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-compatible.md) | 1083 | `result-track:f73f733260591d046b3d5bbcb75a67067785859854e41872e34796f73ffb4a61` |
| 94 | `theorem` | [hasGroupoid_of_le](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-of-le.md) | 1088 | `result-track:261bcef41a207bb624fb712104139823eb39d944f6f5f9e4c7c4650986465dd7` |
| 95 | `theorem` | [hasGroupoid_inf_iff](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-inf-iff.md) | 1092 | `result-track:db25372d75f4ecb3accaeefe3ef2b0892f37d08ac6116a3b013351d462a24711` |
| 96 | `theorem` | [hasGroupoid_of_pregroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-of-pregroupoid.md) | 1097 | `result-track:2ea5cdab892d7ef2a9c029d4c98d2f07ccbb13a2d402361c7b8835f7cc113597` |
| 97 | `instance` | [hasGroupoid_model_space](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-model-space.md) | 1103 | `declaration-track:64addf2186db65a2a45df0dce4274bc47d50f339df1429b1921c8975b5444330` |
| 98 | `instance` | [hasGroupoid_continuousGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/hasgroupoid-continuousgroupoid.md) | 1110 | `declaration-track:8b6b678ccd86cec79e2f5e25ecdd8186850db31b4155cf0cc7842e199ccacd46` |
| 99 | `theorem` | [StructureGroupoid.trans_restricted](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-trans-restricted.md) | 1117 | `result-track:dfefc8f8d93e218f97ccc2ea5e4bda50a546958dee0fc2811912b9055aa516ca` |
| 100 | `def` | [StructureGroupoid.maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-maximalatlas.md) | 1132 | `declaration-track:633ef4c07f3d0c84245554c608f849aa022dbd502faa3bbe4d2b8452ded831b3` |
| 101 | `theorem` | [StructureGroupoid.subset_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-subset-maximalatlas.md) | 1136 | `result-track:b37391813899b6636ab57e76d3fe0ff79076ced4d73f56b5f0eedb8b3eaafccf` |
| 102 | `theorem` | [StructureGroupoid.chart_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-chart-mem-maximalatlas.md) | 1139 | `result-track:879b720f59c84862a7156c85065379ec2a232780495b8c024ac33b19e0cc62a7` |
| 103 | `theorem` | [mem_maximalAtlas_iff](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/mem-maximalatlas-iff.md) | 1145 | `result-track:cad65e81fc975629c38232fe33fe9a24bca5efcf214f0d8b68cd646e4b32db8b` |
| 104 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas.md) | 1151 | `result-track:bb605bb91fe871ae0792627386d0776c5f4ba3d915935e63cf01638ae88efba7` |
| 105 | `lemma` | [StructureGroupoid.mem_maximalAtlas_of_eqOnSource](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-mem-maximalatlas-of-eqonsource.md) | 1176 | `result-track:2267512430059628f42fac490ac6e5983d1d8948954906efcebe6ef3fd74a736` |
| 106 | `theorem` | [StructureGroupoid.id_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-id-mem-maximalatlas.md) | 1186 | `result-track:9827a9b8bbfec97e2816ac0a08d823ee4b9f917baa30cfaddf9ed19dc3c51c4e` |
| 107 | `theorem` | [StructureGroupoid.mem_maximalAtlas_of_mem_groupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-mem-maximalatlas-of-mem-groupoid.md) | 1190 | `result-track:887a815235f02c847bbe5cf988d80eb88b94280f40899669e1cbc68e66ddad93` |
| 108 | `theorem` | [StructureGroupoid.maximalAtlas_mono](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-maximalatlas-mono.md) | 1195 | `result-track:ed508dd74265a65c08ccca50b236c872c09bdf9dc9f12c5db30653f2682848dc` |
| 109 | `def` | [singletonChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace.md) | 1213 | `declaration-track:27c6bd4e911fd6bd170287a3a533107117ca325e32446a0d1736c746162b57cd` |
| 110 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-chartat-eq.md) | 1220 | `result-track:30bc8b3ced9f1b5fcc3bae2bd7b0e906b5897c302e0c96dfe730aff4f6804134` |
| 111 | `theorem` | [singletonChartedSpace_chartAt_source](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-chartat-source.md) | 1224 | `result-track:f7d5e488eba9b409b9df3dd22af914d37b7bc39c5d3f75608510823c45694d68` |
| 112 | `theorem` | [singletonChartedSpace_mem_atlas_eq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-mem-atlas-eq.md) | 1228 | `result-track:3316c1509011e907c6c132cbbceb21c82346196f793b7df1405a3a70258dc668` |
| 113 | `theorem` | [singleton_hasGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/singleton-hasgroupoid.md) | 1235 | `result-track:051197b76901bbee25e996d6b767de3be3975ebeab61441951110990b12a71c5` |
| 114 | `def` | [singletonChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-source-edition-2.md) | 1254 | `declaration-track:f7d69272e99f263141ce27ddba891bdc583596531b60dba4f337af748a88c1fe` |
| 115 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/singletonchartedspace-chartat-eq-source-edition-2.md) | 1257 | `result-track:bf5ba2f0718cc2e7158816fdd538c898b03bdfbc9b844ac83c1b3026742eeac8` |
| 116 | `theorem` | [singleton_hasGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/singleton-hasgroupoid-source-edition-2.md) | 1261 | `result-track:1f03e83b10119b89b204aabe79272e23bff53f1bc4f4e785bf5daf274ac33c93` |
| 117 | `instance` | [instChartedSpace](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/instchartedspace.md) | 1277 | `declaration-track:497b3cae26f812b4c267e4be4298c5ed3b4ba7fb6cc3c7f579515022b36b40ba` |
| 118 | `lemma` | [chart_eq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chart-eq.md) | 1287 | `result-track:b050e1cb9c9e9eed9deed18f9c9786840db23cd4fb6926eb71bb53b4e88d9094` |
| 119 | `lemma` | [chart_eq'](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chart-eq-source-edition-2.md) | 1295 | `result-track:f90636d4711a6564cbb4a8abb15445010d68b0bc6dc0a951e57dbfb5b3a00019` |
| 120 | `instance` | [instHasGroupoid](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/insthasgroupoid.md) | 1302 | `declaration-track:3d416c2b192936831c2cb4116c92ce2ca2e9b47292c25e883eb14cd663d5998c` |
| 121 | `theorem` | [chartAt_subtype_val_symm_eventuallyEq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartat-subtype-val-symm-eventuallyeq.md) | 1314 | `result-track:24a569995d3be2d59e07ffb25f760ddf0fdb2e0b47919cdd98cab8d1f63b7794` |
| 122 | `theorem` | [chartAt_inclusion_symm_eventuallyEq](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/chartat-inclusion-symm-eventuallyeq.md) | 1322 | `result-track:37f756060a3fb60ff975a3c183862d1d5c9171acaf592bb13aec48aedc4db678` |
| 123 | `lemma` | [StructureGroupoid.restriction_in_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-restriction-in-maximalatlas.md) | 1339 | `result-track:9fc2b9db9245ac6ba5b5be07f3cf34cb381f88eb63ef4391fb800f2d47104980` |
| 124 | `structure` | [Structomorph](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structomorph.md) | 1356 | `declaration-track:0b1ffe6f366d0c7c0e57fdc550ccb798955448f95748f29005ae51feba987906` |
| 125 | `def` | [Structomorph.refl](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structomorph-refl.md) | 1365 | `declaration-track:1ffe05e3406c435a5759cb59a1156b49a71172bf20a466a5c73274333458c6b8` |
| 126 | `def` | [Structomorph.symm](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structomorph-symm.md) | 1374 | `declaration-track:14c8944e7e3aed3fa3e520188127fb0087a92d5ea2f11012de72020e1856cf25` |
| 127 | `def` | [Structomorph.trans](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structomorph-trans.md) | 1384 | `declaration-track:fea210c10f9d47962b3eecf789da080387bc673e1140c2312930a715eaf878f8` |
| 128 | `theorem` | [StructureGroupoid.restriction_mem_maximalAtlas_subtype](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/structuregroupoid-restriction-mem-maximalatlas-subtype.md) | 1434 | `result-track:800afbdafcc9db5511d2ad764454ca6bcd66ac313bc710f3f86122d000ae197a` |
| 129 | `def` | [PartialHomeomorph.toStructomorph](../../../../DifferentialGeometry/ChartedSpaceMemPregroupoidOfEqOnSource.lean/declarations/partialhomeomorph-tostructomorph.md) | 1459 | `declaration-track:0b1e0f2870aee3491a76780fdf259e73dac10a336060cf57ff855656b3a932a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e42acbca35c5a617b8a8557c02a0e77b7f2466bcacac0b75d22146c6a099fa22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
