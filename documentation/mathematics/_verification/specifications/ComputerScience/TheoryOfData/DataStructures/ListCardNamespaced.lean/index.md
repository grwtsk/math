# Verification target: List Card Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74b069a5e423102def4332a301a36654753412ac",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant1dce1d3c3e0a7a0f5feef3a28766b7328b8ebec8b5375c4ae0baa5b058d2d7f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74b069a5e423102def4332a301a36654753412ac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant1dce1d3c3e0a7a0f5feef3a28766b7328b8ebec8b5375c4ae0baa5b058d2d7f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant1dce1d3c3e0a7a0f5feef3a28766b7328b8ebec8b5375c4ae0baa5b058d2d7f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inj_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/inj-on.md) | 24 | `declaration-track:9db4ab6065935736144b942abde608e32e9919b0b8ee36c82c9ab8b06efbae74` |
| 2 | `theorem` | [inj_on_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/inj-on-of-subset.md) | 26 | `result-track:ac354543f203d1b98a01710ceea0178dfce70397a4f77dadf0deeb11c17a9238` |
| 3 | `def` | [equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/equiv.md) | 29 | `declaration-track:112b26bc51320c05a53f21dbc277dc69be6392d940b5dc329a1d21085a4179eb` |
| 4 | `theorem` | [equiv_iff_subset_and_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/equiv-iff-subset-and-subset.md) | 31 | `result-track:6fee0b50ec51d22eeee4fc36b24a6ebffdc8c6a11f0a7e8988acf0d7483c3795` |
| 5 | `theorem` | [insert_equiv_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/insert-equiv-cons.md) | 36 | `result-track:f0c60923d80bc44f9fd8f72193cb812fd66ef7b629ce5e7408a7f051a3eeab42` |
| 6 | `theorem` | [union_equiv_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/union-equiv-append.md) | 39 | `result-track:26c0bda160731b98228b016f9e78c9cc0e54aee2f2a2031a8f654b480e18ab67` |
| 7 | `def` | [remove](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/remove.md) | 47 | `declaration-track:5f5942a141012cf5918fabd2ddee4ffd9db16bb20da6edff9efe184da45554f6` |
| 8 | `theorem` | [mem_remove_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/mem-remove-iff.md) | 51 | `result-track:a22af079bb6e058f42a6b1e348c162fbf12498e2cc9e002b132969c4c648591b` |
| 9 | `theorem` | [remove_eq_of_not_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/remove-eq-of-not-mem.md) | 73 | `result-track:abde818ecf32696c193147cc270f0727a5291d449abffe9d705ab679a41db1c7` |
| 10 | `theorem` | [mem_of_mem_remove](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/mem-of-mem-remove.md) | 80 | `result-track:8cea7f8caff7de32d412bede0a58c8b998a33a37d89c5ad029881cccf635b677` |
| 11 | `def` | [card](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card.md) | 85 | `declaration-track:3a13e4901922fda1228f1ffb81816def0d1136c6b78c942026e2bb5c74e673ea` |
| 12 | `theorem` | [card_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-nil.md) | 89 | `result-track:1af03e91fe172cba67164c865d22d9d24fe0bbe47cb4dd29986fac1ab27eeeb5` |
| 13 | `theorem` | [card_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-cons-of-mem.md) | 91 | `result-track:fd6fddb4c1600db504f7d020ef7075ae12edc50396831acd83955f7da1e7fdf2` |
| 14 | `theorem` | [card_cons_of_not_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-cons-of-not-mem.md) | 94 | `result-track:0b56dc58e81654e0a95275eb6208b41de650f419e31f1e959e0cec1454028afd` |
| 15 | `theorem` | [card_le_card_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-le-card-cons.md) | 97 | `result-track:946c1be6727e38ae77538a6e79fc3d1ee4d729c7d044e6fa395f5427e6001d21` |
| 16 | `theorem` | [card_insert_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-insert-of-mem.md) | 102 | `result-track:fd7b3e34f91b381dbc211f996e063a18cf456d6b30c355fb55cf0d5de6957367` |
| 17 | `theorem` | [card_insert_of_not_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-insert-of-not-mem.md) | 105 | `result-track:0809fbb3fb0264cee567dae915edfe013d230431fcab5d3edadae38bd7ebd97f` |
| 18 | `theorem` | [card_remove_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-remove-of-mem.md) | 108 | `result-track:dc775dee666861c91394f5965faa27c9298c2cd616c736d5156341724d61d23f` |
| 19 | `theorem` | [card_subset_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-subset-le.md) | 132 | `result-track:732dc964611dc88d4b176107d5475c4633512191e12b901cafaf3c35c4215c3d` |
| 20 | `theorem` | [card_map_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-map-le.md) | 148 | `result-track:e4b19a6d35af515f83af1ef0d2d0796f140d2f2f5933af2abcf5ccc812533c91` |
| 21 | `theorem` | [card_map_eq_of_inj_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-map-eq-of-inj-on.md) | 161 | `result-track:ac94e9909605b6c4997956962e1c7e056aa3b9dabcfa48f79c44c9fea485fe19` |
| 22 | `theorem` | [card_eq_of_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-eq-of-equiv.md) | 181 | `result-track:315730a10e05cb8c02086cc63e1ace903e56d552c8377f7eaac0b7fa85db1fd3` |
| 23 | `theorem` | [card_append_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-append-disjoint.md) | 185 | `result-track:678a9b4178179c5f6eab9945766040cb026fde625f1de1d9661d4c4751a67548` |
| 24 | `theorem` | [card_union_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCardNamespaced.lean/declarations/card-union-disjoint.md) | 198 | `result-track:bc1ac38e6d7f6e92e48a153320bae1c8420947cc4c6ae2ab3879e5f94cc98ff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=464613f8f5f7e69f919f2f703e71462937bffcd829d74b512acb9b9b7ba3c603 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant1dce1d3c3e0a7a0f5feef3a28766b7328b8ebec8b5375c4ae0baa5b058d2d7f3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant1dce1d3c3e0a7a0f5feef3a28766b7328b8ebec8b5375c4ae0baa5b058d2d7f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
