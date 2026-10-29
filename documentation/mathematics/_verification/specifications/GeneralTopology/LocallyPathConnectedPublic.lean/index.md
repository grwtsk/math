# Verification target: Locally Path Connected Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "529d2b347e5e986184d9f08eb1ee17f4994a220e",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `529d2b347e5e986184d9f08eb1ee17f4994a220e`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean.json)

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
| 1 | `class` | [LocallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/locallypathconnectedspace.md) | 61 | `declaration-track:ba89ee5e2ac6ebf1ef9cb6333e0e0708df4fe6bd251e68693d4cca6924388b22` |
| 2 | `theorem` | [LocallyPathConnectedSpace.of_bases](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/locallypathconnectedspace-of-bases.md) | 72 | `result-track:feb4f9a0572db5b99b73517658ad943b00b6c02bf89aa8c1034d86023710d9f1` |
| 3 | `theorem` | [IsOpen.pathComponentIn](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/isopen-pathcomponentin.md) | 86 | `result-track:4ded390f9862ccf68df4d0b24cc3178460380b799e81a76303408508c00a50d6` |
| 4 | `theorem` | [IsOpen.pathComponent](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/isopen-pathcomponent.md) | 95 | `result-track:cb4858c7f4a09b1a16b525f00dc87e49af5d78a6778a633d2ecdf0d23654c202` |
| 5 | `theorem` | [IsClosed.pathComponent](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/isclosed-pathcomponent.md) | 100 | `result-track:8bb8278145eafe890cb6503e48a2fed93701eced69686d5fde25097924c58c0d` |
| 6 | `theorem` | [IsClopen.pathComponent](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/isclopen-pathcomponent.md) | 108 | `result-track:84769c92d730809f0df17bbaa6553677af2a0103215c3f050af09d650e545776` |
| 7 | `lemma` | [pathComponentIn_mem_nhds](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/pathcomponentin-mem-nhds.md) | 111 | `result-track:513a04029d5ac3c0c42de7c40d5ce8072b81d67caeecdc4ae8d52b6b91f5a08b` |
| 8 | `theorem` | [PathConnectedSpace.of_locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/pathconnectedspace-of-locallypathconnectedspace.md) | 116 | `result-track:721d7d8091ff2582774bf04440264b9ae930e7a135ecf72e251cc2d3940c1cf4` |
| 9 | `theorem` | [pathConnectedSpace_iff_connectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/pathconnectedspace-iff-connectedspace.md) | 122 | `result-track:669e9998ea75dbb991ca71554ea13d37b052cd3b9f6413e6154797a046d3fb98` |
| 10 | `theorem` | [pathComponent_eq_connectedComponent](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/pathcomponent-eq-connectedcomponent.md) | 125 | `result-track:7051e130baca1041c8cf93bfd9997c7d47108e7e444c81cc550099ce8072143a` |
| 11 | `theorem` | [connectedComponent_eq_iff_joined](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/connectedcomponent-eq-iff-joined.md) | 129 | `result-track:11aa9ba94485251a59060e673daa4bcfb9fec928335016c8460afcf68f751419` |
| 12 | `theorem` | [connectedComponentSetoid_eq_pathSetoid](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/connectedcomponentsetoid-eq-pathsetoid.md) | 134 | `result-track:2ee928a0603388f6d3927d5195221ee1f671baeb9818adf02b555611f541d21f` |
| 13 | `def` | [connectedComponentsEquivZerothHomotopy](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/connectedcomponentsequivzerothhomotopy.md) | 138 | `declaration-track:fd1edd724d9c64ca97f76a8c9e5ecad596bd9cc6ab0a260963bbb8313656d56d` |
| 14 | `lemma` | [connectedComponentsEquivZerothHomotopy_apply](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/connectedcomponentsequivzerothhomotopy-apply.md) | 145 | `result-track:c625226ebb598500f54636ac5946bad50391b2c3a4ae295060cebb37a0321a5b` |
| 15 | `lemma` | [coe_connectedComponentsEquivZerothHomotopy_symm](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/coe-connectedcomponentsequivzerothhomotopy-symm.md) | 150 | `result-track:218e29d211b8868845f02ff8ff701285914770a11d6dbf7dec4c9b5466958a03` |
| 16 | `lemma` | [connectedComponentsEquivZerothHomotopy_symm_apply](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/connectedcomponentsequivzerothhomotopy-symm-apply.md) | 154 | `result-track:ed32fd17dc92da2dcac7ed5379947b57cb6fdfbcd662a28d726e51cbb1c0414b` |
| 17 | `theorem` | [pathConnected_subset_basis](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/pathconnected-subset-basis.md) | 158 | `result-track:39ba4c75c7facd5ab3e6455bd04427b65543bde1862b67cfe9050f3092e6dd57` |
| 18 | `theorem` | [isOpen_isPathConnected_basis](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/isopen-ispathconnected-basis.md) | 162 | `result-track:d9a4f46710cfd6b708dbbb9d37c9d1120b8184ac988704ef6153b54fc8807b04` |
| 19 | `theorem` | [Topology.IsOpenEmbedding.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/topology-isopenembedding-locallypathconnectedspace.md) | 169 | `result-track:77cf8b0cfe085a63f7e159ab724fa525660d590c887b634be5166c45c7dd2e7e` |
| 20 | `theorem` | [Homeomorph.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/homeomorph-locallypathconnectedspace.md) | 181 | `result-track:880c33f5b5cbeef085efbaa13fc5facca52700a478835d9185a76e41fa83efd6` |
| 21 | `theorem` | [IsOpen.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/isopen-locallypathconnectedspace.md) | 184 | `result-track:fd1687c4318ee704af253c550d96092cbff85d5973fdb0d6585947e61acf0b16` |
| 22 | `theorem` | [IsOpen.isConnected_iff_isPathConnected](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/isopen-isconnected-iff-ispathconnected.md) | 190 | `result-track:2e163853c846844a7edd2ae2384834025bd3031fe1596b5dc4408e24a0446cd9` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:19288dfb7e71cc67a9f966ffff32c1109618debaf8079a4684b4e2441914b0f7` |
| 24 | `lemma` | [locallyPathConnectedSpace_iff_isOpen_pathComponentIn](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/locallypathconnectedspace-iff-isopen-pathcomponentin.md) | 204 | `result-track:6536adf25be1e057d508238710930b1c9a69e18b7e6c2d859e73895a5b458808` |
| 25 | `lemma` | [locallyPathConnectedSpace_iff_pathComponentIn_mem_nhds](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/locallypathconnectedspace-iff-pathcomponentin-mem-nhds.md) | 217 | `result-track:97be3a0e6256b44520b0cbcbf3bf80accd223fc8ca68f5e3fb7e493f217bb3eb` |
| 26 | `lemma` | [LocallyPathConnectedSpace.coinduced](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/locallypathconnectedspace-coinduced.md) | 232 | `result-track:e5f54e971f3254fe73df966f0999a82f466c131c56169a20617675a3efa1a54e` |
| 27 | `lemma` | [Topology.IsQuotientMap.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/topology-isquotientmap-locallypathconnectedspace.md) | 249 | `result-track:38b53bc330e51b1f2794146aa4d0314d1bd4dd54e80c6b3a37f89c9c9e59271a` |
| 28 | `instance` | [Quot.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/quot-locallypathconnectedspace.md) | 258 | `declaration-track:49b4e07122920491b81576501b452956da0bf4c9b997a0ff2c7ecc47f692c3a4` |
| 29 | `instance` | [Quotient.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/quotient-locallypathconnectedspace.md) | 265 | `declaration-track:cd1ee7552c9a3d014a0490da4c2e453eff6cd4283c833621d1e65dce1cfb3b9b` |
| 30 | `instance` | [Sum.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/sum-locallypathconnectedspace.md) | 273 | `declaration-track:9fe82d3a5ac5569bc616c97ac33762f554a5bf3965fc3412492c81da34b30a90` |
| 31 | `instance` | [Sigma.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/sigma-locallypathconnectedspace.md) | 296 | `declaration-track:4d91d8c009d05afb23dbf47eea8245f7423402be1ced24d2c51b69424e5cc1b1` |
| 32 | `instance` | [Prod.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/prod-locallypathconnectedspace.md) | 312 | `declaration-track:3e15c503958f79da8a9afb2f8f5e8a52fb3cdb491a2618cd28cce51cfdb55980` |
| 33 | `theorem` | [Pi.locallyPathConnectedSpace_of_finite_not_pathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/pi-locallypathconnectedspace-of-finite-not-pathconnectedspace.md) | 324 | `result-track:d3391dd5722b0bc7b31a57754d9439e5154190c76193aca76e43d68337564757` |
| 34 | `instance` | [Pi.locallyPathConnectedSpace_of_finite](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/pi-locallypathconnectedspace-of-finite.md) | 346 | `declaration-track:c9dfec233bdffbe7e6baacfa0595a5dc42ea3fc4a457304c190eaba9b0ea16c5` |
| 35 | `instance` | [Pi.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/pi-locallypathconnectedspace.md) | 355 | `declaration-track:6e1a37a48b95e24049a1298c5fb761f5753ea48dd0277c38443f6ccb9e887af0` |
| 36 | `theorem` | [Pi.locallyPathConnectedSpace_iff](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/pi-locallypathconnectedspace-iff.md) | 363 | `result-track:ce466b43ab215062debd70a504c61f5281f5bb76d91dfad3f7d8397c8b477181` |
| 37 | `instance` | [AlexandrovDiscrete.locallyPathConnectedSpace](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/alexandrovdiscrete-locallypathconnectedspace.md) | 389 | `declaration-track:e99d7586c71571a04c3b5b75e4838a218945820fcd5aa537dfa8d60566f2fc03` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/instance-source-edition-3.md) | 403 | `declaration-track:e3599afd39ed7e15d5c4cdd85d439bc00a2dbb01b860cafb3b07d83e17ec8acb` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyPathConnectedPublic.lean/declarations/instance.md) | 410 | `declaration-track:01f2d45eef0f76715797947089eb0dc27d8008c047a765b9208fd26dc80077c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f6614faf81d182e2dbb7c7ef932cdfc37fa71f4c9f2dee3fc221b68dbc9bf25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
