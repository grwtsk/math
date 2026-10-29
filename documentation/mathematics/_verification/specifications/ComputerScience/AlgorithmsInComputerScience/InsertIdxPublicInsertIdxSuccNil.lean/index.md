# Verification target: Insert Idx Public Insert Idx Succ Nil

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1e0ace46a10da3d73e88ae6a50285899ba7dac0",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantab5069dbe27bbe218da5db1e8828769104de17089260c241b62431660d368cb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1e0ace46a10da3d73e88ae6a50285899ba7dac0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantab5069dbe27bbe218da5db1e8828769104de17089260c241b62431660d368cb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantab5069dbe27bbe218da5db1e8828769104de17089260c241b62431660d368cb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Erase` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Modify` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [insertIdx_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/insertidx-zero.md) | 41 | `result-track:ae140fc6c82392b71579fa11ae8364acfe5239e2f4e5627a1282964d856284e4` |
| 2 | `theorem` | [insertIdx_succ_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/insertidx-succ-nil.md) | 45 | `result-track:ff1f1f3449d934b7044c3144b6d6de49f1c5a66e4fb0c07ca17b0a58bd8436ab` |
| 3 | `theorem` | [insertIdx_succ_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/insertidx-succ-cons.md) | 49 | `result-track:0c8c2b0692869e31235bce62fccff2f4014ebea3127cbda1cabd2d7f1b7a482a` |
| 4 | `theorem` | [length_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/length-insertidx.md) | 54 | `result-track:251386e356b9759ba8e69c9025a59cad0a679caeed8f97e214492efcda436c9a` |
| 5 | `theorem` | [length_insertIdx_of_le_length](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/length-insertidx-of-le-length.md) | 61 | `result-track:f592035a01f46a77dcff821c0f1ba76098c4601f368a9f5fcf679cbaba6263de` |
| 6 | `theorem` | [length_insertIdx_of_length_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/length-insertidx-of-length-lt.md) | 64 | `result-track:e78afe2cd68c82e408829369afb25f7835c519ffbd00e71a7af226836c2d613e` |
| 7 | `theorem` | [insertIdx_eraseIdx_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/insertidx-eraseidx-of-ge.md) | 67 | `result-track:3415c0498c79a5255e3caac56c33573a810a1c5b5f82829333466c70b379b23d` |
| 8 | `theorem` | [insertIdx_eraseIdx_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/insertidx-eraseidx-of-le.md) | 77 | `result-track:d2c1980a8f2971e78b808c4dc6514867806352f996b5bfdca67065eef140fbb8` |
| 9 | `theorem` | [insertIdx_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/insertidx-eraseidx.md) | 86 | `result-track:9faff4e097635aaa63d60ecc1cc9629e97e9fd85a50d358f4e39f89ec2d3d6b0` |
| 10 | `theorem` | [insertIdx_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/insertidx-comm.md) | 94 | `result-track:525a92215331e3f2f8d975a035c88668cec49e1b486c7221c0b98ac8f5b0f0e8` |
| 11 | `theorem` | [mem_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/mem-insertidx.md) | 104 | `result-track:8222c7a225bbd5d9881c7db62e3880fd96cc637fc8391b7fe2951e6979389c63` |
| 12 | `theorem` | [insertIdx_of_length_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/insertidx-of-length-lt.md) | 112 | `result-track:5aa4171e0220d95af05c59d5108e1d19b31db29e557740dd281dedc7d0c0627e` |
| 13 | `theorem` | [eraseIdx_insertIdx_self](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/eraseidx-insertidx-self.md) | 126 | `result-track:7076725868c62ae7b841d8ed616ed3905c195efbad58db2975f60bcf2903845c` |
| 14 | `theorem` | [insertIdx_length_self](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/insertidx-length-self.md) | 131 | `result-track:f4bb85fc2480f33b313e149ffd1b2e68582640a5cd885d20a8f6f83fae84a3c5` |
| 15 | `theorem` | [length_le_length_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/length-le-length-insertidx.md) | 136 | `result-track:9b4d6358ecfd76c3eeccc5f247ca88fcf1421c036478373447185d61431a0dd1` |
| 16 | `theorem` | [length_insertIdx_le_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/length-insertidx-le-succ.md) | 141 | `result-track:7e6cfab81e09a67997bc806290af4e50bafc3726cef33cca13673bac0ba1f5a5` |
| 17 | `theorem` | [getElem_insertIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-of-lt.md) | 146 | `result-track:a7931e71e51f7ce7036b1b293b1ead2752b74ab93a5027692a9ae65fa0a25358` |
| 18 | `theorem` | [getElem_insertIdx_self](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-self.md) | 161 | `result-track:6d5234b77cf6ad219f4cdf655d3ed431bf16665c72dabee9a44cea80aa8e5fe0` |
| 19 | `theorem` | [getElem_insertIdx_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-of-gt-source-edition-2.md) | 175 | `result-track:fba9998222b318cb62166b6e193330a40d5e08fcf9b2c87ca5cfff8145649b72` |
| 20 | `theorem` | [getElem_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-source-edition-2.md) | 203 | `result-track:fc2a35540572b3a579ab7fe2aa77737f20920e57dbb58edd43c322efcf3194ba` |
| 21 | `theorem` | [getElem?_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx.md) | 220 | `result-track:312ba69c7cd83600f5e6a5e31f530209fa803137785dbd5b097818a2552c8733` |
| 22 | `theorem` | [getElem?_insertIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-of-lt-source-edition-2.md) | 251 | `result-track:ffba578acaad954047102bc1223d715ce6fae0004119834fe64b38b370536362` |
| 23 | `theorem` | [getElem?_insertIdx_self](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-self-source-edition-2.md) | 255 | `result-track:a9494372d3e9d4b46c3168da115e8de8ca2a3aa140ccb04aca09fd90b55aba25` |
| 24 | `theorem` | [getElem?_insertIdx_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-of-gt.md) | 260 | `result-track:e1a2df669774a0cc8588b859e62ad49819606415caa469d5263886bccb51fd38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=430d7edc7aea7316ebdf7013070d86610b5017f69b80301e4222b78bfe055365 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantab5069dbe27bbe218da5db1e8828769104de17089260c241b62431660d368cb9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantab5069dbe27bbe218da5db1e8828769104de17089260c241b62431660d368cb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
