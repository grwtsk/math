# Verification target: Export Namespaced Quote

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09c6643b526f85b96c50f503e51f5159b4d058ac",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantcbfe94390eb476947e9c997043fd308c23d75a9dd77ef3b077fb4eb2d6c1f8ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09c6643b526f85b96c50f503e51f5159b4d058ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantcbfe94390eb476947e9c997043fd308c23d75a9dd77ef3b077fb4eb2d6c1f8ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantcbfe94390eb476947e9c997043fd308c23d75a9dd77ef3b077fb4eb2d6c1f8ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompositeElements.Invariants` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quote](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/declarations/quote.md) | 15 | `declaration-track:3050bf040579149edabaed6bb2713bd17e8c01f02611da4429bb1ec81d3d07b9` |
| 2 | `def` | [stringArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/declarations/stringarray.md) | 18 | `declaration-track:d7c5afe89b058a3c04bd4b0093ef120fec41049b57512753a2424cf16847989e` |
| 3 | `def` | [edgeJson](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/declarations/edgejson.md) | 21 | `declaration-track:d0cace761c3af9e54be4daa53868e7b46033c88f5007dc890fc396507772e697` |
| 4 | `def` | [edgeArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/declarations/edgearray.md) | 24 | `declaration-track:16e69dc4ff5d02e6018c2250237b9d111aa8a89be5ee1f78c169ae354104373a` |
| 5 | `def` | [projectJson](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/declarations/projectjson.md) | 27 | `declaration-track:9e0058450d671a986885b057842438191124bfaf4ac38a2a43832f69c44def90` |
| 6 | `def` | [formalManifestJson](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/declarations/formalmanifestjson.md) | 37 | `declaration-track:75a9c1ea4a7f7ef7e6d982245b9858ac89d5bb55b575e5a555ce97978f3fedd4` |
| 7 | `theorem` | [emitted_project_count_is_kernel_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/declarations/emitted-project-count-is-kernel-checked.md) | 54 | `result-track:ca777059e421853ec4bec431912732f74ca55cc21f3364fc3c4a5931e15f28f2` |
| 8 | `theorem` | [emitted_static_invariants_are_kernel_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedQuote.lean/declarations/emitted-static-invariants-are-kernel-checked.md) | 58 | `result-track:eb7bc43cae7b29c561427786bc0cd7c4e5f5158a260cae6417b366dfd039db58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef0480796c9cee8d6fd15baf5721a70d29c395fc6582a0cba5b56e61acb5605d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantcbfe94390eb476947e9c997043fd308c23d75a9dd77ef3b077fb4eb2d6c1f8ac.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantcbfe94390eb476947e9c997043fd308c23d75a9dd77ef3b077fb4eb2d6c1f8ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
