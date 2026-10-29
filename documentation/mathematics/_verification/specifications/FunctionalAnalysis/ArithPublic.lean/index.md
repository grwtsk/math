# Verification target: Arith Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68b06462e1d675361ceb72bcd491b608942cd99a",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ArithPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ArithPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68b06462e1d675361ceb72bcd491b608942cd99a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean.json)

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
| 1 | `theorem` | [isBigOWith_abs_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-abs-right.md) | 45 | `result-track:c229a2804bd88fb9bb9b1ca2b0aa6bcb565b7cf5d7f45a69657e4d63bcc05a37` |
| 2 | `theorem` | [isBigO_abs_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-abs-right.md) | 52 | `result-track:c1246ec753f5dd2b5846620eaeed35a0d42f438c4e7f94e3ed1446fa8fa34abc` |
| 3 | `theorem` | [isLittleO_abs_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-abs-right.md) | 58 | `result-track:8b6683199a6edd3849bec064a7f2d42dafb2085bc81738422a9bcab8fc47880b` |
| 4 | `theorem` | [isBigOWith_abs_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-abs-left.md) | 64 | `result-track:92866aa086b2e537e69cc3ce113a80caec0f5886c9493502c196782c727f655f` |
| 5 | `theorem` | [isBigO_abs_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-abs-left.md) | 71 | `result-track:344929e2af068a32cf3ca768d9913e38efb52d920a021283b9ea8a962a4cb526` |
| 6 | `theorem` | [isLittleO_abs_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-abs-left.md) | 77 | `result-track:945a38ee3a24faaf5f94c3f1a4ca5a5b826e8c5d81aed12268b5a57a8e95ce92` |
| 7 | `theorem` | [isBigOWith_abs_abs](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-abs-abs.md) | 82 | `result-track:94ab0705fc7a462bd42d4a81017a0a8dce15b71342daebdd0d553231e8057774` |
| 8 | `theorem` | [isBigO_abs_abs](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-abs-abs.md) | 88 | `result-track:ddb31dc0a50fc880b85d9692c0a38e185d0cdaf3a45d406c3e36334b5bfad033` |
| 9 | `theorem` | [isLittleO_abs_abs](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-abs-abs.md) | 93 | `result-track:0df582da1fb14dff0f9896e62b2a64543704cdcc6c3f9885cdc5642fed74fe39` |
| 10 | `theorem` | [isBigOWith_neg_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-neg-right.md) | 103 | `result-track:047797a7f79bf8267caa11fbe06f438bac7918a00576ca22db0f817ceb5240f8` |
| 11 | `theorem` | [isBigO_neg_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-neg-right.md) | 109 | `result-track:6b00b99c6da7266b602b8f69e70e478b18c4432b47adaef65171b3865dcfd7d7` |
| 12 | `theorem` | [isLittleO_neg_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-neg-right.md) | 116 | `result-track:134f9e771cdf0b68c5deba42042cae4ba8d8a9d23072e495aecce3fbfe2f9263` |
| 13 | `theorem` | [isBigOWith_neg_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-neg-left.md) | 123 | `result-track:8fdcdb5a7fd70f3857a38cd83ff28eb459ce94cc0784cc3b97f90d6d0975f1a9` |
| 14 | `theorem` | [isBigO_neg_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-neg-left.md) | 129 | `result-track:136c6fede2eb808ef84500926bb297b72d266ab28403efb1b1bd3432170428c9` |
| 15 | `theorem` | [isLittleO_neg_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-neg-left.md) | 136 | `result-track:cb2c71b35989ea1d4f0378cf748629db158ee24bd7b4497296232ffaf58c9422` |
| 16 | `theorem` | [IsBigOWith.eq_zero_imp](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-eq-zero-imp.md) | 142 | `result-track:ed76269e69796bc8ae1d726e5b455f06d9456c4b75f1fa7df35a41fa696848ed` |
| 17 | `theorem` | [IsBigO.eq_zero_imp](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-eq-zero-imp.md) | 145 | `result-track:5a6e71a21587024e963a95149219dfd3a73b19cb24a49d2bf3bf3ced64850dba` |
| 18 | `theorem` | [IsBigOWith.add](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-add.md) | 155 | `result-track:394ceead6432b1598d72944385b5748d19e3c7e9fd849769c9d34ffafad51441` |
| 19 | `theorem` | [IsBigO.add](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-add.md) | 163 | `result-track:b90e98d3510db3d22c39fa0480fde9e05924ba0117f460fc7540b275395b92e3` |
| 20 | `theorem` | [IsLittleO.add](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-add.md) | 168 | `result-track:4b029eb00e69f1e40d003791a92e4e58280cd1c173034a2ac94f9377fb2ae8da` |
| 21 | `theorem` | [IsBigOWith.add_add](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-add-add.md) | 173 | `result-track:ef96bbac6ceac6df3c0afb47396eafe92072e531510f44408c8ea426b3e4af84` |
| 22 | `theorem` | [IsBigO.add_add](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-add-add.md) | 185 | `result-track:a149725335399ca376b1826206a12f412a88f0c724658555e56618edd6306074` |
| 23 | `theorem` | [IsLittleO.add_add](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-add-add.md) | 191 | `result-track:1490b87df0476f44979b17fff32c2e504e0f4dd2d48aa1686a3f7cc0a31ece8a` |
| 24 | `theorem` | [IsBigO.add_isLittleO](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-add-islittleo.md) | 195 | `result-track:a92ca7a142e42d21f71955f104f5e64931b46d66b745801e832095ea715f273f` |
| 25 | `theorem` | [IsLittleO.add_isBigO](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-add-isbigo.md) | 198 | `result-track:54460160776e56082d3c9bd8fc39f5ea86fbfc6e960f7680b8960163bd4dfe6f` |
| 26 | `theorem` | [IsBigOWith.add_isLittleO](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-add-islittleo.md) | 201 | `result-track:b9475b1ea28c6db83546b4790d6f06691a014ba99de5ddf4ea7353e35fa155ab` |
| 27 | `theorem` | [IsLittleO.add_isBigOWith](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-add-isbigowith.md) | 205 | `result-track:5cfa853e11d8d5e24a35a3b2964015c0657d4a46572b08bec77ec6258623102e` |
| 28 | `theorem` | [IsBigOWith.sub](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-sub.md) | 209 | `result-track:05e1387401ab009e0157259e2c051710e7c278e05ef33160d5d8ffc2910d0759` |
| 29 | `theorem` | [IsBigOWith.sub_isLittleO](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-sub-islittleo.md) | 213 | `result-track:4c679d71a2a03940e005927e967faf25903b270b07821469a89c381e17e853f2` |
| 30 | `theorem` | [IsBigO.sub](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-sub.md) | 217 | `result-track:012260b06d0052d7a3a5e10da3f03bafe0a7e1f9ea6bf99a486b7296981a7ad2` |
| 31 | `theorem` | [IsLittleO.sub](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-sub.md) | 220 | `result-track:303c5e4ffe6e1701ee1d7b82b82850ed1fd62d80671bfd2fb92693d95cadac5c` |
| 32 | `theorem` | [IsBigO.add_iff_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-add-iff-left.md) | 223 | `result-track:0767c6bf9618d4ec7d9d931cb4228927e2f4ddbc547ffa0c5cdf06b636d56817` |
| 33 | `theorem` | [IsBigO.add_iff_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-add-iff-right.md) | 226 | `result-track:04b425c0727372d3e73f5a9252d2301bddf5a875a3632bfaefcd7fb5ad1d313a` |
| 34 | `theorem` | [IsLittleO.add_iff_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-add-iff-left.md) | 229 | `result-track:c7dcfbe79bac0c9bdcf1cc415e8884f4bc676cb7d09d5b168b2bfe79d93e0f3a` |
| 35 | `theorem` | [IsLittleO.add_iff_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-add-iff-right.md) | 232 | `result-track:fa33846002fcf8c247187c98f52085e4a0c7395385b9f8b5b490ed367d7251b1` |
| 36 | `theorem` | [IsBigO.sub_iff_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-sub-iff-left.md) | 235 | `result-track:ff219f92f99173cf49d64b612861562d12740579817f5b44e80cd6b537557007` |
| 37 | `theorem` | [IsBigO.sub_iff_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-sub-iff-right.md) | 238 | `result-track:abed036de7f22ba3fe849bc0a8bfc4b27d7a9adf8092bd5656962bf69d9d0ed1` |
| 38 | `theorem` | [IsLittleO.sub_iff_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-sub-iff-left.md) | 241 | `result-track:64a405a77dc2dca04d4f7b77473586464b65a188635de2b024b6c7e7c36e96f8` |
| 39 | `theorem` | [IsLittleO.sub_iff_right](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-sub-iff-right.md) | 244 | `result-track:36829d17d0b4295740c4ad13dbda78a469e671b5ffede4960d20d1f2dadc8067` |
| 40 | `theorem` | [IsBigOWith.symm](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-symm.md) | 257 | `result-track:843affa84cc195ffc6256c34020e2d96564771fc9737b2aa9bfc84e63ae33157` |
| 41 | `theorem` | [isBigOWith_comm](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-comm.md) | 261 | `result-track:1f5c5fe693b084a78bba27a4157fa21c6735b9bf79b33f0be7a8b13b54562d14` |
| 42 | `theorem` | [IsBigO.symm](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-symm.md) | 265 | `result-track:3ce37a3f1c25f61e421a31bca693accaf211765b362cffd5b77659b31e8d980e` |
| 43 | `theorem` | [isBigO_comm](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-comm.md) | 268 | `result-track:1dbf2355b3447fec9e63ca4fc9f5cb3f005019feeeaf688048de6fdc212c3409` |
| 44 | `theorem` | [IsLittleO.symm](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-symm.md) | 271 | `result-track:c9804988daf49d3e73d9285118c98412567e0ce508e3e7158f6390f7a228e5ce` |
| 45 | `theorem` | [isLittleO_comm](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-comm.md) | 274 | `result-track:5cdfad115018c0090b7ec52f1936e0a70fc22420ff8f81712531d082053c2653` |
| 46 | `theorem` | [IsBigOWith.triangle](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-triangle.md) | 277 | `result-track:ea43fbaa278ce6d7e9d430a93186aefc1995c549c86463bbed5b3ac322e93b05` |
| 47 | `theorem` | [IsBigO.triangle](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-triangle.md) | 282 | `result-track:4fa8cc506e9c08e810215cadd44fa55d985cd5fc7829544beb2cddbf8e3480fd` |
| 48 | `theorem` | [IsLittleO.triangle](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-triangle.md) | 286 | `result-track:97fccd2239649fd55005cd752ba48851185f843abdcaa71db5c458517f06afb3` |
| 49 | `theorem` | [IsBigO.congr_of_sub](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-congr-of-sub.md) | 290 | `result-track:0c4b00036731a2b603e9a5e2d324dec254d4ab6c62af17f6e54b910b910493c4` |
| 50 | `theorem` | [IsLittleO.congr_of_sub](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-congr-of-sub.md) | 294 | `result-track:15b1537104b50a4fd1743cca82f4a7b4da38d35c0a981e6eb988889a732a6b3d` |
| 51 | `theorem` | [isLittleO_zero](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-zero.md) | 306 | `result-track:a8e6bfad9d125a1c3fcdefbc02424df37192abcdf7f013ee8310b8296062488c` |
| 52 | `theorem` | [isBigOWith_zero](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-zero.md) | 310 | `result-track:9ccc5748410d19d92c33112f85f47b6e022e03b6fb3e4eeb034a3be7c3ddb87e` |
| 53 | `theorem` | [isBigOWith_zero'](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-zero-source-edition-2.md) | 313 | `result-track:b01422f04683c9402b7ee32f2e8dbfacc1c806613f9e90d7fcf64b5b257af876` |
| 54 | `theorem` | [isBigO_zero](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-zero.md) | 316 | `result-track:dde0c56c3adaf29431d2d4d835443ccc9a7c7deaae5f83a8d537899eaa9450bc` |
| 55 | `theorem` | [isBigO_refl_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-refl-left.md) | 319 | `result-track:83ab99736a81996b53455fcf81d2f2aa949e001083109f0c943b102ed5f4fb10` |
| 56 | `theorem` | [isLittleO_refl_left](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-refl-left.md) | 322 | `result-track:90413b10aec30b0acf0f9466e22e5f16a25093ee984d14dd68d72249d4d1c233` |
| 57 | `theorem` | [isBigOWith_zero_right_iff](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-zero-right-iff.md) | 328 | `result-track:924f3c280a04abc667f817f05717a1b64d47fad0f17cd1f8c1fed5ebfbaa6398` |
| 58 | `theorem` | [isBigO_zero_right_iff](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-zero-right-iff.md) | 332 | `result-track:2af372b31f185b3e8d15a4368ab70c2612342193e17a89b78692019fb3feecdb` |
| 59 | `theorem` | [isLittleO_zero_right_iff](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-zero-right-iff.md) | 339 | `result-track:8a13905d42f48c0cda23198ca8364883cf5f9f68a3f0565c7b32b932d8e64f3b` |
| 60 | `theorem` | [isBigOWith_const_const](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-const-const.md) | 343 | `result-track:73e32c5660880d665101d3c263544a157e2f320bde967dc70faf7f4233a4b77a` |
| 61 | `theorem` | [isBigO_const_const](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-const-const.md) | 350 | `result-track:90c2269efd77d7aa30b409437ffec55d7f450196a21097fc277b213a6dc07791` |
| 62 | `theorem` | [isBigO_const_const_iff](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-const-const-iff.md) | 355 | `result-track:4484ac50770abffe0e6f00d778de093884c01d1d12b3ca0db396193ef3b9cae6` |
| 63 | `theorem` | [isBigO_pure](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-pure.md) | 362 | `result-track:20f034795d5c874a59a9acd061f4b622c46c2adf506c2ad3030cbe3a604cab21` |
| 64 | `theorem` | [IsBigOWith.sum](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-sum.md) | 375 | `result-track:80b6207232ef2a0001a6deeb24b8bb5899a254df2aada554a0c2e335256cf027` |
| 65 | `theorem` | [IsBigO.sum](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-sum.md) | 385 | `result-track:3987fd7ec163ca677944cd82a226da3f6d048790e8335b563ac144fbc7768ab2` |
| 66 | `theorem` | [IsLittleO.sum](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-sum.md) | 390 | `result-track:f32edabefd6b4a881abf79257bc4d6d259d8bd50db779d600c1dd8393f6a0a2c` |
| 67 | `theorem` | [IsBigOWith.sum_congr](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-sum-congr-source-edition-2.md) | 397 | `result-track:5e58a41ef90701559b609abdfb855367ce22d0859906cfb6ddd3343184fb90a5` |
| 68 | `theorem` | [IsBigO.sum_congr](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-sum-congr.md) | 416 | `result-track:d59d05fa136781fb3a9aa1d9c69cd866669e41f71ae73845b8f4abc2c4448060` |
| 69 | `theorem` | [IsLittleO.sum_congr](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-sum-congr.md) | 422 | `result-track:21069150d5af75ac7c1bf3a0a1566a4350821a02dfdf1c94bc6aeb90c7d4d400` |
| 70 | `theorem` | [IsBigOWith.sum_congr'](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigowith-sum-congr.md) | 438 | `result-track:15220971268f510a91f5b62953ae71e7da173fc2bae90ace173abcc92c97100c` |
| 71 | `theorem` | [IsBigO.sum_congr'](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/isbigo-sum-congr-source-edition-2.md) | 452 | `result-track:f99e2e562a29379f48180e792ef679aba955f39d53b0628f563557d35cdd7c4c` |
| 72 | `theorem` | [IsLittleO.sum_congr'](../../../../FunctionalAnalysis/ArithPublic.lean/declarations/islittleo-sum-congr-source-edition-2.md) | 458 | `result-track:b57898b3e86e35567f597b4ec13f55e046d101357afebe0f356759d0ce596bd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc2fed57bddbbcb83de7217dc2d30ab911c2f3f59c0a8c95b0149a7f85f77f8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
