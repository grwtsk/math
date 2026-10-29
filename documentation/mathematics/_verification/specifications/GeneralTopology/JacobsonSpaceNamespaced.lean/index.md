# Verification target: Jacobson Space Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5df5a1e067c27728d3c917d1cdada5bde810fdb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5df5a1e067c27728d3c917d1cdada5bde810fdb`.

Source path: `GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocalAtTarget` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPoints](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/closedpoints.md) | 42 | `declaration-track:552b39d78626b6917f4f85372dd5cb250344a8a92d72213b36b238e344d64664` |
| 2 | `lemma` | [mem_closedPoints_iff](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/mem-closedpoints-iff.md) | 47 | `result-track:6283ddf709916487361ea6cd9226cf9b7eb0109a36977307cd72b50f575947d9` |
| 3 | `lemma` | [preimage_closedPoints_subset](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/preimage-closedpoints-subset.md) | 49 | `result-track:7a63546b5dd50320cc365cb288e19fe8f91d4624b3d6667e92354ebff8651ef2` |
| 4 | `lemma` | [Topology.IsClosedEmbedding.preimage_closedPoints](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/topology-isclosedembedding-preimage-closedpoints.md) | 56 | `result-track:75274833c779f696bbe8ebcca4f6b5c5f0719f98dc5b80651cb8d54d29c9b433` |
| 5 | `lemma` | [closedPoints_eq_univ](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/closedpoints-eq-univ.md) | 61 | `result-track:e428ecef7bd6458969be7d4dddfc311c8091ab653bdfacf370efbd4f56c9baa7` |
| 6 | `class` | [JacobsonSpace](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/jacobsonspace.md) | 70 | `declaration-track:ed57d76302105408fdae9696114c400ae89bb5a573d8c6efccd5dad33efcf2a6` |
| 7 | `lemma` | [closure_closedPoints](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/closure-closedpoints.md) | 77 | `result-track:61114c2e8a19128853563aafe628be23333ec185758f7c5c8b1b95a866e5c0ac` |
| 8 | `lemma` | [jacobsonSpace_iff_locallyClosed](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/jacobsonspace-iff-locallyclosed.md) | 80 | `result-track:007b4fa03420eab6d7ee3c01d151ca3d1425904f64cc30525520d73deb3bcec2` |
| 9 | `lemma` | [nonempty_inter_closedPoints](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/nonempty-inter-closedpoints.md) | 105 | `result-track:b43799625a0dc4dad3698a4dc418b2c7f7391ca888e12556ad5863367ebed54b` |
| 10 | `lemma` | [isClosed_singleton_of_isLocallyClosed_singleton](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/isclosed-singleton-of-islocallyclosed-singleton.md) | 109 | `result-track:9fa396750e55a847b73f835b53f38333ffb294d212744a4c52eba851814a1d61` |
| 11 | `lemma` | [Topology.IsOpenEmbedding.preimage_closedPoints](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/topology-isopenembedding-preimage-closedpoints.md) | 115 | `result-track:a3397d4b56850fcfbaa3472cec91d0aa583289f41e17d9cd2a906cfc89c9fdee` |
| 12 | `lemma` | [JacobsonSpace.of_isOpenEmbedding](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/jacobsonspace-of-isopenembedding.md) | 123 | `result-track:26af1d2292fd365bebecb9d23bbbc0004d1a58908bb9a5a2356419209a33afae` |
| 13 | `lemma` | [JacobsonSpace.of_isClosedEmbedding](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/jacobsonspace-of-isclosedembedding.md) | 131 | `result-track:690128609003517a5278a10d386d1760819cc93b82c7ee236b9b1039b541a91e` |
| 14 | `lemma` | [JacobsonSpace.discreteTopology](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/jacobsonspace-discretetopology.md) | 139 | `result-track:b2bf537c4f4513f13d00ac91e1a2bcbc4f58069345abb01785d4f0211cef96b7` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/instance-source-edition-2.md) | 153 | `declaration-track:bbdd76b85049ce483759eac24450381703666fa0efda468cba18c3722e682e75` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/instance.md) | 156 | `declaration-track:180384697a2da3b4bd0a0d0e361c2aa21ae69ca9dd8cf3ecaa028329c6a038cb` |
| 17 | `lemma` | [TopologicalSpace.IsOpenCover.jacobsonSpace_iff](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/topologicalspace-isopencover-jacobsonspace-iff.md) | 159 | `result-track:9369b93cd946a23c06d33116b642f7b9b9aa42e8838333ce64590bc93d2c3d8b` |
| 18 | `lemma` | [jacobsonSpace_iff_of_iSup_eq_top](../../../../GeneralTopology/JacobsonSpaceNamespaced.lean/declarations/jacobsonspace-iff-of-isup-eq-top.md) | 184 | `result-track:a1b32d21b652494d174d7f4b0735b52147006faf8bce4c9e918f1ef9c1bb1baf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6be1314c04e77d290a54d18537e9d6f08ab7b0bb794f4d2cfddeb2787b8bb17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
