# Verification target: Erase Public Erase Idx Append Of Length Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6863293280e65bcad2b7305e75365ab760168a7c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantccdb5ae2ce8867ec194761ef271e2ec81848354ea68900aabad7cd0d848cc3dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6863293280e65bcad2b7305e75365ab760168a7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantccdb5ae2ce8867ec194761ef271e2ec81848354ea68900aabad7cd0d848cc3dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantccdb5ae2ce8867ec194761ef271e2ec81848354ea68900aabad7cd0d848cc3dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Erase` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eraseIdx_eq_take_drop_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-eq-take-drop-succ.md) | 30 | `result-track:5f29718c4f83d1452fc78b81e9ac45de2239c6cd3c154ca4f9c77885c8182b05` |
| 2 | `theorem` | [getElem?_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/getelem-eraseidx.md) | 39 | `result-track:b58f15086f01ce7ccab8658f40f11c85be1e83a365a375d011674c61bbd17e50` |
| 3 | `theorem` | [getElem?_eraseIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/getelem-eraseidx-of-lt-source-edition-2.md) | 44 | `result-track:22bc645497dd40635f407d21bd20e98f9ad7ccdc5501ef1329dcf41ad74ae246` |
| 4 | `theorem` | [getElem?_eraseIdx_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/getelem-eraseidx-of-ge.md) | 49 | `result-track:c0ffa5cceae2c585f850d2f1df34ffe47bf47feba18129adc112d9624eb04ca3` |
| 5 | `theorem` | [getElem_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/getelem-eraseidx-source-edition-2.md) | 57 | `result-track:db47872ec7d84b7e5b12e19a79208dcac4ca6e9ba6dcabfb12c4d65a9b4e55c6` |
| 6 | `theorem` | [mem_of_mem_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/mem-of-mem-eraseidx.md) | 63 | `result-track:16c011a8e7880983591e070ad8f839f6874b52160e7d373130f12d5be997032d` |
| 7 | `theorem` | [eraseIdx_append_of_lt_size](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-append-of-lt-size.md) | 69 | `result-track:13c579edcec324740b011b8aa3562948e767cc70fffee4ceac4c8d53c0a26421` |
| 8 | `theorem` | [eraseIdx_append_of_length_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-append-of-length-le.md) | 76 | `result-track:8939424db0597970b7897aae6f014782c90dfda38d8fbe145bea3fc76951a140` |
| 9 | `theorem` | [eraseIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-append.md) | 84 | `result-track:0a2de1baafd118fc269b3cf4cac03f1699b1e48f51dbcc8e2b6b46bb01298236` |
| 10 | `theorem` | [eraseIdx_cast](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-cast.md) | 92 | `result-track:a525f1c09280feb28e7ef6ecdbb9072a68e252aea588bb4515427ac2f8605386` |
| 11 | `theorem` | [eraseIdx_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-replicate.md) | 98 | `result-track:b822bf5800443f1a04ef93b4634172de8a6c13e7c7ff2262e286934e32573db5` |
| 12 | `theorem` | [mem_eraseIdx_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/mem-eraseidx-iff-getelem.md) | 103 | `result-track:1c819d0518b7a7ba4675d9ba265962c5c8becc35269ed63287e8fde042812775` |
| 13 | `theorem` | [mem_eraseIdx_iff_getElem?](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/mem-eraseidx-iff-getelem-source-edition-2.md) | 107 | `result-track:7d737e9d093ff121c76fc32cdd69d291c115012448abc194e8dff37327f9a296` |
| 14 | `theorem` | [getElem_eraseIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/getelem-eraseidx-of-lt.md) | 111 | `result-track:047059ddf168c4371d83ad42144b5096be71d24a7201b47767a57653807f472f` |
| 15 | `theorem` | [getElem_eraseIdx_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/getelem-eraseidx-of-ge-source-edition-2.md) | 116 | `result-track:c87d242c378d6e638ba6d2cc3193c6a4deb9bcdda1b54f59eae0b4741c197c1c` |
| 16 | `theorem` | [eraseIdx_set_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-set-eq.md) | 121 | `result-track:58b267642b783e721fbecfd95d16f23e308fef8f166bc24829f6ad0e57043782` |
| 17 | `theorem` | [eraseIdx_set_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-set-lt.md) | 126 | `result-track:0298d5fa3220d1e9623f844f446b1ae6919a0e15a93c29c10bd231985f67aae5` |
| 18 | `theorem` | [eraseIdx_set_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-set-gt.md) | 131 | `result-track:a2225d5d25d07c2f250498123383f2862776ccb9e10931fb6ee7042e3954973f` |
| 19 | `theorem` | [eraseIdx_set](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/eraseidx-set.md) | 137 | `result-track:8f4360e7fe1675f99f3c597381cb004b64f4bef277f260446debd86d3cf5b50d` |
| 20 | `theorem` | [set_eraseIdx_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/set-eraseidx-le.md) | 151 | `result-track:68ec590b6a1749086cdd3358eafd9b16de3c39e0bbacdc1f157425fc45ea46aa` |
| 21 | `theorem` | [set_eraseIdx_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/set-eraseidx-gt.md) | 157 | `result-track:f525f313b87ce50cdc9b49dfaad2b43d4752ca3f769425b31c9ffdb5147bd92c` |
| 22 | `theorem` | [set_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/set-eraseidx.md) | 163 | `result-track:aab6725c6f0dedfb623e54a8d3854590c2f6cfd6d8e133e97f0a34940b412a9d` |
| 23 | `theorem` | [set_getElem_succ_eraseIdx_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicEraseIdxAppendOfLengthLe.lean/declarations/set-getelem-succ-eraseidx-succ.md) | 175 | `result-track:b19fcd27c4ed9a69bf40574b02fd3a268757d2fac7ef4d08b1c34e49b282f921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af6ff22749b51d3721fb4bd823c36254ebd8dbed0083246462430d620b9164f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantccdb5ae2ce8867ec194761ef271e2ec81848354ea68900aabad7cd0d848cc3dd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variantccdb5ae2ce8867ec194761ef271e2ec81848354ea68900aabad7cd0d848cc3dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
