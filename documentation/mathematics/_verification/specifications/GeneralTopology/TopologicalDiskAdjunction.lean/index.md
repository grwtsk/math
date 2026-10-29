# Verification target: GRWTSK.Topology.AlgebraicTopology.TopologicalDiskAdjunction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b17bbce635778f89076d521de6b1081188c365f9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/TopologicalDiskAdjunction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/index.md) · [Full source](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b17bbce635778f89076d521de6b1081188c365f9`.

Source path: `GRWTSK/Topology/AlgebraicTopology/TopologicalDiskAdjunction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/TopologicalDiskAdjunction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Sphere` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Disk](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/disk.md) | 30 | `declaration-track:aa428dd2df2dbf48982c9051c04231ab1af2726f7ca9d680fc235540acf14908` |
| 2 | `abbrev` | [DiskBoundary](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/diskboundary.md) | 31 | `declaration-track:ced7add3309309bb4d12aac376cb69b108ca23b370839770959b1cf2dbe3705d` |
| 3 | `def` | [boundaryInclusion](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/boundaryinclusion.md) | 34 | `declaration-track:0e959a8eb062d92638669d38f6e98217b02ea4aced89e0b5c2e32aafc64ba260` |
| 4 | `abbrev` | [Source](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/source.md) | 38 | `declaration-track:98e62f3b76040ceb9bc6bf4bb06c580b948a46a74cd5c61cf386e7bb5e68e9d3` |
| 5 | `inductive` | [Step](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/step.md) | 41 | `declaration-track:24a3715e2f2dfb9d539f5763c0778e059f16630bcd8ac58a2540b770f258a2dd` |
| 6 | `def` | [Connected](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/connected.md) | 45 | `declaration-track:dbb81ef4c081c160c228a54685e8e6c5037ead3071c2ae37bef5ac18de8dd4bb` |
| 7 | `def` | [adjunctionSetoid](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/adjunctionsetoid.md) | 48 | `declaration-track:ff89daeb99b73e6efa80dbc9d61d892fdaf0638fa6ec587f9b4fa3fc4e31b94d` |
| 8 | `abbrev` | [AttachedDisk](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/attacheddisk.md) | 53 | `declaration-track:8e4439f3f82467fe0c3d8e512d2ea82b8a94c538ffd863b297668db08d0fe053` |
| 9 | `def` | [projection](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/projection.md) | 56 | `declaration-track:b3379fa95ba17b4238c4d2ded2921424a70985fd4fbc6a8a24833256a8894253` |
| 10 | `theorem` | [projection_continuous](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/projection-continuous.md) | 59 | `result-track:eefd7fa631b2a81b2e8db16159360303e1d504e7c10e6a18dd3111e5a18c3b69` |
| 11 | `def` | [baseMap](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/basemap.md) | 64 | `declaration-track:b6687b3703b58064deecd9b993a261633c815c658ea3963a51aaf0df2ecec245` |
| 12 | `def` | [diskMap](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/diskmap.md) | 67 | `declaration-track:b2a94823200c22470f048d1053bd3e76d91aa0be2bf5ecc8d791b65b6004cf1d` |
| 13 | `theorem` | [baseMap_continuous](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/basemap-continuous.md) | 70 | `result-track:1f4f7a9f974b2e0f45dbdaea245aa89521235222fd50a897a7bbc8f91c330472` |
| 14 | `theorem` | [diskMap_continuous](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/diskmap-continuous.md) | 74 | `result-track:b0544367478aa8dc4c59a7f12499557a2fd403e32bfb0d4885ede48776aca2a7` |
| 15 | `theorem` | [attachment_commutes](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/attachment-commutes.md) | 81 | `result-track:83c47f9bf68e13394ef810d49b6f2ac4b83530d27ef0a9c5df76d290c0aa6d03` |
| 16 | `theorem` | [respects_connected](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/respects-connected.md) | 89 | `result-track:4a6bb0577a604bdcadaddded11bbb3923dfafd783e769fc4791dc49c8929ee5e` |
| 17 | `def` | [descend](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/descend.md) | 106 | `declaration-track:d65544777b180c2d76cd63d8c5507f55f76b7171339e56b8c3ebbbe876c49fbb` |
| 18 | `theorem` | [descend_base](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/descend-base.md) | 113 | `result-track:e010a520f53ea67c2324bfe730bc6fbbf2e4e05a0a376fd7eec5e8d2ff617de4` |
| 19 | `theorem` | [descend_disk](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/descend-disk.md) | 118 | `result-track:499838260b63b3c9841c5cae04309db3218c6b05c57f16a26cb6f9c2853cbdcd` |
| 20 | `theorem` | [descend_continuous](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/descend-continuous.md) | 125 | `result-track:5e5b17bdd1a4e2dd89ca49969640971d37c44dab29d3789eb9c5ad33a8df3897` |
| 21 | `theorem` | [descend_unique](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/descend-unique.md) | 136 | `result-track:db1593cbf3801fabb9f0bc8f1020f315d39fb0fe4f20e3fa82f589a7a99b0d0f` |
| 22 | `theorem` | [continuous_maps_compatible](../../../../GeneralTopology/TopologicalDiskAdjunction.lean/declarations/continuous-maps-compatible.md) | 152 | `result-track:ffb0c18ff22557a9ed30246a4d8cb2611567ecd0fd84c7019892caea3371e173` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ade35f98b38e79bb5bcf2a69c1cbb3a26f523043fe93b9e169157ae265bea192 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/TopologicalDiskAdjunction.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/TopologicalDiskAdjunction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
