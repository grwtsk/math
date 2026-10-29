# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightIntegerizedPsiSourceRuleControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3db5f9755c7f7640558029e1b0f070840b2d76c3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3db5f9755c7f7640558029e1b0f070840b2d76c3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightIntegerizedPsiSourceRule`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [concrete_integerized_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/concrete-integerized-identity.md) | 15 | `result-track:7f08e1f2ef010d348fae11ceac4e19de4df839597bbf71d6877da6f57ed7deb7` |
| 2 | `theorem` | [concrete_half_integer_sawtooth](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/concrete-half-integer-sawtooth.md) | 24 | `result-track:bb5dc670320a33b05788222517d3ee6a009621c55f968cf6630cee2a81e58d00` |
| 3 | `theorem` | [concrete_integer_target_equivalence](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/concrete-integer-target-equivalence.md) | 31 | `result-track:20bd9bf182ed108caa6766637cf8aa7cc3db5c4eeadc2d2b0e3e56e68395ab2c` |
| 4 | `theorem` | [zero_amplitude_integer_response_bound_forces_psiError_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/zero-amplitude-integer-response-bound-forces-psierror-zero.md) | 38 | `result-track:eab614ed2c6e06e4217e5a4e40a614821f5c227221b75f4fe076c8f1353e3498` |
| 5 | `def` | [remainingIntegerPsiObligations](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/remainingintegerpsiobligations.md) | 56 | `declaration-track:73166c48fe8cf395dd2a00d19d4b75048338ff17660626eff9d1437da209d551` |
| 6 | `def` | [prohibitedPromotions](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/prohibitedpromotions.md) | 63 | `declaration-track:27d85572006da6d1f148a52305d045ae4b45044530c1c3cbba0caa70611dfad2` |
| 7 | `theorem` | [concrete_integerized_psi_source_exact_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/concrete-integerized-psi-source-exact-identity.md) | 75 | `result-track:92b224b68d4d2fba340e865d8a7def93394dcf6c6af7dc66b47d794ecfd845a3` |
| 8 | `theorem` | [concrete_floor_correction_le_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/concrete-floor-correction-le-one.md) | 83 | `result-track:36e4184598056e3723f37a4c5a7de4c6532c3d492a9147786c519b76f9749ed4` |
| 9 | `theorem` | [concrete_parent_pair_bounds_force_sawtooth_floor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/concrete-parent-pair-bounds-force-sawtooth-floor.md) | 89 | `result-track:a0060e2bfb1fbce9f65f72c2539b931b8cc9ae67db9cb8f8ac6bcdaededd1312` |
| 10 | `def` | [remainingIntegerPsiSourceObligations](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/remainingintegerpsisourceobligations.md) | 99 | `declaration-track:f9b6c07242d7feec073e0ec8b90c8ba9e3ee77e12c1f9ef2b6ed3384031a78c7` |
| 11 | `def` | [branch842ProhibitedPromotions](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean/declarations/branch842prohibitedpromotions.md) | 106 | `declaration-track:a0aa8772e41e181d40d7323bacca1a31713666a758079c5d33545a604bdc8a06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12d9b7d9606f59f2ecfdb7974b051a9431c3dddb132a0a3577064179873b72ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightIntegerizedPsiSourceRuleControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
