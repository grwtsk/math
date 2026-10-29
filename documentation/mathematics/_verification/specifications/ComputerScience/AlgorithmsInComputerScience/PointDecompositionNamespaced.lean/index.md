# Verification target: Point Decomposition Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae7b620b225ab362c34779521edd9b7f055a63ae",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointDecomposition/Variant5ad36bc75232a9387cc3da6a556db4fa7aa80210978b0186abff8abc136f18f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae7b620b225ab362c34779521edd9b7f055a63ae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointDecomposition/Variant5ad36bc75232a9387cc3da6a556db4fa7aa80210978b0186abff8abc136f18f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointDecomposition/Variant5ad36bc75232a9387cc3da6a556db4fa7aa80210978b0186abff8abc136f18f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.MathematicalPoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [StatementRole](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/declarations/statementrole.md) | 21 | `declaration-track:82c14f754b4be363222d0141ad03518187cb3e1660fa34b3e96ae83302bc6b3d` |
| 2 | `inductive` | [ProofRole](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/declarations/proofrole.md) | 33 | `declaration-track:9064e64e0d26dbf69f99b82b9baecc4c33a47114e6302856e392768585515788` |
| 3 | `inductive` | [DefinitionRole](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/declarations/definitionrole.md) | 44 | `declaration-track:aac9895601e1f29acf69a8bb7052526c0e5c27589061eb6326063408fe874460` |
| 4 | `structure` | [SourceFragment](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/declarations/sourcefragment.md) | 54 | `declaration-track:6fba2a662afe5fa8eb4506633846550cda8dd4f2b636d1edbd4f2c46ec2d2fdb` |
| 5 | `structure` | [LosslessPointDecomposition](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/declarations/losslesspointdecomposition.md) | 62 | `declaration-track:a8adc0ba456af5aab8f1b5215b4cbe6fbbaaf2386fd4480e263261023e283de0` |
| 6 | `structure` | [StatementDecomposition](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/declarations/statementdecomposition.md) | 72 | `declaration-track:49a34c8687aa0646ff56934534da8863d4df7faf04aabe462a1026ff3fa81e11` |
| 7 | `structure` | [ProofDecomposition](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/declarations/proofdecomposition.md) | 80 | `declaration-track:214c835bdbdf414533ca44b6399a6a0ed36089d34e69478cf41ee4c0ff071f32` |
| 8 | `structure` | [DefinitionDecomposition](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/declarations/definitiondecomposition.md) | 88 | `declaration-track:3d25c8a0ec14c53215439d82043b8861a38ce7e8a24a6464d0c77e3f81606ffe` |
| 9 | `theorem` | [LosslessPointDecomposition.reconstructs_source](../../../../../ComputerScience/AlgorithmsInComputerScience/PointDecompositionNamespaced.lean/declarations/losslesspointdecomposition-reconstructs-source.md) | 95 | `result-track:50ff6e2d4f458ba5b454584a45587b65f48b8411e2fb3f90d511cd9811d6f3cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c37bb7ecbff1ce4ba64d490b79b87a347128a3b6f12f5d198667a51821a6015e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointDecomposition/Variant5ad36bc75232a9387cc3da6a556db4fa7aa80210978b0186abff8abc136f18f5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointDecomposition/Variant5ad36bc75232a9387cc3da6a556db4fa7aa80210978b0186abff8abc136f18f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
