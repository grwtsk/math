# Verification target: Principal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "381c49ba5d1fc9201783573147a9fba2c7790c26",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `381c49ba5d1fc9201783573147a9fba2c7790c26`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrincipal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal.md) | 61 | `declaration-track:a568607892aeb6439880a1cc2724c459788a2cc7d8f0cac19aae57d9cbe0a3c2` |
| 2 | `theorem` | [isPrincipal_swap_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-swap-iff.md) | 67 | `result-track:15b365f82fcbb0ddb90696fb64d4b2dd1fb2b36e0240c574ab4cb62491fb6b61` |
| 3 | `theorem` | [not_isPrincipal_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/not-isprincipal-iff.md) | 73 | `result-track:a537a66f79dcb287d69101aa81eb35fc586a02316a67591f4fc4dc0e01b81534` |
| 4 | `theorem` | [isPrincipal_iff_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-iff-of-monotone.md) | 79 | `result-track:f00c73b24c417c0652d5f93200b5f4823996aea71bffc38eeb052426b763ef4f` |
| 5 | `theorem` | [not_isPrincipal_iff_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/not-isprincipal-iff-of-monotone.md) | 91 | `result-track:3d1fef4f0f4b3c46138043d03dd4925c17e754f0a5576c999ba28025a8f089c3` |
| 6 | `lemma` | [isPrincipal_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-zero.md) | 99 | `result-track:dce0c4a1aa46e7818297104cbf1c2f18e189867ec97b5e1d130d8d0d64ce9490` |
| 7 | `theorem` | [isPrincipal_one_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-one-iff.md) | 104 | `result-track:8683311e6ad63afbbcd16f50584bb4e87ce23ac023f4d9bd2a0c0278cb890725` |
| 8 | `theorem` | [IsPrincipal.iterate_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-iterate-lt.md) | 109 | `result-track:ad0104590fd9e595e7838770f2ae73a5dc6c4e7bb98712747a8e752906eabda9` |
| 9 | `theorem` | [op_eq_self_of_isPrincipal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/op-eq-self-of-isprincipal.md) | 120 | `result-track:f111187a4c27ec8b3df358f2cc572c2a861c00f5478f7049d6b9f81a82684446` |
| 10 | `theorem` | [nfp_le_of_isPrincipal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/nfp-le-of-isprincipal.md) | 129 | `result-track:c6f9a220da7150bcf6f8995aa62db941bfe928411bd49b9bd417a4c519c45a11` |
| 11 | `theorem` | [IsPrincipal.sSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-ssup.md) | 135 | `result-track:672d475cd862db2726305e13da547c5c9467cfa2935644a5db445f407193df52` |
| 12 | `theorem` | [IsPrincipal.iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-isup.md) | 150 | `result-track:1bc442e929d6e2f88d714f2f74a993c2f0a1ea6528afc631538ca4659ad6e917` |
| 13 | `theorem` | [isPrincipal_nfp_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-nfp-isup.md) | 159 | `result-track:898bdee0a1f012a7b62fd6110d1936d20d57cea1d448ce155e47a4bbe800ce65` |
| 14 | `theorem` | [not_bddAbove_setOfPred_isPrincipal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/not-bddabove-setofpred-isprincipal.md) | 180 | `result-track:d6fd5df05fd386238b8d027a8c2b4c60fa08524aaa8d1e44e243ba39a172409e` |
| 15 | `theorem` | [isPrincipal_add_iff_add_self_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-iff-add-self-lt.md) | 193 | `result-track:92aa7082c0239d58ff246d0c9373cdec2ae9547aca7258b69168d3df0faedfb6` |
| 16 | `theorem` | [IsPrincipal.mul_natCast_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-mul-natcast-lt.md) | 197 | `result-track:66ecf90f4799e82a56f409b9dc0ab025bf41b267765287db95040fca81a46ed7` |
| 17 | `theorem` | [isPrincipal_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-one.md) | 205 | `result-track:1bc6c43ccdc348c0799e58b8a86c5a275abcc0b5b66de746f0daf2d6a4d78b60` |
| 18 | `theorem` | [isPrincipal_add_of_le_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-of-le-one.md) | 210 | `result-track:4e312ccae937c888da2e8074df0deff856556c30f412fbcffc4e8a3f7a8494f9` |
| 19 | `theorem` | [isSuccLimit_of_isPrincipal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/issucclimit-of-isprincipal-add.md) | 218 | `result-track:78362f07e95dd1cd02235b4d09e3bc01aa60c2928fa08e8ee1e055e77b492d7f` |
| 20 | `theorem` | [isPrincipal_add_iff_add_left_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-iff-add-left-eq-self.md) | 226 | `result-track:fba749c0d446b42cfd2aa0f3ddb519a183c5ef0f1997f9c3e9a1e96b3f5053af` |
| 21 | `theorem` | [IsPrincipal.add_eq_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-eq-right.md) | 238 | `result-track:6c1f19d88ec48259a389b17240a37f15473979875e45b6c0dd4df6bf49ee6f43` |
| 22 | `theorem` | [IsPrincipal.add_eq_right_of_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-eq-right-of-le.md) | 241 | `result-track:818068266e1f730e78285049716b256365d08444934c60b3f7bc09c6c80e3e77` |
| 23 | `theorem` | [exists_lt_add_of_not_isPrincipal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/exists-lt-add-of-not-isprincipal-add.md) | 246 | `result-track:277448d6b2cee674a9d3f3b9df89b1331edd641684c64c59aa4afb98dd6022a4` |
| 24 | `theorem` | [isPrincipal_add_iff_add_lt_ne_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-iff-add-lt-ne-self.md) | 258 | `result-track:616c584db41daf078df757e1ff86f0361970b462ebc01bff25e2c250185f7c72` |
| 25 | `theorem` | [isPrincipal_add_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-omega0.md) | 267 | `result-track:dd6ce2e0bc4c4f05811ac3ff0e3e9558f92de4f7e24b5bb6411b0ceca61b6777` |
| 26 | `theorem` | [add_of_omega0_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/add-of-omega0-le.md) | 275 | `result-track:eb3d4709765b7f76026eb57a181639f7cff276d9ae5fdf6e92120dfe0efd2bca` |
| 27 | `theorem` | [isPrincipal_add_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-omega0-opow.md) | 278 | `result-track:96b895b91638d97fec8655c83b37871ee61f9512cfe458299968e1f9aace3d19` |
| 28 | `theorem` | [add_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/add-omega0-opow.md) | 291 | `result-track:46494ff9a39390b3380e8e090ce6e9bab1c8e117f69aed24b088a5afe2067e04` |
| 29 | `theorem` | [add_of_omega0_opow_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/add-of-omega0-opow-le.md) | 294 | `result-track:d06a2c62694018d1aadfa6fe24fbbaeec7b3d4c3a306b422d2b6c3096a4f1343` |
| 30 | `theorem` | [isLeast_sub_lt_omega0_opow_log](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isleast-sub-lt-omega0-opow-log.md) | 302 | `result-track:d535a33150b54fce5dab1d900c52e289819389e0ff2ec1a294ede9c067e07fef` |
| 31 | `theorem` | [isPrincipal_add_iff_zero_or_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-iff-zero-or-omega0-opow.md) | 308 | `result-track:90585393ce9599f7b1b8794c61722b9034abb539b40aeb4f70923cefda909823` |
| 32 | `theorem` | [isPrincipal_add_opow_of_isPrincipal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-opow-of-isprincipal-add.md) | 321 | `result-track:37b0207513abb6c1e6a952ac779a6e6286fc5ceab2197b684c78605e7ab869fe` |
| 33 | `theorem` | [isPrincipal_add_mul_of_isPrincipal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-mul-of-isprincipal-add.md) | 334 | `result-track:27c6e8c00dfe0ed437efd82679890da92f8b7909bf982d77d7ca0ea897083673` |
| 34 | `theorem` | [isPrincipal_mul_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-mul-one.md) | 357 | `result-track:fc748ec8ef9066372a5a3794cafd735f16b4af9fe5eb1b36294c0856387a7ee5` |
| 35 | `theorem` | [isPrincipal_mul_two](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-mul-two.md) | 362 | `result-track:962ff769bb90b29f5e16b8e1244ddb53a3a9455ad49be96c3bf568e1d426967e` |
| 36 | `theorem` | [isPrincipal_mul_of_le_two](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-mul-of-le-two.md) | 370 | `result-track:845e68be06b2413784c49a5f5efd1bb7f6bb3313a70da129f2876f68e1d3c198` |
| 37 | `theorem` | [isPrincipal_add_of_isPrincipal_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-of-isprincipal-mul.md) | 377 | `result-track:6c23f08f8e13ddc7a7cb454b20b03311d3833e7360275e0476284bc9d68b0721` |
| 38 | `theorem` | [isSuccLimit_of_isPrincipal_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/issucclimit-of-isprincipal-mul.md) | 387 | `result-track:645f1359e145868f740996ea79f98efacab7e135640873c42870d51d02e5000c` |
| 39 | `theorem` | [isPrincipal_mul_iff_mul_left_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-mul-iff-mul-left-eq.md) | 394 | `result-track:d1c61d1dccba0d4a9e6d3dc32ad33d162301cab9bee31f6102c6a1fb994f5d87` |
| 40 | `theorem` | [isPrincipal_mul_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-mul-omega0.md) | 414 | `result-track:6b8a9f351b0efb783d54358320ec9d7079e11ae7e3b8bf66df47fd932d594752` |
| 41 | `theorem` | [mul_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/mul-omega0.md) | 423 | `result-track:d80fbc636d1b61df58a34241bbc4b88263748f60b0e7764e85901fbc8fb1096c` |
| 42 | `theorem` | [natCast_mul_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/natcast-mul-omega0.md) | 426 | `result-track:fc9a61af324f235de335032d1225f2e43a732369fda7f28f7dd27cde73156848` |
| 43 | `theorem` | [mul_lt_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/mul-lt-omega0-opow.md) | 429 | `result-track:349123f8dde9421ef22d1a571feaf107d4dfd0dd6f08281a4e6ad79654d8aa42` |
| 44 | `theorem` | [mul_omega0_opow_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/mul-omega0-opow-opow.md) | 443 | `result-track:5221eb2ab5c84c862723d6c4296d8e2ef24d8ffee85190ed84570091f36f7443` |
| 45 | `theorem` | [isPrincipal_mul_omega0_opow_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-mul-omega0-opow-opow.md) | 454 | `result-track:85e2a719090e67e7fb0a4312b230c693f18744cd0d58f5f0e216ee97271a44d8` |
| 46 | `theorem` | [isPrincipal_add_of_isPrincipal_mul_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-add-of-isprincipal-mul-opow.md) | 460 | `result-track:323c5231de98014b218c327c497c8e74b4ff38e9157623bf1dbbbb4169eab944` |
| 47 | `theorem` | [isPrincipal_mul_iff_le_two_or_omega0_opow_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-mul-iff-le-two-or-omega0-opow-opow.md) | 471 | `result-track:b22595c16259296365c3ec44156d4845f04ca0733a90dd804fc040f328ab6ae1` |
| 48 | `theorem` | [mul_omega0_dvd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/mul-omega0-dvd.md) | 490 | `result-track:24394fa89c3a38361b7d90a56083b441f24b317953b3989b8ae539de06e18f45` |
| 49 | `theorem` | [mul_eq_opow_log_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/mul-eq-opow-log-succ.md) | 493 | `result-track:33e355bdb5a12a64e7c0451d006344804ab4fbad87ee6316848149ccd99f0b6e` |
| 50 | `theorem` | [isPrincipal_opow_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/isprincipal-opow-omega0.md) | 513 | `result-track:7f2c01b2d2cd6e79370d1e61b26de6fd9b147c02f9282d13bd14dc2cbb54a8d5` |
| 51 | `theorem` | [opow_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/opow-omega0.md) | 520 | `result-track:5d9390f2363cadd8a0892b5fa8b066cc57b93688be0bfe5626a819bcd3c8680f` |
| 52 | `theorem` | [natCast_opow_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/PrincipalPublic.lean/declarations/natcast-opow-omega0.md) | 525 | `result-track:3cb4aa417ae3b205dc19e7b4dab846f1e6218349b3c9583bc490b8b3901a5f62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06b7fad8f27f1d38a80c32f119bda9b202bf96993cc2655a886a9fb98d1ff4de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
