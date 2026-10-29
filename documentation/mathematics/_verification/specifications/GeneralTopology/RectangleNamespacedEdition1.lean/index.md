# Verification target: Rectangle Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dce1f9e8a5b2f8e3f6d1c00d84496ebcdeb1ca4",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant2b0f857e3aa3c2814bad21243575e8d3f2aa604867bbe88ca663f7d09a17b642.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dce1f9e8a5b2f8e3f6d1c00d84496ebcdeb1ca4`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant2b0f857e3aa3c2814bad21243575e8d3f2aa604867bbe88ca663f7d09a17b642.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Rectangle/Variant2b0f857e3aa3c2814bad21243575e8d3f2aa604867bbe88ca663f7d09a17b642.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Monotone` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [symm](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/symm.md) | 27 | `result-track:4a3a246786e39cf535134e22218c4604b08491bc8ebfd0628227f28f643189c5` |
| 2 | `lemma` | [symm_re](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/symm-re.md) | 30 | `result-track:25167d739cf95eaa89749248b51f3295019d04cb445dd069037e37ce94339243` |
| 3 | `def` | [RectangleBorder](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectangleborder.md) | 43 | `declaration-track:b0795cb5c25e1cbc4fa34aed6960d1174bf861426411f0db9e10b2912e00bc80` |
| 4 | `def` | [Square](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/square.md) | 47 | `declaration-track:9b690b1d380453139dde4cb409bbb3980ee9424d035dd238307e94d52facb0e1` |
| 5 | `lemma` | [Square_apply](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/square-apply.md) | 49 | `result-track:5edf0ec9ed9554a6d7bb61a8d10f6b5f29a10fa7302c3158c4b021c8ba1cf915` |
| 6 | `theorem` | [preimage_equivRealProdCLM_reProdIm](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/preimage-equivrealprodclm-reprodim.md) | 56 | `result-track:2e38e683cff0ee9da0a98d337fe5e9aff2d9ca56bdb7d7ec528c6f47e7004f30` |
| 7 | `theorem` | [ContinuousLinearEquiv.coe_toLinearEquiv_symm](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/continuouslinearequiv-coe-tolinearequiv-symm.md) | 61 | `result-track:a8e4fa17ed176653dfbdb615eaa9311480db45eb3b906712c4fc3e19dd1edccb` |
| 8 | `lemma` | [segment_reProdIm_segment_eq_convexHull](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/segment-reprodim-segment-eq-convexhull.md) | 71 | `result-track:2244accec19d5d55d25f62e479231fcbf2faa2ff90734359fc85a6f1daa58b70` |
| 9 | `lemma` | [rectangle_in_convex](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectangle-in-convex.md) | 79 | `result-track:d32e67737e811d37592a871bf246b25d4c0ce4dac6d89b3651c800ed3561f621` |
| 10 | `lemma` | [mem_Rect](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mem-rect.md) | 85 | `result-track:406b8de4719c86568089adb15ef561f7e755cf7dd601952ea811b478b3c8ced7` |
| 11 | `lemma` | [square_neg](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/square-neg.md) | 91 | `result-track:aa75266466799c00aa3e161166918a0c3d6c139c363986943e64d88aaa649f27` |
| 12 | `theorem` | [Set.left_not_mem_uIoo](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/set-left-not-mem-uioo.md) | 95 | `result-track:c2bc03eb8f3b59c5b63b7980e63b6a35726c7908dce7362b43f47374cd1ca682` |
| 13 | `theorem` | [Set.right_not_mem_uIoo](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/set-right-not-mem-uioo.md) | 98 | `result-track:e95e4cd0e7e3e48ae361c3dbc19b18c7fc63e342013ae6d6feab34d04ab378e4` |
| 14 | `theorem` | [Set.ne_left_of_mem_uIoo](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/set-ne-left-of-mem-uioo.md) | 101 | `result-track:897c9446739cf0f22578777c6ae97916069f016549fedd89d56fcc3e97a4625d` |
| 15 | `theorem` | [Set.ne_right_of_mem_uIoo](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/set-ne-right-of-mem-uioo.md) | 104 | `result-track:5d2ccc0588037182e046f03cbe090c470f35bdd65ed9ff4d31594b7113ea10c6` |
| 16 | `lemma` | [left_mem_rect](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/left-mem-rect.md) | 107 | `result-track:9339c8554e52acc3dfbd717677ca5e31d614261a0670904dff2bab7142fd8c24` |
| 17 | `lemma` | [right_mem_rect](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/right-mem-rect.md) | 109 | `result-track:e4d227f75c25093ea876c189eb562016a618d079f10292b0ec7adbc960ca9fe4` |
| 18 | `lemma` | [rect_subset_iff](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rect-subset-iff.md) | 111 | `result-track:38a931d03002cb0ee783972fe2ece7aeb9f021f8c154d1d97b4d93b659fff841` |
| 19 | `lemma` | [RectSubRect](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectsubrect-source-edition-2.md) | 126 | `result-track:ea3bc9680500410b21d441c34f2fccfcc299adcf299c108ae580f5f63340fb68` |
| 20 | `lemma` | [RectSubRect'](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectsubrect.md) | 135 | `result-track:86066fa304bb7a9467bea8dda67bba1814263ed149a64a53fe786e9554c3c749` |
| 21 | `lemma` | [rectangleBorder_subset_rectangle](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectangleborder-subset-rectangle.md) | 143 | `result-track:57e9e3851ae5e2976de369d613484579e4a6787cc23c4675fc45674de5c11b29` |
| 22 | `lemma` | [rectangle_disjoint_singleton](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectangle-disjoint-singleton.md) | 152 | `result-track:4ee3a7b57f6075d759d91cdf8f98676352c6e037cb43d5ff73a2e7d787b24f15` |
| 23 | `lemma` | [rectangleBorder_disjoint_singleton](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectangleborder-disjoint-singleton.md) | 163 | `result-track:a9073bdbd83b85f321ab4fd8c3e96982f04d1c547bb911eaf2e3a784abededdc` |
| 24 | `lemma` | [rectangle_subset_punctured_rect](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectangle-subset-punctured-rect.md) | 171 | `result-track:b2dc896971fc933035bfe6a4d1a69352f3eeb16d7fe00c98e8163ce1f879a990` |
| 25 | `lemma` | [rectangleBorder_subset_punctured_rect](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectangleborder-subset-punctured-rect.md) | 179 | `result-track:a13555bc0e156daf34a056ccfad0077b31c809473bffc601598834f6ab26f135` |
| 26 | `lemma` | [rectangle_mem_nhds_iff](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/rectangle-mem-nhds-iff.md) | 188 | `result-track:81b4be43a4ab06b75db688408f65beb907029e1a44be4c19b855263159bf3dac` |
| 27 | `lemma` | [mapsTo_rectangle_left_re](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangle-left-re.md) | 193 | `result-track:273a6907197172c5299638d8385235b7897e16fa2dfbd990aa41cf078b3398be` |
| 28 | `lemma` | [mapsTo_rectangle_right_re](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangle-right-re.md) | 197 | `result-track:eaed1787009120925d89cd5eaaaae95077854ba0eb5ce931b850f116231c534a` |
| 29 | `lemma` | [mapsTo_rectangle_left_im](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangle-left-im.md) | 201 | `result-track:aebfd72d2a5415c34fa24b2fdf586aee1b3aeac60464f35a33627be0e930d661` |
| 30 | `lemma` | [mapsTo_rectangle_right_im](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangle-right-im.md) | 205 | `result-track:7e3ef51c4575ae168f14a274811a46c517b224d07b2f8d6038d245fe4ef91bac` |
| 31 | `lemma` | [mapsTo_rectangleBorder_left_re](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangleborder-left-re.md) | 209 | `result-track:23f0b69270db3e3cb3c389436d8b3df8b286816e4dcd12346bdb9df8730b005a` |
| 32 | `lemma` | [mapsTo_rectangleBorder_right_re](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangleborder-right-re.md) | 214 | `result-track:4db852af5cbcd00959917d0acea6bf6dcba5e31a3085aaf5b1cd008bf25555e0` |
| 33 | `lemma` | [mapsTo_rectangleBorder_left_im](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangleborder-left-im.md) | 219 | `result-track:4660c501af83150d9a8ddaecba89f68eb7053c28f210c97ef7af219db65b5464` |
| 34 | `lemma` | [mapsTo_rectangleBorder_right_im](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangleborder-right-im.md) | 224 | `result-track:b28d5665c70507184263dbad5ccc89cb0d6cb3155e741422f7686176f0816992` |
| 35 | `lemma` | [mapsTo_rectangle_left_re_NoP](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangle-left-re-nop.md) | 229 | `result-track:1a520a360db5d5c15d0b3363ea2785dc2c72e7384878342370b69574110a46e4` |
| 36 | `lemma` | [mapsTo_rectangle_right_re_NoP](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangle-right-re-nop.md) | 235 | `result-track:c1d5eb2d30987326632dcb2dfaf9fd9eee48d6c0f1bd3d5bd8692f32700be761` |
| 37 | `lemma` | [mapsTo_rectangle_left_im_NoP](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangle-left-im-nop.md) | 241 | `result-track:18fc465a5a655100f7969cd847533402d9cca9a72708f0ec53dba376dbdcfd17` |
| 38 | `lemma` | [mapsTo_rectangle_right_im_NoP](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/mapsto-rectangle-right-im-nop.md) | 247 | `result-track:da7a4f878583e1f70034f60e08ffeea9e01e2c592d5a13c0509cbdf12ff6746e` |
| 39 | `theorem` | [not_mem_rectangleBorder_of_rectangle_mem_nhds](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/not-mem-rectangleborder-of-rectangle-mem-nhds.md) | 253 | `result-track:a2d4c9198b3e5f82fba3b843df88c52cfa6ef28ea0f606a20971065b447500cc` |
| 40 | `theorem` | [Complex.nhds_hasBasis_square](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/complex-nhds-hasbasis-square.md) | 261 | `result-track:2ac5555f374edda03c39dbf557bf838fddf411521e81634ca01c665819868fac` |
| 41 | `lemma` | [square_mem_nhds](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/square-mem-nhds.md) | 274 | `result-track:e7929a7b43fea627a4fb56d53aee72fdc664eb28134c918ae57eadf3ee9c94bd` |
| 42 | `lemma` | [square_subset_square](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/square-subset-square.md) | 281 | `result-track:20cc608d1f3c878e85d00378a94f38e7fd66b0aff4b53921d5ed863fb327cf74` |
| 43 | `lemma` | [SmallSquareInRectangle](../../../../GeneralTopology/RectangleNamespacedEdition1.lean/declarations/smallsquareinrectangle.md) | 285 | `result-track:490df6bec8ba04830950e862fe6d38bd27c41245b7e8b0b561fafe03a691824e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=996003dacbb379e6a9c2bd01a136b55f09ffcc8e1fc7695cf3cb71222f0fb08d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant2b0f857e3aa3c2814bad21243575e8d3f2aa604867bbe88ca663f7d09a17b642.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/Rectangle/Variant2b0f857e3aa3c2814bad21243575e8d3f2aa604867bbe88ca663f7d09a17b642.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
