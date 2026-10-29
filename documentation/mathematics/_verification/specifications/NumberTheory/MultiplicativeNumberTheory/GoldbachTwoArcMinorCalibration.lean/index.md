# Verification target: GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f219c5154bbf2a0edbdd0a412837964105cef5f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f219c5154bbf2a0edbdd0a412837964105cef5f`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff`](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachThetaExplicitCutoff.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [signed_minor_lower_iff_mass_lower](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/declarations/signed-minor-lower-iff-mass-lower.md) | 36 | `result-track:72f4ac905b7a8cdfab6392efbfe1e88eb90f79382ee23ec7a383e1c76f3ff510` |
| 2 | `theorem` | [goldbach_signed_minor_lower_iff_logMass_lower](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/declarations/goldbach-signed-minor-lower-iff-logmass-lower.md) | 45 | `result-track:0a91b2435689c9086ac124b6baa510887fa5cf79ecd885e0b0fee856bad7eb73` |
| 3 | `theorem` | [twoArcBudget_one_percent_eq](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/declarations/twoarcbudget-one-percent-eq.md) | 55 | `result-track:4fc84b2649cf2a0348cff03f7ddfefd0065b9cf1e8ceae33c18b41fd37de63d2` |
| 4 | `theorem` | [twoArcBudget_one_percent_le_thirteen_thirtieths](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/declarations/twoarcbudget-one-percent-le-thirteen-thirtieths.md) | 64 | `result-track:58965f2a52eb1e2610e4e8d30941e91ef76b06f3ea19e9b4742ec81a45728629` |
| 5 | `theorem` | [twoArcBudget_full_minor_margin](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/declarations/twoarcbudget-full-minor-margin.md) | 75 | `result-track:6174ff2877a37d892142e24d361dcd99a1f54fb0ed79ea9cf2837382d7dd48d6` |
| 6 | `def` | [GoldbachTwoArcSignedMinorSupplier](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/declarations/goldbachtwoarcsignedminorsupplier.md) | 82 | `declaration-track:cfaf4a084a172c8dabedad9ebdf83fbb90468cc2fe5c23a1a35969ad570f472a` |
| 7 | `theorem` | [goldbachLogMass_ge_one_ninetieth_of_two_arc_bridges](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/declarations/goldbachlogmass-ge-one-ninetieth-of-two-arc-bridges.md) | 88 | `result-track:60d9268dee835ade6f3d0ce3e80bd865bef7eb29afcfb5c576639dab1f994705` |
| 8 | `theorem` | [goldbachCount_pos_of_relaxed_two_arc_bridges](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/declarations/goldbachcount-pos-of-relaxed-two-arc-bridges.md) | 110 | `result-track:12b4a7f63868985245af49fa766926284e8769030e373d0daba96298269ea856` |
| 9 | `theorem` | [goldbachLogMass_lower_above_of_relaxed_two_arc_suppliers](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachTwoArcMinorCalibration.lean/declarations/goldbachlogmass-lower-above-of-relaxed-two-arc-suppliers.md) | 127 | `result-track:acca8eee4ea9a64cdba31c31edcace1a782299e3ccf6c7c639483e943d9a5ec1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc5942b42ba061cedebe6397578989cd5ca2dd90de3a7bc51331de738d691e33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
