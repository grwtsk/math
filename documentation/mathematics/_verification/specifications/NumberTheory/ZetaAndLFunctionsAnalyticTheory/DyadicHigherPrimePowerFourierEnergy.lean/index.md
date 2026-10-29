# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFourierEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a30d045d6a25def5cbb21cd218a726c1b0469e6e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a30d045d6a25def5cbb21cd218a726c1b0469e6e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerDFTRemainder`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerDFTRemainder.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fourierFrequencyDenominator_norm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/declarations/fourierfrequencydenominator-norm.md) | 41 | `result-track:bea2573632ef7482f4ed2e6a14e9f4653541f486c5ce345e6824c72142acbd4c` |
| 2 | `theorem` | [frequency_abs_le_denominator_norm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/declarations/frequency-abs-le-denominator-norm.md) | 50 | `result-track:6848ff7b18ca7540429974ceed21411a44a4d897e361ef9742636888dd77e385` |
| 3 | `def` | [higherPrimePowerFourierModeEnergy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/declarations/higherprimepowerfouriermodeenergy.md) | 59 | `declaration-track:5727eb82c0ace2e800e7c29ac18373aa0a712d19ed7ba02050a5868fc3325829` |
| 4 | `theorem` | [higherPrimePowerFourierModeEnergy_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/declarations/higherprimepowerfouriermodeenergy-nonnegative.md) | 66 | `result-track:75ea8080823d096d9668d4a10aec03024024dd861d5c52adaac199d9b9b5f5fe` |
| 5 | `theorem` | [higherPrimePowerFourierModeEnergy_le_pSeries](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/declarations/higherprimepowerfouriermodeenergy-le-pseries.md) | 75 | `result-track:73d2e7fa290b80f8aad7f1e733e4425b11b9d41856f8aa8bcc7e91993f5e6de8` |
| 6 | `theorem` | [higherPrimePowerFourierModeEnergy_summable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/declarations/higherprimepowerfouriermodeenergy-summable.md) | 118 | `result-track:a3066a791511602746d554dd05ce78f4ca513964a377ff8e7e54620beb996b58` |
| 7 | `def` | [higherPrimePowerFrequencyConstant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/declarations/higherprimepowerfrequencyconstant.md) | 137 | `declaration-track:74441e01bfe5b8ce7e233d6e262f53c706602cb4e89806b8ed4a642893952a61` |
| 8 | `theorem` | [higherPrimePowerFrequencyConstant_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/declarations/higherprimepowerfrequencyconstant-nonnegative.md) | 140 | `result-track:7c4759cf359107adca9f591ab92d802242c599813e29a60dcb0480dfacbb68ea` |
| 9 | `theorem` | [higherPrimePowerFourierEnergy_le_mass_sq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/declarations/higherprimepowerfourierenergy-le-mass-sq.md) | 147 | `result-track:840484e57a9576c33f49c46672a48b1db04bf236a1941e686d9bd56ffc90033b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db7840438f72e6dd18b28af0c956743c9dffc85451baa5373ba614c55f5636ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
