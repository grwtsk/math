# Verification target: Binary Grammar And Tree Evaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1b6dee97dac83013b94726cf123f8306ebacaf1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TermAlgebras/CatalanAndCategoryInterfaces/Variant24d9943e0ed00d15/BinaryGrammarAndTreeEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BinaryGrammarAndTreeEvaluation.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BinaryGrammarAndTreeEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1b6dee97dac83013b94726cf123f8306ebacaf1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TermAlgebras/CatalanAndCategoryInterfaces/Variant24d9943e0ed00d15/BinaryGrammarAndTreeEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TermAlgebras/CatalanAndCategoryInterfaces/Variant24d9943e0ed00d15/BinaryGrammarAndTreeEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Boolean.NAND` — import line 21; external provider; requires a separately pinned dependency.
- `Folder.Catalan.Tree` — import line 22; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Expansion` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryGrammar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BinaryGrammarAndTreeEvaluation.lean/declarations/binarygrammar.md) | 41 | `declaration-track:18385ed02516b47438b633d140ad23028035a8c44df7f8fdf8b06cd7930e11b1` |
| 2 | `def` | [eval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BinaryGrammarAndTreeEvaluation.lean/declarations/eval.md) | 47 | `declaration-track:d83c8b48cec07b590611b29e841c88089cc4c23402a00f9843e927e278241687` |
| 3 | `theorem` | [eval_leaf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BinaryGrammarAndTreeEvaluation.lean/declarations/eval-leaf.md) | 52 | `result-track:e839453d2ccbb8d0930214ccfbb76fd88a441366eeb141ab7035dc1f7b05f2d8` |
| 4 | `theorem` | [eval_node](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BinaryGrammarAndTreeEvaluation.lean/declarations/eval-node.md) | 57 | `result-track:7d1f5802064325472d2b1b62aeb66994f1cf0db2c9800593d2ae01e7384b60d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df41fe7711a6bf884a5959c0554b30536973ff7d9d2a296b2926625c40e85409 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TermAlgebras/CatalanAndCategoryInterfaces/Variant24d9943e0ed00d15/BinaryGrammarAndTreeEvaluation.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TermAlgebras/CatalanAndCategoryInterfaces/Variant24d9943e0ed00d15/BinaryGrammarAndTreeEvaluation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
