# Verification target: Executable Refinement Namespaced Array Backed Quantizer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "887d250176af1cbf85eeeeb8f16297982b14132d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ExecutableRefinementNamespacedArrayBackedQuantizer.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ExecutableRefinementNamespacedArrayBackedQuantizer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `887d250176af1cbf85eeeeb8f16297982b14132d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Refinement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arrayBackedQuantizer](../../../../../ComputerScience/AlgorithmsInComputerScience/ExecutableRefinementNamespacedArrayBackedQuantizer.lean/declarations/arraybackedquantizer.md) | 25 | `declaration-track:c298e5695d4d7e262876a35ffde45bcce8c90518041a5a7ab28b2ae93740b10e` |
| 2 | `theorem` | [arrayBackedQuantizer_encode](../../../../../ComputerScience/AlgorithmsInComputerScience/ExecutableRefinementNamespacedArrayBackedQuantizer.lean/declarations/arraybackedquantizer-encode.md) | 33 | `result-track:a10f5c41820af4e5d0bf544231e3f3f45672237551cd8be6a7e72c80676d7192` |
| 3 | `theorem` | [arrayBackedQuantizer_indistinguishable_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ExecutableRefinementNamespacedArrayBackedQuantizer.lean/declarations/arraybackedquantizer-indistinguishable-iff.md) | 42 | `result-track:c35e769f5ad9c4bae047b57268206694af6a26aa21b13277647dfcf934a8e5f4` |
| 4 | `def` | [executableWorldModelRefinementStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ExecutableRefinementNamespacedArrayBackedQuantizer.lean/declarations/executableworldmodelrefinementstatus.md) | 51 | `declaration-track:d0b83454eb5da651a5e2f4d9ac0b26e3ae61745ed63c0636be54bf925c0bb695` |
| 5 | `theorem` | [executableWorldModelRefinement_notSubmitted](../../../../../ComputerScience/AlgorithmsInComputerScience/ExecutableRefinementNamespacedArrayBackedQuantizer.lean/declarations/executableworldmodelrefinement-notsubmitted.md) | 56 | `result-track:881182e333c7ac23b583a0aafc39089b96a402ccb4ac53e5e4f948023a2927b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f5f545ddb7c29234129b68ff173751b7d99efd110627f685946b4ac7237110e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
