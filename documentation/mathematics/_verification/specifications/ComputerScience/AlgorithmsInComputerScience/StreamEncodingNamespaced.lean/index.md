# Verification target: Stream Encoding Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2a3ad65dba2bfb47c9f996d5b94e1536a96ef14",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variant4aeed5552d0422b5e14ba1f0ceba104683c189e89379e8346d272ec78c0b32d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamEncodingNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamEncodingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2a3ad65dba2bfb47c9f996d5b94e1536a96ef14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variant4aeed5552d0422b5e14ba1f0ceba104683c189e89379e8346d272ec78c0b32d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variant4aeed5552d0422b5e14ba1f0ceba104683c189e89379e8346d272ec78c0b32d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.Modularity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matrixAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamEncodingNamespaced.lean/declarations/matrixatoms.md) | 15 | `declaration-track:c1a250237ef30f0979e0e54360e69fd31cce0fed7779c8892a420ca891230978` |
| 2 | `def` | [primeFactorsCore](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamEncodingNamespaced.lean/declarations/primefactorscore.md) | 20 | `declaration-track:19329f7ade577c4dd770166643cf27dc2fa7586b3fe38906ae9dddff47593228` |
| 3 | `structure` | [BinaryLogicTreeStreamPlan](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamEncodingNamespaced.lean/declarations/binarylogictreestreamplan.md) | 24 | `declaration-track:b2f9a354f940cca937217058434985c7eb13ba6008ab024215850e934ba6849f` |
| 4 | `def` | [streamPlan](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamEncodingNamespaced.lean/declarations/streamplan.md) | 33 | `declaration-track:4a0a07afefe74c2d05dceea9566cdc639832002baad1356a88dcd7a999f1b009` |
| 5 | `theorem` | [streamPlan_preserves_matrix_atoms](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamEncodingNamespaced.lean/declarations/streamplan-preserves-matrix-atoms.md) | 49 | `result-track:3c9a0574258229c72bde4ca829cf3a71abd02684c0b440d15a85a6fb199cd9c8` |
| 6 | `theorem` | [streamPlan_primeFactors_visible](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamEncodingNamespaced.lean/declarations/streamplan-primefactors-visible.md) | 54 | `result-track:60ec0adb0d8bd75e25ecdbf90478b64d54a8568bda0cb3b32ee7c01b7da3e24c` |
| 7 | `theorem` | [streamPlan_topologyPrime_visible](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamEncodingNamespaced.lean/declarations/streamplan-topologyprime-visible.md) | 60 | `result-track:84d695b77032995cd73d8e8f1658965c47573680798c60cae76c510c6142b775` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ab5236733f64ac61a2b6802ae35893b95d22181bea3fe0d3306448f13399366 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variant4aeed5552d0422b5e14ba1f0ceba104683c189e89379e8346d272ec78c0b32d9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variant4aeed5552d0422b5e14ba1f0ceba104683c189e89379e8346d272ec78c0b32d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
