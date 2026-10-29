# Verification target: Normalized Rate Gate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8b003629d01f170e91bf2e604eb90e40511735f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant9e74f04493e30bad9f5b71f0571359d2d4e3a17bb1ae7cf5dce7f0f9fe1c5b42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8b003629d01f170e91bf2e604eb90e40511735f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant9e74f04493e30bad9f5b71f0571359d2d4e3a17bb1ae7cf5dce7f0f9fe1c5b42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant9e74f04493e30bad9f5b71f0571359d2d4e3a17bb1ae7cf5dce7f0f9fe1c5b42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalization](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/normalization.md) | 33 | `declaration-track:fc9a42359e6e920d729c86e656785054280d7971337c69934bc8a30b9f1f37d4` |
| 2 | `def` | [modelShell](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/modelshell.md) | 36 | `declaration-track:5b782fe658f290153f65fcabdb21652e5096dcf4d777b20e37124e96c9a72cfb` |
| 3 | `def` | [modelComplement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/modelcomplement.md) | 39 | `declaration-track:9220e715e41006fd1e8fdfc5dde2609ccc9e23797aada4cb3e002f6d27279b6d` |
| 4 | `def` | [modelResidual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/modelresidual.md) | 42 | `declaration-track:aefafd7bb3d8ccc9cf4dab0ad6bfe478707d3085ec56694399a9375c50e8a6c6` |
| 5 | `def` | [balancedComplement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/balancedcomplement.md) | 45 | `declaration-track:75737493edeaed81e1effe324a29d8aa3e35bd8207640af0dd9fe5e6b94c684d` |
| 6 | `theorem` | [normalization_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/normalization-pos.md) | 47 | `result-track:f53edb3bfc8e4e56188e8cdf83ae2d5dd1ad380c9bf4ccc8021eed75aaa251c7` |
| 7 | `theorem` | [normalized_cap_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/normalized-cap-iff.md) | 53 | `result-track:50d128175f09b63eef5e8fe58842f370e8d5a8bf737921a8952d497ecfae6ba7` |
| 8 | `theorem` | [modelResidual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/modelresidual-eq.md) | 60 | `result-track:c0bbe35aa2c5ffe511f7589fa885abe6dd40fdfbbe7983003f509813589afdf5` |
| 9 | `theorem` | [normalized_modelResidual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/normalized-modelresidual-eq.md) | 67 | `result-track:e52c4d3e7fb4e1594e2b7460fd1d1e391064891bfe6292ff34ab7f0aafa70c41` |
| 10 | `theorem` | [balanced_residual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/balanced-residual-eq.md) | 75 | `result-track:666b4a074a0a22e6d4ca43293ee408457d2f32a494722c0b8505b41b84e60d93` |
| 11 | `theorem` | [normalized_balanced_residual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/normalized-balanced-residual-eq.md) | 80 | `result-track:76ae6dc6d1ba057a49fb6c0d6595536e9df4c36ab850afdc1d6f60e9d27448e7` |
| 12 | `theorem` | [normalization_exp_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/normalization-exp-eq.md) | 85 | `result-track:6fe427240f5094af249db53af13fdf16871839eabdbe30c9533dd304094bb5a0` |
| 13 | `theorem` | [normalized_modelResidual_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/normalized-modelresidual-tendsto-zero.md) | 91 | `result-track:f6ffcff7b8cd916dfa8539d33809fff15af007bbd1d69212d33b39e0eba71eef` |
| 14 | `theorem` | [exp_div_tenth_power_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/exp-div-tenth-power-lower.md) | 101 | `result-track:20e30fa7c2075097338ccccc8d1bdc1f7633d52c74058ef8b541e7d6600f9f42` |
| 15 | `theorem` | [modelResidual_exceeds_any_cap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/modelresidual-exceeds-any-cap.md) | 112 | `result-track:2037f202237e5d523750bfac1517efe5a58ec309b96a3a69d33278e89d6f9081` |
| 16 | `theorem` | [modelResidual_has_no_eventual_upper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGate.lean/declarations/modelresidual-has-no-eventual-upper-bound.md) | 129 | `result-track:c2a6d3fc6d1ec93f86a0c2312ea7af96b9f0f1a0715c68b25231bfff2f6cb9e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc53da52dca9b8ae1f46fa8060a1d45cbb2876061bfe24813bc0f52d7d433206 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant9e74f04493e30bad9f5b71f0571359d2d4e3a17bb1ae7cf5dce7f0f9fe1c5b42.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant9e74f04493e30bad9f5b71f0571359d2d4e3a17bb1ae7cf5dce7f0f9fe1c5b42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
