# Verification target: Complex Isometry Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a263578f329e337df9658670b27b02eb105d865f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant934376f64777fba8f2e42426ef48027f3a9dbd84e7825e4755625f09e35845c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a263578f329e337df9658670b27b02eb105d865f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isometry/Variant934376f64777fba8f2e42426ef48027f3a9dbd84e7825e4755625f09e35845c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isometry/Variant934376f64777fba8f2e42426ef48027f3a9dbd84e7825e4755625f09e35845c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.SuppressCompilation` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotation](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/rotation.md) | 57 | `declaration-track:a8f3721ebedc34e3339e47b584a9297bffa2c08aaa91821f7bb96303aabfcd2f` |
| 2 | `theorem` | [rotation_apply](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/rotation-apply.md) | 66 | `result-track:acfbe4c15410c787a6295bd0fa606d4e5d784342a171b500f759c6188704fe02` |
| 3 | `theorem` | [rotation_symm](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/rotation-symm.md) | 70 | `result-track:c353fcbd6db4e187c307738a6d7f2baab43e90878876e9fb757be6443bd00a1c` |
| 4 | `theorem` | [rotation_trans](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/rotation-trans.md) | 74 | `result-track:faf0ffd99f543257cd2d2b6cb8a718aa98579c9fdc7bc72f5f47f4e2e665c4ec` |
| 5 | `theorem` | [rotation_ne_conjLIE](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/rotation-ne-conjlie.md) | 78 | `result-track:b6dca10c6d18509a2ad70ce8239efe64bd2f37de8fd07dad5370096c082eebb7` |
| 6 | `def` | [rotationOf](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/rotationof.md) | 89 | `declaration-track:573b67982b4e063b3545752de875f0bbdeddea6bcc51ca4ab67168a3b0e218ce` |
| 7 | `theorem` | [rotationOf_rotation](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/rotationof-rotation.md) | 93 | `result-track:af929df5a42bf4c376229328615045b7cf12cf87fd172b598438510155d8b87a` |
| 8 | `theorem` | [rotation_injective](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/rotation-injective.md) | 96 | `result-track:c72ba7f1090e6fefda600c279ddb78c72bffe89b5ca8d75c44802ec21281bdce` |
| 9 | `theorem` | [LinearIsometry.re_apply_eq_re_of_add_conj_eq](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/linearisometry-re-apply-eq-re-of-add-conj-eq.md) | 99 | `result-track:341dfdc593d5b43f5a376ce520bd50a465110cd7c5d47d223c64c15112f0dc94` |
| 10 | `theorem` | [LinearIsometry.im_apply_eq_im_or_neg_of_re_apply_eq_re](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/linearisometry-im-apply-eq-im-or-neg-of-re-apply-eq-re.md) | 104 | `result-track:5b893a4bf186a9d86362b2a958a412e41a20eb3fc9458c1620ef595e1748118f` |
| 11 | `theorem` | [LinearIsometry.im_apply_eq_im](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/linearisometry-im-apply-eq-im.md) | 111 | `result-track:3743842cf976e17395db722e4f28c35b9a370b041064fbfe00a65c7982fc8386` |
| 12 | `theorem` | [LinearIsometry.re_apply_eq_re](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/linearisometry-re-apply-eq-re.md) | 117 | `result-track:2cf39d141bfc14c9ebfb1f1b749956f18c4c69557dba7e6e744305c50d269fa4` |
| 13 | `theorem` | [linear_isometry_complex_aux](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/linear-isometry-complex-aux.md) | 121 | `result-track:7d10e42392222e65bc32bd932d7b5d202418d5baaac5b23f1c37b1c3b971c296` |
| 14 | `theorem` | [linear_isometry_complex](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/linear-isometry-complex.md) | 138 | `result-track:3c5d262ca297b87157bcd7b72a1f8b30dcdf0e14c1f78ec664fa8ce5022efb21` |
| 15 | `theorem` | [toMatrix_rotation](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/tomatrix-rotation.md) | 149 | `result-track:539f1be27eb7213d0c60a4ccbcc48cf23d3d671cfc494d27e9d32be2c6c58fa4` |
| 16 | `theorem` | [det_rotation](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/det-rotation.md) | 161 | `result-track:0572007fda4db06071378790efd82f0e23fa0da780ec779e3a8af7ec27b727d0` |
| 17 | `theorem` | [linearEquiv_det_rotation](../../../../FunctionsOfAComplexVariable/ComplexIsometryNamespacedPublic.lean/declarations/linearequiv-det-rotation.md) | 167 | `result-track:b61fb17881474d7570798f0d1ade967123de94e6e23493e6a9bc93225ed12b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbe3e59e1362a058614da20f327418cf7e32e0da075d750bc05df28642c44c46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Isometry/Variant934376f64777fba8f2e42426ef48027f3a9dbd84e7825e4755625f09e35845c4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Isometry/Variant934376f64777fba8f2e42426ef48027f3a9dbd84e7825e4755625f09e35845c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
