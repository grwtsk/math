# Verification target: Lemmas Lemmas Public Split In Two Fst Append Split In Two Snd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99498d23f57044112348aee23f5bd9ae56d17717",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99498d23f57044112348aee23f5bd9ae56d17717`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Range` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Pairwise` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.Perm` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Range` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Prod` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [splitInTwo_fst](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/splitintwo-fst.md) | 44 | `result-track:8c16f7b725e755825a3548fded69014cdd2447579d2fd174d1dac68a4867eda4` |
| 2 | `theorem` | [splitInTwo_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/splitintwo-snd.md) | 48 | `result-track:cf4fae2ecfe246b15e9d9b1eadf28e36fca5996681d147f9495c1d5c9768a895` |
| 3 | `theorem` | [splitInTwo_fst_append_splitInTwo_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/splitintwo-fst-append-splitintwo-snd.md) | 52 | `result-track:6ee8e857cf4dba57750f8804e7f56699f74704c0fdcaf345e11adc83a4dbbd59` |
| 4 | `theorem` | [splitInTwo_cons_cons_zipIdx_fst](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/splitintwo-cons-cons-zipidx-fst.md) | 55 | `result-track:26052950b880893a9e537a82554b2d6d5be3d7034b812b799cf582e762f12b10` |
| 5 | `theorem` | [splitInTwo_cons_cons_zipIdx_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/splitintwo-cons-cons-zipidx-snd.md) | 72 | `result-track:6c53cf470e710298b2853ea564b10ddb027d9513e85954f83c776c281aa02ca7` |
| 6 | `theorem` | [splitInTwo_fst_pairwise](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/splitintwo-fst-pairwise.md) | 87 | `result-track:3cd0bfec5a93cf0aa5630bda63e422767f1a4602953d129fc4a878aa98e5fcdb` |
| 7 | `theorem` | [splitInTwo_snd_pairwise](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/splitintwo-snd-pairwise.md) | 91 | `result-track:f53e10d61b74dddece26b46b8f3b3462d32540cd1f7915d2dcbf31d7c184c8c4` |
| 8 | `theorem` | [splitInTwo_fst_le_splitInTwo_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/splitintwo-fst-le-splitintwo-snd.md) | 95 | `result-track:fbb0079217110a2358d32a2864c89c0f029afffb6baf9d28a3778442cf684d0b` |
| 9 | `theorem` | [zipIdxLE_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/zipidxle-trans.md) | 109 | `result-track:cf35a071bff27c5fc24d43ee9bf84698ab93dc6740c5c87aea5c9e1a4214260b` |
| 10 | `theorem` | [zipIdxLE_total](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/zipidxle-total.md) | 137 | `result-track:9ca152eefa8fc497e0dedd9603b09dccbd597814e3758829004e6e579966895a` |
| 11 | `theorem` | [cons_merge_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/cons-merge-cons.md) | 149 | `result-track:788f841b2722f7153aa6c761720c9de0057c6f16996254b67d48c206eeb61347` |
| 12 | `theorem` | [cons_merge_cons_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/cons-merge-cons-pos.md) | 153 | `result-track:7884718fee9397abbf943d0b1fa63382b9dd4d1a82381d30d4ddfdf98a8538ff` |
| 13 | `theorem` | [cons_merge_cons_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/cons-merge-cons-neg.md) | 157 | `result-track:f818d8ba119cab62a6c7dc4c5a5e6bc1f97cc55b3b7c1d58cc4bc2348a164ac3` |
| 14 | `theorem` | [length_merge](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/length-merge.md) | 161 | `result-track:76bbc90ee77ae88db1b134e8836987903db8a4d1cea491b3ce66f1f79edcc51f` |
| 15 | `theorem` | [mem_merge](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mem-merge.md) | 176 | `result-track:5233abe005d5871fef2bfa82f1d389cf0c37de249fac12122206f878c7eac3c3` |
| 16 | `theorem` | [mem_merge_left](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mem-merge-left.md) | 190 | `result-track:904dead8ef4f088091cd9aaacd1634ed7ebfd37f16e61445152f5fadf6873903` |
| 17 | `theorem` | [mem_merge_right](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mem-merge-right.md) | 193 | `result-track:769d2a4668b2e9517e18caabb29d901bb508400fd4dff61dd34fb25e2a1cc510` |
| 18 | `theorem` | [merge_stable](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/merge-stable.md) | 196 | `result-track:106429e09ac828b3e77982917ec4c5d57234fd52fffbe58adb290f11ddf9df41` |
| 19 | `theorem` | [pairwise_merge](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/pairwise-merge.md) | 218 | `result-track:01ca9973984c53d04017998f89ac91815ace9229f98b2dcd29ce9cc3c053f12c` |
| 20 | `theorem` | [merge_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/merge-of-le.md) | 248 | `result-track:c92b846568474aafeb6dad7eb6da71e9d2aed99cd564fb1c209ced350731881e` |
| 21 | `theorem` | [merge_perm_append](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/merge-perm-append.md) | 260 | `result-track:66a51bbddca8cdac679cef28a4b7258ca8dbdf181f32d3735ff15337c0d89564` |
| 22 | `theorem` | [Perm.merge](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/perm-merge.md) | 270 | `result-track:1872f5f1436cd811014f650e214ba0fcb467330a42ab2f49281fb0186666ea1d` |
| 23 | `theorem` | [mergeSort_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mergesort-nil.md) | 276 | `result-track:1c30059e9e1ffe405e70aafe25f3010209184bb202e15847fa175c9782306ce7` |
| 24 | `theorem` | [mergeSort_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mergesort-singleton.md) | 278 | `result-track:d0dd503967db849daedb83c65acf775b76366641a1f8cbdbe6bf88abda03ef33` |
| 25 | `theorem` | [mergeSort_perm](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mergesort-perm.md) | 280 | `result-track:3563aa30df63948758a0955c818e46439d999ac15896ed4bbad7e9c0f74ea917` |
| 26 | `theorem` | [length_mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/length-mergesort.md) | 292 | `result-track:358f5cc61b9cf9d52f5bbe811a30aed527b05d492c909a05fa779f7567c9fd6d` |
| 27 | `theorem` | [mem_mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mem-mergesort.md) | 295 | `result-track:6e3620fada9385358aa89d83e7a538787766c60389b8a2f5351262fffd1e922b` |
| 28 | `theorem` | [pairwise_mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/pairwise-mergesort.md) | 305 | `result-track:6eb97214a825648aed7fe0558944e6eed8e0fa362c2b537cd758ee836a27f83f` |
| 29 | `theorem` | [mergeSort_of_pairwise](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mergesort-of-pairwise.md) | 321 | `result-track:8fd1d05fb287358ab56c3f3511fb0661b5ea95b508636a3a834ebf1642c75cf3` |
| 30 | `theorem` | [mergeSort_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mergesort-zipidx.md) | 346 | `result-track:7b5223c85c6d5c6de69e88d1f7a0e189adf4e478fec83b6d1e1f2d0c3cf25be0` |
| 31 | `theorem` | [mergeSort_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/mergesort-cons.md) | 369 | `result-track:09a6c4f379c46301a7d9f711f13f4a5c1f453963f4e8ad7c5cb16c49d35d5459` |
| 32 | `theorem` | [sublist_mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/sublist-mergesort.md) | 428 | `result-track:abaa41cef76cfb148a47c65fb2ce297fc2c25c089dfe03773b7e7700432c0796` |
| 33 | `theorem` | [pair_sublist_mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/pair-sublist-mergesort.md) | 457 | `result-track:7d8d4fc00e30de4de58198d97481ad3e94a11bb5ff313ad871ea4872e98073ec` |
| 34 | `theorem` | [map_merge](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/map-merge.md) | 463 | `result-track:4d5186fc2eecc9f7265c507504bb5e23dd6fc10dbbfd7703b8e9a1c8c9be3942` |
| 35 | `theorem` | [map_mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicSplitInTwoFstAppendSplitInTwoSnd.lean/declarations/map-mergesort.md) | 482 | `result-track:dcc4bebafbb7d3b5a5e1b31ca43b43f4e80d3fbfc82ca5758fe42509a6dc6111` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c3eae8ebaf554865ab59f242abc43f2cce3b30dcd4a21f81e5979791e09823d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
