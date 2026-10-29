# Verification target: Prime Filter Contraction Guard

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27fee65e1fb1de676b75d58c0f17ce6c2a8bc4b3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/PrimeFilterContractionGuard.lean/index.md) · [Full source](../../../../RealFunctions/PrimeFilterContractionGuard.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27fee65e1fb1de676b75d58c0f17ce6c2a8bc4b3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frequency](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/frequency.md) | 13 | `declaration-track:73b8e09c8759b4014a93cfee968ce7073813b33ee44258b42353a9b97d8dc9a9` |
| 2 | `def` | [oscillatoryRemainder](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/oscillatoryremainder.md) | 15 | `declaration-track:392a7f11dfef5df3e3e5f2510ed51da03b7db66ba5457ba14cbb87cbbac7ce8d` |
| 3 | `theorem` | [frequency_pos](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/frequency-pos.md) | 18 | `result-track:2c108dd29378b8696276b272aa9f0eb61a9633b1b28f7adc02c28ec8f488e75b` |
| 4 | `theorem` | [remainder_abs_le](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/remainder-abs-le.md) | 21 | `result-track:1a7971d6521940e588c9b78dda12d3d8c9e361c4272f9a7d48acfec498c95ab0` |
| 5 | `theorem` | [remainder_hasDerivAt](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/remainder-hasderivat.md) | 26 | `result-track:57b64bdfb95a62c4bbe3f4f2ef8b19ab911574d0c771a0136eae189a13714215` |
| 6 | `theorem` | [remainder_derivative_abs_le](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/remainder-derivative-abs-le.md) | 39 | `result-track:a481ac65e26a86597c678c642881c091825bd54a2c351145a948b545339a30bf` |
| 7 | `theorem` | [derivative_coefficient_le](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/derivative-coefficient-le.md) | 57 | `result-track:c8d5687177506508c061a489a6fc3fdeba1755c93ad0103fb1706c81aff920ce` |
| 8 | `theorem` | [remainder_derivative_abs_le_twenty_eight](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/remainder-derivative-abs-le-twenty-eight.md) | 68 | `result-track:b2da6d0df79bc88a0671fcd23c1813eff9b7b0c713c240fcdd7ff9897ca66b22` |
| 9 | `theorem` | [value_one](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/value-one.md) | 73 | `result-track:944eeb4bf1ed30390b6d55c9d3d173946b591deaeba9565e5d9c7539c455b9b4` |
| 10 | `theorem` | [value_two](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/value-two.md) | 76 | `result-track:1edd0fef142cac0325579f3a0c132cf30454d67e3efaa4743f7a12d8ce3ae263` |
| 11 | `theorem` | [prime_two_filter_value](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/prime-two-filter-value.md) | 80 | `result-track:adeffdc2201c249b12da8f4817f450b5dc22688afc6cb7e3b7b75db87a0f1c15` |
| 12 | `theorem` | [prime_two_filter_not_contractive](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/prime-two-filter-not-contractive.md) | 87 | `result-track:fd29a04ef42733f2befa35f404e51d1f315193e59f1b810afbf87d70cbf67c1c` |
| 13 | `theorem` | [decay_exponents_do_not_force_contraction](../../../../RealFunctions/PrimeFilterContractionGuard.lean/declarations/decay-exponents-do-not-force-contraction.md) | 93 | `result-track:f5a7928b5b8f8c576fb3424846b3c0ac33a581a60b946f91431de5b7d62d00cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=053354c8ff4802635e9a693fed1a0411003a2f98c52e6fe76e1ce22c97ee4778 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
