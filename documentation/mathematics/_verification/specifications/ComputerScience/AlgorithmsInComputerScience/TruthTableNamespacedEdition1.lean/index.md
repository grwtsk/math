# Verification target: Truth Table Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2be466efacb3faaf53ba2e04fc7d5de888067649",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantaaab251e463a67984f90ad1b05bed188bb16e2d23a64af955b283c8ae3581d23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2be466efacb3faaf53ba2e04fc7d5de888067649`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantaaab251e463a67984f90ad1b05bed188bb16e2d23a64af955b283c8ae3581d23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantaaab251e463a67984f90ad1b05bed188bb16e2d23a64af955b283c8ae3581d23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.Hypercube` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Syntax.SOP` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TruthTable](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/declarations/truthtable.md) | 15 | `declaration-track:b6e2e44c55fd0a74da2912e67e1a8f6e3fa585b6fe09772b4bd2dc36277d3697` |
| 2 | `def` | [TruthTable.rows](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/declarations/truthtable-rows.md) | 19 | `declaration-track:6900f94d40db9cc379c5cdc82e4bf29125158ead07bf82974325cd4bb7ac0f4a` |
| 3 | `def` | [TruthTable.toMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/declarations/truthtable-tomatrix.md) | 29 | `declaration-track:dd1cdfcdf46e7baf681f9ad0e449d1f3cf8cd126610cb8ad2534dbea76aa723f` |
| 4 | `def` | [TruthTable.minterm](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/declarations/truthtable-minterm.md) | 38 | `declaration-track:87621a8a815d43e237a896c6083cc36786c3a9689c479ffc29ef9ce033278606` |
| 5 | `def` | [TruthTable.trueInputs](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/declarations/truthtable-trueinputs.md) | 47 | `declaration-track:8c56262b60fdd4b06ee5572ab6fb7e309e683a60a2ba949b1115b0120e08d36e` |
| 6 | `def` | [TruthTable.toSOP](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/declarations/truthtable-tosop.md) | 57 | `declaration-track:14d3ffdbd196857a738bdd928a4ba8e766f9568681f7efd4affb3469e4fd2c79` |
| 7 | `def` | [TruthTable.toTree](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/declarations/truthtable-totree.md) | 62 | `declaration-track:20d0dc64238facab5b00b2f55d87acacf1ab2ff4ed1694310f919b735a05356b` |
| 8 | `def` | [TruthTable.toSOPMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/TruthTableNamespacedEdition1.lean/declarations/truthtable-tosopmatrix.md) | 67 | `declaration-track:35707460f708971342b6277e3306b9f5491b8e9601a9a9fa210e797a38c78df0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d440083e2c8d87c556d2829a48c4669c54b6c0311af5da6f0a8a3c458767cd80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantaaab251e463a67984f90ad1b05bed188bb16e2d23a64af955b283c8ae3581d23.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantaaab251e463a67984f90ad1b05bed188bb16e2d23a64af955b283c8ae3581d23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
