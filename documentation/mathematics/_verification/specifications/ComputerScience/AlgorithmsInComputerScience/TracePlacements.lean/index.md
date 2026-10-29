# Verification target: Trace Placements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2454e45790ce0a8e503ff1b2e068c78afd8ba97",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2454e45790ce0a8e503ff1b2e068c78afd8ba97`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.PoleAssignment` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [placements](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/declarations/placements.md) | 7 | `declaration-track:2ac5f97e851b18a86b03d148a143f716e8c6305531f05ac2b739c265cdd042b6` |
| 2 | `theorem` | [placements_count](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/declarations/placements-count.md) | 10 | `result-track:fbd63cde24502be4a6209a8c5aebbfd5ff819bbae0a853e78e07e4ae66ab0b8d` |
| 3 | `theorem` | [placements_centerControlled](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/declarations/placements-centercontrolled.md) | 14 | `result-track:47aa55f8bfab745232cdf2eec7372101abc0b7a9d039ad82aa8772fc78a0ba43` |
| 4 | `structure` | [SrcLibPoleStream](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/declarations/srclibpolestream.md) | 19 | `declaration-track:1e2bf69966534743afd33326f28b8363d31e705f9529756edbb8a4f74693b771` |
| 5 | `def` | [srcLibDefaultPoleStream](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/declarations/srclibdefaultpolestream.md) | 25 | `declaration-track:68f806d50cbe1ec4572d7f937ea125ed07e61cc9e7285abe537f24c22c756f14` |
| 6 | `def` | [SrcLibPoleStream.hasFiniteTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/declarations/srclibpolestream-hasfinitetrace.md) | 30 | `declaration-track:3c1182c1a09d7256bc25ce6611042346dc7ce3d63cb797fcd99b873fdfa79cd6` |
| 7 | `theorem` | [srcLibDefaultPoleStream_frameCount](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/declarations/srclibdefaultpolestream-framecount.md) | 33 | `result-track:31cd3136ddb9b7b19767a02d6dd1a458c84c8387311da2bf92c5a2b2d7bedbe9` |
| 8 | `theorem` | [srcLibDefaultPoleStream_hasFiniteTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TracePlacements.lean/declarations/srclibdefaultpolestream-hasfinitetrace.md) | 37 | `result-track:e061b879032b554e828e70270aeeb3e15832061a8f260c6e91e815468749784d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b55b470bc33ce7041b3e1982c616754ef5f7ba65900f01aa4e1c58f4dda3344b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd2371813ea45b4979b5516d17ffb40bdd134cb3a52a3186ccb08d8bb9f7d5154.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
