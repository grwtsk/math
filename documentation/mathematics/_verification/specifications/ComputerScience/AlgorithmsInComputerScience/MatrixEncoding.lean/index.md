# Verification target: Matrix Encoding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1df9e985db07f234ab9d7bcb7ca06360650c1039",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MatrixEncoding/Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MatrixEncoding.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MatrixEncoding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1df9e985db07f234ab9d7bcb7ca06360650c1039`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MatrixEncoding/Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MatrixEncoding/Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Syntax.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormulaTree.cellVariableTree](../../../../../ComputerScience/AlgorithmsInComputerScience/MatrixEncoding.lean/declarations/formulatree-cellvariabletree.md) | 8 | `declaration-track:9375d3cd2b5d22e804d33cfa12d11e2139a6ea363056b05c39979306d93f787a` |
| 2 | `def` | [FormulaTree.cellConstTree](../../../../../ComputerScience/AlgorithmsInComputerScience/MatrixEncoding.lean/declarations/formulatree-cellconsttree.md) | 16 | `declaration-track:afb1fd11390cd63bd010c50a598c49935dd9e10f219c93e8c621642c6b80e734` |
| 3 | `def` | [FormulaTree.cellConstNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/MatrixEncoding.lean/declarations/formulatree-cellconstnetwork.md) | 27 | `declaration-track:8587f597b4e01e235b00b76516f1adba4ca164c50bc180e4a834284d650faaba` |
| 4 | `def` | [FormulaTree.rowSupportTree](../../../../../ComputerScience/AlgorithmsInComputerScience/MatrixEncoding.lean/declarations/formulatree-rowsupporttree.md) | 37 | `declaration-track:eca2f4e1816e41784b800db157365b67bbe8a5abe82408a722074d0f67df9359` |
| 5 | `def` | [FormulaTree.supportTree](../../../../../ComputerScience/AlgorithmsInComputerScience/MatrixEncoding.lean/declarations/formulatree-supporttree.md) | 52 | `declaration-track:83f63350cbaf5c147e33077b4801f7ad221ab71417022edcf3d5e29e6948b6dc` |
| 6 | `def` | [FormulaTree.anyTrueTree](../../../../../ComputerScience/AlgorithmsInComputerScience/MatrixEncoding.lean/declarations/formulatree-anytruetree.md) | 64 | `declaration-track:7415cc6f515693a5b9e0938baa3122d015c13d256bdcbb5f2b9c9d8730993e7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70f61a98a0ffe1d0f7b91a29047e3bd81136c9766685a15bdec9683307e9546f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MatrixEncoding/Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MatrixEncoding/Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
