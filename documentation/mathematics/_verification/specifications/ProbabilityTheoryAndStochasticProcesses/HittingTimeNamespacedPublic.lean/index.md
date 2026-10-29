# Verification target: Hitting Time Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8334b2527a87d557eafd9a09959ca771a65c2952",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variantfecd0400fd1c63a4a91a10ef02c407660d0a085e9567d466ecaa2e8ddb86ef06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8334b2527a87d557eafd9a09959ca771a65c2952`.

Source path: `GRWTSK/Analysis/MeasureTheory/HittingTime/Variantfecd0400fd1c63a4a91a10ef02c407660d0a085e9567d466ecaa2e8ddb86ef06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HittingTime/Variantfecd0400fd1c63a4a91a10ef02c407660d0a085e9567d466ecaa2e8ddb86ef06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hittingBtwn](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn.md) | 64 | `declaration-track:ab03c479d7278c102d20e2a66d3eec832558b2d8427bdcdce57fba29c527c552` |
| 2 | `def` | [hittingAfter](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter.md) | 73 | `declaration-track:cf8c725d0fb61cc18b4ce08bb495c7f45c0ec0172d7d0b313fe862e8480a0598` |
| 3 | `theorem` | [hittingBtwn_def](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-def.md) | 78 | `result-track:ae7baa4d3bc9c6089216c1225ee60503f6cc4c508b28e76c0dbe83a7bc1ead47` |
| 4 | `lemma` | [hittingAfter_def](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-def.md) | 84 | `result-track:c462054f3a0f41ba730edf6fc1e5baab90e2153b05b0a3957b84aa821f2a5e13` |
| 5 | `lemma` | [hittingBtwn_empty](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-empty.md) | 90 | `result-track:8521c6647533c943369188fc7f75039c8f7ed5a9652d90bf01724b90d2ca548b` |
| 6 | `lemma` | [hittingAfter_empty](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-empty.md) | 93 | `result-track:eace77a9960a72843b0ce7e501ee5541026f9825e2fa132b28d6e2f69dc827b4` |
| 7 | `lemma` | [hittingBtwn_univ](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-univ.md) | 96 | `result-track:722fd6637ae3bc3aa960f74cc7ad48007d199cb22bbd491c8223b9e8cb1b76bb` |
| 8 | `lemma` | [hittingAfter_univ](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-univ.md) | 103 | `result-track:d547fe19429edb3c96cdc5205eddb59d3fce4e22a52bd2930f59012e0978b6a6` |
| 9 | `theorem` | [hittingBtwn_of_lt](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-of-lt.md) | 118 | `result-track:15bc7fcf3d0c57e3a4e14cfa1aa69f54d3c73dde259fbd5def125ecbe1b18ccd` |
| 10 | `theorem` | [hittingBtwn_le](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-le.md) | 121 | `result-track:7a6ff058a567aa0836fb7d9a15046cd8534b8cafbcc2877fa92d778b0b11caa5` |
| 11 | `theorem` | [notMem_of_lt_hittingBtwn](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/notmem-of-lt-hittingbtwn.md) | 129 | `result-track:e96899d48085d38d6105a765af22c7dbb770d7ab6e75bc6ad54dc4ff735524b3` |
| 12 | `theorem` | [notMem_of_lt_hittingAfter](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/notmem-of-lt-hittingafter.md) | 137 | `result-track:20743df9fa843a1678944012767e8d9a4b337e1ffbe1abae680bddb380d72672` |
| 13 | `theorem` | [hittingBtwn_eq_end_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-eq-end-iff.md) | 143 | `result-track:73bdaf63ae4069e769db39325a8ffc13729f4fe37b5a1c8c23eded4b0de4abc7` |
| 14 | `lemma` | [hittingAfter_eq_top_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-eq-top-iff.md) | 148 | `result-track:28accc1f7cb269139560b38c9dbc880967612903bd415448107a0a49da035b77` |
| 15 | `theorem` | [hittingBtwn_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-of-le.md) | 151 | `result-track:52e3ba897a77d379988735a4e8c180ce3e6ba4d55b299445cec148dad42f554b` |
| 16 | `theorem` | [le_hittingBtwn](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/le-hittingbtwn.md) | 161 | `result-track:e806307fc84464e718eb6e03d21d33279682d067e5b27263e17753f7c30b0977` |
| 17 | `lemma` | [le_hittingAfter](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/le-hittingafter.md) | 171 | `result-track:92183ea00b31b6ff1561b4a8e88fd0f8b9a8025417a7b24ba7f21876e661b17b` |
| 18 | `theorem` | [le_hittingBtwn_of_exists](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/le-hittingbtwn-of-exists.md) | 177 | `result-track:085ee5b6404a49977d5c2e250c8e62405ca8787254539a8aa694c48c6d85db21` |
| 19 | `theorem` | [hittingBtwn_mem_Icc](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-mem-icc.md) | 184 | `result-track:a4820bd12ae9bcfd1c133be37139218aac2d4b643e6d741859903fa3b43533b9` |
| 20 | `theorem` | [hittingBtwn_mem_set](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-mem-set.md) | 187 | `result-track:dadf135c30967bdf51cf0a7757bf00c685a1f873e2f31e9502a15621793d0ff0` |
| 21 | `lemma` | [hittingAfter_mem_set](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-mem-set.md) | 197 | `result-track:d38fb391627d38a53dc2e479a5915224e9a521853bf11fbab9f0db89ddeb185e` |
| 22 | `theorem` | [hittingBtwn_mem_set_of_hittingBtwn_lt](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-mem-set-of-hittingbtwn-lt.md) | 205 | `result-track:76dc96b290a56e5cf851e223ea63bce369b95070d02bb4cb4f69d5f0839edba7` |
| 23 | `lemma` | [hittingAfter_mem_set_of_ne_top](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-mem-set-of-ne-top.md) | 213 | `result-track:235e6529f8745df9030a11df327c6be9adf244f058c72a52734e802a4f5ebf42` |
| 24 | `theorem` | [hittingBtwn_le_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-le-of-mem.md) | 219 | `result-track:64db3597fb4c8837e35411113a89b10b6601c5b7c99e7c130f001476d150dbd6` |
| 25 | `lemma` | [hittingAfter_le_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-le-of-mem.md) | 225 | `result-track:24a634c594c7d1c3659a891519b7abef87e96a193810478906d700d2ee92655c` |
| 26 | `theorem` | [hittingBtwn_le_iff_of_exists](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-le-iff-of-exists.md) | 231 | `result-track:cef8ebe02d58485f713fb384345719918b471a37c1a34afc83570a3c5b7795bc` |
| 27 | `lemma` | [hittingAfter_le_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-le-iff.md) | 246 | `result-track:d1d2572bdcc882ddb3a14a37a29af3406c67a8a47dca58bf2eb3760724b9dce0` |
| 28 | `theorem` | [hittingBtwn_le_iff_of_lt](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-le-iff-of-lt.md) | 258 | `result-track:f6aa8d74ae92bf8feb279727399d9dc2aac17de7c9226063bea88d3b13754a12` |
| 29 | `theorem` | [hittingBtwn_lt_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-lt-iff.md) | 267 | `result-track:3e039e6e8683d85b1a1f3f42ed2e09b3f4a9bf0fe6f3a9214057de99f61f1d9e` |
| 30 | `lemma` | [hittingAfter_lt_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-lt-iff.md) | 287 | `result-track:be789be186a1da161208b782f864fdaef51fa72453f44a92b366b19e6806d81e` |
| 31 | `theorem` | [hittingBtwn_eq_hittingBtwn_of_exists](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-eq-hittingbtwn-of-exists.md) | 309 | `result-track:dd82f900c3a90955c05998cf537459ac7364fad3d1a292cc24696d74709f91c8` |
| 32 | `lemma` | [hittingBtwn_anti](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-anti.md) | 323 | `result-track:43ebbe2920e6f5bf4b07a6c9561a95131a114f188d3d339504bdea7cbb759fab` |
| 33 | `lemma` | [hittingAfter_anti](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-anti.md) | 336 | `result-track:55811677c66c26f53f6e1290f3cd6b89b80c30a803bd1efbe62ed2c7cbc65256` |
| 34 | `lemma` | [hittingBtwn_apply_anti](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-apply-anti.md) | 348 | `result-track:236abae45141d0187d866f7d7c947b0d1fa67bba2782a860e117a98bd1c8f9aa` |
| 35 | `lemma` | [hittingAfter_apply_anti](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-apply-anti.md) | 351 | `result-track:a236b533e7f7a6227226e66c76fa6751146833f07e535694a006fce700c82921` |
| 36 | `theorem` | [hittingBtwn_mono_right](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-mono-right.md) | 355 | `result-track:ebfc3f04702ba16c2b1d5b9f1089fb37f78e617fc19ef4a194d1983a96a42546` |
| 37 | `lemma` | [hittingBtwn_mono_left](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-mono-left.md) | 369 | `result-track:d15f405fbb00a1f378df647ece1799d0d1b808cf2a071a9f2636b8940943a424` |
| 38 | `lemma` | [hittingAfter_mono](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-mono.md) | 383 | `result-track:cf0755e8f63d5239b599ea4c7319aaf9e0ff8aa130ab6e18419f8c294fad0bc9` |
| 39 | `lemma` | [hittingBtwn_apply_mono_right](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-apply-mono-right.md) | 395 | `result-track:286a95a5a3b9430394a5980696b76250981d784e0e5aed7a392dfb5ac7cf7eec` |
| 40 | `lemma` | [hittingBtwn_apply_mono_left](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-apply-mono-left.md) | 398 | `result-track:26716809b8fa7b339136df3c33fc6401c523dbd776807c38b30b4c63a8f9eafe` |
| 41 | `lemma` | [hittingAfter_apply_mono](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-apply-mono.md) | 401 | `result-track:945d6973b235289df67ca08a890759cb04714d47c8e2325b3853a20d588b71d2` |
| 42 | `theorem` | [Adapted.isStoppingTime_hittingBtwn](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/adapted-isstoppingtime-hittingbtwn.md) | 407 | `result-track:1799f3880f33cbbae345a5aae2fc001c65ef124b7c09cb57ab6993ce2a6c54e3` |
| 43 | `theorem` | [Adapted.isStoppingTime_hittingAfter](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/adapted-isstoppingtime-hittingafter.md) | 420 | `result-track:f617f5acabe3b6080973e24bc175ad9dda72bc3509e6c7c8a8cdd2b8fb51a73f` |
| 44 | `theorem` | [stoppedValue_hittingBtwn_mem](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/stoppedvalue-hittingbtwn-mem.md) | 430 | `result-track:eb5df665a7fa848a06333d6faeb6496847e4bb0a4ff4137c84c1d25f02a38f90` |
| 45 | `theorem` | [Adapted.isStoppingTime_hittingBtwn_isStoppingTime](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/adapted-isstoppingtime-hittingbtwn-isstoppingtime.md) | 441 | `result-track:cf8aa7b4ec7c740421947346e7bf247ca4b0aed4436b83ddbf6e9eead3808427` |
| 46 | `theorem` | [hittingBtwn_eq_sInf](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-eq-sinf.md) | 477 | `result-track:3b7b422a29fc81805c19c4d7ccfc70d8fbbcc07c4f726ecf238fc52c4b71f67a` |
| 47 | `lemma` | [hittingAfter_eq_sInf](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-eq-sinf.md) | 486 | `result-track:6b14ab4fac4c8856d8c2db61651346243071a31f32aaa10c98055538d807744e` |
| 48 | `theorem` | [hittingBtwn_bot_le_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingbtwn-bot-le-iff.md) | 499 | `result-track:5ea2184e5801ec997be2bbd2ff802a9695e060ff142e7c81fbf35fe2900c539b` |
| 49 | `theorem` | [hittingAfter_bot_le_iff](../../../../ProbabilityTheoryAndStochasticProcesses/HittingTimeNamespacedPublic.lean/declarations/hittingafter-bot-le-iff.md) | 508 | `result-track:33cc7362f2dc0bfab3bdf29419bff72987ea0dde15da56370e657389154f382b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a96208ff0c4bafe84deca559476b97d3aa2434fe5f51a6510f498f3c3d21a56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/HittingTime/Variantfecd0400fd1c63a4a91a10ef02c407660d0a085e9567d466ecaa2e8ddb86ef06.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/HittingTime/Variantfecd0400fd1c63a4a91a10ef02c407660d0a085e9567d466ecaa2e8ddb86ef06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
