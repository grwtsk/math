# Verification target: Scope Fixtures Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7c2ac03ffb40a817d93066c8947f772b5622205",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7c2ac03ffb40a817d93066c8947f772b5622205`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCenteredMobiusNorm` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_scale_excluded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/zero-scale-excluded.md) | 16 | `result-track:395787b7e53a8d0cb6ade107c6d101a43f56cbc3d419d8f4a85c263ea590e4fe` |
| 2 | `theorem` | [unit_cutoff_actual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/unit-cutoff-actual.md) | 18 | `result-track:45cdc2cf3b011e6e539a8fc59c533e84ff22d43fcbf1df1ca714d4444668c01d` |
| 3 | `theorem` | [scale_two_actual_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/scale-two-actual-bound.md) | 21 | `result-track:9b633a446d15d5bedd26e828cd3f2186455fc05b46717556a3f0e5a00030e3d8` |
| 4 | `theorem` | [scale_seven_actual_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/scale-seven-actual-bound.md) | 25 | `result-track:b912cb46f356a56a5707f26640d7f5134ddea4ff545fc7950071de97660392d9` |
| 5 | `theorem` | [lower_endpoint_excluded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/lower-endpoint-excluded.md) | 29 | `result-track:90879e213c9cb8f3d2048de071c8a594e360bf898349d3157df67db9768fddf3` |
| 6 | `theorem` | [upper_endpoint_closed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/upper-endpoint-closed.md) | 32 | `result-track:838a6d351cbdcb8ff46574dc45ccab31bef6645fc984e8318b1c1c14deb3d7e1` |
| 7 | `theorem` | [empty_row_actual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/empty-row-actual.md) | 36 | `result-track:98582d46f037b8b3196493f747aa2ecbc5272070933d42318d3652abba5c7da5` |
| 8 | `theorem` | [one_upper_atom](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/one-upper-atom.md) | 46 | `result-track:8bb596f98a87f212cfe1d609ad965d2777ee60459a1e8d1357147afb2221b8fb` |
| 9 | `theorem` | [lower_prefix_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/lower-prefix-zero.md) | 51 | `result-track:ad53234906c5a566f1402d3efb2ba0366132841e0dfb8ad09989a4c388be2109` |
| 10 | `theorem` | [separately_cast_quotient_discrepancy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/separately-cast-quotient-discrepancy.md) | 54 | `result-track:dada265f42975de2f67a02dd2fe9259f975c67087cfdb14699a7ca1fadf7e21b` |
| 11 | `theorem` | [centering_not_dropped](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/centering-not-dropped.md) | 57 | `result-track:85b4967760247a45bff7273dc909eb737dbb227bab41b5df992ebc543b07efdb` |
| 12 | `theorem` | [actual_reflection_orientation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/actual-reflection-orientation.md) | 61 | `result-track:bec9d0b768d26dc23428b6ee08fe7b66038f6633740a5b4075434267de161f24` |
| 13 | `theorem` | [log_ratio_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/log-ratio-one.md) | 65 | `result-track:9bfdd292b57605e82841c82ce1e88993607c2868921d2086b24664cdd8672af8` |
| 14 | `theorem` | [terminal_correction_retained](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScopeFixturesEdition4.lean/declarations/terminal-correction-retained.md) | 67 | `result-track:386c6ed0ec0277756324c1c88ffee031da2948d415464b05b4ac460ce11fa221` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=997f1dae02caf67a2afdea44007a6a841f853a1009800a8b03cf95b3c0373649 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
