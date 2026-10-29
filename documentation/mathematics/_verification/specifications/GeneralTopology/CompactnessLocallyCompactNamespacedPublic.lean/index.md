# Verification target: Compactness Locally Compact Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "798e3dd3aa8b3b0f44bcab08fc4522fe989434aa",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `798e3dd3aa8b3b0f44bcab08fc4522fe989434aa`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 30 | `declaration-track:ab1f4161ddcb135cf513f8b9548902c7e3dd4950099b80f7032b9dff0fc79a1d` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/instance.md) | 37 | `declaration-track:1fd5f92d674cca026e7312085c9bf9e9ec5dd02a33b551168fdb170fed47c48d` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 44 | `declaration-track:68adfcdd9a7a749c5b6ad549bac177093bb7f02608ed5947d9b76e9d621fdb4f` |
| 4 | `theorem` | [Topology.IsClosedEmbedding.weaklyLocallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/topology-isclosedembedding-weaklylocallycompactspace.md) | 47 | `result-track:b29aae576eb5f903a73029e10311c74d96f2be6c776f6968053d52ace7622f56` |
| 5 | `theorem` | [IsClosed.weaklyLocallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/isclosed-weaklylocallycompactspace.md) | 53 | `result-track:a029df3df0c09c1c39edb1518a288a63f24793070d52fa5919e4cf24177b3823` |
| 6 | `theorem` | [IsOpenQuotientMap.weaklyLocallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/isopenquotientmap-weaklylocallycompactspace.md) | 57 | `result-track:89747788d98da6dbbad25a7ff7e6a75319833447e45eaae7b7da6e44caf406bd` |
| 7 | `theorem` | [exists_compact_superset](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/exists-compact-superset.md) | 66 | `result-track:e7f208e7266ae32e0deaa953da8ea0d2e8dda2071d368514f90db997106c8196` |
| 8 | `theorem` | [disjoint_nhds_cocompact](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/disjoint-nhds-cocompact.md) | 75 | `result-track:2b663098900e29697f77a9f411066ebcd62ac4d01425b4baee0fc45dffc5a890` |
| 9 | `theorem` | [compact_basis_nhds](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/compact-basis-nhds.md) | 80 | `result-track:9414c137060ea342809bbb4e6694280c10febb7cfd9a79c23db30f2565d99595` |
| 10 | `theorem` | [local_compact_nhds](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/local-compact-nhds.md) | 84 | `result-track:98d4df6f96b704eb5ec8bb57adb18b59ee91dae222b50988c4678a67bb10754c` |
| 11 | `theorem` | [LocallyCompactSpace.of_hasBasis](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/locallycompactspace-of-hasbasis.md) | 88 | `result-track:5b03cb21c7c44a667518d745077506b386ac1ee98846ff8c1fd3c3a11462a60f` |
| 12 | `instance` | [Prod.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/prod-locallycompactspace.md) | 95 | `declaration-track:c2a23f6f2ea591cb09ed5f6a40b945c3f8ca1ae606b7c5a193bd59dc59c5ed67` |
| 13 | `instance` | [Pi.locallyCompactSpace_of_finite](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/pi-locallycompactspace-of-finite.md) | 107 | `declaration-track:cb7fa47185071f12bad5204aa968ad2c8f306a4be2fa62b7a6c4a8846af0a5b7` |
| 14 | `instance` | [Pi.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/pi-locallycompactspace.md) | 118 | `declaration-track:e0ae6cd9bc863150bf1a7b7423767a7a54f82d994d42821bebd14c9110cd5330` |
| 15 | `instance` | [Function.locallyCompactSpace_of_finite](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/function-locallycompactspace-of-finite.md) | 136 | `declaration-track:8e120b992692420809a8de5a45033749fa8457d095ef793e46ba575f19818b74` |
| 16 | `instance` | [Function.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/function-locallycompactspace.md) | 140 | `declaration-track:9f822713faa9b9f6943fe142f348e7bcced56d4c3a660aa2c0a2f30d428d4bd1` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 146 | `declaration-track:babc0f9e71dacfcb2071d3eb44ca9ff6dacd940a6fbdddce96fc247fffa69d66` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 150 | `declaration-track:ee9ca999654ae43c3a9298f16439a41e47a38ff959feea815a083e0f1731be22` |
| 19 | `theorem` | [exists_compact_subset](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/exists-compact-subset.md) | 156 | `result-track:d4764fc64f9fdb20347ec97f32171d275e4280122ff8a1fca8f148c64e120afd` |
| 20 | `lemma` | [exists_mem_nhdsSet_isCompact_mapsTo](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/exists-mem-nhdsset-iscompact-mapsto.md) | 166 | `result-track:20f365e2664b440426258709318889441430101b6000246c287248ea86a8f9c0` |
| 21 | `theorem` | [exists_compact_between](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/exists-compact-between.md) | 180 | `result-track:a1bb3d6619065682f5256698e5feff28ed2e03db7750e4ff9a6c474344a72b0f` |
| 22 | `theorem` | [IsCompact.nhdsSet_basis_isCompact](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/iscompact-nhdsset-basis-iscompact.md) | 187 | `result-track:05072008077bd7c23d868a6b3065c7f7cf5fba99a5bfa1fbb4917e20e4302a2b` |
| 23 | `theorem` | [IsOpenQuotientMap.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/isopenquotientmap-locallycompactspace.md) | 194 | `result-track:88249652a53f1e930a5d10ad3e6724e61d2993c01c9e845a823eb44dde8534ab` |
| 24 | `theorem` | [Topology.IsInducing.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/topology-isinducing-locallycompactspace.md) | 203 | `result-track:0db79b7cdced18b2cb1510183cdad282e6a8cc5388e81997303621c61fb7819f` |
| 25 | `theorem` | [Topology.IsClosedEmbedding.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/topology-isclosedembedding-locallycompactspace.md) | 216 | `result-track:90f0a326b4a2d87478eb9985f34b2dcd5240109b09f5cb65431f6f3e4b178cac` |
| 26 | `theorem` | [Topology.IsOpenEmbedding.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/topology-isopenembedding-locallycompactspace.md) | 220 | `result-track:11b1cf46e6e0c8ba6e9d23c22fe252e8f2b657b70357351b9946a987bfabfab9` |
| 27 | `theorem` | [IsLocallyClosed.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/islocallyclosed-locallycompactspace.md) | 224 | `result-track:d1932c4e4d65ebd1cfb93728f7a0d296f0d6d6484800fbb892356d13933e2058` |
| 28 | `theorem` | [IsClosed.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/isclosed-locallycompactspace.md) | 228 | `result-track:57cd12193f9eae55b8fb2af17fa348201e3acfb56a812edb4ec21fc87b4b5ef1` |
| 29 | `theorem` | [IsOpen.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactNamespacedPublic.lean/declarations/isopen-locallycompactspace.md) | 232 | `result-track:0ddd79c2b2390f3b81aec7cab16e3b3d57f95d48d07640be776295e0cb640589` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f9a8531ff66b0dce894f01d3fca25f8291b2d964b8bed6a2a0760da0dfb1734 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
