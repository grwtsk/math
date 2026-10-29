# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "082f7a14cea422527f4ff132e2fb00cefd9e75cd",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `082f7a14cea422527f4ff132e2fb00cefd9e75cd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [clock](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/clock.md) | 15 | `declaration-track:8a70185e4027dbe52bdf5609dd3eb367880ef495d84abf4d2a91788258a14a75` |
| 2 | `theorem` | [clock_zero](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/clock-zero.md) | 18 | `result-track:03da7be3739c8b36192d9eed4d03bd13543ae0bd8a483e73b29e42109ac2b05f` |
| 3 | `theorem` | [clock_succ](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/clock-succ.md) | 19 | `result-track:54c3599dadd400264f380a1c62c7d83fef6467d3d0c5f5da2a2411507c86157a` |
| 4 | `theorem` | [clock_ge](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/clock-ge.md) | 21 | `result-track:e9d881b26a21f8889c9d6620bbcab326c7dc6400a7a03a1630491fff29b57ae2` |
| 5 | `def` | [serves](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/serves.md) | 27 | `declaration-track:f09dd678308747ece384e735338b2c671671119030d23c7660bc02c3f6b45acd` |
| 6 | `theorem` | [coverage](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/coverage.md) | 29 | `result-track:7f7291a9b444eb8225b0be441689196b9d492b325b9271d75a33300a84296032` |
| 7 | `theorem` | [starvation_counterexample](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/starvation-counterexample.md) | 40 | `result-track:b8eeabf5c65ebb245b0c9ee1146a5355016668fe7510d1bba523d2cfc156b690` |
| 8 | `def` | [step](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/step.md) | 45 | `declaration-track:75b657968eb7cf79f7b2a6f1b3e0717c907ab6a84f15560cba493bac1fb93a85` |
| 9 | `theorem` | [maximal_exists](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/maximal-exists.md) | 48 | `result-track:6e0e15186b857590a1578fe0663afe0af5623cd07b10befed0f1bb161d6a169f` |
| 10 | `theorem` | [step_sum](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/step-sum.md) | 54 | `result-track:b6e2b6e142c4cc0144a6b434406efd6dedee12e5499d0acd4e5905e926ef3823` |
| 11 | `theorem` | [step_lower](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/step-lower.md) | 58 | `result-track:db9a26631a65a73c4abf5922f55860c3ba1ff2d0e496ac31159e6e7f4e89bb67` |
| 12 | `theorem` | [upper_from_lower](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/upper-from-lower.md) | 72 | `result-track:09f715a3850ac7475556465bffd795d25d94330b71a8354075ce39425b6d2737` |
| 13 | `def` | [debt](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/debt.md) | 84 | `declaration-track:dd7bc5bc53cbf1f9f56845bb50e5f744631b8261696b45db29a08152b1893046` |
| 14 | `def` | [count](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/count.md) | 87 | `declaration-track:1742f4a408b4728319142405018f056061ccdaa75a77726e371745ea750373b1` |
| 15 | `theorem` | [debt_zero](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/debt-zero.md) | 90 | `result-track:2fc1fbc7d9351d48d9eb688f61df53876330c8a74eb77c0791c0d1600bc62696` |
| 16 | `theorem` | [debt_succ](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/debt-succ.md) | 92 | `result-track:01444b9e7a4c106793ce153c56bd62306aef76aa0e3679bf76143bc4f61b0c50` |
| 17 | `theorem` | [count_zero](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/count-zero.md) | 94 | `result-track:670faa3fc0ec305a5f60ef68b9da3e5483b5d76c0f86ba9f77667d3278bfd8c4` |
| 18 | `theorem` | [count_succ](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/count-succ.md) | 95 | `result-track:9cee7b045597184b2e03dbeda53ec1f1e75a655c5ab90fe37d0c59885dcfcd89` |
| 19 | `theorem` | [debt_invariant](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/debt-invariant.md) | 98 | `result-track:972496d22d3f628743a1c6f1462a69d477ee77c6093155d503fbd9d10c147705` |
| 20 | `theorem` | [debt_accounting](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/debt-accounting.md) | 107 | `result-track:c8205c914287e254ce6f8c55d49e2cef71f09fed9a43d199af3f65d1586e3c4f` |
| 21 | `theorem` | [service_bound](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/service-bound.md) | 118 | `result-track:af20e36104fe8d298267cd4699c93b0a8f3755052ee6d8b3b2ef0dc2fa2194be` |
| 22 | `theorem` | [no_starvation](../../../../Combinatorics/QuotaDiscrepancyHistoricalSourceEdition2.lean/declarations/no-starvation.md) | 133 | `result-track:69440609e16ebe603320f17a9d0367535d199f6bb413836ff7fec0ee0d9bd691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f785cc74541dee2458b1d2e9dfa5afa45dffdd14105c1e4cd5fb1592a04c7f3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence51a0da995f64591d03ef5191.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
