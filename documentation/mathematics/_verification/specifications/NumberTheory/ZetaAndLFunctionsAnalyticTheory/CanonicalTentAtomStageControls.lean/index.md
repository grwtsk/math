# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalTentAtomStageControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f049693cd31299cad46da85ecd402b0357a8831",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalTentAtomStageControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalTentAtomStageControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalTentAtomStageControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f049693cd31299cad46da85ecd402b0357a8831`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalTentAtomStageControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/CanonicalTentAtomStageControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage`](../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalTentAtomStage.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerExplicitFormulaSource`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerExplicitFormulaSource.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [square_two_readout_alignment](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalTentAtomStageControls.lean/declarations/square-two-readout-alignment.md) | 20 | `result-track:2d0c42697819f0eb001fa272d0472b94dc6b519e7dae9dbd98811e6e96ec015a` |
| 2 | `theorem` | [square_two_energy_alignment](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalTentAtomStageControls.lean/declarations/square-two-energy-alignment.md) | 27 | `result-track:9a6d3d9f85dac36181419c30672fe9fb410230f36fac07974623764b6138424b` |
| 3 | `theorem` | [square_two_change_of_test](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalTentAtomStageControls.lean/declarations/square-two-change-of-test.md) | 34 | `result-track:c76c2ebcf18330e9f19872d9bfb0abbe1a19a01e4694dc5a38033728f21a44cb` |
| 4 | `theorem` | [same_test_quadraticization_still_false](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalTentAtomStageControls.lean/declarations/same-test-quadraticization-still-false.md) | 40 | `result-track:3a9a50b407bd49de0c29fe162c1c4728763fd5a2ee521927abe2397165b4cb4b` |
| 5 | `theorem` | [triangle_remains_three](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalTentAtomStageControls.lean/declarations/triangle-remains-three.md) | 47 | `result-track:31e8dde10241b86c30c4c7a760eb2872951b929f5459b568a0ad70a5a34ad19e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49522023250a3015eb9b8415e0aa4c04c2c8d858e74309fb021dd48e9d6a3d19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalTentAtomStageControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/CanonicalTentAtomStageControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
