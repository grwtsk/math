# Verification target: Insert Idx Namespaced Public Insert Idx Succ Nil

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57fd5098c9d283fe64a67b9083a53921d3624b86",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant5d70e4b430fa44b3072a5c541ee01f765e870137c63e1bfd570f852e0d34f3ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57fd5098c9d283fe64a67b9083a53921d3624b86`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant5d70e4b430fa44b3072a5c541ee01f765e870137c63e1bfd570f852e0d34f3ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant5d70e4b430fa44b3072a5c541ee01f765e870137c63e1bfd570f852e0d34f3ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Erase` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Modify` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [insertIdx_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/insertidx-zero.md) | 49 | `result-track:b48a441a66ea7207848b6d03e358be5b946a5ddb97d1cadbc2aeefe0865bf8f4` |
| 2 | `theorem` | [insertIdx_succ_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/insertidx-succ-nil.md) | 53 | `result-track:4021828da8eb6c1c8fb9c97bef461bad03ec805e07d381d53709ef7a7f1454f6` |
| 3 | `theorem` | [insertIdx_succ_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/insertidx-succ-cons.md) | 57 | `result-track:6a4993885a8c330073c21c128397d5abeeaf9f8ea8b8fa087b9eb2f71ae7be2a` |
| 4 | `theorem` | [length_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/length-insertidx.md) | 62 | `result-track:fc4dc7b90abb5358b08a1f7e54c7978aafb51409f046a7f41f34bd8845a64ae6` |
| 5 | `theorem` | [length_insertIdx_of_le_length](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/length-insertidx-of-le-length.md) | 69 | `result-track:7375be0752fe066e849abe0fb264005716fd894d5206a6b6e6b8a6d69878bff8` |
| 6 | `theorem` | [length_insertIdx_of_length_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/length-insertidx-of-length-lt.md) | 72 | `result-track:a0ca7ec85db50745f49308c7849d0abcf4aa706e7d7ceb834d9ef664509dec78` |
| 7 | `theorem` | [insertIdx_eraseIdx_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/insertidx-eraseidx-of-ge.md) | 75 | `result-track:2394505cb5c3d06c69a505b30670d267f2ec1e490c43a51ccb9d9d5f3f3ce10e` |
| 8 | `theorem` | [insertIdx_eraseIdx_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/insertidx-eraseidx-of-le.md) | 85 | `result-track:7404ffd48f4379df9ffd07dafc861996139bef45afbac3d257492e1d2f81b5a5` |
| 9 | `theorem` | [insertIdx_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/insertidx-eraseidx.md) | 94 | `result-track:f7bce9fe7ab3ada6fef25830f69631b72830ba816022023d0637abdf7be737f9` |
| 10 | `theorem` | [insertIdx_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/insertidx-comm.md) | 102 | `result-track:0f27e21264b4033062e33ef8c001aaa2805d04c8c694a36d4de298d21be06b99` |
| 11 | `theorem` | [mem_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/mem-insertidx.md) | 112 | `result-track:ef5a01818b0bf4a7268b795753b0092c735462df5f0c66e1d8342c791934c202` |
| 12 | `theorem` | [insertIdx_of_length_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/insertidx-of-length-lt.md) | 120 | `result-track:f2584f638fa614941fbfe7f1971fda0d3ff3803c06162698136ee05940f52374` |
| 13 | `theorem` | [eraseIdx_insertIdx_self](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/eraseidx-insertidx-self.md) | 134 | `result-track:b50bc48ee5776cb2e31da5a146f59b83723652dbfdddbe6920ef99ea20a8e8cb` |
| 14 | `theorem` | [insertIdx_length_self](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/insertidx-length-self.md) | 139 | `result-track:e6e6f683e6ce8311c9ebad33509c2d2bc89aaa2d3cbf6486b1a5d9d0592a6e1d` |
| 15 | `theorem` | [length_le_length_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/length-le-length-insertidx.md) | 144 | `result-track:edd111eaf2878a72bbd0ba2e3eabadd33835e6c8caaa29aa645fee630ff8cdde` |
| 16 | `theorem` | [length_insertIdx_le_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/length-insertidx-le-succ.md) | 149 | `result-track:4ddecfc65b6666e795d6da11ddace669030b6f34b1683b8e7402f027768f24b7` |
| 17 | `theorem` | [getElem_insertIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-of-lt-source-edition-2.md) | 154 | `result-track:eaf76b871f04ddec0deb846c26d396e89c2c7f19983d0ec19555aba32e61bff3` |
| 18 | `theorem` | [getElem_insertIdx_self](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-self-source-edition-2.md) | 169 | `result-track:de3ba2faf9447a55d0b9309e768e0a63244870a3ffe50085710430bcac414570` |
| 19 | `theorem` | [getElem_insertIdx_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-of-gt.md) | 183 | `result-track:a7eaab67d01144653267b121b1286cec31cfddb473eab59fa666d71c8f4fa379` |
| 20 | `theorem` | [getElem_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-source-edition-2.md) | 211 | `result-track:bb361559d8dc02b381434c213b8aaa86352eaf75e2d414df86342be949ada748` |
| 21 | `theorem` | [getElem?_insertIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx.md) | 228 | `result-track:14a114efbde5cd951634b46b3a5e5a271ac1f0fc9a3563a2b567c4b86f56970d` |
| 22 | `theorem` | [getElem?_insertIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-of-lt.md) | 259 | `result-track:478ded12a964e48744e5e3711ba9a142ae96a150b4716030f33a13349881f24d` |
| 23 | `theorem` | [getElem?_insertIdx_self](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-self.md) | 263 | `result-track:4052e982774716a0d2585bd631c5e0c645a8395cf9ac87366d64ef1d93ce83b7` |
| 24 | `theorem` | [getElem?_insertIdx_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/InsertIdxNamespacedPublicInsertIdxSuccNil.lean/declarations/getelem-insertidx-of-gt-source-edition-2.md) | 268 | `result-track:d40e1efdd196ff8df29b4cd6f8f8d9e129f3291eba8b9f999bce69e2d11ef7c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41ee22b6a8987bcf5dbc9abf4d99193e6025500876726b3fc1c585323707297f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant5d70e4b430fa44b3072a5c541ee01f765e870137c63e1bfd570f852e0d34f3ca.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant5d70e4b430fa44b3072a5c541ee01f765e870137c63e1bfd570f852e0d34f3ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
