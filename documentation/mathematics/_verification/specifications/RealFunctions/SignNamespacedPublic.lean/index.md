# Verification target: Sign Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "058233772c0bea62211c2b263775255c63a7821f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Sign/Variantc1b9185e7000a7d4fd6c7f390db0a919b38093c25125ceae577f4bbea6bf97c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SignNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/SignNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `058233772c0bea62211c2b263775255c63a7821f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Sign/Variantc1b9185e7000a7d4fd6c7f390db0a919b38093c25125ceae577f4bbea6bf97c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Sign/Variantc1b9185e7000a7d4fd6c7f390db0a919b38093c25125ceae577f4bbea6bf97c8.lean.json)

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
| 1 | `def` | [sign](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign.md) | 42 | `declaration-track:5a8bb55276191bb24990fb69286ba2932f8cd577a6a2f52e7c3838f2ac7fe4d6` |
| 2 | `theorem` | [sign_of_neg](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-of-neg.md) | 45 | `result-track:75caa80042b0f53f42fc5a072205a3531e6f1ab482f869148c866c08c65906b0` |
| 3 | `theorem` | [sign_of_pos](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-of-pos.md) | 47 | `result-track:88b44699c037fe37a26bbb9865ad5c5fd554a61b56fd3287abd1788e8268de4b` |
| 4 | `theorem` | [sign_zero](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-zero.md) | 51 | `result-track:faeb86f9f403fa6fba0dae79bb15e052c67baa8605b8d99b3b8b6178bb307e14` |
| 5 | `theorem` | [sign_one](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-one.md) | 55 | `result-track:06b66e988682cca615626a3f5e546585d30b158ca721f34b04abfdedcc6a2948` |
| 6 | `theorem` | [sign_apply_eq](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-apply-eq.md) | 58 | `result-track:94e41e21ed6f724a7ae3bd894882a1e13b381496a85846248d5a656981d880af` |
| 7 | `theorem` | [sign_apply_eq_of_ne_zero](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-apply-eq-of-ne-zero.md) | 65 | `result-track:f63aa94d07a8bbef130bf26c9c785b5ae79b8e69d9dc9943f28ffaf9995b2840` |
| 8 | `theorem` | [sign_eq_zero_iff](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-eq-zero-iff.md) | 69 | `result-track:2f8dd0e20ef3b85b3015c16da285c15bdc0e140c16b47cad909cfe5aa4491d7e` |
| 9 | `theorem` | [sign_intCast](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-intcast.md) | 78 | `result-track:d5ff98351640004df62e4cf6e392fc8512c2cffe60f691316f7ad4a34ad54ff3` |
| 10 | `theorem` | [sign_neg](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-neg.md) | 85 | `result-track:d1103125d0cca6097c4353d1a0e2b0d037fc5bf1699f1eb65a9037a096a6b24d` |
| 11 | `theorem` | [sign_mul_nonneg](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-mul-nonneg.md) | 91 | `result-track:11833bc1cbe2594eee5a650c126770f3f8421c64504026e21aef16743265e7e3` |
| 12 | `theorem` | [sign_mul_pos_of_ne_zero](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-mul-pos-of-ne-zero.md) | 99 | `result-track:5ccaf82c4bff525819c3e98c9533d94621c22168ce599505d2066f94e03c0765` |
| 13 | `theorem` | [inv_sign](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/inv-sign.md) | 105 | `result-track:2a60969edf52e7a323456b06e5ef72a610291e83c7bcf8a5129ca4d1e729b242` |
| 14 | `theorem` | [sign_inv](../../../../RealFunctions/SignNamespacedPublic.lean/declarations/sign-inv.md) | 115 | `result-track:803bd24f29cdf1d5dc9d44ac8ea43122e3d97cef6ae892435ea2b129ef22be64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4902aeb1824744587acb7556e348bdd11d1271c68f651ce75e657c7b0354bfc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Sign/Variantc1b9185e7000a7d4fd6c7f390db0a919b38093c25125ceae577f4bbea6bf97c8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Sign/Variantc1b9185e7000a7d4fd6c7f390db0a919b38093c25125ceae577f4bbea6bf97c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
