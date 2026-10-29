# Verification target: Lemmas Lemmas Public Forall Sum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d4a89b4ebc5a54f653455f28ddf6ee19a271394",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante0e2b34a823facb5642ff3ed35ac0f2436d37a2d0e89e25ab2cd43c0f5a957c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d4a89b4ebc5a54f653455f28ddf6ee19a271394`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante0e2b34a823facb5642ff3ed35ac0f2436d37a2d0e89e25ab2cd43c0f5a957c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante0e2b34a823facb5642ff3ed35ac0f2436d37a2d0e89e25ab2cd43c0f5a957c7.lean.json)

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
| 1 | `theorem` | [«forall»](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/forall.md) | 25 | `result-track:a16919f5a1e7af965f892ea640accc660acaa92b1700b028cae82c3bc044f826` |
| 2 | `theorem` | [«exists»](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/exists.md) | 29 | `result-track:623b16b6bcb7d15a61e20e7554ccc7f9445bba0691e5edd95e462316cf261eaa` |
| 3 | `theorem` | [forall_sum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/forall-sum.md) | 38 | `result-track:81112a7c306d5181c79fb72c9c1163b5e7d3fcec2de952844b5f27bb85431d22` |
| 4 | `theorem` | [inl_getLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/inl-getleft.md) | 48 | `result-track:53e3687a2abac60eb5dfa0462d89192a3be5fad5659000b83752cc3c8e4e1d69` |
| 5 | `theorem` | [inr_getRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/inr-getright.md) | 50 | `result-track:0bf4a9812778477aa858d850b843a43e1b7e8fc0a6855a4fb51eeb5e93799605` |
| 6 | `theorem` | [getLeft?_eq_none_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getleft-eq-none-iff.md) | 53 | `result-track:84dd50229e046d3733fa093b17791b4eaa90c93860a3c3018ce5f66d5ad4da65` |
| 7 | `theorem` | [getRight?_eq_none_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getright-eq-none-iff.md) | 56 | `result-track:2210e3631641032d3305b05b93d1c002c712e35208137c88f012ea47af85e510` |
| 8 | `theorem` | [eq_left_getLeft_of_isLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/eq-left-getleft-of-isleft.md) | 59 | `result-track:02f8ad3a4d5eac5d08222de67b0210166831d50a030029e446f3e81e80030bcb` |
| 9 | `theorem` | [getLeft_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getleft-eq-iff.md) | 62 | `result-track:6e01fb6e80bccf0b25a835403f313853f74e28419f06a058bcd46f24374b8b38` |
| 10 | `theorem` | [eq_right_getRight_of_isRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/eq-right-getright-of-isright.md) | 65 | `result-track:b099a5d604acbcea6d40853b8cb9957fcd3b7418550c7fba604c8cf02c0881d1` |
| 11 | `theorem` | [getRight_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getright-eq-iff.md) | 68 | `result-track:2a35e4eba72ab50bab91e8fa232aacc211516e3f5331e17e11b8688d578dfee2` |
| 12 | `theorem` | [getLeft?_eq_some_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getleft-eq-some-iff.md) | 71 | `result-track:9b8c8f26e4d36220a3e31a7b13dbef3dcc2aa5d9a20de8db3908a5a69c583e58` |
| 13 | `theorem` | [getRight?_eq_some_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getright-eq-some-iff.md) | 74 | `result-track:63a156f6b5c4144a4a6e78c8ccc9fb7b4acc982c2297c0a7f12f10b31fafb9a1` |
| 14 | `theorem` | [bnot_isLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/bnot-isleft.md) | 77 | `result-track:65b5ff92465fab81833e892e4b0368647dd2a941ffb7744d3ad9c3582a45767c` |
| 15 | `theorem` | [isLeft_eq_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/isleft-eq-false.md) | 79 | `result-track:72dd3b00960ff4e080bf88b514107ac26b3869202fae224ec06dde9c61eb0569` |
| 16 | `theorem` | [not_isLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/not-isleft.md) | 83 | `result-track:ab192acb30497895720bf0cd3dd5c7003acb65baac6b639586190c0994673226` |
| 17 | `theorem` | [bnot_isRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/bnot-isright.md) | 85 | `result-track:e11685ae3f6cfd69325c44ac15cb1a1e8c1996961cc76dda1e4d7e555e61483a` |
| 18 | `theorem` | [isRight_eq_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/isright-eq-false.md) | 87 | `result-track:9bcff486c9ae704cc59cb4aacf9a44f69d19eaf0e8fdad3f359aeb6e32f3b0b0` |
| 19 | `theorem` | [not_isRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/not-isright.md) | 91 | `result-track:1da77fe496c6bf3898aa229e1edca4eed6a99e9ba0d538a629fceacd76b0d46e` |
| 20 | `theorem` | [isLeft_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/isleft-iff.md) | 93 | `result-track:a9d788632d67f7019341becc1552cf79360ad48d2878bb3b32760a235ba7315f` |
| 21 | `theorem` | [isRight_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/isright-iff.md) | 95 | `result-track:23574a50cdc590c282f6a5133dd2e8af848cc902549d4c31515d844b545693da` |
| 22 | `theorem` | [inl.inj_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/inl-inj-iff.md) | 99 | `result-track:0f768dbc56529c63cb6caec7bc4e652a1b78025704ea96cccfad90d718291123` |
| 23 | `theorem` | [inr.inj_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/inr-inj-iff.md) | 101 | `result-track:6ae436fc599cd775771a1304a66996651d5cd2036f2448dfa8b1ebeb0bdd2fda` |
| 24 | `theorem` | [inl_ne_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/inl-ne-inr.md) | 103 | `result-track:c53aab67f12d60865c0e4bd7ebf36a5c8e46b061404b7b086133559ccdbec5c9` |
| 25 | `theorem` | [inr_ne_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/inr-ne-inl.md) | 105 | `result-track:561c587838ecc91d617f0e823abfd3232b5e765db936c4f0dade8117a0c7ce47` |
| 26 | `theorem` | [elim_comp_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/elim-comp-inl.md) | 109 | `result-track:e58f40bd5faccf14727f833543cd0154c0155fc3e490a1a3e026c5f3c0ecec2e` |
| 27 | `theorem` | [elim_comp_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/elim-comp-inr.md) | 112 | `result-track:40c3938b70ba0352cd5cfd4bceab18dff9ce0a3c673b9f9b275191031a340cfb` |
| 28 | `theorem` | [elim_inl_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/elim-inl-inr.md) | 115 | `result-track:36a18913cc5a0e9f2011a23577246eca9907c0a470f31a3a643b86afc63cb0e9` |
| 29 | `theorem` | [comp_elim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/comp-elim.md) | 118 | `result-track:2dce043a59a4fb0f26ea2780e578f12f436c23a9bb1d939317b412a9c181897e` |
| 30 | `theorem` | [elim_comp_inl_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/elim-comp-inl-inr.md) | 122 | `result-track:26d0081b2925a154c00d42b928e03718d8f760853c5587427436fd215738030e` |
| 31 | `theorem` | [elim_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/elim-eq-iff.md) | 126 | `result-track:7a7a62226d7ecc01df53291c49cbbc9e2b4412352fa71664e5ce2106cafb9555` |
| 32 | `theorem` | [map_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/map-map.md) | 132 | `result-track:3920315f77ba641a4e1839892d1a11ebffbf894e717938f989ea3854583a22e1` |
| 33 | `theorem` | [map_comp_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/map-comp-map.md) | 137 | `result-track:091a2748efa08628732c6c6512ebf6ccb7bb60fd3aa5fd92d973168969faf80b` |
| 34 | `theorem` | [map_id_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/map-id-id.md) | 141 | `result-track:7f1697fe71024530aa3b4129848bc5ec243fbb8bf304b79300a7f5b819cdcb1b` |
| 35 | `theorem` | [elim_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/elim-map.md) | 145 | `result-track:c6e668f14733fd40d60c35567289bfe14d0b88e8f200611d7e9900a5df691a8d` |
| 36 | `theorem` | [elim_comp_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/elim-comp-map.md) | 149 | `result-track:480c8acd8cb08592600bb2b4ac4ec3612919c764f137f92da121ec496a7c55b3` |
| 37 | `theorem` | [isLeft_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/isleft-map.md) | 153 | `result-track:720b411293ee446fcb45b9c888159d19b1e844eafe480b035fa659937a149397` |
| 38 | `theorem` | [isRight_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/isright-map.md) | 157 | `result-track:0d220751705c951204440f8cf45985211a2905819eb3c146cc82d713825483fa` |
| 39 | `theorem` | [getLeft?_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getleft-map.md) | 161 | `result-track:f671fbedaaa9e826f670a2a7a76a9914a1631ba03ac98188cb5dbf5b524a16e0` |
| 40 | `theorem` | [getRight?_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getright-map.md) | 165 | `result-track:5da7d86fa7a16f57fdbae0beaa5bba36026ec4af493195f64f6a7c7c285bffae` |
| 41 | `theorem` | [swap_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/swap-swap.md) | 170 | `result-track:1bf53e8cdcfe9729893aec1ac96a6f5d59d1bc64b5af182e625d20a5117d6062` |
| 42 | `theorem` | [swap_swap_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/swap-swap-eq.md) | 172 | `result-track:b77a60f7a5fd297408a2fb28915f0df524f09c48f92c0a20d0884384af59cc6a` |
| 43 | `theorem` | [isLeft_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/isleft-swap.md) | 174 | `result-track:a8738a247342397a52712937164ef82608e83b8d010183e4dc2d45c93fb784e9` |
| 44 | `theorem` | [isRight_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/isright-swap.md) | 176 | `result-track:a1d49837f7173b50dcb1eb169f6a85efd1824d29e1255dee30b9985bf301239e` |
| 45 | `theorem` | [getLeft?_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getleft-swap.md) | 178 | `result-track:a38ad62a7284fd39891d3a33ebb4c8d5614f4d17bf9b2ed674cb71ea23c1123c` |
| 46 | `theorem` | [getRight?_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/getright-swap.md) | 180 | `result-track:641c1f81e24c6813195b62f7c99e2c989b6cf69e847fe3de1af23d21e0957fa4` |
| 47 | `theorem` | [LiftRel.mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/liftrel-mono.md) | 184 | `result-track:55ccb9c5d015d53785a42c8cf94ca3f872494b85632f03759abe87ecb3442a44` |
| 48 | `theorem` | [LiftRel.mono_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/liftrel-mono-left.md) | 190 | `result-track:2efcc2e95c389a763377989628e45e2666316ed4fceef3269fbb67a2d4373c64` |
| 49 | `theorem` | [LiftRel.mono_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/liftrel-mono-right.md) | 194 | `result-track:7146ecebe2fe54f90addf7a388244b1c6b91e33ef859ac73b112c87cd5fe3906` |
| 50 | `theorem` | [LiftRel.swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/liftrel-swap.md) | 198 | `result-track:5764a8bffe79c68b95c4667c68d40f220fe97515eff9454286c9d96ac597bfc1` |
| 51 | `theorem` | [liftRel_swap_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/liftrel-swap-iff.md) | 203 | `result-track:8cefef54d2c8a45e11a0ff1a9d337769586b212c059c9ce7201c3080d23d1bdc` |
| 52 | `theorem` | [LiftRel.lex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/liftrel-lex.md) | 210 | `result-track:6f7c804b1289d5490f84bb295173cd40c7ad28a6571abfe9298a7a3a06de3a50` |
| 53 | `theorem` | [liftRel_subrelation_lex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/liftrel-subrelation-lex.md) | 215 | `result-track:aad15e7d0dcbed3f059fa86906dbd52ce91c07a2df471c1eba96ef53ce2e91b7` |
| 54 | `theorem` | [Lex.mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/lex-mono.md) | 217 | `result-track:3f1168b9bf344cf0a801d4968e8b6a25b6c1cf556eb7511049ac6d63fd0ae02c` |
| 55 | `theorem` | [Lex.mono_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/lex-mono-left.md) | 224 | `result-track:644a762391fa0ed9823fee14c35c5a358a38dd91e7f1ca90de45b39c9300f4ef` |
| 56 | `theorem` | [Lex.mono_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/lex-mono-right.md) | 227 | `result-track:749dae1ce52a7850bc5bc5c55405225586d4b98741ba303f3da588c22e47855b` |
| 57 | `theorem` | [lex_acc_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/lex-acc-inl.md) | 230 | `result-track:735306cc57a32e326cbf740fb8b925f44506b53cd3c4ced32b28219b493e57e4` |
| 58 | `theorem` | [lex_acc_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/lex-acc-inr.md) | 238 | `result-track:be1394db2795da3b65637ead099e8d70339518dbdca5ba2c6bc027b846e5c177` |
| 59 | `theorem` | [lex_wf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/lex-wf.md) | 248 | `result-track:d9b6598e6c58087f1979cb888f8ede217660f8976ab709be616712e833c9c1ac` |
| 60 | `theorem` | [elim_const_const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/elim-const-const.md) | 255 | `result-track:ee9c92de2ca21ea63760e65b28c00dd9388380ee8104df6c62a902f30bf08acf` |
| 61 | `theorem` | [elim_lam_const_lam_const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicForallSum.lean/declarations/elim-lam-const-lam-const.md) | 260 | `result-track:020c015698499432f14161e03e0aa7434d75e9612d7a6c9204ab3bc69abefd80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da5d85a378744ce45101572a729a330fedfd353379da0197c22cfee2182136d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante0e2b34a823facb5642ff3ed35ac0f2436d37a2d0e89e25ab2cd43c0f5a957c7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante0e2b34a823facb5642ff3ed35ac0f2436d37a2d0e89e25ab2cd43c0f5a957c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
