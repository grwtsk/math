# Verification target: Set Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03bc2ffa6a3e1e23da6b4041ed6a8993e8701b12",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/SetNamespacedPublic.lean/index.md) · [Full source](../../../../Geometry/SetNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03bc2ffa6a3e1e23da6b4041ed6a8993e8701b12`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConvexSet](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset.md) | 51 | `declaration-track:18c00e85a9ee3cbe52e01eac582d77c97c62419975c93e5db26c220247730101` |
| 2 | `lemma` | [IsConvexSet.of_sConvexComb_mem](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-of-sconvexcomb-mem.md) | 53 | `result-track:2b500a291c978985a6fb8cce2e9b36262622481eb398015fbe2072fcf23d2246` |
| 3 | `lemma` | [IsConvexSet.sConvexComb_mem](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-sconvexcomb-mem.md) | 57 | `result-track:e92e6dfbcf9e4954a5e61473cc42f42a1b7f8d6ec31c2edf43ce8e350796fbc8` |
| 4 | `lemma` | [IsConvexSet.iConvexComb_mem](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-iconvexcomb-mem.md) | 60 | `result-track:b0bf3fef0d67bc291cec7df835e433a5423b9b8bd4223ce92c24b0f62dc1e45d` |
| 5 | `lemma` | [IsConvexSet.convexCombPair_mem](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-convexcombpair-mem.md) | 67 | `result-track:ded27c0369fbd1b32d4f96459bf5296e3f895fd53f0c64c12602853ee627df12` |
| 6 | `lemma` | [IsConvexSet.empty](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-empty.md) | 74 | `result-track:bae95addb27ed06ce42698e92e21ce422c0fff0361782f368739426e1899189e` |
| 7 | `lemma` | [IsConvexSet.univ](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-univ.md) | 75 | `result-track:d228ca57f5fae9eabaf453e81c601a36a92c9cef8c1fd6b059996546b0ce7da2` |
| 8 | `lemma` | [IsConvexSet.singleton](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-singleton.md) | 77 | `result-track:ebd113b96e1cfc83b2fce4a26134efabdf501e4607bf48d93ce1dee40467625b` |
| 9 | `lemma` | [IsConvexSet.of_subsingleton](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-of-subsingleton.md) | 80 | `result-track:be030a62e4ad89d99e5d8ba66cf6435e26bfcaf811a97518170dad7d4bbe4cb4` |
| 10 | `lemma` | [IsConvexSet.inter](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-inter.md) | 83 | `result-track:673dd7b2f504d30de389da1d41050a356ff9d4f7b886d91e4572ec1f29355b70` |
| 11 | `lemma` | [IsConvexSet.sInter](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-sinter.md) | 87 | `result-track:325c0e5b1af3070881f58488abac1900c55daa485209aca5ca04f3a5e858e4bc` |
| 12 | `lemma` | [IsConvexSet.iInter](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-iinter.md) | 90 | `result-track:0dd058b639fe2e6dc4f6b89bf882fc43ffe8f8e17b444f855871e2515c4b6896` |
| 13 | `lemma` | [IsConvexSet.iInter₂](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-iinter-source-edition-2.md) | 93 | `result-track:6b8f2b774d3904ef4d9164dbf449bf6dbf5f2db1eec9ff281b62464463021763` |
| 14 | `lemma` | [IsConvexSet.sUnion](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-sunion.md) | 97 | `result-track:f42cb6258056ed4af36aa474125c2d8abf8eb8f031760f7be592397d0c0f75dc` |
| 15 | `lemma` | [IsConvexSet.iUnion](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-iunion.md) | 106 | `result-track:9043efe92a313008612a0222e9eb09a0eaa8c093092a0b25b1c2223af8e5a550` |
| 16 | `lemma` | [IsConvexSet.preimage](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-preimage.md) | 110 | `result-track:aebf2743070c836af9408505e5606d7a80b32bc0f73bc3adad709b88f473022e` |
| 17 | `lemma` | [IsConvexSet.image](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-image.md) | 116 | `result-track:11c93625eafc7bd491ea3fff6b2e52f0ce5c9ba38bd9dee068c073ede7ffe97b` |
| 18 | `def` | [ConvexSpace.subtype](../../../../Geometry/SetNamespacedPublic.lean/declarations/convexspace-subtype.md) | 143 | `declaration-track:ec0172299a44d254d438a805eb4cbf573999d89879a648de505afa01b13a95f5` |
| 19 | `lemma` | [isAffineMap_subtypeVal](../../../../Geometry/SetNamespacedPublic.lean/declarations/isaffinemap-subtypeval.md) | 148 | `result-track:c640a8225aeeed0bc5512a6c295bfbf01c96dda07e803541bff6de8ebffa4219` |
| 20 | `lemma` | [subtypeVal_sConvexComb](../../../../Geometry/SetNamespacedPublic.lean/declarations/subtypeval-sconvexcomb.md) | 155 | `result-track:61d3c085ab1d2a15252cd0a14535e559bb41bfe411628f4810029719a69ceaf7` |
| 21 | `lemma` | [subtypeVal_iConvexComb](../../../../Geometry/SetNamespacedPublic.lean/declarations/subtypeval-iconvexcomb.md) | 160 | `result-track:03ad1d1127578829fb06a7673380922f005c4dc7dbf7ec789e858a6f0051294c` |
| 22 | `lemma` | [subtypeVal_convexCombPair](../../../../Geometry/SetNamespacedPublic.lean/declarations/subtypeval-convexcombpair.md) | 167 | `result-track:529f4d5f5673072ba2099a29b010d4419d632997c3459f4ba222e9611c788d07` |
| 23 | `lemma` | [IsConvexSet.prod](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-prod.md) | 173 | `result-track:d2f10debb1cd5fce27e9a4efb93aad94b13f06c7137d9d50e7d3727e850bcd2b` |
| 24 | `lemma` | [IsConvexSet.pi](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-pi.md) | 181 | `result-track:e7e479df0090132b5c72543de2715b9164002fc885185113c05be2fcf78b34e5` |
| 25 | `lemma` | [IsConvexSet.of_convexCombPair_mem](../../../../Geometry/SetNamespacedPublic.lean/declarations/isconvexset-of-convexcombpair-mem.md) | 195 | `result-track:110f4dbd54b4ebd3a63bfad8b6261573a5c5f0086bca8ec629c1fdba69c7d927` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfac14ca7ef8adb65f6971bb6cc41d95fafb1fa7c08690e781b9cc73125157e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
