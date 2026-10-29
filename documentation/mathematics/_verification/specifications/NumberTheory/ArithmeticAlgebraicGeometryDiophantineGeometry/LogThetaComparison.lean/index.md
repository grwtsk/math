# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.LogThetaComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "948cfff86c626c21c4766433b988faf7e18ae493",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/index.md) · [Full source](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `948cfff86c626c21c4766433b988faf7e18ae493`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.OrientedRealLine.Coherence`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Coherence.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SourceLocator](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/declarations/sourcelocator.md) | 24 | `declaration-track:e52b815df7eca7ea6a1be78bbb33d7ab87b05a07add2720828107722d01308eb` |
| 2 | `structure` | [LocatedInterpretation](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/declarations/locatedinterpretation.md) | 31 | `declaration-track:dbfe87d4446a3eb699e1513745571077a325b53e62d4eb7cdae81df39ae36f9e` |
| 3 | `structure` | [PilotDiagram](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/declarations/pilotdiagram.md) | 36 | `declaration-track:dfdc78975778a1a2aeb387f3ae7ee709f4995ab5bb9d2083c51d325b6415f699` |
| 4 | `def` | [leftRoute](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/declarations/leftroute.md) | 52 | `declaration-track:78cc5237c8420786e2e9264c467774f3ab4ae6c4426c383196d1eb71ef2a0de2` |
| 5 | `def` | [rightRoute](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/declarations/rightroute.md) | 56 | `declaration-track:53a97a3146ce65f114b5985ad45cfe850254e0a5571bc0d0f0915ad7be17bf39` |
| 6 | `def` | [defect](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/declarations/defect.md) | 60 | `declaration-track:61e9aef5de9525b54d809511e62be29944b876181eb64d4006756889117eedd5` |
| 7 | `theorem` | [square_normalization_obstruction](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/declarations/square-normalization-obstruction.md) | 64 | `result-track:89a48f3792c8586f74a7dcd3d78c4819406738a558ba67d2079c894f4096eb31` |
| 8 | `structure` | [IUTSourceCorrespondence](../../../../../NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/LogThetaComparison.lean/declarations/iutsourcecorrespondence.md) | 79 | `declaration-track:8124a7bea2aaac7d7de0d6594a49a9bd6205b11cc8cbc2f81e605d8a39ed7dba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd26d033d115c56a8c90a3a40fb99ff1862e6cb896445fee53372f2fc3fd15fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean","GRWTSK/_verification/specifications/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
