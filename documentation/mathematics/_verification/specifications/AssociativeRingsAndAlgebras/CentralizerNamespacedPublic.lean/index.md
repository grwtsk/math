# Verification target: Centralizer Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ea0953db1113018ab668d03c5f7f3620b4dc6f2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Centralizer/Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ea0953db1113018ab668d03c5f7f3620b4dc6f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Centralizer/Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Centralizer/Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_centralizer_iff](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/le-centralizer-iff.md) | 46 | `result-track:1612475a3b910134c18261ee7305f76ad5be8928cf13e2aa62fefeeca4aaa477` |
| 2 | `lemma` | [centralizer_coe_sup](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-coe-sup.md) | 49 | `result-track:02839bbfae13b25f512ed202dd63308a3d9da1090236cff977bfd58c60fe1ee6` |
| 3 | `lemma` | [centralizer_coe_iSup](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-coe-isup.md) | 54 | `result-track:6830c3a6574256294553695180a69c2b558b0435097e9836c82787d2f5354cbf` |
| 4 | `lemma` | [centralizer_coe_image_includeLeft_eq_center_tensorProduct](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-coe-image-includeleft-eq-center-tensorproduct.md) | 74 | `result-track:37dd6b50f88215942511ccc81ad8ba2622a191524f39a776432a1f7fadff0b96` |
| 5 | `lemma` | [centralizer_coe_image_includeRight_eq_center_tensorProduct](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-coe-image-includeright-eq-center-tensorproduct.md) | 112 | `result-track:c932b59bb26ad1099a5412e15b195e8fa2cdd5c22ad7bf07c0f16da471ac64eb` |
| 6 | `lemma` | [centralizer_coe_map_includeLeft_eq_center_tensorProduct](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-coe-map-includeleft-eq-center-tensorproduct.md) | 140 | `result-track:3cbc393152fb0f2796fad658e948b24a61cea74b338f597bfcaecbe564b15369` |
| 7 | `lemma` | [centralizer_coe_map_includeRight_eq_center_tensorProduct](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-coe-map-includeright-eq-center-tensorproduct.md) | 153 | `result-track:8dac27f27395f62cdd7dfdba95d0bce8808e25fa60a9ab2f53152385a004e749` |
| 8 | `lemma` | [centralizer_coe_range_includeLeft_eq_center_tensorProduct](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-coe-range-includeleft-eq-center-tensorproduct.md) | 165 | `result-track:eb6d5c008ef59fe8527a8c9e3237a5f5a138a6194637e6116e8c176bb0e4101b` |
| 9 | `lemma` | [centralizer_range_includeRight_eq_center_tensorProduct](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-range-includeright-eq-center-tensorproduct.md) | 178 | `result-track:7829ab69e2fe6c26f7692cab3fda3234aacb501873a88b90bf80af9a4bbef5de` |
| 10 | `lemma` | [centralizer_tensorProduct_eq_center_tensorProduct_left](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-tensorproduct-eq-center-tensorproduct-left.md) | 187 | `result-track:b83c1b604b8fdebaad3ab2250612d88dccbb0973d42270116e331237b216c26f` |
| 11 | `lemma` | [centralizer_tensorProduct_eq_center_tensorProduct_right](../../../../AssociativeRingsAndAlgebras/CentralizerNamespacedPublic.lean/declarations/centralizer-tensorproduct-eq-center-tensorproduct-right.md) | 194 | `result-track:6c0d6c27d6f2d8c10054356db7ea164d0b2209cd6c1cb8ba6191944fe4e16940` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73adf62133ef0f7a37cafc2e9ef31c405d432ba35ba65a49aa9fe5f595d5a0a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Centralizer/Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Centralizer/Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
