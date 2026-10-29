# Verification target: Lift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19c0178b525448c4f3b4657c78b74bad803c0a6b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lift/Variantb0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Lift.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Lift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19c0178b525448c4f3b4657c78b74bad803c0a6b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lift/Variantb0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lift/Variantb0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Codec.Core` — import line 1; external provider; requires a separately pinned dependency.
- `BooleanMatrix.Matrix.Core` — import line 2; external provider; requires a separately pinned dependency.
- `BooleanMatrix.TypedApplication` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftOr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Lift.lean/declarations/liftor.md) | 22 | `declaration-track:29837388e1f6a478ec96ccfef4e6be6b38007b7ab2b61735246017abdec55048` |
| 2 | `theorem` | [liftOr_encode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Lift.lean/declarations/liftor-encode.md) | 34 | `result-track:44a520317d66f764c032878ea13c4c166de02deac361cfd333c13918b5cebba2` |
| 3 | `def` | [lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Lift.lean/declarations/lift.md) | 46 | `declaration-track:dd2011732713f118e899698c3940f669411d12d9db340d6a5036d08329fdba32` |
| 4 | `theorem` | [lift_encode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Lift.lean/declarations/lift-encode.md) | 54 | `result-track:af3dd1ef3a2d55d0a43f5fdc228d4f91d6899fc558eb47c7d46725fa8caa0c63` |
| 5 | `def` | [typedLift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Lift.lean/declarations/typedlift.md) | 65 | `declaration-track:8b119b415f389e63754f1122aacc086abf80cab15c78e03c63fd2c176436657b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=135f394986820c6474ee97198c4cbfe628dc9e3b0f971a76cc5badc3bbc53bee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lift/Variantb0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Lift/Variantb0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
