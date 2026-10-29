# Verification target: Task Public Digest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "485f300491c55dbba641ce9693401674506dfb9c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Task/Variant92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TaskPublicDigest.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TaskPublicDigest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `485f300491c55dbba641ce9693401674506dfb9c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Task/Variant92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Task/Variant92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Digest](../../../../../ComputerScience/AlgorithmsInComputerScience/TaskPublicDigest.lean/declarations/digest.md) | 20 | `declaration-track:a7da1d2e58feb64971f27b38304f3e13e1c5435b69d621778cbc55e02bba8ece` |
| 2 | `def` | [digestString](../../../../../ComputerScience/AlgorithmsInComputerScience/TaskPublicDigest.lean/declarations/digeststring.md) | 23 | `declaration-track:619a5ee259aee1ac9b0b25255884fdf099e2f8c710698911e98b276b572b9e5c` |
| 3 | `structure` | [Provenance](../../../../../ComputerScience/AlgorithmsInComputerScience/TaskPublicDigest.lean/declarations/provenance.md) | 30 | `declaration-track:5d9d2652943011dd84dada0866c4ea02c14e255d33a1a5ec578f5151f7a60a4e` |
| 4 | `structure` | [TheoremTask](../../../../../ComputerScience/AlgorithmsInComputerScience/TaskPublicDigest.lean/declarations/theoremtask.md) | 40 | `declaration-track:5eb90fea2f44f3ea515872ed2c33ff5ba6c8651fdb70462664cad51310ab5b85` |
| 5 | `structure` | [Trial](../../../../../ComputerScience/AlgorithmsInComputerScience/TaskPublicDigest.lean/declarations/trial.md) | 51 | `declaration-track:dbcee53922cc9da0400ae065a3fd8202a4dd55e502b385ffd2e4ef64016f6d5c` |
| 6 | `def` | [Trial.statementHash](../../../../../ComputerScience/AlgorithmsInComputerScience/TaskPublicDigest.lean/declarations/trial-statementhash.md) | 59 | `declaration-track:c181865d8e5dd3a530fc2bd3c85f0f9824d6d80eb9b65f0cd7e329fa4d1dc5c5` |
| 7 | `theorem` | [Trial.statementHash_fixed](../../../../../ComputerScience/AlgorithmsInComputerScience/TaskPublicDigest.lean/declarations/trial-statementhash-fixed.md) | 62 | `result-track:5410df5be3a2b8d3b2437341939465b41924ae6387d82f6a24431cedf932cf02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83079e36a5b15e87019449ef7f21b0e5e9f6c776b04fe371f427c8fb01f2d5de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Task/Variant92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Task/Variant92476393f6302b02df39910bd75175bd14d6a6a19ad9e93282cc54f3caaeafdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
