# Verification target: Kernel Checked Short Ordinary Prime Head At Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68fd74c924e3b115a9dac87627908634bd8913d0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68fd74c924e3b115a9dac87627908634bd8913d0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.FiniteHeadConsumer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invLower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/invlower.md) | 32 | `declaration-track:c3b889a8c60e8a00795174a4d79054ad3fe4589e8975d840140a54d205872b65` |
| 2 | `def` | [invUpper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/invupper.md) | 94 | `declaration-track:7c2baa13d3670b86bf3fe9a9280721c92489766fcae08e728713fe1ac4f99144` |
| 3 | `def` | [logUpper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/logupper.md) | 156 | `declaration-track:d26f2f7e200a44f70a75870e52d48a8ec3ad5b8830d07caa89c9a6ff45e10793` |
| 4 | `theorem` | [inv_sqrt_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/inv-sqrt-lower.md) | 178 | `result-track:b1a12d6009ccf36087b1e723336a44c93b48bd04532151a6033b0a015d9e70ff` |
| 5 | `theorem` | [inv_sqrt_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/inv-sqrt-upper.md) | 189 | `result-track:cf7c243c5eba563197972de3fe5ecbc873cd58e1f0b9ffe1d71f19cc13320103` |
| 6 | `theorem` | [table_inv_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/table-inv-lower.md) | 200 | `result-track:a0418573deec5ab87be1a155984bc508e0265a23fadb99b6c06ac10feea4b8ee` |
| 7 | `theorem` | [table_inv_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/table-inv-upper.md) | 209 | `result-track:317c5bbf453913ac7ef1728c5d6b400fdc4d1c8fe7f8fc3db5202b028b41ea93` |
| 8 | `theorem` | [log_upper_of_taylor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/log-upper-of-taylor.md) | 218 | `result-track:5782bf7708ccd8cbd17a3bcd27f36e94ef884f078e82da0fa81ac61a88a61754` |
| 9 | `theorem` | [table_prime_log_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/table-prime-log-upper.md) | 224 | `result-track:608ed8ce0fd85c5f9dc4c5078c5b506c034fd24d1230285821cfecbf8c442781` |
| 10 | `theorem` | [table_log_upper_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/table-log-upper-nonneg.md) | 233 | `result-track:2bd375852eb3626088dca5d261609d282d36efa463b934d7128e41ef6ef7e42d` |
| 11 | `theorem` | [table_log_upper_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/table-log-upper-zero.md) | 239 | `result-track:20bc0bc6358d97e7c630cd3b83eec81e4707ac62fb99ba041ceb8d81ac40d999` |
| 12 | `def` | [termUpper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/termupper.md) | 249 | `declaration-track:6585fcfa232e95a4e3d15ce191dd2162a0d8ad865a072ccbc7d882d479f75d76` |
| 13 | `theorem` | [actual_term_le_table](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/actual-term-le-table.md) | 254 | `result-track:d08cfe5999b422d10e73303935457002e29ff99f4cf804f571e481f856dd4efb` |
| 14 | `theorem` | [short_head_rational_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/short-head-rational-upper.md) | 281 | `result-track:a67cc4d533c2f011afb74eaf2989d7023818321fa7c863357193c66da701526f` |
| 15 | `theorem` | [short_prime_head_strict](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/short-prime-head-strict.md) | 295 | `result-track:7b103c0d7b72b917e90ec9a956e33d5f30b960c77b00234980bb1b88cd6921b6` |
| 16 | `theorem` | [short_prime_head_certificate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/short-prime-head-certificate.md) | 300 | `result-track:d18bc351939699cd41b3fa214e64c7a71eaa98ca534c4075afd0e0d4824485ca` |
| 17 | `def` | [loggedPrimePrimitive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/loggedprimeprimitive.md) | 303 | `declaration-track:d28c4694dfbaa7f7bd1ad894ff81e7e147161d343d69344363b1103623e3dbde` |
| 18 | `theorem` | [logged_prime_at_log](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/logged-prime-at-log.md) | 307 | `result-track:d52786a2a5e1b28da913d693d70f4caefbfb13420c13f2647cf93ba27b1318d3` |
| 19 | `theorem` | [short_prime_head_log_strict](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/short-prime-head-log-strict.md) | 313 | `result-track:340bb831fd2c6c87042228986200c3fc6f3abcf0032ca77f490814603935283f` |
| 20 | `theorem` | [finite_theta_envelope_implies_entrance_reserve](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KernelCheckedShortOrdinaryPrimeHeadAtEdition2.lean/declarations/finite-theta-envelope-implies-entrance-reserve.md) | 319 | `result-track:8ca4aff09135f54df41fc44f60fffc8d95468911c361d1f02489bb4456088d48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c7a6b478248d57ec4f4d1e320a043c80647b68b95554d8da144e53a6b9ca19e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
