# Verification target: Tree Refinement Edge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c07af0e5f49399d170ba56464bc8133b30e57a12",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TreeRefinementEdge.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TreeRefinementEdge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c07af0e5f49399d170ba56464bc8133b30e57a12`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Bitfield` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RefinementEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/TreeRefinementEdge.lean/declarations/refinementedge.md) | 13 | `declaration-track:08559324e1db8da9e7a95f9a96a7bd6032437981dcd0730a1030efa335c61dc4` |
| 2 | `structure` | [CompleteBooleanSplit](../../../../../ComputerScience/AlgorithmsInComputerScience/TreeRefinementEdge.lean/declarations/completebooleansplit.md) | 22 | `declaration-track:941c75ee3dcc8b3540272320cff294e7b765105cf19a0cfdd6ca1154c61ac958` |
| 3 | `def` | [CompleteBooleanSplit.zeroResolution](../../../../../ComputerScience/AlgorithmsInComputerScience/TreeRefinementEdge.lean/declarations/completebooleansplit-zeroresolution.md) | 37 | `declaration-track:6b86d1820e17128487aaabb7fbd9f5b97318083563619f6537aa3583147764e5` |
| 4 | `def` | [CompleteBooleanSplit.oneResolution](../../../../../ComputerScience/AlgorithmsInComputerScience/TreeRefinementEdge.lean/declarations/completebooleansplit-oneresolution.md) | 46 | `declaration-track:2b72f8bf99eb6eb21cd651f47053749edbefbe37925d934e79dcfef47f38af7c` |
| 5 | `theorem` | [completeBooleanSplit_children_extend](../../../../../ComputerScience/AlgorithmsInComputerScience/TreeRefinementEdge.lean/declarations/completebooleansplit-children-extend.md) | 55 | `result-track:9fb385c5e02c510da20aae18beb8653b8ffb92a0e6decfcfaf1ded3a79af3642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b809e7f66b7f50d4a88eb30a1af5cfb9594880d558afacbcd32b2eaabee0fb83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianta1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
