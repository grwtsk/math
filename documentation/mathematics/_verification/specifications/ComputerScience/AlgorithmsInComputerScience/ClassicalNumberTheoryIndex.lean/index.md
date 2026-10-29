# Verification target: Classical Number Theory Index

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a65079639f0fcb044b6fc5d534fa9475cbf76029",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndex.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a65079639f0fcb044b6fc5d534fa9475cbf76029`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.Mobius` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.EulerPhi` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.SigmaTau` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative` — import line 4; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.Exposition.AnchorIndex` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusInversionAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndex.lean/declarations/mobiusinversionanchor.md) | 17 | `declaration-track:fb401c3d661cec74eb0e556bb365546b13da4a2778974d95e3b49f94b3367509` |
| 2 | `def` | [eulerPhiAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndex.lean/declarations/eulerphianchor.md) | 27 | `declaration-track:fe6237e3ca0179ef56ec15f9ff90edcb3adbb9156345b069993ceaa8ac141ad4` |
| 3 | `def` | [divisorProblemAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndex.lean/declarations/divisorproblemanchor.md) | 37 | `declaration-track:3e453f111333ba36fdd17ad9ea87a19435363dbf3a81eca0f55fb5694911aa3a` |
| 4 | `def` | [finiteEulerProductAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndex.lean/declarations/finiteeulerproductanchor.md) | 47 | `declaration-track:e11a16731b885f31512fbc7466f6e22c17ca790ecb61db61ca853e0a6ef1fa38` |
| 5 | `def` | [analyticEulerProductAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndex.lean/declarations/analyticeulerproductanchor.md) | 57 | `declaration-track:cd66b95ff43534e0d44c37a3fabea99f5b7fecbffd3e83e636c988cbcfd932dc` |
| 6 | `def` | [pntClassicalRouteAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndex.lean/declarations/pntclassicalrouteanchor.md) | 67 | `declaration-track:636ed299617ae906c7449acd041dee69a29d1b23f8235586d6da13c4c2e45148` |
| 7 | `def` | [classicalNumberTheoryAnchors](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndex.lean/declarations/classicalnumbertheoryanchors.md) | 77 | `declaration-track:a06d08c37a364adbf41fc4c4d27a32becfbeca86cdb3d05a69d759bc5bfead8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ab36be64ce8561d44f1a4b6ec99d03b406593b8c906f9503e7669592a7185ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Variantd757534a65301cb1d0d017d3b0a86a2a9c42feb23dfb97cd75398cae32ebb285.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
