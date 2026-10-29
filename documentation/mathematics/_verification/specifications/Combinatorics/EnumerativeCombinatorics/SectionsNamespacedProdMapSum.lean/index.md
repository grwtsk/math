# Verification target: Sections Namespaced Prod Map Sum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc437d92ea1f3414ae80b40671ad69e779481dd2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc437d92ea1f3414ae80b40671ad69e779481dd2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Bind` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sections](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/declarations/sections.md) | 33 | `declaration-track:40a2bc001f3ed3b6c4a0b2c46cd4791e2b9ec6474647165e62e92b109e6c8f0f` |
| 2 | `theorem` | [sections_zero](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/declarations/sections-zero.md) | 39 | `result-track:0e90c00e3e6064e930705b17181edccd8bdcbfb349b37f20221c776c2c8b2884` |
| 3 | `theorem` | [sections_cons](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/declarations/sections-cons.md) | 44 | `result-track:8984ed9ccc619172793e32e0f9884df7211e0968e8fe73437a657e6534aad6a7` |
| 4 | `theorem` | [coe_sections](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/declarations/coe-sections.md) | 49 | `result-track:100f233422a188528e1ce33c4587e8439fd53173b037b5c0b6ea3f87e6d35d53` |
| 5 | `theorem` | [sections_add](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/declarations/sections-add.md) | 61 | `result-track:ca22813de487d37812606e51c7dd60c1c586a4c5394f48abfebf418413482a70` |
| 6 | `theorem` | [mem_sections](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/declarations/mem-sections.md) | 67 | `result-track:64ec23e18f35964d08b07b7eced1b9550f82cde9c7dc2b4e3553b45f8e5983ae` |
| 7 | `theorem` | [card_sections](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/declarations/card-sections.md) | 74 | `result-track:7b921ba66a19c2aae35f7838f325af11bc6dafaaba52a268edce0b74ab5252b2` |
| 8 | `theorem` | [prod_map_sum](../../../../../Combinatorics/EnumerativeCombinatorics/SectionsNamespacedProdMapSum.lean/declarations/prod-map-sum.md) | 78 | `result-track:53551cc08e147ad5257bd6b174bb047e1cd05eda47597a878878c0844a683ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6c2f87d6b8b10b0a87707a9787f77c807dd7360b1aa597cb8a544ac6dbd8f86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
