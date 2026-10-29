# Verification target: Factorial Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bc6fc9de9a8362da95f551c29d680ab5c17cdcd",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bc6fc9de9a8362da95f551c29d680ab5c17cdcd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean.json)

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
| 1 | `def` | [factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial.md) | 37 | `declaration-track:165e266d3c848e5096fcd15e61b28bde2ead33a71083dfe11be0789654b9fd9b` |
| 2 | `theorem` | [factorial_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-zero.md) | 53 | `result-track:949f37fe75898812123ca70aed102ea8d778e97e048427fc7b3ee15ffecb0535` |
| 3 | `theorem` | [factorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-succ.md) | 56 | `result-track:4a600e9bf683fc46f4bc5568c474bcaa2b5f5544cf8d92f2c9773daa8de0c117` |
| 4 | `theorem` | [factorial_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-one.md) | 60 | `result-track:dde16e03d30b2cfde1d34fc0a9cccff362e20495fcade73d09fea236fbea996b` |
| 5 | `theorem` | [factorial_two](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-two.md) | 63 | `result-track:5c954a6388870aa509233d4dd890f0179e0e9d8e4995bcf5d994d4c36301c6ba` |
| 6 | `theorem` | [mul_factorial_pred](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/mul-factorial-pred.md) | 66 | `result-track:46e88410c548f4e848cdbf7fad9b72f7647260571fc8d24333fc71ee7c1324d2` |
| 7 | `theorem` | [factorial_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-pos.md) | 69 | `result-track:edae39c3b23179e3c3f976f1a8b6bc2902d97912fa4dad0642cfd3a1d493c76a` |
| 8 | `theorem` | [factorial_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-ne-zero.md) | 73 | `result-track:7db11333387c0e71211c0c35ed7c975ccea70cbed300bafe105f0d8fc9eb4c39` |
| 9 | `theorem` | [factorial_dvd_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-dvd-factorial.md) | 77 | `result-track:27646fd1cbc45e084a91aa861b86fc8f2daed68bef714b2c07b46211de7e2bee` |
| 10 | `theorem` | [dvd_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/dvd-factorial.md) | 82 | `result-track:eee51f5743f816ff3656ceff92a08e07872b92c7edfeea76b7392fec248a889e` |
| 11 | `theorem` | [factorial_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-le.md) | 86 | `result-track:d6cba4d88c7b92d42b8b0b245828233695baf9c1cb33100fc0b5dd8907791615` |
| 12 | `theorem` | [factorial_mul_pow_le_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-mul-pow-le-factorial.md) | 89 | `result-track:8d2ac603e77826b7ffc64a2077b2d21064d6fdc5199bdd9d0707dcc3efe78504` |
| 13 | `theorem` | [factorial_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-lt.md) | 95 | `result-track:0d164bc7cb59ce553de33b98b16574135b258bbb6259bd777f8b65edde369e75` |
| 14 | `lemma` | [factorial_lt_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-lt-of-lt.md) | 106 | `result-track:ad37f7a54e102b3dc94fcef1ac2b60b155422515185a806d4f14baeff2b4df5c` |
| 15 | `lemma` | [one_lt_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/one-lt-factorial.md) | 108 | `result-track:f3a431b5617b45ec251c5900791b23269e90b5e5456f71540ab879315b236d59` |
| 16 | `theorem` | [factorial_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-eq-one.md) | 111 | `result-track:fb903fdd9c7df700429f62bdd9c676495bca10878c548c809d427078215bafb0` |
| 17 | `theorem` | [factorial_inj](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-inj-source-edition-2.md) | 118 | `result-track:daf9d48dc8fd15eee4509fdfc6fe4d62830bd0125a643fd3dd7a5e86d011ba10` |
| 18 | `theorem` | [factorial_inj'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-inj.md) | 128 | `result-track:1bfcecd5a3644da0fa6a0f42833015eaf6e1893617c46c64b3ba11e89dae905f` |
| 19 | `theorem` | [self_le_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/self-le-factorial.md) | 133 | `result-track:5193e1f543ebe3c121955305fee20423a5cd768732e1254b428c17359ff280ed` |
| 20 | `theorem` | [lt_factorial_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/lt-factorial-self.md) | 137 | `result-track:1a217fbecf0811e78b1f9e1a8b63c58342b54542b4e8f69e8fb5b37639af4cd1` |
| 21 | `theorem` | [add_factorial_succ_lt_factorial_add_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/add-factorial-succ-lt-factorial-add-succ.md) | 144 | `result-track:7990cb6908a9d004f8f398ccd325d9219aeeba16eb1c8bc68253200df0bee136` |
| 22 | `theorem` | [add_factorial_lt_factorial_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/add-factorial-lt-factorial-add.md) | 151 | `result-track:1572e6be282f16d44c3d65f2da02ff108071343a2e7a70b82eb98deadb597770` |
| 23 | `theorem` | [add_factorial_succ_le_factorial_add_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/add-factorial-succ-le-factorial-add-succ.md) | 158 | `result-track:84cbc9190c4f290d4a51b3776f4988dd134843dc5dff3fb7591aac9ed75c1320` |
| 24 | `theorem` | [add_factorial_le_factorial_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/add-factorial-le-factorial-add.md) | 173 | `result-track:dcdeadda0ddda129fe61811913186c3cab4dba4a63d66b8ac5dd7552b530982e` |
| 25 | `theorem` | [factorial_mul_pow_sub_le_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-mul-pow-sub-le-factorial.md) | 178 | `result-track:6edf292104def939430b57a45b2469613042724b7653d890a51d8b190bc466de` |
| 26 | `lemma` | [factorial_le_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-le-pow.md) | 183 | `result-track:dae80aadb02374c07c8d3f548033cdc2c1729503284374e268f5286c7384776b` |
| 27 | `def` | [ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial.md) | 200 | `declaration-track:a07df22e79f39a180353df87650c51acb857dc432321615ec38b1d40efbab69c` |
| 28 | `theorem` | [ascFactorial_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-zero.md) | 205 | `result-track:c8d2ad3d90a773190c414aa30a69a7035fd033f4acb067e516a5d61b50a296b0` |
| 29 | `theorem` | [ascFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-succ.md) | 208 | `result-track:1b7f430037b8033404aefe106e3cbab9629824a0167fd20e6a35c8ea3750a5e9` |
| 30 | `theorem` | [zero_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/zero-ascfactorial.md) | 211 | `result-track:5d0361e96b4143df056b37f40b6d44d424bfe4821d79b1f96448c75d50fee945` |
| 31 | `theorem` | [one_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/one-ascfactorial.md) | 218 | `result-track:c76199e063518906a80b11db0a457d2e3d47a5d5ba11f93ae6071e6af5feddfb` |
| 32 | `theorem` | [succ_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/succ-ascfactorial.md) | 223 | `result-track:8ffbb7a2ee7a7a1de16659a8e071f7321abe899c5d87e08db0c124b22c502a2c` |
| 33 | `theorem` | [factorial_mul_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-mul-ascfactorial.md) | 231 | `result-track:52ae1ddd1df42e1d0aeb6241b68ccbffe0c8ca8c07638fcf972fb6ce65f663dc` |
| 34 | `theorem` | [factorial_mul_ascFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-mul-ascfactorial-source-edition-2.md) | 240 | `result-track:5371a06b1407ab123a0597bcfe92cda99d35997f5c0e412cf2b241f0e2fc204b` |
| 35 | `theorem` | [ascFactorial_mul_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-mul-ascfactorial.md) | 246 | `result-track:37bd432f44c2dcc8d13aeaaf445a0b68e2a71765236dc73afece6fa105b6cd6b` |
| 36 | `theorem` | [ascFactorial_eq_div](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-eq-div-source-edition-2.md) | 259 | `result-track:602f1359fe45095a51b98a0d67295ed93cda64c0577d5944c6f99d3193fa69c0` |
| 37 | `theorem` | [ascFactorial_eq_div'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-eq-div.md) | 263 | `result-track:5ecf02b5517c6157a724b9ff3bd833887d9993910a932f270a456829d0fb4215` |
| 38 | `theorem` | [ascFactorial_of_sub](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-of-sub.md) | 267 | `result-track:c6349a0cfac72692c0e612b8914b91cc2945d30f8d2cd8e95e5df5fd301b483d` |
| 39 | `theorem` | [ascFactorial_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-le.md) | 272 | `result-track:8c69abe59e307c78fc1556f60b74540dbe57b4ab819bf2aa00ad235e1d4b1774` |
| 40 | `theorem` | [pow_succ_le_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/pow-succ-le-ascfactorial.md) | 278 | `result-track:e87134022b4e3bf04bd82e84350ea4eed99b9f8c9f967267c6fe9b64ebafaae5` |
| 41 | `theorem` | [pow_lt_ascFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/pow-lt-ascfactorial.md) | 285 | `result-track:11e47701da9a9451d33529f1297f423e6109fe12eb826f15c2e482daf721a8d0` |
| 42 | `theorem` | [pow_lt_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/pow-lt-ascfactorial-source-edition-2.md) | 290 | `result-track:ab842572f281745b4b55ba3aa086473788bcd2c4c4fc57b1d9b18fa372244f52` |
| 43 | `theorem` | [ascFactorial_le_pow_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-le-pow-add.md) | 295 | `result-track:41d9bbf1fa9139beb7b21e0635c0acf0686d6b0cd62ab476b4020f2eb5a67049` |
| 44 | `theorem` | [ascFactorial_le_factorial_mul_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-le-factorial-mul-pow.md) | 302 | `result-track:5f4c9d40306226dcbb4c464f1d0868bcfcfb7c5a8c796e7fb4b389e0ee9098f7` |
| 45 | `theorem` | [ascFactorial_lt_pow_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-lt-pow-add.md) | 314 | `result-track:02d8629297679b8ceeb93deaa68124c8e2060b7c7af767fab48960c37048f322` |
| 46 | `theorem` | [ascFactorial_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-pos.md) | 322 | `result-track:dfe3decbd08deda8f67c77be43849762670bc7dc37c5356b80dd60f1fa0bde9d` |
| 47 | `def` | [descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial.md) | 332 | `declaration-track:f30454fa643a9f35ec4295dae6700e28996f5fa62a3fb62074f6bb80eac86047` |
| 48 | `theorem` | [descFactorial_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-zero.md) | 337 | `result-track:a1719789f0e1789a13991f08eb440315821d2d1f7e290005a168cf8e48a4871e` |
| 49 | `theorem` | [descFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-succ.md) | 341 | `result-track:5ff9ca9c90771b6ca759fc75b698eb6f691a10580ff9629d73e54f1d9cefd52e` |
| 50 | `theorem` | [zero_descFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/zero-descfactorial-succ.md) | 344 | `result-track:23c36a3bc544d5ac66d2f9178d4b659221a2166786e920aea6f12857c5e68a61` |
| 51 | `theorem` | [descFactorial_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-one.md) | 347 | `result-track:ba884d05bb7e1b874ea24313900720ca036f15986e77b977e584433018274e06` |
| 52 | `theorem` | [succ_descFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/succ-descfactorial-succ.md) | 349 | `result-track:26fa60c7b15bb2ae8b2d22742bd527e135acfd1a5db41fe2b8fc22ff5c4397b7` |
| 53 | `theorem` | [succ_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/succ-descfactorial.md) | 356 | `result-track:25b48a42219be1e70720e24014a6fc21cf327d393c6b343236fd393f3b2684ba` |
| 54 | `theorem` | [descFactorial_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-self.md) | 362 | `result-track:dcee22865f4418b0065e922f21a62d14e6d31027523a65c142c2c12720a94aa7` |
| 55 | `theorem` | [descFactorial_eq_zero_iff_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-eq-zero-iff-lt.md) | 367 | `result-track:73d1d019fffcc7b8c7a7f77e39caada54d67d857ced32403085ac00ea8ebfa7f` |
| 56 | `lemma` | [descFactorial_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-pos.md) | 375 | `result-track:5177d0c896d355b89f390cc12a7da44ab702903f6cc9088103af05d27a00c514` |
| 57 | `theorem` | [descFactorial_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-mul-self.md) | 379 | `result-track:1ac151f97e6a986dc65f776eb41ca3caaa4a5936613f290b701c8b376c0efeaf` |
| 58 | `theorem` | [add_descFactorial_eq_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/add-descfactorial-eq-ascfactorial.md) | 385 | `result-track:0b9893fd2704c874d615a9f3d2c11a11bec236c10f7acb21e8c1271651c0d89b` |
| 59 | `theorem` | [add_descFactorial_eq_ascFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/add-descfactorial-eq-ascfactorial-source-edition-2.md) | 392 | `result-track:c33b3c962f2240908beffd8446f1d2422524bd51fb75be97570831edf4e064f2` |
| 60 | `theorem` | [factorial_mul_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-mul-descfactorial.md) | 402 | `result-track:1ec9411700c4fd5327445dcf21d4f1734f6e2958cf03379837fe017f794cc8b4` |
| 61 | `theorem` | [descFactorial_mul_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-mul-descfactorial.md) | 411 | `result-track:9b11d0c4c95f4fc89f9160b1edf50d519518ed5711c357fd2b1cd921a8a9fbb5` |
| 62 | `theorem` | [descFactorial_eq_div](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-eq-div.md) | 424 | `result-track:3df72e1c3bcd564f0f8418f860eca5d63d3f15e9b317c77ce256697c31faf0cc` |
| 63 | `theorem` | [descFactorial_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-le.md) | 430 | `result-track:da03dcc173a962898c3492f593161a374b64741ddb089b9349780cc848a83649` |
| 64 | `theorem` | [pow_sub_le_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/pow-sub-le-descfactorial.md) | 438 | `result-track:03631e1a0653758885058691909259e573367af6179bebe82f54e330df05d273` |
| 65 | `theorem` | [pow_sub_lt_descFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/pow-sub-lt-descfactorial-source-edition-2.md) | 446 | `result-track:7cfcb8be77972f319542a71b725f4bfbbdb543a858f889236ff1b1b7b4b04da9` |
| 66 | `theorem` | [pow_sub_lt_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/pow-sub-lt-descfactorial.md) | 458 | `result-track:57f5f844743d0a6bb151702726af9406b0a2337caa718d252befc703903a0e8c` |
| 67 | `theorem` | [descFactorial_le_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-le-pow.md) | 466 | `result-track:3529da2559cf0af12e206a6f46ea719c7fd5575554c4fe4a95816c7cc655c3cb` |
| 68 | `theorem` | [descFactorial_lt_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-lt-pow.md) | 472 | `result-track:e68ad92bfc2cc5c7968f33d0111ed10c475465dfc49cb4d0fc62e83dc5c0510d` |
| 69 | `lemma` | [factorial_two_mul_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-two-mul-le.md) | 481 | `result-track:b657d23e521f8ee188345df896b67a83b4850a198ad9816c6bc34abe09f95fa8` |
| 70 | `lemma` | [two_pow_mul_factorial_le_factorial_two_mul](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/two-pow-mul-factorial-le-factorial-two-mul.md) | 485 | `result-track:755ca31f3039908717f6abc78094d09383aaf944a83326f388c1f28e0990ab44` |
| 71 | `def` | [ascFactorialBinary](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorialbinary.md) | 522 | `declaration-track:4056f9d1bd0d94b7ebfde0e567ffe2b8722d178aa58eeb38c0bb6230550da527` |
| 72 | `lemma` | [ascFactorial_eq_ascFactorialBinary](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/ascfactorial-eq-ascfactorialbinary.md) | 529 | `result-track:279a24a8d8098d22d236dc50eb4e21ba6d69b5385a7171bf2611db8b095ef872` |
| 73 | `def` | [factorialBinarySplitting](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorialbinarysplitting.md) | 540 | `declaration-track:cd36f1692c1f1a7c98fece84ecf9c95780779429f86cf2fce4b88fbff8ad397e` |
| 74 | `theorem` | [factorial_eq_factorialBinarySplitting](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/factorial-eq-factorialbinarysplitting.md) | 544 | `result-track:f1b01ee3c31671045f1b179fb904ef3d30606a49d1f18fe92ee28b2ad831a0b5` |
| 75 | `def` | [descFactorialBinary](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorialbinary.md) | 549 | `declaration-track:75f2935d8c1730b168114e971dbbeb5f4728a7e894b7111ac406bc27b04dff25` |
| 76 | `theorem` | [descFactorial_eq_descFactorialBinary](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicPublic.lean/declarations/descfactorial-eq-descfactorialbinary.md) | 554 | `result-track:a76e2e418df4ed279de247130af86a0e3ebf232eea08c7722ef251b8e3860089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5fda5db6dc4f3f5d12b7c5fafb153191a3fb7e1bf786ac2c9f959b905bef79c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
