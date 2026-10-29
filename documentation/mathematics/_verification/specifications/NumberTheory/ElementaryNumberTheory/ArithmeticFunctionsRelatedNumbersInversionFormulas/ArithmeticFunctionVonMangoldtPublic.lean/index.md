# Verification target: Arithmetic Function Von Mangoldt Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0587555fbb762fc7283a1c22c7f1be07350c589",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant0eaa8af946dc26bf04adb966c84e808318e7ec61d050a8ce7c981d480e0c2ea1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0587555fbb762fc7283a1c22c7f1be07350c589`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant0eaa8af946dc26bf04adb966c84e808318e7ec61d050a8ce7c981d480e0c2ea1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant0eaa8af946dc26bf04adb966c84e808318e7ec61d050a8ce7c981d480e0c2ea1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/log.md) | 48 | `declaration-track:1efc03e27b67ec740d056f28e03efd43a33f6be2ebb3bd70041ca3e6ed20b4ef` |
| 2 | `theorem` | [log_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/log-apply.md) | 52 | `result-track:94e59afca06eb4af8d66ad753764cd1003ee277d2d189ad65d8af01b0d8bcde4` |
| 3 | `def` | [vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt.md) | 65 | `declaration-track:e4152efa15b0aaba22746caeae75027a586bcd8bb6a57f9b970c626405342e43` |
| 4 | `theorem` | [vonMangoldt_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-apply.md) | 73 | `result-track:23aa3161d77fc1e1038c5c615a4e51bbd68e60980cd8f76d7573d6f5c82ae142` |
| 5 | `theorem` | [vonMangoldt_apply_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-apply-one.md) | 77 | `result-track:0d2938e04f161a39bad678bf9773a061ed170c7bc8998c2d968e2729d3f97bf5` |
| 6 | `theorem` | [vonMangoldt_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-nonneg.md) | 80 | `result-track:7bac90fab778c8994042c5589cbf982df9cd3ff733f9dc3b00c4c32af01e4dbc` |
| 7 | `theorem` | [vonMangoldt_apply_pow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-apply-pow.md) | 86 | `result-track:6247795dcff5e590150fbfbcccf098ac639e3f16b60718a9fecd41612a20e64f` |
| 8 | `theorem` | [vonMangoldt_apply_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-apply-prime.md) | 89 | `result-track:f8fea3c53bffef114facc974d7de31cb49dffdc3e54e1fed6772882e94d08ff9` |
| 9 | `theorem` | [vonMangoldt_ne_zero_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-ne-zero-iff.md) | 92 | `result-track:9041a19e7d2a027f2cfe8272c781a3dfce507d5042282ade6a47293e39710a2d` |
| 10 | `theorem` | [vonMangoldt_pos_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-pos-iff.md) | 96 | `result-track:93f60d2b1b044c8e56e7128e835a6aea05d892e6ad095d677ca7df906cd51b6b` |
| 11 | `theorem` | [vonMangoldt_eq_zero_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-eq-zero-iff.md) | 99 | `result-track:5847e79a439dc87aa16f67f79f7004316724f720190a17de2bc46f5401fc5097` |
| 12 | `theorem` | [vonMangoldt_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-sum.md) | 102 | `result-track:f25495b7665115fd8d82f3ef006f80951ddd5ee078aa45ccd5b63aca02445b50` |
| 13 | `theorem` | [vonMangoldt_mul_zeta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-mul-zeta.md) | 119 | `result-track:e497e2e73565ff9c0ac19de0cc04cbbfac46c40f042908224e9b4ae265c53956` |
| 14 | `theorem` | [zeta_mul_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/zeta-mul-vonmangoldt.md) | 123 | `result-track:c0801833b78e04e46e5dfef96abe7169f600153b7e07bdec049e995383c37575` |
| 15 | `theorem` | [log_mul_moebius_eq_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/log-mul-moebius-eq-vonmangoldt.md) | 126 | `result-track:1a13ad8efb8885bbb4d0b5885ede62167081cc478c948c3cf4a9faa4d75efe8f` |
| 16 | `theorem` | [moebius_mul_log_eq_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/moebius-mul-log-eq-vonmangoldt.md) | 130 | `result-track:5f7dd8ca7ce45745a259cbf1fdd33ebfe138f7f2ccdbd5efb0f25ac40ed2bd90` |
| 17 | `theorem` | [sum_moebius_mul_log_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/sum-moebius-mul-log-eq.md) | 133 | `result-track:7c21ce5beb0db8bd20dc71b9cf84cbd145da0d03a1eb5befdbc07e8c2335ef95` |
| 18 | `theorem` | [vonMangoldt_le_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/vonmangoldt-le-log.md) | 151 | `result-track:eac5287ed02c1bb03e782c32bea292b0ffd849eaa236e65123f5378f4b89fddd` |
| 19 | `def` | [evalVonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtPublic.lean/declarations/evalvonmangoldt.md) | 166 | `declaration-track:011c4312a2cdc82aeec0b92da5eee73b8a23e50d5e0898bc8897b46504ce857a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3074fbbb66fc31a539dfe04c04d6254ff325e3403d36c93dc0043757a36cca9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant0eaa8af946dc26bf04adb966c84e808318e7ec61d050a8ce7c981d480e0c2ea1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant0eaa8af946dc26bf04adb966c84e808318e7ec61d050a8ce7c981d480e0c2ea1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
