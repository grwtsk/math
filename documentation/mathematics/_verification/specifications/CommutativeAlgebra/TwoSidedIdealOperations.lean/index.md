# Verification target: Two Sided Ideal Operations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84e569437c694cdd6fca619c4cf9ed1739f8c9b7",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84e569437c694cdd6fca619c4cf9ed1739f8c9b7`.

Source path: `GRWTSK/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Map` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Opposite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [span](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/span.md) | 53 | `declaration-track:23809a83c28ea652438cbfb9cf2dc4fa4f986c4727f894900f4d1d9b37ab35bf` |
| 2 | `lemma` | [subset_span](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/subset-span.md) | 56 | `result-track:19d0af6b833bed4d924f4a7505aca05d7cddc4953bb0cfbd02317193e0064581` |
| 3 | `lemma` | [mem_span_iff](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/mem-span-iff.md) | 61 | `result-track:c3e3b13c0a5f18795634260ac6744c0fabd4082f82914fcdf0aff8cbb227ccde` |
| 4 | `lemma` | [span_mono](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/span-mono.md) | 72 | `result-track:4cff24dc5e43927723fa261396a0055795035b66eeaa634eada77068bff15163` |
| 5 | `lemma` | [span_le](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/span-le.md) | 77 | `result-track:8ca47cc08bca443a8ed6ddff81858698d86a32fb884b20de77d22c0da487c125` |
| 6 | `theorem` | [span_induction](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/span-induction.md) | 87 | `result-track:a4e817567f9715c6c5d31a284b2a67d768cdadf9187ab909c7bd202e019b7c4d` |
| 7 | `def` | [map](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/map.md) | 111 | `declaration-track:068c13a1d7b684bd3e2ba5d5895735ad4981cb5cdc6b9bbc5e2fbe70bc663f9c` |
| 8 | `lemma` | [map_mono](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/map-mono.md) | 114 | `result-track:78781ed3eebcd72cc813cbcd38a139e81f589dcede40f33ff03340a66c6a3264` |
| 9 | `def` | [comap](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/comap.md) | 122 | `declaration-track:0bb77e99944ac8fff9a2861a73e42269c2cb2750a6cfd398df3cacacdc7a13ed` |
| 10 | `lemma` | [comap_le_comap](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/comap-le-comap.md) | 131 | `result-track:918e4637f3d844bea3dd2205d8444798c2ff51ad3151d4ab9f69e27958cead40` |
| 11 | `lemma` | [mem_comap](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/mem-comap.md) | 135 | `result-track:63ae94c332ec1be81d944bfa1a247bc2eee5f58cec59f45afad8d18a32342b78` |
| 12 | `def` | [_root_.RingEquiv.mapTwoSidedIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/root-ringequiv-maptwosidedideal.md) | 143 | `declaration-track:2ae1ccc14af01ab36daac7ca43ac80ac0620e62d0d7f2e9942dde6342b5898b7` |
| 13 | `lemma` | [_root_.RingEquiv.mapTwoSidedIdeal_apply](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/root-ringequiv-maptwosidedideal-apply.md) | 147 | `result-track:686dd1d23891ac0020180262913d57adacb0cefe63d9d6bd93622ec21df7c854` |
| 14 | `lemma` | [_root_.RingEquiv.mapTwoSidedIdeal_symm](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/root-ringequiv-maptwosidedideal-symm.md) | 150 | `result-track:a1c410bdb773c69574ec0283555ae7f9efc758e584b2c072375d6f0fee2ca7f0` |
| 15 | `lemma` | [comap_comap](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/comap-comap.md) | 160 | `result-track:61bedc38296614985558c8b3803008cec5c2e74ff78e31e0c5d2844cb1643f82` |
| 16 | `lemma` | [mem_span_iff_mem_addSubgroup_closure_absorbing](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/mem-span-iff-mem-addsubgroup-closure-absorbing.md) | 173 | `result-track:c778d2dcaac6e6d558c5e3a63e31006604f7b78b5a66494dfc7390cb38ea92fd` |
| 17 | `lemma` | [set_mul_subset](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/set-mul-subset.md) | 205 | `result-track:d3f6c2e8c771f68d94319ae63e7e01dcd1e8379401004eb6a760c782c8c1d408` |
| 18 | `lemma` | [subset_mul_set](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/subset-mul-set.md) | 210 | `result-track:69dfe5bab93526f6ffffc9e5933ddc98f1f45dd8532500cda384b36beebf0fe6` |
| 19 | `lemma` | [mem_span_iff_mem_addSubgroup_closure_nonunital](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/mem-span-iff-mem-addsubgroup-closure-nonunital.md) | 215 | `result-track:ba5a36b293e3414d6f8b4993ba87cab3e5c1cdc3cedb235090b8ab66766170ca` |
| 20 | `lemma` | [mem_span_iff_mem_addSubgroup_closure](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/mem-span-iff-mem-addsubgroup-closure.md) | 246 | `result-track:6ed97811c357b32c52ad24e61267db6e6c19ce6d83e1fc81cff171600c705e7e` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/instance-source-edition-3.md) | 262 | `declaration-track:5c6622e8d9e64bf22134fdc69817c9c1ed26c3cc300e620c3689dc4d49e15d4d` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/instance-source-edition-2.md) | 264 | `declaration-track:1974aa3e69b1495d426ebf38283206aa24ee2a89d3801627935df4c8a8f37973` |
| 23 | `instance` | [leftModule](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/leftmodule.md) | 266 | `declaration-track:20e7b8dac9f478721f4e8f3f83a8227824deb594b6f6df4521f26be55919f0bc` |
| 24 | `lemma` | [coe_smul](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/coe-smul.md) | 270 | `result-track:ba0a52393cd4f93d01f661152b62dfbb71b944662efae3e4f2f6ce4061803173` |
| 25 | `instance` | [rightModule](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/rightmodule.md) | 272 | `declaration-track:932f3506d34d90231b54d4616a8ccf475c896b6be66c37928d7c4465c6773c97` |
| 26 | `lemma` | [coe_mop_smul](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/coe-mop-smul.md) | 276 | `result-track:badd347348cc690d8c28b918dd8ec0b802ad17f0b12869b4353bb7217c5d2547` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/instance-source-edition-4.md) | 278 | `declaration-track:b90845ff035b7e5df9255eb4cc96e3891a08279a2b344543ad4d634418b918ae` |
| 28 | `def` | [subtype](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/subtype.md) | 286 | `declaration-track:31e2901107b3f011b25538991718a3e5505533eae709ca1eafd953962e4fb699` |
| 29 | `theorem` | [subtype_injective](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/subtype-injective.md) | 291 | `result-track:41a8d5b0af04de08a62f14ab3762dd118439ed47c721428c286bddadb0340838` |
| 30 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/coe-subtype.md) | 295 | `result-track:eb7ab10ccad5416c5796a92afba3fccce66651eb2699f05b377bba5245627924` |
| 31 | `def` | [subtypeMop](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/subtypemop.md) | 303 | `declaration-track:8a62000f413b2375d483d3aab4c9d438e5eccba8574948992505f2a6215cb6ec` |
| 32 | `theorem` | [subtypeMop_injective](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/subtypemop-injective.md) | 308 | `result-track:8411686e42490ebfd280104accfbe39cd3f423c9f592d402db06e7b66e5ca985` |
| 33 | `def` | [fromIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/fromideal.md) | 312 | `declaration-track:447d9fd16ad10154996836317fd7c89f00db895ad65838ffd25ce0a98e7708fb` |
| 34 | `lemma` | [mem_fromIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/mem-fromideal.md) | 316 | `result-track:92f52792fe27110455318889dda386f038d200d41499940812ee7351ada3a331` |
| 35 | `def` | [asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/asideal.md) | 320 | `declaration-track:e28c9dcf7724758fcfa472e6f0879499c9281a5d0b3a756a050994ac51a8f7a5` |
| 36 | `lemma` | [mem_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/mem-asideal.md) | 329 | `result-track:5e0531a677d0afd9d517c0528e30b1a82b3d53c7b6aee96f292b39948b629477` |
| 37 | `lemma` | [gc](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/gc.md) | 332 | `result-track:163e3065cba035a4d47b704052e8307c881ecea390ca97e96c9ec3adb9a5a5f3` |
| 38 | `lemma` | [coe_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/coe-asideal.md) | 338 | `result-track:35104a8a0769efd269ba55bfade674e0ad5433be2945817937f5df1c754d96e7` |
| 39 | `lemma` | [bot_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/bot-asideal.md) | 340 | `result-track:257fb6542934370c570f17221dec7cde90e282c2b5713c7ef166fda30765e63b` |
| 40 | `lemma` | [top_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/top-asideal.md) | 342 | `result-track:9029ccff16c8e5e7e7f4021a1a86fdfbb3b9bdae38587e97455e7f3dfb00c028` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/instance.md) | 344 | `declaration-track:12002b584ec38bae7cc46c37a7e5a5035f5ea5cd517a64d566f090f6ccca7c53` |
| 42 | `def` | [asIdealOpposite](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/asidealopposite.md) | 348 | `declaration-track:5f83572e54292699cc0c72bd4cf9fb1f86513bc1233feb4d8fcc37134714e14e` |
| 43 | `lemma` | [mem_asIdealOpposite](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/mem-asidealopposite.md) | 354 | `result-track:87f82808f9e36721c9949154abbd6a6d22aae4f2b872b1e6bc4b6f6697650306` |
| 44 | `def` | [orderIsoIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/orderisoideal.md) | 368 | `declaration-track:9e3b42f33fbdd1cb9ff0cad188277aa0c17b31beac523a24bd63c1ab8c92dad8` |
| 45 | `def` | [toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/totwosided.md) | 386 | `declaration-track:ea62e464d9b0b38612d5b1d995bdf65cf7b977a1839eae8437db3e005123d84c` |
| 46 | `lemma` | [mem_toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/mem-totwosided.md) | 390 | `result-track:6f49060cada79e4e89496dcf3803d1c353e32f5fe866fec6d727904b8ab408fb` |
| 47 | `lemma` | [coe_toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/coe-totwosided.md) | 395 | `result-track:f26d4479d2b586f6fbe9d47e9520b398f53643880ebe1785d57c31640ea038da` |
| 48 | `lemma` | [toTwoSided_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/totwosided-asideal.md) | 399 | `result-track:ca7ba2b878074f61317987a61253200e9f11e85902e21b5faa3c80254f5e05db` |
| 49 | `lemma` | [asIdeal_toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/asideal-totwosided.md) | 403 | `result-track:e45543c8a639cd1cfe3e98edf786e999cae986ee032b67f334ae5264e2f47664` |
| 50 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/instance-source-edition-5.md) | 407 | `declaration-track:b9bdc9ed7333e08b87f2ab14a16edfd5f110bb92023503a6489222851ec942ec` |
| 51 | `def` | [TwoSidedIdeal.orderIsoIsTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperations.lean/declarations/twosidedideal-orderisoistwosided.md) | 413 | `declaration-track:5e9ee279cb9edf417eb9ce9d6795fd9a8805bab51472bad91053ec6509813d85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e88e9045dc718106023a87bb096e60e52eaddfbf6f9b497557da9b1b0611dbd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean","GRWTSK/_verification/specifications/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
