# Verification target: Reduce Option

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47a37981e7ece4b6089f8a4b2b24f82796f7d23d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variante70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47a37981e7ece4b6089f8a4b2b24f82796f7d23d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variante70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variante70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reduceOption_cons_of_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-cons-of-some.md) | 19 | `result-track:bc78a43e7cc8306ab5d1348a892da93875736cd51bdedb5b9616ebfedacb597d` |
| 2 | `theorem` | [reduceOption_cons_of_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-cons-of-none.md) | 24 | `result-track:9dc2bd4a9b3998e8201bb0f8434b3b9f794c30bcfd7ae37fec4017519455e136` |
| 3 | `theorem` | [reduceOption_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-nil.md) | 28 | `result-track:d01e26e3cf50ca1d93b3135c025cff302d260ba65ff5b03ec601b35829a7f9c5` |
| 4 | `theorem` | [reduceOption_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-map.md) | 32 | `result-track:e725aea6e59fca842be9cbce8c1d35d8cbef20f89a0bb63f64de70b42bbac412` |
| 5 | `theorem` | [reduceOption_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-append.md) | 39 | `result-track:7d27086ee31075b87cb00b4a45988b704efdd8e55b482ef321f423a0f1d0f75d` |
| 6 | `theorem` | [reduceOption_replicate_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-replicate-none.md) | 44 | `result-track:3129547477422ad07298c028edc6d2d61b66a57ffb97892e0c192e1fefbbbe78` |
| 7 | `theorem` | [reduceOption_eq_nil_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-eq-nil-iff.md) | 48 | `result-track:a06e9edbe770e08ab7f3fa8bf9e01bcbbd38068076abae8539022ddd723f3f5d` |
| 8 | `theorem` | [reduceOption_eq_singleton_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-eq-singleton-iff.md) | 59 | `result-track:fcc2114c6e8151e426b070ca9e3e26d5ca8ca26b6d60ef23c012a22974378634` |
| 9 | `theorem` | [reduceOption_eq_append_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-eq-append-iff.md) | 75 | `result-track:d095f39f2ad2ca4f83732ca77e82d9f5789c866df552389e45bd7b8e2adf9c82` |
| 10 | `theorem` | [reduceOption_eq_concat_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-eq-concat-iff.md) | 81 | `result-track:1b3dff15b89af18fa0ee451a914a65536dbb36d8a471cdc5df67fd8106be0f27` |
| 11 | `theorem` | [reduceOption_length_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-length-eq.md) | 97 | `result-track:3e88665cd6238e772f6c3037787116d8a00e324088e40be7af316902e280e6aa` |
| 12 | `theorem` | [length_eq_reduceOption_length_add_filter_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/length-eq-reduceoption-length-add-filter-none.md) | 103 | `result-track:3fa50c210c0b49035b9268a66059a0f2fe17557c6926fb5e1e8b439c703d6eb9` |
| 13 | `theorem` | [reduceOption_length_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-length-le.md) | 107 | `result-track:fdf4435627c7db175d1d7169e6713126fa3eb58c61327bca76dd8206234c0b76` |
| 14 | `theorem` | [reduceOption_length_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-length-eq-iff.md) | 111 | `result-track:9eed06408267ddbf2731758c14987ecc239d3b72dbd0dd9b733c6730f4de4256` |
| 15 | `theorem` | [reduceOption_length_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-length-lt-iff.md) | 115 | `result-track:fd7b6d32e033f67e46d032f9449d89e99fa70027f3e05a7952a3a9574420e9a9` |
| 16 | `theorem` | [reduceOption_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-singleton.md) | 122 | `result-track:e23d4367cebc32434e5773a077ab1deaf7af6d27885faa19e72153373d9dbe76` |
| 17 | `theorem` | [reduceOption_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-concat.md) | 124 | `result-track:9ef803a86789e913608b0360ca2cb08a408aa18afc8aec91357bda30c0d4b838` |
| 18 | `theorem` | [reduceOption_concat_of_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-concat-of-some.md) | 131 | `result-track:209bde61cb61a0a2475e03e2ee5ea111d29f16c855296654b99787437dff9b05` |
| 19 | `theorem` | [reduceOption_mem_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-mem-iff.md) | 135 | `result-track:3910ecc42c0ba648ad6028f530b117a7d0a36d2bb625dbb861bcf22c691e0b14` |
| 20 | `theorem` | [reduceOption_getElem?_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOption.lean/declarations/reduceoption-getelem-iff.md) | 138 | `result-track:7790e7dcec494e414e0687eaa99aa4f52d33828393680ca7fa3dc37437feebf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da5bada3a39f25b17d7cb68720b6148cd705a543fbd01bf8de1f0d6b05682efd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variante70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variante70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
