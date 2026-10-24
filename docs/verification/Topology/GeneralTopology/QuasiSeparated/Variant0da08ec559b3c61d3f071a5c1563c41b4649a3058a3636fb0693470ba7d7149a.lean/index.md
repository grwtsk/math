# Verification target: GRWTSK.Topology.GeneralTopology.QuasiSeparated.Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a8f0b96184d0c8c27252a6604ab489945e5a7c9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a8f0b96184d0c8c27252a6604ab489945e5a7c9`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.SubsetProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NoetherianSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsQuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/isquasiseparated--58de2a5fe1ade02e9be045b2.md) | 41 | `declaration-track:58de2a5fe1ade02e9be045b20c535b722fe0cfb38f9858a4e5c1c058cfe216fb` |
| 2 | `class` | [QuasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/quasiseparatedspace--d01a77200ab680f872d3d9a6.md) | 49 | `declaration-track:d01a77200ab680f872d3d9a65dbb963bca89f6dcd3f05b789f3fabf62a8359f9` |
| 3 | `theorem` | [isQuasiSeparated_univ_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/isquasiseparated-univ-iff--95a83b53860bda34a41d25bd.md) | 55 | `result-track:95a83b53860bda34a41d25bdc1673f651bce160dc0c892e8859e4ad719d58f47` |
| 4 | `theorem` | [isQuasiSeparated_univ](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/isquasiseparated-univ--65d755012b3857537b27177e.md) | 61 | `result-track:65d755012b3857537b27177ef57143eceda99bb1cdab9c48ffb3e8509033c21b` |
| 5 | `theorem` | [IsQuasiSeparated.image_of_embedding](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/isquasiseparated-image-of-embedding--86774ccc9e1624c864b1eeb9.md) | 66 | `result-track:86774ccc9e1624c864b1eeb97e71c1d4a89c1f4de003ce25bb92e3138c91e84c` |
| 6 | `theorem` | [OpenEmbedding.isQuasiSeparated_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/openembedding-isquasiseparated-iff--f96c7543ac8ac15e477eb079.md) | 91 | `result-track:f96c7543ac8ac15e477eb079e95cfc21d4eeb032544887ec5447c49a49e4225d` |
| 7 | `theorem` | [isQuasiSeparated_iff_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/isquasiseparated-iff-quasiseparatedspace--bd140d36f1b8ce0d360efe04.md) | 101 | `result-track:bd140d36f1b8ce0d360efe046073af3c3509e9baaa16253d4c306a9644a20c7d` |
| 8 | `theorem` | [IsQuasiSeparated.of_subset](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/isquasiseparated-of-subset--d546e1f9da0b79d2ca0eaed0.md) | 108 | `result-track:d546e1f9da0b79d2ca0eaed074fc62a1fe2aa00c1cf29c4a61167c2bb6605922` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/instance--cef8a9a2d65a4f8eaa4a8cc8.md) | 114 | `declaration-track:cef8a9a2d65a4f8eaa4a8cc80740ef79ddd717b651360d0ab88efa53d2c7f35b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/instance--e10ce34e8a4bb441a18a8700.md) | 118 | `declaration-track:e10ce34e8a4bb441a18a8700031aab2232dcd17d512effddf30fef4628b13be7` |
| 11 | `theorem` | [IsQuasiSeparated.of_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/isquasiseparated-of-quasiseparatedspace--d8a6f1500fdddf6bd3250666.md) | 123 | `result-track:d8a6f1500fdddf6bd32506660bd7fdcde08bdacec6adddbb6be28cce4e49e30e` |
| 12 | `theorem` | [QuasiSeparatedSpace.of_openEmbedding](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant0da08ec559b3c61d3f071a5c1563c41b4649a3058a3636fb0693470ba7d7149a.lean/declarations/quasiseparatedspace-of-openembedding--6a45aa4abe2c4b1742c34d55.md) | 128 | `result-track:6a45aa4abe2c4b1742c34d556f4d75b8b03cc1fd5a45a33794f05191684e3026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
