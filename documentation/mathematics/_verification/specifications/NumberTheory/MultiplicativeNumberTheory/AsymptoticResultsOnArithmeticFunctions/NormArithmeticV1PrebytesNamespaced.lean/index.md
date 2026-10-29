# Verification target: Norm Arithmetic V1 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d58848e723bc15a46cca7704082ffa342a4fe70",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d58848e723bc15a46cca7704082ffa342a4fe70`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationEnergy` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.WeightedPrimeMertens` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mangoldtBaseline](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mangoldtbaseline.md) | 35 | `declaration-track:9bcdc8932ad87e5c9bd6eb9c5977fd2422033960c91dbfc446d02a4d51159987` |
| 2 | `theorem` | [mangoldtCoefficient_nonneg](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mangoldtcoefficient-nonneg.md) | 38 | `result-track:d60e8b5a0fd802eb434c09791efb4a51a528f557b78dbcb3bbbdc83a28d30fe5` |
| 3 | `def` | [interactionShiftMass](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/interactionshiftmass.md) | 42 | `declaration-track:6c53b0122f0820ae4684d2273a5b6ee14f75d7d32c3e0aaf4596d3f777674eb8` |
| 4 | `theorem` | [interactionShiftMass_nonneg](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/interactionshiftmass-nonneg.md) | 46 | `result-track:347e7198f202b796c63dae1035c1122fa3d1e023c7a39cbcfb406ee86fb060f5` |
| 5 | `theorem` | [mangoldtBaseline_nonneg](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mangoldtbaseline-nonneg.md) | 50 | `result-track:c84f43b95220fa91e7e0f60f05ac6a2725c461e08f63c96f91dc65d6334e536f` |
| 6 | `theorem` | [symmetricTranslation_norm_apply_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/symmetrictranslation-norm-apply-le.md) | 54 | `result-track:18364d9c85f6c941ddb81a8420fe12a5104665f07f90d058a34d7045fe1afde6` |
| 7 | `theorem` | [symmetricTranslation_norm_le_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/symmetrictranslation-norm-le-one.md) | 64 | `result-track:85e3b2da6f5be60533a5c38c261a006763560c8879f48e6f95184b1419dddda2` |
| 8 | `theorem` | [sourceCorrelation_sub_one_abs_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/sourcecorrelation-sub-one-abs-le.md) | 70 | `result-track:69dd211454be46495c7f0f4aeaf0ca3458eccbfac3b06f766e328f2f1ee97169` |
| 9 | `theorem` | [sourceCorrelation_tendsto_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/sourcecorrelation-tendsto-one.md) | 85 | `result-track:0e6312124a4d15a0d3748f53dfb8361d5bed0520b81ff7b097ab44212de35b18` |
| 10 | `theorem` | [interaction_probe_eq_sum](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/interaction-probe-eq-sum.md) | 104 | `result-track:0b9d153bc2e65e934def695a8c01375ea5f7e88ab5cd1be8de3fe7bed6ebbfe7` |
| 11 | `theorem` | [interaction_probe_mass_error](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/interaction-probe-mass-error.md) | 112 | `result-track:26bf8d4667d47e4c4463d89ebfb9538c0a5d211d4c5883949af177582febbfe3` |
| 12 | `theorem` | [mangoldtInteraction_norm_apply_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-norm-apply-le.md) | 141 | `result-track:2f5f8c9b26df05d0b59535c48aa92df6db90833eef73bf1b589b1f0f3f9594aa` |
| 13 | `theorem` | [mangoldtInteraction_norm_le_mass](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-norm-le-mass.md) | 159 | `result-track:68d9ee773f0f3e6ec4b12a723f5ffce4b200364c7ecbe27643f03da1f122e262` |
| 14 | `theorem` | [interaction_probe_le_norm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/interaction-probe-le-norm.md) | 165 | `result-track:885f578d7b7bee2067c3cf663f7d67ff683d67c40923429e7adc6eb41730d243` |
| 15 | `theorem` | [mass_le_mangoldtInteraction_norm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mass-le-mangoldtinteraction-norm.md) | 176 | `result-track:26fd185775da83b3b76e0c240ad113aee132299a79196e9738ccf047fe4131cd` |
| 16 | `theorem` | [mangoldtInteraction_norm_eq_mass](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-norm-eq-mass.md) | 198 | `result-track:d6c5542485683cd090d622d82752f49004eb1f4a8d47d31864fa79a7818651d1` |
| 17 | `theorem` | [interaction_probe_eq_mass_of_shiftMass_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/interaction-probe-eq-mass-of-shiftmass-zero.md) | 203 | `result-track:899d3140ca650735146c5004c07d3181e26eb60d5d3efb32426f1a12739dc4d9` |
| 18 | `theorem` | [mangoldtInteraction_eq_zero_iff_mass_eq_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-eq-zero-iff-mass-eq-zero.md) | 212 | `result-track:ba0bdb51eb052dd0ff61f11ebd35e4dca7f914c99af02cb71cfb1d002867803b` |
| 19 | `theorem` | [interactionShiftMass_le_scaled_mass](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/interactionshiftmass-le-scaled-mass.md) | 217 | `result-track:706d8d1b1112809db5ede99d352a497c6aae042f03297a5d87b446b1f58ff72c` |
| 20 | `theorem` | [weightedMangoldt_term_le_coefficient](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/weightedmangoldt-term-le-coefficient.md) | 229 | `result-track:8657026b73c183d9b82bcd6e23d89aabfb5c9e948fb877e7d1eb5d4f002dbf0c` |
| 21 | `theorem` | [weightedMangoldt_le_mass](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/weightedmangoldt-le-mass.md) | 240 | `result-track:979e5364a8953693a2c3c4d179419814058c9c8c5f06d642ae7a7690970cf800` |
| 22 | `theorem` | [mangoldtInteraction_norm_lower](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-norm-lower.md) | 251 | `result-track:7b6745335116cd7c2f7d2d6a7ecab7d7b7a080331bbae3d11e87dac08ab34afa` |
| 23 | `theorem` | [mangoldtInteraction_norm_not_eventually_bounded](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/NormArithmeticV1PrebytesNamespaced.lean/declarations/mangoldtinteraction-norm-not-eventually-bounded.md) | 263 | `result-track:7fedf3f541e2e45128ece50654a4e855da94ec8355d4c5c4c96d32611b8334a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=022412faa09b4b002d1ae7e8e0736793a42c5624ce9415b354236bf9f7640828 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
