# Verification target: Meromorphic Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aca20f745ec1b3c4cbd032a7ead14afba4ad1d24",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant4af7eb699ce3253f2851a8e73b71649fd219b00141b56d357a34c2ff3af09d07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aca20f745ec1b3c4cbd032a7ead14afba4ad1d24`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Basic/Variant4af7eb699ce3253f2851a8e73b71649fd219b00141b56d357a34c2ff3af09d07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Basic/Variant4af7eb699ce3253f2851a8e73b71649fd219b00141b56d357a34c2ff3af09d07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeromorphicAt](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/meromorphicat.md) | 37 | `declaration-track:f762eb4268c4c268c912bbe3d65d6ddd44c33b00fc1e95cba27ea23c657fd56b` |
| 2 | `lemma` | [AnalyticAt.meromorphicAt](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/analyticat-meromorphicat.md) | 41 | `result-track:7171558177abd2b9466113814a3a018c7374ed44189a5732b1b66e00a5d175ac` |
| 3 | `theorem` | [MeromorphicAt.eventually_eq_zero_or_eventually_ne_zero](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/meromorphicat-eventually-eq-zero-or-eventually-ne-zero.md) | 48 | `result-track:87e8d22ad5ef2336557a87f904514c949fa92530e51489a41f3fd954ea72d851` |
| 4 | `lemma` | [id](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/id.md) | 63 | `result-track:7550803fa0325d717ccd66f80862ebdbc4b143590b4f5cfd60159af7abb99fa7` |
| 5 | `lemma` | [const](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/const-source-edition-2.md) | 66 | `result-track:94f71af79cedf29235a9f048070b2b1f47344b127922594033793b06540c68d3` |
| 6 | `lemma` | [add](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/add-source-edition-2.md) | 70 | `result-track:c37b2736574cb90d9107cc746e717bc3b775f896cf90b39c6f6acd466274f38a` |
| 7 | `lemma` | [fun_add](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-add.md) | 84 | `result-track:6b2d4386bd94ee3a19bff72934a677409f352e5b6c8a26f727debfec61bea780` |
| 8 | `lemma` | [smul](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/smul.md) | 91 | `result-track:4be28c9b9565a5ab1a0b87b848f2e67da2a0850dd27e81d7745598195510680a` |
| 9 | `lemma` | [fun_smul](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-smul-source-edition-2.md) | 101 | `result-track:6a4b47842d7347d4ca060c5dc48013b104801e51095a6195ee858a255b14b2bc` |
| 10 | `lemma` | [mul](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/mul-source-edition-2.md) | 108 | `result-track:be32abe9feec5d740dc6f6e901e19e972ee103ca78314e97f31032844ce54f63` |
| 11 | `lemma` | [fun_mul](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-mul.md) | 113 | `result-track:2c6f511a408c06530c3c0705d700967703b05367e0155afd451761de7b82be83` |
| 12 | `theorem` | [prod](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/prod.md) | 121 | `result-track:7cc7513d9a06982d0f6e2173e31faa2cc3a65c7783f892c012e48aa995b91bdb` |
| 13 | `theorem` | [fun_prod](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-prod-source-edition-2.md) | 135 | `result-track:bfa556e295c4360e60b65477579589fbc343e146707b3e018e5d23a21610127e` |
| 14 | `lemma` | [neg](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/neg-source-edition-2.md) | 142 | `result-track:e1bb53f727e8d089c5d3b08aca1b620058bef7aa386aa4aa386a06334d49ab3d` |
| 15 | `lemma` | [fun_neg](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-neg.md) | 148 | `result-track:11a9e8198cd9c69c37cdc3530239e5bf703e7d199ad3aa2a14f5069634c73e4d` |
| 16 | `lemma` | [neg_iff](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/neg-iff.md) | 154 | `result-track:c1dd722a28a154bd90b3b1d952d5a731ca63369eb879f10ea4f73e7127fc3fc6` |
| 17 | `lemma` | [sub](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/sub-source-edition-2.md) | 159 | `result-track:70b2d5460951d150df913fc2f1a4196fcfe0221b637ec8c3f9bc68c4b4d23623` |
| 18 | `lemma` | [fun_sub](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-sub-source-edition-2.md) | 166 | `result-track:fbb1e3ca35ff91d76bb325188121aeddb881a8b87c31bdebc362f2ae8c37daf7` |
| 19 | `lemma` | [congr](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/congr.md) | 174 | `result-track:48079c60bebb8e47a4f38339b648e523a72fb48a0c1c9f62a81dc2a62c186f71` |
| 20 | `lemma` | [meromorphicAt_congr](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/meromorphicat-congr.md) | 189 | `result-track:7380d0a5aab5285dfbae733c850814e18206a9b194075e390cb04479b6a9d669` |
| 21 | `lemma` | [inv](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/inv-source-edition-2.md) | 194 | `result-track:efa0552a882349a6f32722c4a5cdc72042087a7a71604a2c253d8ea5a42b667e` |
| 22 | `lemma` | [fun_inv](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-inv-source-edition-2.md) | 222 | `result-track:b75870b5ee9c8cbb174fe6e860d5edfe954135055c7605a3f253740c5e077461` |
| 23 | `lemma` | [inv_iff](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/inv-iff.md) | 228 | `result-track:1696852c014cef4b10f99777931f0a3ae6fa02de16bfbf712c864c687575fb93` |
| 24 | `lemma` | [div](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/div.md) | 233 | `result-track:0dd66bc5a9bc8f2a1350af854dc2ec91c1691a89bada3491a1c29c2dc811b8f7` |
| 25 | `lemma` | [fun_div](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-div.md) | 238 | `result-track:093946f3c37e78ffa66f5a4da2d2e757a1c85d38547c93d9f1440d568c430e1b` |
| 26 | `lemma` | [pow](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/pow-source-edition-2.md) | 245 | `result-track:4c133594b154baefe863dfc48b4823c88be1334a2a33c200a4e52d064422760c` |
| 27 | `lemma` | [fun_pow](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-pow-source-edition-2.md) | 251 | `result-track:abfcbe6b370f191dba746fe0e7c23298afdcfd07ac81f9421ef1e3179051c96b` |
| 28 | `lemma` | [zpow](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/zpow.md) | 258 | `result-track:51f87dd84b6e9319a8500d2478f911b056c3b76e701e3cd7566e6c5005c5a889` |
| 29 | `lemma` | [fun_zpow](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-zpow.md) | 264 | `result-track:9134bbc3a52c21aa58a3f6aa829f75d36746e60c555ff523f576d55d000613c0` |
| 30 | `theorem` | [eventually_continuousAt](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/eventually-continuousat.md) | 271 | `result-track:cbd8f7abe04ef802452d3c773c80966bf820104350f67c853f8ff1d1fffffb4c` |
| 31 | `theorem` | [eventually_analyticAt](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/eventually-analyticat.md) | 287 | `result-track:e2b4ec6f5003ee3cdc1fddd90d535e636dd3acecd8ed82421c9668a2ce770cb4` |
| 32 | `lemma` | [iff_eventuallyEq_zpow_smul_analyticAt](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/iff-eventuallyeq-zpow-smul-analyticat.md) | 303 | `result-track:f90d7aa4440857adddcd3d3fb29e6013d16e2263443c17ba3044d70581514315` |
| 33 | `def` | [MeromorphicOn](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/meromorphicon.md) | 315 | `declaration-track:47033a6149ed7a768120fd3e70a98bd4e2333378c5d9283d825940cde346d51c` |
| 34 | `lemma` | [AnalyticOnNhd.meromorphicOn](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/analyticonnhd-meromorphicon.md) | 317 | `result-track:bd9009c4ab1a0dd181fddd9fac156c49ed64c997a80db20668d6206eb48d2e49` |
| 35 | `theorem` | [congr_codiscreteWithin_of_eqOn_compl](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/congr-codiscretewithin-of-eqon-compl.md) | 331 | `result-track:3df89401d7c05124f52367ec25570a58212272060d9aaa89f2476039b0237150` |
| 36 | `theorem` | [congr_codiscreteWithin](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/congr-codiscretewithin.md) | 346 | `result-track:68de64d96b07e8f15f9b696b8d6ffa0c9bde02d29fac11fbcc62d50488f33c6a` |
| 37 | `lemma` | [id](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/id-source-edition-2.md) | 360 | `result-track:b2f9fb8f61b4c655ae6239f279444b28bdd1c4e6904a02959fce5586602910a3` |
| 38 | `lemma` | [const](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/const.md) | 362 | `result-track:500c8643da978c5b43e7554406af24a56e09eab2fc6fc7839bc895d876df1095` |
| 39 | `lemma` | [mono_set](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/mono-set.md) | 368 | `result-track:f191833a41c8b0901126563c9d5d71977af6ebf6f05a6d3c5d3278ef252ea138` |
| 40 | `lemma` | [add](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/add.md) | 371 | `result-track:47939864591b9813e7fc436b2e725b10b68182e7011db3c9236c61a0c9662f1d` |
| 41 | `lemma` | [fun_add](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-add-source-edition-2.md) | 374 | `result-track:ce5a08d7abfeca3db06af804d79428b91048d0eb5f5735a3abbbc96ca19fe78b` |
| 42 | `lemma` | [sub](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/sub.md) | 377 | `result-track:545d2f9c9203ee5aaa604c30032bbbb4bb1b73d589aed95221c881d13d0c23bf` |
| 43 | `lemma` | [fun_sub](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-sub.md) | 380 | `result-track:1ee15c919445140332eec0f06a2c51944783c19341232e679fb6c70154346fcf` |
| 44 | `lemma` | [neg](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/neg.md) | 383 | `result-track:9a8aa184d72cdccab75e1c80e57c3676a8e9897b85fc91afcf1d07f56f4d4e3e` |
| 45 | `lemma` | [fun_neg](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-neg-source-edition-2.md) | 386 | `result-track:14b9001c6a232d4cdc13024a2d769f16248f36f157feb7f8906f8888147b7b11` |
| 46 | `lemma` | [neg_iff](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/neg-iff-source-edition-2.md) | 388 | `result-track:cc757ccc2a2f63f9ba282f595cd5237e75720435f5b4870b9bc5470ecdf1abcf` |
| 47 | `lemma` | [smul](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/smul-source-edition-2.md) | 392 | `result-track:8268ab4561e57e26c924984429048b5aa5986f6c1d581ba6b5a93269c22e8dbd` |
| 48 | `lemma` | [fun_smul](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-smul.md) | 395 | `result-track:30957fea509c1a911365530e41961647b4c375c260582cccb455e84d3b619b04` |
| 49 | `lemma` | [mul](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/mul.md) | 398 | `result-track:4e6c3151a2d150cea7526b31115f6064119354b30cf599022a0691e4d0a3f50b` |
| 50 | `lemma` | [fun_mul](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-mul-source-edition-2.md) | 401 | `result-track:a9a6cc5e192debe6bef77073a2511a431bbeec1b598476bfe19038c481d5912d` |
| 51 | `lemma` | [prod](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/prod-source-edition-2.md) | 404 | `result-track:aa5cbd73c32ea56d97da02655a24b64bad36ebebd4cc31f35f22ceb1334d91db` |
| 52 | `lemma` | [fun_prod](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-prod.md) | 410 | `result-track:6e011007d0a19567ad45e8147cac62a0fbce34709951101d4ad578feb3e39a5e` |
| 53 | `lemma` | [inv](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/inv.md) | 416 | `result-track:234ad978a972573299735a9bc7a3d10f8f5e0d8c4f99b62f8b51ff63fc7326f2` |
| 54 | `lemma` | [fun_inv](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-inv.md) | 419 | `result-track:673d5d143536ef6953eff738827aea7dd72fbf7c849a16891321aea926f6041e` |
| 55 | `lemma` | [inv_iff](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/inv-iff-source-edition-2.md) | 421 | `result-track:66e3303e55c9f6e78a085b24c80dcc04919cb9fcccb14219f70a5a654d6610bd` |
| 56 | `lemma` | [div](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/div-source-edition-2.md) | 425 | `result-track:28bb1eaba891314cb3ab2a64db182df2f240e6c6b830e6f3a477136a9632f39b` |
| 57 | `lemma` | [fun_div](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-div-source-edition-2.md) | 428 | `result-track:24782804862531620dbae271d30189356f872c5620d2aef1a648185f7b08702b` |
| 58 | `lemma` | [pow](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/pow.md) | 431 | `result-track:40644e86b3b1382ddf267b830b8b009e5380031d8c47013d3bfa18f92e1c6539` |
| 59 | `lemma` | [fun_pow](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-pow.md) | 434 | `result-track:865880ff5460c51219e4fee1d0600759820297e5050d01b87f7524d3843d6a07` |
| 60 | `lemma` | [zpow](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/zpow-source-edition-2.md) | 437 | `result-track:6a739de91074c6e3483689df38acf83222e94674560a8b4fa41bb1c5ff4b2081` |
| 61 | `lemma` | [fun_zpow](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/fun-zpow-source-edition-2.md) | 440 | `result-track:b255b61a53c72eca3fb2a7bf5ebdc2db69b50714469ef26e8279b4ce62afd600` |
| 62 | `lemma` | [congr](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/congr-source-edition-2.md) | 445 | `result-track:ba36f238bbfc5b840337d604ceaefc71c75d28e67887d56fcb3da92cb0fa155c` |
| 63 | `theorem` | [eventually_codiscreteWithin_analyticAt](../../../../FunctionalAnalysis/MeromorphicBasicNamespaced.lean/declarations/eventually-codiscretewithin-analyticat.md) | 449 | `result-track:64270ba1bb2592b1c40912ca18c4325b8a79f823d8f5723f555a621306995b12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65b45c0cff68effe25b2923d0092aad2f6ea2561dd00e8667dec2b9cc8ee3299 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Basic/Variant4af7eb699ce3253f2851a8e73b71649fd219b00141b56d357a34c2ff3af09d07.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Basic/Variant4af7eb699ce3253f2851a8e73b71649fd219b00141b56d357a34c2ff3af09d07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
