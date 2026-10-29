# Verification target: Signed Window Gram Identity Historical Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c814c9f1d6c293eb72c4e88dcdf16b62cdbec0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWindowGramIdentity/Variant40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c814c9f1d6c293eb72c4e88dcdf16b62cdbec0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWindowGramIdentity/Variant40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWindowGramIdentity/Variant40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeShellDecompositionHistoricalSourceEdition2.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedWidthEnergyBoundEquivalence.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matureEnergy](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/matureenergy.md) | 12 | `declaration-track:0d7d5f550fae17955ea3d70dd930517049086eed17687ceff87f52d7f4925dc1` |
| 2 | `def` | [horizonEnergy](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/horizonenergy.md) | 15 | `declaration-track:9b8f34f5bc0ad2aeaaf5aa79f0d7436ec959478ae47e7d4499bc715afe2c6e9c` |
| 3 | `def` | [signedCorrelation](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/signedcorrelation.md) | 18 | `declaration-track:d089b1d5b745453e382519da50a77606f509a603c2f5cd44d4e5ca94ca9f3cb2` |
| 4 | `theorem` | [cross_integrable](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/cross-integrable.md) | 21 | `result-track:0f30e69d31562810851274569787d3d0c1988c138909b88439f849146e6ae574` |
| 5 | `theorem` | [matureEnergy_nonnegative](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/matureenergy-nonnegative.md) | 25 | `result-track:b4c7f105310047b70e3bf0d6452bcb58d73d807e72eefff2c1949f4c69013a1e` |
| 6 | `theorem` | [horizonEnergy_nonnegative](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/horizonenergy-nonnegative.md) | 28 | `result-track:94e398ec771f379fa9ffde54291c480eee6e244d0b6314603f6af82be5feb148` |
| 7 | `theorem` | [localEnergy_eq_signed_source](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/localenergy-eq-signed-source.md) | 31 | `result-track:acb026b683f39e37fa546f2f2fe4e38c26020918736e3ad0d905c754c8d98111` |
| 8 | `theorem` | [settlement_ledger](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/settlement-ledger.md) | 41 | `result-track:8bbfb0f533e7c069ad972df5e68df2acd07243ddf5e40e2ae1df55e3781b3a4d` |
| 9 | `theorem` | [signed_debit_exact](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/signed-debit-exact.md) | 62 | `result-track:ff778c06dffc449842d5985d60a3197e4e862465e8da7063db2c9744e49a5369` |
| 10 | `theorem` | [shell_requires_mature_energy](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/shell-requires-mature-energy.md) | 68 | `result-track:54c750be86169b7e5b603f199ee7492938f6358a219aa2bf3f796016f9ca026a` |
| 11 | `theorem` | [mature_lower_from_residual](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/mature-lower-from-residual.md) | 89 | `result-track:c7c6744eb2679063b019296d9466f146cc633c311021bf1cac555474708aa28c` |
| 12 | `theorem` | [unsigned_replacement_dominates_shell](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/unsigned-replacement-dominates-shell.md) | 94 | `result-track:98c8168347bf0aae60f15fec722ea0bf6da168511fd95e9937a36f0a3771a9b1` |
| 13 | `theorem` | [previous_cycle_unchanged](../../../../MeasureAndIntegration/SignedWindowGramIdentityHistoricalSourceEdition2.lean/declarations/previous-cycle-unchanged.md) | 99 | `result-track:3d22a713adba7b65600ba18a0434f8f31ad1310ae72a2d2bb0060f46bffcbc19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f31d2b5c20861565f7ccaa54361fc00729bd325fb66e5f3fb3fd33eef4ebbf23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWindowGramIdentity/Variant40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWindowGramIdentity/Variant40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
