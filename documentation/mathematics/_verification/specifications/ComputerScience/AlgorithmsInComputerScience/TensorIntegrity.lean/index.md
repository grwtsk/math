# Verification target: Tensor Integrity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be05f1ab307148bcbdfe00f97814247d24313044",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorIntegrity/Variant580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TensorIntegrity.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TensorIntegrity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be05f1ab307148bcbdfe00f97814247d24313044`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorIntegrity/Variant580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorIntegrity/Variant580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Stream.TensorLocus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteArithmeticDescriptor](../../../../../ComputerScience/AlgorithmsInComputerScience/TensorIntegrity.lean/declarations/finitearithmeticdescriptor.md) | 7 | `declaration-track:02fbba47aa5c156554cd6f10398d39813e900a3234fef2ca8ea93b9759bb3437` |
| 2 | `structure` | [TensoralIntegrity](../../../../../ComputerScience/AlgorithmsInComputerScience/TensorIntegrity.lean/declarations/tensoralintegrity.md) | 20 | `declaration-track:0c3299c37a75cd9c1eabf975b45bfa497b0992c856dfb65d7508419df537d7fd` |
| 3 | `theorem` | [tensoralIntegrity_boundary_visible](../../../../../ComputerScience/AlgorithmsInComputerScience/TensorIntegrity.lean/declarations/tensoralintegrity-boundary-visible.md) | 32 | `result-track:5f0fcc64bb6a7a8dbc8c4aad3909e49af28902a97d0f1338f773ad3b1fc5e1f0` |
| 4 | `inductive` | [IntegrityDefectKind](../../../../../ComputerScience/AlgorithmsInComputerScience/TensorIntegrity.lean/declarations/integritydefectkind.md) | 39 | `declaration-track:b82d1a5daba1e3f7270f66b62f0800e43a07cddf8dca00781daaa5e80cb160c7` |
| 5 | `structure` | [IntegrityDefect](../../../../../ComputerScience/AlgorithmsInComputerScience/TensorIntegrity.lean/declarations/integritydefect.md) | 54 | `declaration-track:4941570110915b2ef7b68325b55d036fb32bc8dd3b9ae026e29273e474cdf606` |
| 6 | `theorem` | [integrityDefect_has_matrix_witness](../../../../../ComputerScience/AlgorithmsInComputerScience/TensorIntegrity.lean/declarations/integritydefect-has-matrix-witness.md) | 63 | `result-track:60762f30669c5d52df5949e8733f23459996ff2175ecf37ff62e29631590a760` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7493c808622e5f6b6254d79f2e7f7221430efc5e48b6279486ad887610521dcb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorIntegrity/Variant580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorIntegrity/Variant580f639448be1a07cd468206d445aeb1dfede086699511d523cd398aad5a8331.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
