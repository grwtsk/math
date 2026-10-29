# Verification target: Orientation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d403750728c78054281ab800cf6230a8401348e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Orientation/Variantbe918d0fbac216bece204dabc4e8608f19c08e257f1112c1435af8176877da6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OrientationNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OrientationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d403750728c78054281ab800cf6230a8401348e`.

Source path: `GRWTSK/Analysis/Orientation/Variantbe918d0fbac216bece204dabc4e8608f19c08e257f1112c1435af8176877da6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Orientation/Variantbe918d0fbac216bece204dabc4e8608f19c08e257f1112c1435af8176877da6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Orientation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_to_matrix_orthonormalBasis_of_same_orientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/det-to-matrix-orthonormalbasis-of-same-orientation.md) | 60 | `result-track:6435a52e349ec060600e5adcce89ddcf8e94b25d807a7d1eed5ee53a8183c98d` |
| 2 | `theorem` | [det_to_matrix_orthonormalBasis_of_opposite_orientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/det-to-matrix-orthonormalbasis-of-opposite-orientation.md) | 70 | `result-track:6b223a8062c93a3816eba6015fa2140e4063712ab39c40d23b7932adf1eadb74` |
| 3 | `theorem` | [same_orientation_iff_det_eq_det](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/same-orientation-iff-det-eq-det.md) | 80 | `result-track:2a8da25b7c55a5cf390ef38852d0807ef0a89f4dbcb95adf08476f2fca977b40` |
| 4 | `theorem` | [det_eq_neg_det_of_opposite_orientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/det-eq-neg-det-of-opposite-orientation.md) | 94 | `result-track:6ec40acb3a7cab6f877309d608f1856a80c6e40c7ee244dbbe8ab558163a94a4` |
| 5 | `theorem` | [orthonormal_adjustToOrientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/orthonormal-adjusttoorientation.md) | 105 | `result-track:ecb84fc7d73f305253f65ede0ea8d2fac5a701f078880fd2233be3125a8ae509` |
| 6 | `def` | [adjustToOrientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/adjusttoorientation.md) | 112 | `declaration-track:df870b2c33f2df8d136f6b0f49d10486d211796718a73d94f1055cc05ae7c0f5` |
| 7 | `theorem` | [toBasis_adjustToOrientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/tobasis-adjusttoorientation.md) | 115 | `result-track:a777b3d08369f22b03aaedf94b1067680224777dfd424267622d445e897dcfc0` |
| 8 | `theorem` | [orientation_adjustToOrientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/orientation-adjusttoorientation.md) | 121 | `result-track:fe7cbb9250410d0a2c99e7202461dd7499e404490259b08b534f6df72b17e36d` |
| 9 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg.md) | 127 | `result-track:f7a070d4a4f9554fa320f65b7465d45ecdcb8151584ca245ff21437dd264f542` |
| 10 | `theorem` | [det_adjustToOrientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/det-adjusttoorientation.md) | 132 | `result-track:5d8a595e9c8651fe990014ae0e680310bb741e84d09edfee7ec163f4eb631463` |
| 11 | `theorem` | [abs_det_adjustToOrientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/abs-det-adjusttoorientation.md) | 137 | `result-track:3700550747f78ae621a641a3b2612aeb110b83775d584b7b3969f1bb434c965d` |
| 12 | `def` | [finOrthonormalBasis](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/finorthonormalbasis.md) | 152 | `declaration-track:0eaa41d029095a3fcd315420340f6e2a268b215dfd1dc23d392ee823e6bb1ff2` |
| 13 | `theorem` | [finOrthonormalBasis_orientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/finorthonormalbasis-orientation.md) | 160 | `result-track:c37af287d6e1c5827ca62c1013469e08850d62c4fc570b763569fe36afce4ff1` |
| 14 | `theorem` | [volumeForm_zero_pos](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/volumeform-zero-pos.md) | 183 | `result-track:ede4e723f7e605b9701ff1117b531905a2d2aa41c013a71e77e25f388d9b42ae` |
| 15 | `theorem` | [volumeForm_zero_neg](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/volumeform-zero-neg.md) | 188 | `result-track:dbadd8273dce99db95763400ca6dd40851656c0800b82df5bbb3f37bbb2be3d9` |
| 16 | `theorem` | [volumeForm_robust](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/volumeform-robust-source-edition-2.md) | 201 | `result-track:dc4418897e7c5444f90c4d8ca95a4e0e26563c3f8706578efe6d6d3a17d3ebc8` |
| 17 | `theorem` | [volumeForm_robust_neg](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/volumeform-robust-neg.md) | 213 | `result-track:4ac52640bb30651709eaa56d7f402fbb8896b0df1ee0d2cefad291516859bd63` |
| 18 | `theorem` | [volumeForm_neg_orientation](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/volumeform-neg-orientation.md) | 226 | `result-track:3ed34b2279e94dce95f552acf476aad19ba6762700fdcd1070f4b113cadd0278` |
| 19 | `theorem` | [volumeForm_robust'](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/volumeform-robust.md) | 238 | `result-track:43b3b73a5830469d42e73a6cf2a63d2e93edc2e7ba6c680beceaa9e65f189210` |
| 20 | `theorem` | [abs_volumeForm_apply_le](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/abs-volumeform-apply-le.md) | 248 | `result-track:5b7b343af5b19cda1a72e94cf91c86e9e709c47d7b01268dee571f1a3df719cb` |
| 21 | `theorem` | [volumeForm_apply_le](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/volumeform-apply-le.md) | 263 | `result-track:d6a496f657738eded0ed26dfa33ed416e5d16162b5243a9b9d15f8588d6a5e1f` |
| 22 | `theorem` | [abs_volumeForm_apply_of_pairwise_orthogonal](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/abs-volumeform-apply-of-pairwise-orthogonal.md) | 269 | `result-track:e8b0bea920ea23edf98aacf9d04dba9a2b0fc4a932f331fc8e333c6e339af2d2` |
| 23 | `theorem` | [abs_volumeForm_apply_of_orthonormal](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/abs-volumeform-apply-of-orthonormal.md) | 293 | `result-track:212d15698b708bcd259683a519d71de215acee30814e0103a5f6810fa68a0d36` |
| 24 | `theorem` | [volumeForm_map](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/volumeform-map.md) | 297 | `result-track:a8ed967ed88d9b380d26f8673aa2ded9a98cb292eff434b1b9da7b1c5ec0329d` |
| 25 | `theorem` | [volumeForm_comp_linearIsometryEquiv](../../../../FunctionalAnalysis/OrientationNamespaced.lean/declarations/volumeform-comp-linearisometryequiv.md) | 313 | `result-track:cc10e49929a869ca483e34aaa8f50a2bf546fb9bfc6c036438492d283c4799af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1c167ead75df01683f8729437c78b16b331908f45010649f9a66d6c98571b30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Orientation/Variantbe918d0fbac216bece204dabc4e8608f19c08e257f1112c1435af8176877da6d.lean","GRWTSK/_verification/specifications/Analysis/Orientation/Variantbe918d0fbac216bece204dabc4e8608f19c08e257f1112c1435af8176877da6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
