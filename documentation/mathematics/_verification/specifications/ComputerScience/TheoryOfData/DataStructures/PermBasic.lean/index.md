# Verification target: Perm Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "923c1c300d4a3065d5bb567287cee78a3fb0cccc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `923c1c300d4a3065d5bb567287cee78a3fb0cccc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Perm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Forall2` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.InsertIdx` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [perm_rfl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-rfl.md) | 32 | `result-track:81d2ef1d2573d6d91dd15153be8537a7d577f8aa83a4f20d46186ed04dcee4c9` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/instance.md) | 37 | `declaration-track:e2d1d9c98a3e15d935291b7218a11333792315abee718b0ce1e358fb562005d8` |
| 3 | `theorem` | [Perm.subset_congr_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-subset-congr-left.md) | 39 | `result-track:c555b9073fec7d9533f4fd8ba9b7778dc69ddc579bb7943477f348b304eb1696` |
| 4 | `theorem` | [Perm.subset_congr_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-subset-congr-right.md) | 42 | `result-track:f78b738fa72dee66d440957ba422e0c78dcfbfec7b9e823db6e7a9eeb3f41916` |
| 5 | `theorem` | [set_perm_cons_eraseIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/set-perm-cons-eraseidx.md) | 45 | `result-track:9e32aefe4ab3af165e474a0465fd3637923c29835133cebc58003a38cee3c9d2` |
| 6 | `theorem` | [getElem_cons_eraseIdx_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/getelem-cons-eraseidx-perm.md) | 52 | `result-track:3c3146a268af87584e065af649fbfb4ef0250c2574c901e43ce2aeb28d8df96b` |
| 7 | `theorem` | [perm_insertIdx_iff_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-insertidx-iff-of-le.md) | 56 | `result-track:31a13b98f530b8a362947727e00acc91206fb7d411876c9d702050c6ff7e3e37` |
| 8 | `theorem` | [perm_insertIdx_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-insertidx-iff.md) | 63 | `result-track:49ed13e423c4972b89afff361c986defda3348231e3ea68b9dade93129cd8a7c` |
| 9 | `theorem` | [Perm.insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-insertidx.md) | 82 | `result-track:8c49b3b0ea5b29a450420dbc186573152610620182a82f78fba238513a3274b4` |
| 10 | `theorem` | [perm_eraseIdx_of_getElem?_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-eraseidx-of-getelem-eq.md) | 86 | `result-track:32302c0cef2e2acd0a2a25bcce09f26244f4caa11b22504b08457bab465357d5` |
| 11 | `theorem` | [perm_comp_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-comp-perm.md) | 109 | `result-track:5a9e9d5f795402a09ab68ebb568ae0effc1c968ddcc3183edc5a22b387371416` |
| 12 | `theorem` | [perm_comp_forall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-comp-forall.md) | 115 | `result-track:53dd158b44d184c91fcb385e233770939dedf63f1546816a3a0afc425829a702` |
| 13 | `theorem` | [forall₂_comp_perm_eq_perm_comp_forall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/forall-comp-perm-eq-perm-comp-forall.md) | 132 | `result-track:3c8466ed7b7345e8da79d89097ce4ae5f4574fba84980181356bacdbf2133bb4` |
| 14 | `theorem` | [eq_map_comp_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/eq-map-comp-perm.md) | 142 | `result-track:2a211c679cb5bd3efcd3ec0c2a74788af73607322bca38d683d280c98615a67f` |
| 15 | `theorem` | [rel_perm_imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/rel-perm-imp.md) | 146 | `result-track:4ebd538dfe922a0f02bd06f99168be1b008dea57eec3c171f64dca22a26edb20` |
| 16 | `theorem` | [rel_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/rel-perm.md) | 155 | `result-track:f58b5ca5dbe36ec0141068665eeba6b28e9130dea347fc531357553f25a1c926` |
| 17 | `lemma` | [count_eq_count_filter_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/count-eq-count-filter-add.md) | 161 | `result-track:cc197561e233837e37b8cf7757a4ea29824ec260214913e8451e586651b6f842` |
| 18 | `theorem` | [Perm.foldl_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-foldl-eq.md) | 167 | `result-track:150bcd87098bd1d0455bdf0202c54abd3b0f4298f217f724b2c0f9b61132346d` |
| 19 | `theorem` | [Perm.foldr_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-foldr-eq.md) | 171 | `result-track:be31504c5866c9bbb9987e2da4bef526e153840d267a7a75cfa8a8cd4a6bcfc9` |
| 20 | `theorem` | [Perm.foldl_op_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-foldl-op-eq.md) | 188 | `result-track:413eeba5c5ad0a9a7d5fbff4789c6f0b5b2e1c3bb1161e51226422e577e82545` |
| 21 | `theorem` | [Perm.foldr_op_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-foldr-op-eq.md) | 191 | `result-track:f4787620429563fd3944e16229e8eb4e559c47068135f4b8d130347264c14a48` |
| 22 | `theorem` | [perm_option_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-option-tolist.md) | 196 | `result-track:1e66fa98f53ede38edc36bfced3202d0660fb94f11f99d1547eb6e20560900fc` |
| 23 | `theorem` | [perm_replicate_append_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-replicate-append-replicate.md) | 203 | `result-track:323c687107cf27a6ed6e49a0ee1a3bd8baf7d03e9769c743de6e13c1e5040c24` |
| 24 | `theorem` | [map_perm_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/map-perm-map-iff.md) | 213 | `result-track:fd930966fd1d4a5abd59d54841b3706e105822f6037d370d9990dd8ea1a7ca6c` |
| 25 | `theorem` | [Perm.flatMap_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-flatmap-left.md) | 219 | `result-track:f627e69036d3f5ab7b7ec749eece814811b2dd935db13243e789af5ffd31ca81` |
| 26 | `theorem` | [Perm.flatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-flatmap.md) | 227 | `result-track:023a6d185e1ceb6ff7d814bf140606cc57c60ea0ca2b86f2f0559035029420c1` |
| 27 | `theorem` | [flatMap_append_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/flatmap-append-perm.md) | 231 | `result-track:c1cb3d442bd638da7832523f9d0d8b0d042c8aef1eb0bdb3ce4c51e3f95dfcab` |
| 28 | `theorem` | [map_append_flatMap_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/map-append-flatmap-perm.md) | 239 | `result-track:1814e586c1cfe11c53b0a1947c0d6dd66114729e6d6a2b41b1df48880260e9a3` |
| 29 | `theorem` | [Perm.product_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-product-right.md) | 244 | `result-track:ec6f17d337919504ff7011df43e110464115e41b9c13a187b115dcafd78282c3` |
| 30 | `theorem` | [Perm.product_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-product-left.md) | 249 | `result-track:6544a141aefbd615115201e2f8c068d5ad9c9e13d0750e5156d0690e8a48f960` |
| 31 | `theorem` | [Perm.product](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermBasic.lean/declarations/perm-product.md) | 254 | `result-track:37ac7f6edec65e73c817c2a9b406b5569d265d3164f0f0fb03591a14f7572417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d70803b11c972a70407dbf7885088b39d719b7fc8661d08f5a8f1906bd1f0b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
