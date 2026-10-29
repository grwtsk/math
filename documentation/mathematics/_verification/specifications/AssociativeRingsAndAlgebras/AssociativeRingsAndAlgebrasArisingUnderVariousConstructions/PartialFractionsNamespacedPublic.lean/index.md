# Verification target: Partial Fractions Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7d428a0106e2389422edfbed7ffe3a903f744e3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7d428a0106e2389422edfbed7ffe3a903f744e3`.

Source path: `GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_quo_mul_pow_add_sum_rem_mul_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/eq-quo-mul-pow-add-sum-rem-mul-pow.md) | 110 | `result-track:83bb3ef844de56ad7881fd334abd9683f0d25385d1758732fafbab90de74272b` |
| 2 | `theorem` | [quo_mul_pow_add_sum_rem_mul_pow_unique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/quo-mul-pow-add-sum-rem-mul-pow-unique.md) | 130 | `result-track:4cdb4b4eddb36e11a4fcb1139466ccc1878789c572b8f9cb608d8901019ea84a` |
| 3 | `theorem` | [eq_quo_mul_prod_add_sum_rem_mul_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/eq-quo-mul-prod-add-sum-rem-mul-prod.md) | 160 | `result-track:4c2ab1537163998274c136d70e4ad1dd51ab4a5d800ca2741c983dce8b975846` |
| 4 | `theorem` | [quo_mul_prod_add_sum_rem_mul_prod_unique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/quo-mul-prod-add-sum-rem-mul-prod-unique.md) | 206 | `result-track:5db054f183e1f9d569c97b01273813bc83927cbdd727a2b18de7d5ac2e353b24` |
| 5 | `theorem` | [eq_quo_mul_prod_pow_add_sum_rem_mul_prod_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/eq-quo-mul-prod-pow-add-sum-rem-mul-prod-pow.md) | 273 | `result-track:1543b0755ee0e6cd098ee78213d18c3470cfb259add3064c6687e62ec888c752` |
| 6 | `theorem` | [quo_mul_prod_pow_add_sum_rem_mul_prod_pow_unique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/quo-mul-prod-pow-add-sum-rem-mul-prod-pow-unique.md) | 303 | `result-track:aa912a5d3f39f018236a5491ceec05720366df713fa46c3315eb49502ebe0247` |
| 7 | `theorem` | [mul_prod_pow_inverse_eq_quo_add_sum_rem_mul_pow_inverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/mul-prod-pow-inverse-eq-quo-add-sum-rem-mul-pow-inverse.md) | 349 | `result-track:c6d6800709869404eb23e9394e4306c0c6b1fa08d5a68d9d6453644e7a0fe7b2` |
| 8 | `theorem` | [quo_add_sum_rem_mul_pow_inverse_unique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/quo-add-sum-rem-mul-pow-inverse-unique.md) | 386 | `result-track:11e96c651c400f710e05f610d04c573e94565f43fdf49fa2adca791c2c82b854` |
| 9 | `theorem` | [div_prod_eq_quo_add_sum_rem_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/div-prod-eq-quo-add-sum-rem-div.md) | 433 | `result-track:44ce245d78e1c37cb3f8d73b27d21b305edf2ed4337243daa568f1b2203d6cac` |
| 10 | `theorem` | [quo_add_sum_rem_div_unique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/quo-add-sum-rem-div-unique.md) | 455 | `result-track:089ece889bac4f3ade4bb56b61f0cd0e1b31bf54f33d74751f773b1eece7fc81` |
| 11 | `theorem` | [div_eq_quo_add_rem_div_add_rem_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/div-eq-quo-add-rem-div-add-rem-div.md) | 483 | `result-track:03cafbf7a7ee3d9a6a4d19dde0450ba660acecaa91d65893fc4880b786d19895` |
| 12 | `theorem` | [quo_add_rem_div_add_rem_div_unique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PartialFractionsNamespacedPublic.lean/declarations/quo-add-rem-div-add-rem-div-unique.md) | 500 | `result-track:2307a01ceec6304c473bfd62e38210eb021241cf114cb94a1f425d243bbe9655` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee2a99a5f7d9088abd1672b1109391fd61c15357f185439fb5967798c61e5985 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean","GRWTSK/_verification/specifications/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
