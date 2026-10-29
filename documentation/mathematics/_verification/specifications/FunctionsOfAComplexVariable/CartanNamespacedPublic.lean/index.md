# Verification target: Cartan Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36ee2a1730aa25f0640153e8a4b6e7c917b7b412",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36ee2a1730aa25f0640153e8a4b6e7c917b7b412`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean.json)

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
| 1 | `lemma` | [log_trailingCoeff_eq_zero_on_unitSphere](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/log-trailingcoeff-eq-zero-on-unitsphere.md) | 55 | `result-track:8fbe284ff6b5b12aa80b4b8f08bc2352a5839a5a48340e2217fc2d0050fb517a` |
| 2 | `lemma` | [eventuallyEq_log_trailingCoeff_of_meromorphicOrderAt_eq_zero](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/eventuallyeq-log-trailingcoeff-of-meromorphicorderat-eq-zero.md) | 65 | `result-track:ec3ba207391aa52c3308bcc7c11d2c075c9efb6b58ec5bf6741b36d74716be71` |
| 3 | `theorem` | [circleIntegrable_log_meromorphicTrailingCoeffAt](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/circleintegrable-log-meromorphictrailingcoeffat.md) | 83 | `result-track:3935700d7aba30ffbe070e5c257e9c390a67be55b4c4f08920296335622e69f3` |
| 4 | `theorem` | [circleAverage_log_norm_meromorphicTrailingCoeffAt_of_meromorphicOrderAt_pos](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/circleaverage-log-norm-meromorphictrailingcoeffat-of-meromorphicorderat-source-edition-3.md) | 105 | `result-track:f0c99c75e5248506602e1b0bc60d7cb489d433c9fac7ec54552023dbabadb403` |
| 5 | `theorem` | [circleAverage_log_norm_meromorphicTrailingCoeffAt_of_meromorphicOrderAt_eq_zero](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/circleaverage-log-norm-meromorphictrailingcoeffat-of-meromorphicorderat-source-edition-2.md) | 114 | `result-track:91dbd958bbc556db1ca70484b248ba6cf8fb7920553a8e12d49a51e4357cd0cc` |
| 6 | `theorem` | [circleAverage_log_norm_meromorphicTrailingCoeffAt_of_meromorphicOrderAt_lt_zero](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/circleaverage-log-norm-meromorphictrailingcoeffat-of-meromorphicorderat.md) | 131 | `result-track:4a4094277cd12b87f7e030cd8f9368150f6c80259fc086179c0a6e0e9ec8c4dc` |
| 7 | `lemma` | [logCounting_add_log_trailingCoeff_eq_circleAverage_add_logCounting_top](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/logcounting-add-log-trailingcoeff-eq-circleaverage-add-logcounting-top.md) | 145 | `result-track:b33500af95d15eeeb2e5f46d1e2948bad85668e4cf1da6fecde824e0d8064c73` |
| 8 | `theorem` | [circleIntegrable_logCounting](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/circleintegrable-logcounting.md) | 158 | `result-track:a0e78a18c927c8a014c20ed6c2d66ed872811b1a7a4e39e9ce60cd0fb2b703c3` |
| 9 | `theorem` | [characteristic_top_eq_circleAverage_add_circleAverage](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/characteristic-top-eq-circleaverage-add-circleaverage.md) | 179 | `result-track:300a25f52097c29fb4bfb7c0c2fd33702056d3c8681cc2bd4c60fd3eeca23735` |
| 10 | `theorem` | [characteristic_top_eq_circleAverage_of_meromorphicOrderAt_pos](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/characteristic-top-eq-circleaverage-of-meromorphicorderat-pos.md) | 198 | `result-track:2c1449a192ce9cf347167c154decfe89ab4b973d2b8b844096e25dd60a48892e` |
| 11 | `theorem` | [characteristic_top_eq_circleAverage_add_const](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/characteristic-top-eq-circleaverage-add-const.md) | 210 | `result-track:01e01d2b4f9f1a075eaa951ce0e883eb270bac1ece85d0960fd393ac0ccd9b11` |
| 12 | `theorem` | [characteristic_monotoneOn](../../../../FunctionsOfAComplexVariable/CartanNamespacedPublic.lean/declarations/characteristic-monotoneon.md) | 223 | `result-track:c6190c519b06327e8bf43dbef239919a7cdc98ac440e8cbb22567554fa2f40b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc6cab642b23dc7b09a349bec4b647768055c303534751b3b877e472c80cb9db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Cartan/Variant7f38d1a4e10b06b1786a08a1fe15d6eb4c92955e4560cea2aef23a19457750bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
