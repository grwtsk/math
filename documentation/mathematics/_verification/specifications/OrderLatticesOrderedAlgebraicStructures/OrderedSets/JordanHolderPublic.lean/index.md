# Verification target: Jordan Holder Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2381085bd7c554e1c5dca38cf1aaf2e573bf8eb0",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2381085bd7c554e1c5dca38cf1aaf2e573bf8eb0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [JordanHolderLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/jordanholderlattice.md) | 73 | `declaration-track:078cd58fb7cd43e834ddb886841adec31070305af6cceeabb514907c62ffc385` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/instance.md) | 83 | `declaration-track:af31d13656d199461c3cbb2209d9638f2b50d834a1e8ffcb63f09adc06fa4934` |
| 3 | `def` | [Iso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/iso.md) | 95 | `declaration-track:cdc18dad119a0041543a9a88f26348d2d74c43030e3f39692d819d36405d573e` |
| 4 | `theorem` | [iso_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/iso-refl.md) | 98 | `result-track:2334a8a07ffc68667b28e3f9c4f7506aad33a20c2d5764424f16f88d2353c114` |
| 5 | `theorem` | [iso_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/iso-symm.md) | 101 | `result-track:530e609e9f757135c1a3da5809ff9012a7e1d6fb9f1a892cf11f2be84b5fc442` |
| 6 | `theorem` | [iso_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/iso-trans.md) | 104 | `result-track:98ace16a9a2367efed4a0aef8041cae414df46ec8807fa007ea64579de63b539` |
| 7 | `theorem` | [second_iso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/second-iso.md) | 107 | `result-track:8736dd3c4c6070adf9e65c7a86baed71f2898f5e12676b47feb5ca713dd6ee98` |
| 8 | `theorem` | [Iso.rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/iso-rel.md) | 111 | `result-track:b55649b3a3890db6efbb201657cca79caf4966610de0648067ff2972da9c06de` |
| 9 | `theorem` | [isMaximal_inf_right_of_isMaximal_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/ismaximal-inf-right-of-ismaximal-sup.md) | 123 | `result-track:92d0c6a7f893ee285d262ba1de40f51da4e75e88ce75c4253afc68cc51420228` |
| 10 | `theorem` | [isMaximal_of_eq_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/ismaximal-of-eq-inf.md) | 129 | `result-track:ef5e6afa641bfc37955562c02e437967b3c77c9715a4a038bc8716d105c93c1a` |
| 11 | `theorem` | [second_iso_of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/second-iso-of-eq.md) | 135 | `result-track:26ac9a051311a8d6f3018148d94467ae307860dbf6a133372bae503113890f33` |
| 12 | `abbrev` | [CompositionSeries](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/compositionseries.md) | 155 | `declaration-track:edaee3939bb0a5cb8aea682d3abe87f9183cbda878ce520e948a6e5ce9495653` |
| 13 | `theorem` | [lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/lt-succ.md) | 162 | `result-track:a21fd79f3469a044af5b0670c69adc0392df85d2d26532791c846f2ccadd19bc` |
| 14 | `theorem` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/strictmono.md) | 166 | `result-track:cda97d06192f1f5aab3afd3af314357684334494562e364aa273ebe17e8e5109` |
| 15 | `theorem` | [injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/injective.md) | 169 | `result-track:86d938d8b3caf987015e835a1463cc1c22ef10df0eafbfff74f999aac51c6392` |
| 16 | `theorem` | [inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/inj.md) | 173 | `result-track:4d781aa39778bcc8213a60d4545b22a09231facdaf18646161ca3635330f9197` |
| 17 | `theorem` | [total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/total.md) | 176 | `result-track:bf86e1c287a17f26774230b275ebc722df282849ec5c3718bef0a3260277e44d` |
| 18 | `theorem` | [toList_sorted](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/tolist-sorted.md) | 182 | `result-track:a32987389ea70d750815f094d7f285e73c68c349632292961bd8723ce55ced19` |
| 19 | `theorem` | [toList_nodup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/tolist-nodup.md) | 187 | `result-track:e9fd779d218b734e20029433d814643a8ba237f407fe2cfc02ec6a5a66b4cd12` |
| 20 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/ext.md) | 192 | `result-track:f671035af50524abe43558a86d5812b53f59cef164f813226f89e8df04c7be4c` |
| 21 | `theorem` | [le_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/le-last.md) | 200 | `result-track:8695fc516bcc0fb786ec7fa1364eeaf61c05be7fa03485f57c50969c38aa6e29` |
| 22 | `theorem` | [le_last_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/le-last-of-mem.md) | 203 | `result-track:65e87594d087d397dd7c6aa253094470cb0bee7de1a2739530bb505410e80a00` |
| 23 | `theorem` | [head_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/head-le.md) | 208 | `result-track:61ceae57167e0c6b686c0c8d54561e040d3cbd6fca0f5e6adc03cdb909ed322a` |
| 24 | `theorem` | [head_le_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/head-le-of-mem.md) | 211 | `result-track:e230ec7e43d3f546610bdd1d2bdec2f23599b10efa2bd58cf270287f6cae2ae9` |
| 25 | `theorem` | [last_eraseLast_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/last-eraselast-le.md) | 215 | `result-track:bd23278c751d32563edbe9077ff117cd43ca59a53b8c32258017ea1134009801` |
| 26 | `theorem` | [mem_eraseLast_of_ne_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/mem-eraselast-of-ne-of-mem.md) | 219 | `result-track:d950b967b54d8fe5a32415a797e0ab67c57892fb77d10b613735473ed229f0ee` |
| 27 | `theorem` | [mem_eraseLast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/mem-eraselast.md) | 228 | `result-track:eee9a7114f7559f7976d9fc68888e51cfff8887c806b72f518464fe03eea94a5` |
| 28 | `theorem` | [lt_last_of_mem_eraseLast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/lt-last-of-mem-eraselast.md) | 238 | `result-track:73f2fe37c130e3706cbb2610dfa0992a91b846b5a8b3f5c8e96e077d38270d69` |
| 29 | `theorem` | [isMaximal_eraseLast_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/ismaximal-eraselast-last.md) | 242 | `result-track:0659943e3682c341f8597ceada044c243064ac280b69ef707d0151e609f0ad69` |
| 30 | `theorem` | [eq_snoc_eraseLast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/eq-snoc-eraselast.md) | 250 | `result-track:004a432b1091f94afd32678828dd3d03b59625a221aa90884f0d4050d1ef4feb` |
| 31 | `theorem` | [snoc_eraseLast_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/snoc-eraselast-last.md) | 258 | `result-track:35817331af48fdff0c88cf5efc108beff6553ee2b79d930055c9f588d534a843` |
| 32 | `def` | [Equivalent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/equivalent.md) | 267 | `declaration-track:31718fc6a28e636112346203cc7a6ef3b62fc987983b446fe9223abf9a113c60` |
| 33 | `theorem` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/refl.md) | 275 | `result-track:c6b04f053d6d37652af5ac19f58d3f655cd5f87d60629dce847ac169f7df0583` |
| 34 | `theorem` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/symm.md) | 279 | `result-track:50f647e02ca7e05aca7f840b2c1174f4f6e6b8a82ca781a5f210b26c446a5308` |
| 35 | `theorem` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/trans.md) | 283 | `result-track:f0204ccc3e7f544433b0f8cd417d1402cde46edbf4bb28598323699ace72ef64` |
| 36 | `theorem` | [smash](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/smash.md) | 290 | `result-track:10c4f166136f87d4586b66c588aff4e4cdf924318014e718e32bb2e07c91aa21` |
| 37 | `theorem` | [snoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/snoc.md) | 323 | `result-track:a7918627b48e72f2c9d967dba4d4bba273bfaa79c4336e03c241b0d1cb49de9e` |
| 38 | `theorem` | [length_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/length-eq.md) | 353 | `result-track:85935c660b7fbb9fa00ea539e86e9f041d179adc044f42a47d244714ffd670e8` |
| 39 | `theorem` | [snoc_snoc_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/snoc-snoc-swap.md) | 356 | `result-track:b1352c87d58d5f12a5362c98a19fb5299ca75c2d2b4494db39118f9b4f012d2d` |
| 40 | `theorem` | [length_eq_zero_of_head_eq_head_of_last_eq_last_of_length_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/length-eq-zero-of-head-eq-head-of-last-eq-last-of-length-eq-zero.md) | 387 | `result-track:c75099c8994e8781cbcee18e0c0b7b5566318f8db7712038643e83c5e14b0106` |
| 41 | `theorem` | [length_pos_of_head_eq_head_of_last_eq_last_of_length_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/length-pos-of-head-eq-head-of-last-eq-last-of-length-pos.md) | 394 | `result-track:12fc1ccc8abfbf285f8b9f64b5296a860e5d238a389955070c039b0631789744` |
| 42 | `theorem` | [eq_of_head_eq_head_of_last_eq_last_of_length_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/eq-of-head-eq-head-of-last-eq-last-of-length-eq-zero.md) | 401 | `result-track:d53fa9b6fd3838d6c338a1bc82cb48f66484b4277f67d362b1308f13dd97d24b` |
| 43 | `theorem` | [exists_last_eq_snoc_equivalent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/exists-last-eq-snoc-equivalent.md) | 418 | `result-track:5d00348821da2d1a8c6721539d073e14505f2c46c48f97c8899835319ea8f360` |
| 44 | `theorem` | [jordan_holder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/JordanHolderPublic.lean/declarations/jordan-holder.md) | 456 | `result-track:b66a1ee90ba227fd96a1979ddbf23a6ca2324feb16abe3d91a4c68ef34137db8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b87820122dc9b6e267dc0c29ceff5a381856d3afdc59806e4060792f23da3aa6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
