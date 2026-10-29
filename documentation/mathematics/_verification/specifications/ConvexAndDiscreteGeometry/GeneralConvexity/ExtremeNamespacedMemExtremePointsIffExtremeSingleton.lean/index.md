# Verification target: Extreme Namespaced Mem Extreme Points Iff Extreme Singleton

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bfa7813a92deb0bb63953fabde58c581d61c3a7",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant2a7932447520b251dfd9a10b4e17018a6a6bc00ad299c04b61a775dc6dea739d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bfa7813a92deb0bb63953fabde58c581d61c3a7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant2a7932447520b251dfd9a10b4e17018a6a6bc00ad299c04b61a775dc6dea739d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extreme/Variant2a7932447520b251dfd9a10b4e17018a6a6bc00ad299c04b61a775dc6dea739d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExtreme](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme.md) | 66 | `declaration-track:c1307261f59a5b7e262bee24cbdac9485dd677faf1b4ff088b1ddef1eecb520e` |
| 2 | `def` | [Set.extremePoints](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/set-extremepoints.md) | 72 | `declaration-track:c10e5b0257233139e65473e94ab9a740e556a769e6e533a00c77e173e7ade2ba` |
| 3 | `theorem` | [IsExtreme.refl](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-refl.md) | 77 | `result-track:41eb73ca37ddab5032be470dba87ab949c1ee9f92e2cf7296e3fa7334504f11a` |
| 4 | `theorem` | [IsExtreme.rfl](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-rfl.md) | 83 | `result-track:cdccdcc9839c83f4fbdc0cd84a66daff78064c52110ef6e8fe4fa8038cfd2eb2` |
| 5 | `theorem` | [IsExtreme.trans](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-trans.md) | 88 | `result-track:5e61b78a9cff2666dc8ebf0c34df7fc95c8c934d0da0687d95233eaaf1106ab9` |
| 6 | `theorem` | [IsExtreme.antisymm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-antisymm.md) | 95 | `result-track:ef1f3d7d8cf27c917ddc19aa146e0cbc72358ea557c100bb5e313a198d949499` |
| 7 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/instance.md) | 99 | `declaration-track:ab9e24c0f74f705116d7a3ef60e1f93f3616b071da23af29513880bd66e98c5e` |
| 8 | `theorem` | [IsExtreme.inter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-inter.md) | 104 | `result-track:5ac0498533cd125409dff5d63c1b0cee71e222811d8c5e2efa604b52388f65d1` |
| 9 | `theorem` | [IsExtreme.mono](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-mono.md) | 113 | `result-track:bf1682636af44a5529bfa5fb4c449a230bc5fb27048d9faf125f23e3ba21c45d` |
| 10 | `theorem` | [isExtreme_iInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-iinter.md) | 118 | `result-track:45d92fe16ac9098bc373bd0adceeb3edfdbc838e8950c125f7a11d52e5468137` |
| 11 | `theorem` | [isExtreme_biInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-biinter.md) | 127 | `result-track:023fc353b71441f661fd7e8f8adfe90b7f3535e3fa58197492b4f5f757667550` |
| 12 | `theorem` | [isExtreme_sInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-sinter.md) | 133 | `result-track:f0acffe13bcebae9e2184f5bd0271afea875c424df031e912edfe04190d487b2` |
| 13 | `theorem` | [mem_extremePoints](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/mem-extremepoints.md) | 142 | `result-track:c0a39a5bf54c2c9f7fe749c92f702fd7b9496ed743b34d422cea8237ac4a4242` |
| 14 | `theorem` | [mem_extremePoints_iff_extreme_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/mem-extremepoints-iff-extreme-singleton.md) | 148 | `result-track:73db2eb612c3442e15baa8e2f29289e2dca1f1ea21f481ff145eca557b6d9b75` |
| 15 | `theorem` | [extremePoints_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/extremepoints-subset.md) | 156 | `result-track:74b8e4a3efb18475d2ecfa94d0414cb991948cbc8a39e43d4b3ae2b42b94e734` |
| 16 | `theorem` | [extremePoints_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/extremepoints-empty.md) | 161 | `result-track:4124c9189ee10acd3188b8a9b714f3b1d369fcffb863a4868ad7309b4990246c` |
| 17 | `theorem` | [extremePoints_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/extremepoints-singleton.md) | 166 | `result-track:636d8cfe6f62a32a069f853619d7f58f2153663ade1db79fc0cdb4e46d50df72` |
| 18 | `theorem` | [inter_extremePoints_subset_extremePoints_of_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/inter-extremepoints-subset-extremepoints-of-subset.md) | 171 | `result-track:873fbbf0c563e83eccb3df76366b54c9f917b564f49061d5fc128ba6d3a4da71` |
| 19 | `theorem` | [IsExtreme.extremePoints_subset_extremePoints](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-extremepoints-subset-extremepoints.md) | 176 | `result-track:e2d72208e36bf594b4a16d0650518bbf5ffcc18574d517978626cd7eb24f0ab9` |
| 20 | `theorem` | [IsExtreme.extremePoints_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-extremepoints-eq.md) | 182 | `result-track:496c35cd4afeedab767180ba538e8a9eabfbdd5a6b9c680aa8c69e766b2e4662` |
| 21 | `theorem` | [IsExtreme.convex_diff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/isextreme-convex-diff.md) | 195 | `result-track:9305efae3d57e1aecff76caf3128d834a9d4fc360061b3a5ca9f28a3d5612bac` |
| 22 | `theorem` | [extremePoints_prod](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/extremepoints-prod.md) | 201 | `result-track:b4606b166e4d7be841a66b49d19c9da8359bf4e843f4297c32d10014a041dccf` |
| 23 | `theorem` | [extremePoints_pi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/extremepoints-pi.md) | 224 | `result-track:d4067ff32bba68ad3840dda9e4eb3e980ddb4364189851d9fb6bd33d40d6eabf` |
| 24 | `theorem` | [mem_extremePoints_iff_forall_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/mem-extremepoints-iff-forall-segment.md) | 255 | `result-track:fe26fac30fa4f9e876772c72c38f1b12eb374d36166b42a0eeb78873349f5663` |
| 25 | `theorem` | [Convex.mem_extremePoints_iff_convex_diff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/convex-mem-extremepoints-iff-convex-diff.md) | 267 | `result-track:8966f93290e62f834d02c88a9ce3e70ced665b917ab21e8d1ec7416b5cd20aa7` |
| 26 | `theorem` | [Convex.mem_extremePoints_iff_mem_diff_convexHull_diff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/convex-mem-extremepoints-iff-mem-diff-convexhull-diff.md) | 278 | `result-track:a3f1be93d2e6a105a2b1a43b03ea827348e74afaa30eb75d610a07d46a344add` |
| 27 | `theorem` | [extremePoints_convexHull_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeNamespacedMemExtremePointsIffExtremeSingleton.lean/declarations/extremepoints-convexhull-subset.md) | 284 | `result-track:dee407353ccf1873a67b2f50adca5bdb66c0d579e316690493f7fed2df01f200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=261fb2636c0d80796a22354bb1022ced60deb41855183ed2936df14d8c2a8357 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant2a7932447520b251dfd9a10b4e17018a6a6bc00ad299c04b61a775dc6dea739d.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Extreme/Variant2a7932447520b251dfd9a10b4e17018a6a6bc00ad299c04b61a775dc6dea739d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
