# Verification target: GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c814c9f1d6c293eb72c4e88dcdf16b62cdbec0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c814c9f1d6c293eb72c4e88dcdf16b62cdbec0`.

Source path: `GRWTSK/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean.json)

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
| 1 | `def` | [matureEnergy](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/matureenergy.md) | 12 | `declaration-track:9d263566434a9aacc45b323af1b4663caa7ed1343a5f171c65c96c33a54ee10c` |
| 2 | `def` | [horizonEnergy](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/horizonenergy.md) | 15 | `declaration-track:f0916964affdaa0244e295fa4e83050fb526d07e9b2e2624ebbe788d88c01eac` |
| 3 | `def` | [signedCorrelation](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/signedcorrelation.md) | 18 | `declaration-track:7fce1af82fe118e4faabc3508fde95567e2f513609fdea38dc6ec00f0781d958` |
| 4 | `theorem` | [cross_integrable](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/cross-integrable.md) | 21 | `result-track:a64e269faef50bbe5434d36edee091b41afde562a71123b04e81955dfdfb9c99` |
| 5 | `theorem` | [matureEnergy_nonnegative](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/matureenergy-nonnegative.md) | 25 | `result-track:07c10910798b2c9b899b2de06b3d5bd4c2a59cd5211c3b1c93816d520128718b` |
| 6 | `theorem` | [horizonEnergy_nonnegative](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/horizonenergy-nonnegative.md) | 28 | `result-track:c5e8a919079121a35476a093c894a1c0ca53ae4a1a5ef898e07f835560ea3f5e` |
| 7 | `theorem` | [localEnergy_eq_signed_source](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/localenergy-eq-signed-source.md) | 31 | `result-track:3c734f31d1d01828e0b56fa0d9bc990205c94a6a0c63838f89e50977658b95da` |
| 8 | `theorem` | [settlement_ledger](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/settlement-ledger.md) | 41 | `result-track:4c0cb212a31bd350cd2e55c552188ff6f05d52abf7640351c100bf8d27a3dfc2` |
| 9 | `theorem` | [signed_debit_exact](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/signed-debit-exact.md) | 62 | `result-track:d6d22517fd6c6ae6ff9ec86de8651b048b4bd4627ad3905fec211427e1688891` |
| 10 | `theorem` | [shell_requires_mature_energy](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/shell-requires-mature-energy.md) | 68 | `result-track:792e5a0aa6442abcc0c641ba8a39d8b8b294594c8971b9b0761af7d9d07d75fb` |
| 11 | `theorem` | [mature_lower_from_residual](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/mature-lower-from-residual.md) | 89 | `result-track:d324b38c8b7f7259610fd383ae1417369b1feb81579d22b00d72fc4d69266e71` |
| 12 | `theorem` | [unsigned_replacement_dominates_shell](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/unsigned-replacement-dominates-shell.md) | 94 | `result-track:038f2e1db028063cd3d58a30b53684e6b6c8da1b70aeb2bb8d4aa9c305e73a84` |
| 13 | `theorem` | [previous_cycle_unchanged](../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/declarations/previous-cycle-unchanged.md) | 99 | `result-track:11a2721c7889c00eebb958d5e842ede538edd8c288fa8b82b0020247713877b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8164987ab4a0564279c11d952fe8951b964d4b5f9b29144ac9ca7fa645ba5de5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean","GRWTSK/_verification/specifications/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
