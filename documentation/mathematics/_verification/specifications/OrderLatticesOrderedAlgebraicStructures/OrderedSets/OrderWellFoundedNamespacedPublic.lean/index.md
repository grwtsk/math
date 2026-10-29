# Verification target: Order Well Founded Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75dc017ce07f102972609ba2020e0ea08c05f991",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Varianted0296981d8e33c3b4a88679cfab320fef289d07c3f8d33cdf667535f7ee29d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75dc017ce07f102972609ba2020e0ea08c05f991`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Varianted0296981d8e33c3b4a88679cfab320fef289d07c3f8d33cdf667535f7ee29d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Varianted0296981d8e33c3b4a88679cfab320fef289d07c3f8d33cdf667535f7ee29d9.lean.json)

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
| 1 | `theorem` | [acc_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/acc-def.md) | 33 | `result-track:c41e74bfe7fbe5200f83f3306fa89ac081988589551fe6caf37a18f3c002d7b3` |
| 2 | `theorem` | [exists_not_acc_lt_of_not_acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/exists-not-acc-lt-of-not-acc.md) | 37 | `result-track:e45745bb3a1bea8b16e1d6a7116a3dbddd90470539b49d1fc310e609c478d327` |
| 3 | `theorem` | [not_acc_iff_exists_descending_chain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/not-acc-iff-exists-descending-chain.md) | 42 | `result-track:c181144ce3a11d75ec9fc6e10fcf5785a3611c25fac734975f9a2dc9e98cec6c` |
| 4 | `theorem` | [acc_iff_isEmpty_descending_chain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/acc-iff-isempty-descending-chain.md) | 50 | `result-track:f886b97ab7befe52bcf90ac41e297daab87304ef48f44dc437867089cd9a45e1` |
| 5 | `theorem` | [wellFounded_iff_isEmpty_descending_chain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/wellfounded-iff-isempty-descending-chain.md) | 59 | `result-track:df980865aeef22443947bd35389485020df1f74737aab36d581130ddbe613391` |
| 6 | `theorem` | [asymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/asymm.md) | 70 | `result-track:a989859840725f12ee5dbb026f00317f9db9fecc95d0dd1d365753d15811dee7` |
| 7 | `theorem` | [irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/irrefl.md) | 72 | `result-track:3afc4d888608c9419ad3263396dcc3b420f9e5821356de4b70139817aaad7843` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:72b0f4448a998a23ccfedb5d9ebbd8354cb29c2150cb0d782b01e97e3657e8ed` |
| 9 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/mono.md) | 77 | `result-track:52a48efc518d87e3d57fa85b079402ad4fa2ea4a0ffefb7d6ac0a8430424e073` |
| 10 | `theorem` | [onFun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/onfun.md) | 81 | `result-track:90f377018e5c5980d86938c4c0b866d97c7bd8b52b8b8fa43d119ea70d343d1d` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 85 | `declaration-track:9de1454f13fce600b43789dcb08963fad38ce2529c1f65b285f492cfb1f3fd44` |
| 12 | `theorem` | [Order Well Founded Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-ac-source-edition-2.md) | 88 | `result-track:5d0b12f7e3cb7979267faa4b0956dafe98c8eeae7a7adfd47ef6aee0ad337e8c` |
| 13 | `theorem` | [has_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/has-min.md) | 94 | `result-track:0e18acec224bf7289b727d113ebac60bcb6beee1671787a282320281bb584922` |
| 14 | `theorem` | [not_rightTotal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/not-righttotal.md) | 101 | `result-track:a3cdac899e8fc743d32c44cac123418a6e315ce3314f06c60e81df7c55c07368` |
| 15 | `theorem` | [not_leftTotal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/not-lefttotal.md) | 108 | `result-track:1ea673473d4e29db812ad41b7a5ea442f5093ae89bf6b07a752f50a57c71d4da` |
| 16 | `def` | [min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/min.md) | 121 | `declaration-track:214ce9d03a16e3327230cf6f5ba37d519c72d5b1437303fb29744df7bfa50ca1` |
| 17 | `abbrev` | [Order Well Founded Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-ac.md) | 126 | `declaration-track:23ef0c18bc3a88af620b4018720e76d984a9cb92218f10bf7ddca63fcb462803` |
| 18 | `theorem` | [min_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/min-mem.md) | 130 | `result-track:0fb30867923231768384f8d4991d006f51e1ecc9ea64b3e28a3351c07f86f8c4` |
| 19 | `theorem` | [prop_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/prop-min.md) | 135 | `result-track:5461fad80edabebdd9b36332cebf683f31d36b89102084af2c711397cd2945f2` |
| 20 | `theorem` | [not_lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/not-lt-min.md) | 139 | `result-track:5540d00490d2565cae1270698befd3983f80a097a13c6ebb246153068f9d69b5` |
| 21 | `theorem` | [min_eq_of_forall_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/min-eq-of-forall-not-lt.md) | 145 | `result-track:104b63b37c0006201aebf0c600555e14eb41cfe808557d16b299099277de043d` |
| 22 | `theorem` | [notMem_of_lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/notmem-of-lt-min.md) | 149 | `result-track:71db77b4279f9703e6dd9e456740214e9730ae33799f947fdc7a9b140779c146` |
| 23 | `theorem` | [mem_of_lt_min_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/mem-of-lt-min-compl.md) | 153 | `result-track:e55d3478828c73a49401374a7e18378ecf5673c43237e4e19c8131631bbb1fab` |
| 24 | `theorem` | [wellFounded_iff_has_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/wellfounded-iff-has-min.md) | 157 | `result-track:42d8077ad30fe710edf05d0dd42524ba3010253a11568b6bb5d1823dc019cfcc` |
| 25 | `theorem` | [wellFoundedLT_iff_exists_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/wellfoundedlt-iff-exists-minimal.md) | 167 | `result-track:787fdc8abc349d2b30c2842ea34e8bf1904dbb30ad7e81e5eb073ba0529ed79d` |
| 26 | `theorem` | [minimal_wellFounded_lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/minimal-wellfounded-lt-min.md) | 175 | `result-track:5ff88cb0084bde3a4c8ec597136961ebf782432462e51baeb4431291e42a3664` |
| 27 | `theorem` | [isWellOrder_iff_exists_not_lt_and_eq_or_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/iswellorder-iff-exists-not-lt-and-eq-or-gt.md) | 179 | `result-track:9b19a8feeee6a9d265881af37561234a38d2744432b168d66ba99f4eb316de56` |
| 28 | `theorem` | [min_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/min-image.md) | 187 | `result-track:912468e5711bd7d098c66732b9148c2592842283b1119eb1451af26da8f01773` |
| 29 | `theorem` | [not_rel_apply_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/not-rel-apply-succ.md) | 194 | `result-track:27f96baef0f0cfea25ef156a2a92cacdfadc30546f1017aed2fb0cda81816131` |
| 30 | `def` | [sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/sup.md) | 201 | `declaration-track:ab79e22fb373cd8b6e9cd9607b7fb79b9eea9da2b4a04ef5683fa0223b899f12` |
| 31 | `theorem` | [lt_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/lt-sup.md) | 205 | `result-track:8c4e7f91181e22b7354d5a440fbdc769cd1d6ad06c5dc1c3aa69722124c1ba73` |
| 32 | `theorem` | [WellFoundedLT.min_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/wellfoundedlt-min-le.md) | 216 | `result-track:ceeeee0c999eda72dafd45d229a84b7ef9423ae346b7e54cd0dd0d61082e8caa` |
| 33 | `theorem` | [WellFounded.min_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/wellfounded-min-le.md) | 221 | `result-track:bbb7c8ec41e302e6a41347222372dd4613f9b5c0ee8848d2602fae2aa2fef1a1` |
| 34 | `theorem` | [Set.range_injOn_strictMono_of_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/set-range-injon-strictmono-of-wellfoundedlt.md) | 226 | `result-track:cc548a80f7c4ce5bea6f3a05b0b15a0697ab3df192998006eae33336d5c1e1b1` |
| 35 | `theorem` | [Set.range_injOn_strictAnti_of_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/set-range-injon-strictanti-of-wellfoundedgt.md) | 247 | `result-track:13800645ac30bbf6807d878ab94b19e128884dd5afec5f0b9d4f3ff811e0be3b` |
| 36 | `theorem` | [StrictMono.range_inj_of_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/strictmono-range-inj-of-wellfoundedlt.md) | 255 | `result-track:1701f8a53c6395066967d7d7a2c49c62cd4d2b04473848778cc37ba8dde0b83b` |
| 37 | `theorem` | [StrictAnti.range_inj_of_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/strictanti-range-inj-of-wellfoundedgt.md) | 263 | `result-track:305963412b0098055eaed1479b73e9a6c93bff8b0d285b162e06943a46b42910` |
| 38 | `theorem` | [StrictMono.id_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/strictmono-id-le.md) | 273 | `result-track:9c0e73df26a3a13f4f0fea45ea0fc2219da52e480d4964dc43a9f356de8cb2e0` |
| 39 | `theorem` | [StrictMono.le_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/strictmono-le-apply.md) | 280 | `result-track:564453562b6e96c0b85572c40c7c496f5f859be04bf8cd206a7440014bd5f929` |
| 40 | `theorem` | [StrictMono.not_bddAbove_range_of_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/strictmono-not-bddabove-range-of-wellfoundedlt.md) | 284 | `result-track:bfa059bf0114328a9fe97adc99f204384bf36ee98c997ed8146f53464d81c717` |
| 41 | `def` | [argmin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/argmin.md) | 309 | `declaration-track:77c6c2a5d6c24a101613e625c61227329803a19f736fff87c14bcde660226eb5` |
| 42 | `theorem` | [not_lt_argmin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/not-lt-argmin.md) | 313 | `result-track:9181abd2a75aa9ca35799ba931d62ddb55c1947297bbbdf23627b3da29a72493` |
| 43 | `def` | [argminOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/argminon.md) | 330 | `declaration-track:e0f90860d66ef31dd08a55d214d043c5acb0049bb7a1c628b68bb543651ab60a` |
| 44 | `theorem` | [argminOn_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/argminon-mem.md) | 334 | `result-track:e59d090d283bcd16472828c2153e7a657ca49b13a6c663222285958da5d19a23` |
| 45 | `theorem` | [not_lt_argminOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/not-lt-argminon.md) | 338 | `result-track:4d97607b8c05a2f3ad8cf568f440809db3d1781448566b58c258a4722eb57069` |
| 46 | `theorem` | [argmin_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/argmin-le.md) | 348 | `result-track:59d13d9f89902e001e3519fced337a0d6b1125983bb2d0d899e2a60f161019a2` |
| 47 | `theorem` | [minimalFor_argmin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/minimalfor-argmin.md) | 352 | `result-track:d1c114aaa0a487cd350587b121d2271d3d2e8159199bf2170753b1c4534424d3` |
| 48 | `theorem` | [argminOn_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/argminon-le.md) | 358 | `result-track:bebb6e7b9f9fda4a6f8a07784f2edaddcf6d29ed20a5c213aa99d1fef8dab8a0` |
| 49 | `theorem` | [minimalFor_argminOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/minimalfor-argminon.md) | 362 | `result-track:4f51ffbd96d77c1212d5c7dc6972cd07884f61bef835ffc28109f085b28dd9c0` |
| 50 | `theorem` | [Acc.induction_bot'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/acc-induction-bot.md) | 379 | `result-track:259891b739870acd78ad97eb7a0be752f1b083bb529f25d1926a56cb55c9051c` |
| 51 | `theorem` | [Acc.induction_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/acc-induction-bot-source-edition-2.md) | 390 | `result-track:ccb53702773129b82edcf55fa0104f6feff1130671d2d58cf1b92caf1968b90d` |
| 52 | `theorem` | [WellFounded.induction_bot'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/wellfounded-induction-bot.md) | 400 | `result-track:6ee3ab6878e773b9d41865a206957cbeb4c502b0ef93909c36311cabcf95a699` |
| 53 | `theorem` | [WellFounded.induction_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/wellfounded-induction-bot-source-edition-2.md) | 412 | `result-track:d34ddb34902fe8e64b51d39435e73beacf8000b7dfc1cae1945622eb16a077c4` |
| 54 | `def` | [WellFoundedLT.toOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/wellfoundedlt-toorderbot.md) | 421 | `declaration-track:cb2ca1f241d8f1af0688b8c8bf7bbc91d9024f6059444a03850138e2caf2cb14` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderWellFoundedNamespacedPublic.lean/declarations/instance.md) | 427 | `declaration-track:54a3f8788956102865302a52cf4dc779ddd3036f7261b820d53c66cf185ae98a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c89daf9d16c08c5964fa2f86254e0c2810b7313cb26a2ccfc539901ba68c109 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Varianted0296981d8e33c3b4a88679cfab320fef289d07c3f8d33cdf667535f7ee29d9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Varianted0296981d8e33c3b4a88679cfab320fef289d07c3f8d33cdf667535f7ee29d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
