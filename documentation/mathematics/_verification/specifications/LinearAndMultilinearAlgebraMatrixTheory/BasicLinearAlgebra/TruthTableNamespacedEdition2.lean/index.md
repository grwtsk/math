# Verification target: Truth Table Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75c8e21d7be995597e54b7b973c2bf7a05512512",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant76ab95c988281d1d38d8a4ca73d27255b024e9a054e190d9b7564f71a11f55fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75c8e21d7be995597e54b7b973c2bf7a05512512`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant76ab95c988281d1d38d8a4ca73d27255b024e9a054e190d9b7564f71a11f55fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant76ab95c988281d1d38d8a4ca73d27255b024e9a054e190d9b7564f71a11f55fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.Hypercube` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Tree.SOP` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TruthTable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/declarations/truthtable.md) | 15 | `declaration-track:2d69d559e3b02e45af63230ad20e897daf194a5e02d46397c2e649c74547dd1f` |
| 2 | `def` | [TruthTable.rows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/declarations/truthtable-rows.md) | 19 | `declaration-track:248b8140c1efd13f39ec562c49f2dc2e50a48946a7e91e6b78eda249202125df` |
| 3 | `def` | [TruthTable.toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/declarations/truthtable-tomatrix.md) | 29 | `declaration-track:680bf104ca901646bb55d5a61d0279b2ba51e2233b78e15456e5e683399778c0` |
| 4 | `def` | [TruthTable.minterm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/declarations/truthtable-minterm.md) | 38 | `declaration-track:1427e088f6c707c2e77a9712c434d5c29c67d05d27be1b46ca6d65695363b5bf` |
| 5 | `def` | [TruthTable.trueInputs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/declarations/truthtable-trueinputs.md) | 47 | `declaration-track:945f77e1479718b4a01d50861b96b0571dc41ff4feca4143cb95190cb6f99a34` |
| 6 | `def` | [TruthTable.toSOP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/declarations/truthtable-tosop.md) | 57 | `declaration-track:ac566c2274e02a10c0800905b15d966a42b06897150ad17072651e18968f3515` |
| 7 | `def` | [TruthTable.toTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/declarations/truthtable-totree.md) | 62 | `declaration-track:955bba0bcb4163a837d005ae449ccd418f1d29e44d71b4822fdb600a6428e893` |
| 8 | `def` | [TruthTable.toSOPMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TruthTableNamespacedEdition2.lean/declarations/truthtable-tosopmatrix.md) | 67 | `declaration-track:9fddf1347a9010d68b3f558ee69a21d522b366c2a0f14493aee9118a78963281` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5d84c70576eff58325fb105e97aa246fc9d82dee1e27b48e60abad4be527afe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant76ab95c988281d1d38d8a4ca73d27255b024e9a054e190d9b7564f71a11f55fe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant76ab95c988281d1d38d8a4ca73d27255b024e9a054e190d9b7564f71a11f55fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
