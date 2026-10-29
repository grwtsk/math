# Verification target: GRWTSK.NumberTheory.Moebius.ReciprocalPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9014c091e12c7104e8087204b2aa12552b6a7afa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9014c091e12c7104e8087204b2aa12552b6a7afa`.

Source path: `GRWTSK/NumberTheory/Moebius/ReciprocalPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ReciprocalPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks`](../../../../../../MeasureAndIntegration/MoebiusCriticalIntervalBlocksHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum`](../../../../../../MeasureAndIntegration/FinitePowerSum.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pickupReciprocalPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/declarations/pickupreciprocalprefix.md) | 28 | `declaration-track:a51a50e85658c8d76a9d707fe087ed9d7367927de2fa4e0073af7a2c5d81e3ea` |
| 2 | `theorem` | [pickupReciprocalPrefix_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/declarations/pickupreciprocalprefix-zero.md) | 31 | `result-track:249465026073352e78aea8a1ef19a0f2d9ea10edbe99d3c848cd08b51e18a0a8` |
| 3 | `theorem` | [pickupReciprocalPrefix_succ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/declarations/pickupreciprocalprefix-succ.md) | 34 | `result-track:c3f74824fda7847c9331eecb9ac836d91a0213b8ee802b7dc8072f06b1cf6c23` |
| 4 | `theorem` | [pickupMertensPrefix_succ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/declarations/pickupmertensprefix-succ.md) | 40 | `result-track:7f48223970b7c41dbaa0d91b5fe1242106bb6e1ff1908c93f87eed90d8a06734` |
| 5 | `theorem` | [pickupMertensPrefix_eq_reciprocalPartialSummation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/declarations/pickupmertensprefix-eq-reciprocalpartialsummation.md) | 48 | `result-track:f2f626afe6b3adbd2d6e72cc3d14fe7d424132abf7e898084dfc96dde2b7e19e` |
| 6 | `theorem` | [pickupMertensPrefix_abs_le_reciprocalPartialSummation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/declarations/pickupmertensprefix-abs-le-reciprocalpartialsummation.md) | 65 | `result-track:f56ca2e1a6941cb653e2acf6833c4f57bf67991b5461e5995aa7be70fdc67d3b` |
| 7 | `theorem` | [pickupMertensPrefix_le_of_reciprocalPrefixDecay](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/declarations/pickupmertensprefix-le-of-reciprocalprefixdecay.md) | 84 | `result-track:796a8e2f83492b0682ba667adf2b824ce2a6158361601467a3fbd2d309331386` |
| 8 | `theorem` | [criticalBoundary_of_reciprocalPrefixDecay](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixHistoricalSourceEdition2.lean/declarations/criticalboundary-of-reciprocalprefixdecay.md) | 158 | `result-track:47aad8babf852a135114185772ff6f0bea9190bf3ef0764646fe4ddaa5e2c974` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e34bcd83457b41a2b8bc475d0263f67d99e0e76d246a962560f39451de0aab09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/ReciprocalPrefix.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/ReciprocalPrefix.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
