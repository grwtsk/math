# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedVonMangoldtTauberianChebyInputControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c597c57dedecd31cab44dfc648226d6b8083b744",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtTauberianChebyInputControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c597c57dedecd31cab44dfc648226d6b8083b744`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtTauberianChebyInputControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtTauberianChebyInputControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtTauberianChebyInput`](../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PinnedVonMangoldtTauberianChebyInput.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pinned_cumsum_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/declarations/pinned-cumsum-zero.md) | 16 | `result-track:38c3be164983b533b0f9061d90ddf6f0a58707134bb9e7a36b1bb2ef50be3383` |
| 2 | `theorem` | [pinned_cumsum_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/declarations/pinned-cumsum-one.md) | 21 | `result-track:d1cda11808bcfe77e8902b520076ff3bf479132897a66ca3faf06fb4e00ccca6` |
| 3 | `theorem` | [pinned_cumsum_succ_eq_inclusivePsi](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/declarations/pinned-cumsum-succ-eq-inclusivepsi.md) | 26 | `result-track:6644c4727d097273e6bc8e949d7dca23c1878930c34a195265dc5bc3a5c31d43` |
| 4 | `theorem` | [pinned_wienerIkehara_cheby_input](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/declarations/pinned-wienerikehara-cheby-input.md) | 32 | `result-track:644016b49d74b739f2dd90b78d7d53598dde46741ac263a1622a829007790a77` |
| 5 | `theorem` | [pinned_wienerIkehara_cheby_with_explicit_constant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/declarations/pinned-wienerikehara-cheby-with-explicit-constant.md) | 38 | `result-track:7d31ac92591511c764ebc3284ddffb03664efb8d581cddf52df9b7a9c84382e1` |
| 6 | `theorem` | [pinned_wienerIkehara_cheby_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/declarations/pinned-wienerikehara-cheby-nonnegative.md) | 44 | `result-track:cde152522c966ba3025564078870601c50adb7db88d2b2149d8c95bca55c8cb2` |
| 7 | `def` | [remainingTauberianProofSuppliers](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/declarations/remainingtauberianproofsuppliers.md) | 50 | `declaration-track:e61a6f4f6772ef67ef1523377b30e6fe1339706d547d6d48874ca67a6f94b37d` |
| 8 | `def` | [prohibitedPromotions](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedVonMangoldtTauberianChebyInputControls.lean/declarations/prohibitedpromotions.md) | 58 | `declaration-track:e82be1c24cf1d78d8e0846304bf8781737f385967c1139d8faafa249c2e15e6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c7f4bd62ba2067df6569125ccd3416aaf21a0a2d29a6774dd962fd863e9225b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtTauberianChebyInputControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtTauberianChebyInputControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
