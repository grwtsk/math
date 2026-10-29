# Verification target: Exterior Algebra Grading

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "815bb1c481bcdb61fcb34eebaacb125c2033589a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variant68926546d52471083c96cebeb8a00d32a1981efb8ae3c3696a6e77eca8f69087.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `815bb1c481bcdb61fcb34eebaacb125c2033589a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variant68926546d52471083c96cebeb8a00d32a1981efb8ae3c3696a6e77eca8f69087.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variant68926546d52471083c96cebeb8a00d32a1981efb8ae3c3696a6e77eca8f69087.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedAlgebra.ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/declarations/gradedalgebra.md) | 27 | `declaration-track:44941455145d9eb8448ed8e8b7a0483263e19d145ea0785723b3534cbac6e402` |
| 2 | `theorem` | [GradedAlgebra.ι_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/declarations/gradedalgebra-apply.md) | 32 | `result-track:b343916bd6cf9d12069c275be85f9ae2217cfc6a4fabdf77f02b1e450f612408` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/declarations/instance.md) | 41 | `declaration-track:17a50e5b2c1bd437a9363c46245a3272cc8365727bbe24d2d19f88b240b8b442` |
| 4 | `theorem` | [GradedAlgebra.ι_sq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/declarations/gradedalgebra-sq-zero.md) | 44 | `result-track:6b7f5cfca6a171e59a36e0bbaa7047759fdd2960a4a16f40b962b5dcda7b1762` |
| 5 | `def` | [GradedAlgebra.liftι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/declarations/gradedalgebra-lift.md) | 50 | `declaration-track:1d4c226cf6fa8ca835c40c4cc58c4dc7f275922736a41a275e1ef1117c9da690` |
| 6 | `theorem` | [GradedAlgebra.liftι_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/declarations/gradedalgebra-lift-eq.md) | 54 | `result-track:65e072a34abaee0154bfcc345187eb653fdda9a2b8677ac48a6fe37f48c73421` |
| 7 | `instance` | [gradedAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/declarations/gradedalgebra-source-edition-2.md) | 68 | `declaration-track:d0f7738702e70418042a0a51466b63aca128d4498f8bda66dc5c022712348d4c` |
| 8 | `lemma` | [ιMulti_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGrading.lean/declarations/multi-span.md) | 82 | `result-track:3bd9230f20830606708ebe9aa85202c88d46f2261169be0ee3f6608f3f24f136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2efbe0d455a75af52b8532976dffd197280ece2e7b9ed67b9975199b615e0de8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Grading/Variant68926546d52471083c96cebeb8a00d32a1981efb8ae3c3696a6e77eca8f69087.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Grading/Variant68926546d52471083c96cebeb8a00d32a1981efb8ae3c3696a6e77eca8f69087.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
