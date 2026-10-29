# Verification target: Trace Namespaced Character Observation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00dfd0d4d871b0a521d8b18a93f3f424f9914574",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant2fe8cdec2fdfd25112d88463867b701adc5783ffb877e6e3b7ef7cd603b9ecce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00dfd0d4d871b0a521d8b18a93f3f424f9914574`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant2fe8cdec2fdfd25112d88463867b701adc5783ffb877e6e3b7ef7cd603b9ecce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant2fe8cdec2fdfd25112d88463867b701adc5783ffb877e6e3b7ef7cd603b9ecce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.Manifest` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CharacterObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/characterobservation.md) | 23 | `declaration-track:12b3c37d3ed66401ebf4af6746ba4d155ec015dfdf721e0ff480cd80d3d6dbc6` |
| 2 | `structure` | [RuntimeTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/runtimetrace.md) | 29 | `declaration-track:9671df9ec836ba1e89a90481e657338894d88d04dbf87f1dec56da2ba366247e` |
| 3 | `def` | [parseCharacterObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/parsecharacterobservation.md) | 47 | `declaration-track:881fdfc27f7bd1a86bac2bfa574a3115c8cbceb5ad6bcaef7937b184b3d0beb3` |
| 4 | `def` | [parseOptionalDigest](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/parseoptionaldigest.md) | 63 | `declaration-track:9c6178f88c89f07c93bfd621230a4d9659ced9b79b88348db7dd8c700aa4075c` |
| 5 | `def` | [Dyadic.lt](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/dyadic-lt.md) | 70 | `declaration-track:cd04e634629fcfeab1ee1824a36f395cbd9db9412ac3cf25d2019d3a5be65d3e` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/instance.md) | 74 | `declaration-track:3214e54df25947f4914403ebf9340cf4682a05a27677a0380e4ec7b680c9f4e0` |
| 7 | `def` | [parseTracePayload](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/parsetracepayload.md) | 78 | `declaration-track:fbb86a1b05610775a6411a061a0f3a14be2ab0e62a839d4770202c74aa07dd31` |
| 8 | `def` | [decodeTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/decodetrace.md) | 130 | `declaration-track:d6496d18422be868b4edaef74198515a25e749836f293247092eeaa8f3b128d8` |
| 9 | `structure` | [RuntimeSubmission](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/runtimesubmission.md) | 135 | `declaration-track:6c55230d299ed21484735fbd5d67e69546109b655f6d0b46e1d6e469c97553a0` |
| 10 | `def` | [encodeCharacterObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/encodecharacterobservation.md) | 145 | `declaration-track:0e260f4f0e054820da6cc97bb0c5b1095c1bc858cfe5106c9f9876d6eb9741d4` |
| 11 | `def` | [encodeOptionalDigest](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/encodeoptionaldigest.md) | 157 | `declaration-track:21adf4b122a6fcd8529f7621943dcd8f4b4fd84a6e16d15fff76b84f3c41b21c` |
| 12 | `def` | [encodeTracePayload](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/encodetracepayload.md) | 161 | `declaration-track:1765b6b045245b3aeacff0901d9fb02fed2e2f2cc32d0263b66a9ad8392146c8` |
| 13 | `def` | [encodeTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceNamespacedCharacterObservation.lean/declarations/encodetrace.md) | 183 | `declaration-track:568672fe6be234d2968f8444d55114d1d0ca67309eac72614792d6fe2c14714b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=296bc7dd890e475530cc96c5d3dabbb4f6f02709f5fa5cea412a5a9edc6be6c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant2fe8cdec2fdfd25112d88463867b701adc5783ffb877e6e3b7ef7cd603b9ecce.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant2fe8cdec2fdfd25112d88463867b701adc5783ffb877e6e3b7ef7cd603b9ecce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
