# Verification target: Correctness Terminating Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37370c3153767e31d82807c717a60bc2917c8d3c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CorrectnessTerminatingNamespacedAligned.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CorrectnessTerminatingNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37370c3153767e31d82807c717a60bc2917c8d3c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Translations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compExactValue](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CorrectnessTerminatingNamespacedAligned.lean/declarations/compexactvalue.md) | 73 | `declaration-track:b12c8b6b312c064a0e8a2a0961ce53a15f9f2356846bada70d83ca4d49274942` |
| 2 | `theorem` | [compExactValue_correctness_of_stream_eq_some_aux_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CorrectnessTerminatingNamespacedAligned.lean/declarations/compexactvalue-correctness-of-stream-eq-some-aux-comp.md) | 85 | `result-track:6083d618767919a3b41806d9ed745607a7285f53a71b0a923ee5819721b5935c` |
| 3 | `theorem` | [compExactValue_correctness_of_stream_eq_some](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CorrectnessTerminatingNamespacedAligned.lean/declarations/compexactvalue-correctness-of-stream-eq-some.md) | 111 | `result-track:29170a42d316cb0ef0e9cbf8cd86472a734ea64d35f3bcecddfc34d779b484b5` |
| 4 | `theorem` | [of_correctness_of_nth_stream_eq_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CorrectnessTerminatingNamespacedAligned.lean/declarations/of-correctness-of-nth-stream-eq-none.md) | 225 | `result-track:d1f10a000cf4b1241ca3550f94ebd989e45c226381fee5322f1a2dcfc26376b5` |
| 5 | `theorem` | [of_correctness_of_terminatedAt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CorrectnessTerminatingNamespacedAligned.lean/declarations/of-correctness-of-terminatedat.md) | 254 | `result-track:09e0154dbfc9f335d6c1e762b3b54e74fe36b0bb35da435b1b2830a8734daf5b` |
| 6 | `theorem` | [of_correctness_of_terminates](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CorrectnessTerminatingNamespacedAligned.lean/declarations/of-correctness-of-terminates.md) | 264 | `result-track:3f5905e4fae720973e7355ebe61a4c8e91384169913acc60da1e424a9018b1d5` |
| 7 | `theorem` | [of_correctness_atTop_of_terminates](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CorrectnessTerminatingNamespacedAligned.lean/declarations/of-correctness-attop-of-terminates.md) | 275 | `result-track:f1e9fb5777087729c22e13e1e051c29db196a17d8ab3c8eea9dede43b39112df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc1548e4cae5b870e1f4a01f4f71ca148725e98a1cb52b0ff2a1ef1cbc7bdb20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
