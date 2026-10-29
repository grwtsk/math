# Verification target: GRWTSK.NumberTheory.Primes.GoldbachMinorEnergyBarrier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e86d3afbb8938da5ab60190be12ce61cbe8c672",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e86d3afbb8938da5ab60190be12ce61cbe8c672`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy`](../../../../../MeasureAndIntegration/GoldbachMinorAbsoluteEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [goldbachRationalArcIndices_two](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/declarations/goldbachrationalarcindices-two.md) | 34 | `result-track:a076ac5473f3c786ff752e2b8971f0a5335e751e26f93cdd282206e4c6240436` |
| 2 | `theorem` | [goldbachMajorArcSet_two_eq_union](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/declarations/goldbachmajorarcset-two-eq-union.md) | 38 | `result-track:195c18133dfd7044065a0695022225f8eb630950265185e64c44687af53f61cd` |
| 3 | `theorem` | [measureReal_goldbachMajorArcSet_two_le](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/declarations/measurereal-goldbachmajorarcset-two-le.md) | 47 | `result-track:a732d7e5230f080bada7f5bc8dae642c955e633c3915dac98be0751a38eeed91` |
| 4 | `theorem` | [goldbachMajorEnergy_two_le_theta_square](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/declarations/goldbachmajorenergy-two-le-theta-square.md) | 69 | `result-track:e0783e47be89dd37484d8a744001447c35f63df78935e09cf6be9378fe51f49e` |
| 5 | `theorem` | [goldbachMajorEnergy_two_le_nineteen](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/declarations/goldbachmajorenergy-two-le-nineteen.md) | 95 | `result-track:8f2f4938d1533e11b21e32968eff48d45d1fc89a102d962c515024f0df960d34` |
| 6 | `theorem` | [goldbachSquareTotal_double_ge_log_theta_difference](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/declarations/goldbachsquaretotal-double-ge-log-theta-difference.md) | 112 | `result-track:11782b63a03f29379ec4fb4549f7ee0af1788f864fdde40a0ecebffa818228f7` |
| 7 | `theorem` | [goldbachSquareTotal_double_ge_of_coarse](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/declarations/goldbachsquaretotal-double-ge-of-coarse.md) | 152 | `result-track:ba5885220ec013de9bf408e83f68cdc9d196af04081f03f5b6495c51f5308290` |
| 8 | `theorem` | [goldbachMinorAbsoluteIntegral_double_lower](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/declarations/goldbachminorabsoluteintegral-double-lower.md) | 167 | `result-track:50aabb4601b85bd2139f4362aae9fff50270e1ea6c46ab09dafbd275a7479e6a` |
| 9 | `theorem` | [goldbachMinorAbsoluteIntegral_gt_linear](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachMinorEnergyBarrier.lean/declarations/goldbachminorabsoluteintegral-gt-linear.md) | 179 | `result-track:9023fc184b1d89bc12101beb2ecda9617d2f6658ffa074411392012ea67200dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac62ee51ecf2faa5dfce322bd54154d17b595278459abab0163898e9098ccbdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
