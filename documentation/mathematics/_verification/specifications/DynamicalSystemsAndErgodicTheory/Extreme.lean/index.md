# Verification target: Extreme

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d60dd28a83b8d1d1a46a470d331c5dc0bd443eeb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d60dd28a83b8d1d1a46a470d331c5dc0bd443eeb`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Extreme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.Function` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.RadonNikodym` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalProbability` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_mem_extremePoints_measure_univ_eq](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/declarations/of-mem-extremepoints-measure-univ-eq.md) | 28 | `result-track:61235dd807bf645e8da948329f15654bfd7d54f3f36edfc9b336c571d69fef8c` |
| 2 | `theorem` | [of_mem_extremePoints](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/declarations/of-mem-extremepoints.md) | 59 | `result-track:3ecfe6d73520a1aff10db542b88b61bb1face7230c6ca047b6a37d7439a94683` |
| 3 | `theorem` | [eq_smul_of_absolutelyContinuous](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/declarations/eq-smul-of-absolutelycontinuous.md) | 66 | `result-track:a7fe737111b1db2a4abc4b5f25b87c9d215ccea5f6118f59bb2c5a9669194ad3` |
| 4 | `theorem` | [eq_of_absolutelyContinuous_measure_univ_eq](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/declarations/eq-of-absolutelycontinuous-measure-univ-eq.md) | 77 | `result-track:dfc9b54a3199056e5b0c704c77016b00f16b443b5c9ac73c1447585f6164ada4` |
| 5 | `theorem` | [eq_of_absolutelyContinuous](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/declarations/eq-of-absolutelycontinuous.md) | 85 | `result-track:fcd00f38ffbe33207d7b33bdabd3449cfc1e28f7f9fad835b533cb600059f211` |
| 6 | `theorem` | [mem_extremePoints_measure_univ_eq](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/declarations/mem-extremepoints-measure-univ-eq.md) | 89 | `result-track:f4a6a4d75514b0cc03c704eb72b04e8aa4eb6b45f3953bd79a406b9f03a7026e` |
| 7 | `theorem` | [mem_extremePoints](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/declarations/mem-extremepoints.md) | 98 | `result-track:397aabaad5b973731bd4c3aec6ab2549712c5cb451f60710798fd3ff6d62eed6` |
| 8 | `theorem` | [iff_mem_extremePoints_measure_univ_eq](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/declarations/iff-mem-extremepoints-measure-univ-eq.md) | 102 | `result-track:4b1c0e552ce6f863fdf08c7837e62d582874c9afc014f707e4efd2a18b7b9b68` |
| 9 | `theorem` | [iff_mem_extremePoints](../../../../DynamicalSystemsAndErgodicTheory/Extreme.lean/declarations/iff-mem-extremepoints.md) | 106 | `result-track:3c92128386365675cde57e9148907ad0ee68d26f285690762b0786a237ec588f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3df632c42911eed170a2e186eb4533b17e86f5fffaa7102499150d200df18c1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
