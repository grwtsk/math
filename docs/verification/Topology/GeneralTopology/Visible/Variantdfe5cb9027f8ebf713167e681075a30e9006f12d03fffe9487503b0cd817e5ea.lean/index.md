# Verification target: GRWTSK.Topology.GeneralTopology.Visible.Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e746a4d69728a1015a3ad30fddfdc0c1e3f11ec",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e746a4d69728a1015a3ad30fddfdc0c1e3f11ec`.

Source path: `GRWTSK/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isvisible--eb23f5cb0378e8cdf1dec860.md) | 54 | `declaration-track:eb23f5cb0378e8cdf1dec860c1b627eb39dd6c6170a6e0618a6d8fef462d858e` |
| 2 | `lemma` | [IsVisible.rfl](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isvisible-rfl--188cd211497a18cc46375a54.md) | 57 | `result-track:188cd211497a18cc46375a54c4c58865f2a09039745fa21fbf26f613013d5c6f` |
| 3 | `lemma` | [isVisible_comm](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isvisible-comm--832b53dee5ad9843a883448f.md) | 59 | `result-track:832b53dee5ad9843a883448f0b470b8923449b7c7ab23693846760e58d01adc8` |
| 4 | `lemma` | [IsVisible.mono](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isvisible-mono--28661b67dc0e012216c47df3.md) | 65 | `result-track:28661b67dc0e012216c47df3f08d9a1fba5d502ad8a1e6a650df66bc285cdc6d` |
| 5 | `lemma` | [isVisible_iff_lineMap](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isvisible-iff-linemap--070827edf4f0405245cecb8e.md) | 68 | `result-track:070827edf4f0405245cecb8eee38e52d6c2f1351634b84d45c1f70a3480a80d4` |
| 6 | `lemma` | [IsVisible.of_convexHull_of_pos](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isvisible-of-convexhull-of-pos--0c659f4acf355e4bc2974bca.md) | 83 | `result-track:0c659f4acf355e4bc2974bca89d13ce2fc35e33d81b44d72905daa2358e35113` |
| 7 | `lemma` | [IsVisible.eq_of_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isvisible-eq-of-mem-interior--7500df2dc67c168ccd9b5fb2.md) | 131 | `result-track:7500df2dc67c168ccd9b5fb22853c18f1d2c7fc6487c59064ef134d1aa72a7ba` |
| 8 | `lemma` | [IsOpen.eq_of_isVisible_of_left_mem](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isopen-eq-of-isvisible-of-left-mem--00e155143260626d6b129ad9.md) | 141 | `result-track:00e155143260626d6b129ad9998d7ebcaec95589b6a8d2504e72b71cefb924e1` |
| 9 | `lemma` | [IsVisible.mem_convexHull_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isvisible-mem-convexhull-isvisible--5a61a0e9d22d9db646aee2e0.md) | 154 | `result-track:5a61a0e9d22d9db646aee2e012c04af491ae59c36128529893682a78f85644b0` |
| 10 | `lemma` | [IsClosed.exists_wbtw_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isclosed-exists-wbtw-isvisible--57d48f74527768a16643bde1.md) | 168 | `result-track:57d48f74527768a16643bde1c0310c50a8ea7020db45d0abbc02ebdc8e03c115` |
| 11 | `lemma` | [IsClosed.convexHull_subset_affineSpan_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/isclosed-convexhull-subset-affinespan-isvisible--81668b84168a2d55a86278db.md) | 188 | `result-track:81668b84168a2d55a86278dba9ea55f758cb8b1142cb01fe84d97736bd5e720d` |
| 12 | `lemma` | [rank_le_card_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/declarations/rank-le-card-isvisible--92cea26f493dc0196c949550.md) | 201 | `result-track:92cea26f493dc0196c9495506aab812d8dafb449d8bbfc8f24c8528d883fe549` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
