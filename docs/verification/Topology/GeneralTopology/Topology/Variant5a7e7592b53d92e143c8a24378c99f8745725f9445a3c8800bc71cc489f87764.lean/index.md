# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "400713858e8063aa88acbe564d7781ad255a4c05",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `400713858e8063aa88acbe564d7781ad255a4c05`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Contractible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Normed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Complex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/instance--1de04e23fb8b54a3876f8ccb.md) | 31 | `declaration-track:1de04e23fb8b54a3876f8ccb05519b12eea6691070e4b1b4677100ab11e619c2` |
| 2 | `theorem` | [openEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/openembedding-coe--b4ca1005a600028147004b2f.md) | 34 | `result-track:b4ca1005a600028147004b2f6a9a26ab8b524267fa204c1e0e0ea7c0211e8f59` |
| 3 | `theorem` | [embedding_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/embedding-coe--fcb09d88ec16cfdfc35410b5.md) | 38 | `result-track:fcb09d88ec16cfdfc35410b5f749b6b678a4e46ddac3af4efbc02810dd800673` |
| 4 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/continuous-coe--de32a58e8655858ce515ca8e.md) | 42 | `result-track:de32a58e8655858ce515ca8e0628ce6ed2b0d825a68152e5feef79f0c6742692` |
| 5 | `theorem` | [continuous_re](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/continuous-re--7329408c60ee086a09c4e2c1.md) | 46 | `result-track:7329408c60ee086a09c4e2c114b4928f88c9da33b71730cc860c3d6f51bab00d` |
| 6 | `theorem` | [continuous_im](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/continuous-im--57fad5195717879a937a7753.md) | 50 | `result-track:57fad5195717879a937a7753334096b1f5e1de49b7577b57c607a04f357a99f8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/instance--c975a2eab84cc557141a6c23.md) | 54 | `declaration-track:c975a2eab84cc557141a6c233f50e33522f77d0a1857ae0da4baa8f0c023426f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/instance--54e0d23015f1272dc8eec98a.md) | 57 | `declaration-track:54e0d23015f1272dc8eec98a6318dcf496ab165dfb607c6365c0697f13fd145d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/instance--0a9460f1cc35e2b1e0ba7a98.md) | 60 | `declaration-track:0a9460f1cc35e2b1e0ba7a98a27c41e6fcfb229f39d7c962bdc866276c14b697` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/instance--752a43edd4665eb212dd4d93.md) | 63 | `declaration-track:752a43edd4665eb212dd4d93a244ee2c0ec187a7262d6a0563512a66e3528a44` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/instance--594c59ebf08dcb675ffd24c1.md) | 66 | `declaration-track:594c59ebf08dcb675ffd24c1a317badea8b1f1b1a3bb3e5621e2af7c544f8220` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/instance--b28a051a9a4bfb45de74680b.md) | 69 | `declaration-track:b28a051a9a4bfb45de74680bfdcbdcf516cf748b208d1fbeabe30de36c38bcb3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant5a7e7592b53d92e143c8a24378c99f8745725f9445a3c8800bc71cc489f87764.lean/declarations/instance--5785e2f28e22f70712c41c4c.md) | 76 | `declaration-track:5785e2f28e22f70712c41c4c4a371e76dd675e057f14818249c43f49b4f584b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
