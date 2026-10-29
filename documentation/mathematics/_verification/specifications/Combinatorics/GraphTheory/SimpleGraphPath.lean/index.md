# Verification target: Simple Graph Path

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7162a73fd67332fcb414fd5f87f1e75d8aa0bfd",
  "lexical_observation_count": 208,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7162a73fd67332fcb414fd5f87f1e75d8aa0bfd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity.WalkDecomp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Walk` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Subgraph` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-source-edition-2.md) | 78 | `declaration-track:eb64c8e1c86c50c169dd50d98f936c16d92c0703b0c52c9f9c971ffb9287fcfd` |
| 2 | `structure` | [IsPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-source-edition-2.md) | 83 | `declaration-track:9104012ca94a6e957bf400bbed75a7c48b11a831e86f7635f63cb3b6ec3ea00d` |
| 3 | `lemma` | [IsPath.isTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-istrail.md) | 87 | `result-track:6c89d02964484673fb7ac0c4838d94d9b218b31e2feaa5fee3fe508b25c996d5` |
| 4 | `structure` | [IsCircuit](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscircuit.md) | 91 | `declaration-track:3223fd7c6a9285cb0a08f7a8eb2986c444f1f5f7ca5e4c45879a40a0472b2f5d` |
| 5 | `lemma` | [IsCircuit.isTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscircuit-istrail.md) | 95 | `result-track:bf0d74c26874c871bf1d2094a1c0d5cfac0f9fabff300b0681ec02e747de4c14` |
| 6 | `structure` | [IsCycle](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle.md) | 99 | `declaration-track:c2ba51d979289ff1c0055070cc5d703ae96f276f529763b4ad89ceaadca70b48` |
| 7 | `lemma` | [IsCycle.isCircuit](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-iscircuit.md) | 103 | `result-track:b4ab3f041c6fa233ca27349f561c3ed0e272666fb3ea10dffa04f3ad0c1dd8d5` |
| 8 | `theorem` | [isTrail_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-copy.md) | 106 | `result-track:400d7cef47472b1310277e29b6430d9d67655d681bc959d2c97730ac6e105561` |
| 9 | `theorem` | [IsPath.mk'](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-mk.md) | 111 | `result-track:9ef704921b6520b4b01adce50c35db238b779c277e5021951d8bb89476dfd75a` |
| 10 | `theorem` | [isPath_def](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-def.md) | 114 | `result-track:9699400fe821810136de918576974b866d4db15cc9b3cb5683790194361a324d` |
| 11 | `theorem` | [isPath_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-copy.md) | 118 | `result-track:84b8bb4d2dd09be427d384aa7fb3c326a6d10ea375aa892f830426b184e38478` |
| 12 | `theorem` | [isCircuit_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscircuit-copy.md) | 124 | `result-track:7b4836848f4a33fc5317ba85e1660485f89471e147f0096208d87428450bf990` |
| 13 | `lemma` | [IsCircuit.not_nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscircuit-not-nil.md) | 129 | `result-track:edb61f2805a5116bb4700ecaed1afb75669754ec3ad10d0b3e9f3291eb7bd1a3` |
| 14 | `theorem` | [isCycle_def](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-def.md) | 131 | `result-track:0a4a7d918902e127a4888739b7e88621ec254bf38a527b6194d632dfe9d99000` |
| 15 | `theorem` | [isCycle_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-copy.md) | 136 | `result-track:85ecbd954c3ecb2d358d2ae91bb66da9dd6190697f576d9b9ebdbce6f28870d3` |
| 16 | `lemma` | [IsCycle.not_nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-not-nil.md) | 141 | `result-track:10bd5e90caebc4db04d935ec9ed20bbd49a28a8fbe529d0eb4659b38d495152b` |
| 17 | `theorem` | [IsTrail.nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-nil.md) | 144 | `result-track:e8e022080da4a00db4f0f1ad32d00c2fcfe105aa72fb09c233c220304d6f6bc8` |
| 18 | `theorem` | [IsTrail.of_cons](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-of-cons.md) | 147 | `result-track:d0803f892fe6002b02c058f4693df41abe7758fca2219295a6f63d6fe3bd149e` |
| 19 | `theorem` | [cons_isTrail_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/cons-istrail-iff.md) | 151 | `result-track:ef8650efc71d6aae03238665b28d11158beb81a35c7df3d9b33b3339ca0fd702` |
| 20 | `theorem` | [IsTrail.reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-reverse.md) | 154 | `result-track:ddaae1ebc9c63486ae0e4dc8992b5a6db0d3e3ded9b313a38512a418805a1d9b` |
| 21 | `theorem` | [reverse_isTrail_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reverse-istrail-iff.md) | 158 | `result-track:2f1cd0ace6dcbc5cad37934d6a67ffd59a1396356999460f8fff65140e0adf05` |
| 22 | `theorem` | [IsTrail.of_append_left](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-of-append-left.md) | 164 | `result-track:a331297d5f61ab2065d4784cf0265f366aa7e76f15c00758da34a8c0f7734bc0` |
| 23 | `theorem` | [IsTrail.of_append_right](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-of-append-right.md) | 169 | `result-track:b5130ed56229ccf1e4065e36704218ff6be97fb753e015a910ac7bdba9362404` |
| 24 | `theorem` | [IsTrail.count_edges_le_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-count-edges-le-one.md) | 174 | `result-track:8294f48100e1ef9ffbd7dfbfb73748eddbb36776dcc1b7fe83a3925374d16095` |
| 25 | `theorem` | [IsTrail.count_edges_eq_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-count-edges-eq-one.md) | 178 | `result-track:72c4d8d538a5e49869ab961fdfba1f9514aef7caac84e1f2febd9c6c710950c3` |
| 26 | `theorem` | [IsTrail.length_le_card_edgeFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-length-le-card-edgefinset.md) | 182 | `result-track:29a2cd942d1a3eb24b2d8c8103bdb530a1c60f0d586a64658dc5e3cefc7cdca8` |
| 27 | `theorem` | [IsPath.nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-nil.md) | 195 | `result-track:2343fc14a95dd7f95651274e3e8d69712ff912e837165d43221e7ce5e78d5304` |
| 28 | `theorem` | [IsPath.of_cons](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-of-cons.md) | 197 | `result-track:187e5cbc34c7127009e4ac0dcbd84a236a532bdccc4e34e99f2ffafd13a82194` |
| 29 | `theorem` | [cons_isPath_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/cons-ispath-iff.md) | 201 | `result-track:51f322feec16c111e76d6dd8965dddc4c35f83ae8488f7684160e32e0e9335e9` |
| 30 | `lemma` | [IsPath.cons](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-cons.md) | 205 | `result-track:1713b37ab3ff0d9646ffe9a8e3aea7e6c0b85fc0deb97bfd3363364e0edc4ed5` |
| 31 | `theorem` | [isPath_iff_eq_nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-iff-eq-nil.md) | 210 | `result-track:75f6072f9e4686f437f446371cbe7857981dfda58692c8b083053f338b6a567b` |
| 32 | `theorem` | [IsPath.reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-reverse.md) | 213 | `result-track:1261a4fba1c2748feb477fc6d0aabe6655866113a327f123f39d86682d338a17` |
| 33 | `theorem` | [isPath_reverse_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-reverse-iff.md) | 217 | `result-track:4682a2f96d57dc7c0e8ce7366856357ed63d39f2e5b18fb5372300d0aa6fb21d` |
| 34 | `theorem` | [IsPath.of_append_left](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-of-append-left.md) | 220 | `result-track:b6ca04d11ca781fa9d078bb4b0346ee9928b25b919ea75dd8501397c3f345a36` |
| 35 | `theorem` | [IsPath.of_append_right](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-of-append-right.md) | 225 | `result-track:f1909df2b9e9c484168ecc147ef0a3677f39243cf90ed9d9a7a562c1c8607800` |
| 36 | `lemma` | [IsPath.of_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-of-adj.md) | 231 | `result-track:da585fdea758c1a3881a60745938beab3785421dea40965ca87a93520321ec9e` |
| 37 | `theorem` | [IsCycle.not_of_nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-not-of-nil.md) | 235 | `result-track:91ad941caeb124fca0a1f8775424e047b0099eada119f173ac27d863c590e248` |
| 38 | `lemma` | [IsCycle.ne_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-ne-bot.md) | 237 | `result-track:fe4d69928e5684e719ede2bf6ee0fae83f286edfdad4bbc3a0296ca8f8ff59dc` |
| 39 | `lemma` | [IsCycle.three_le_length](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-three-le-length.md) | 241 | `result-track:45e3a7889b100e887e778d00e1024e0713955cf88bd7739af59eef83c471b008` |
| 40 | `lemma` | [not_nil_of_isCycle_cons](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/not-nil-of-iscycle-cons.md) | 249 | `result-track:2e9a3434d0aa98bc1fb60237cadf9dca01bc8e0958c199e22730980f8d354642` |
| 41 | `theorem` | [cons_isCycle_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/cons-iscycle-iff.md) | 255 | `result-track:0047f568ba33ba3d04bfefdcfb8c00a354707783a9e9b961c654cb1d06209593` |
| 42 | `lemma` | [IsCycle.reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-reverse-source-edition-2.md) | 262 | `result-track:703c614f91245eb6adb98ff6265cde5cc9dbbf42aa4004b0ab95a25ce54a6e66` |
| 43 | `lemma` | [isCycle_reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-reverse.md) | 267 | `result-track:6cb522fe7aa9bb63a44f45fce334dcf5b04f84a134c486db05a21abb86487c17` |
| 44 | `lemma` | [IsCycle.isPath_of_append_right](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-ispath-of-append-right.md) | 271 | `result-track:1a8be0c10e2f3e5d3d8aac3cf106b60e717037683342d19610038b805f77d70f` |
| 45 | `lemma` | [IsCycle.isPath_of_append_left](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-ispath-of-append-left.md) | 278 | `result-track:7969b5f6195943f9aa20932df27fb1b496d06344e0257f334bb574a574a21af2` |
| 46 | `lemma` | [IsPath.tail](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-tail.md) | 282 | `result-track:03bd94429c5929e29ffdec3383cf9c7db36fd13f42f56e7efd4ff86dcb916fe1` |
| 47 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/instance-source-edition-3.md) | 290 | `declaration-track:ce012a21bfd8e5a5f690796e1cf15587ce36cc165fb765904e9e784856c98a1e` |
| 48 | `theorem` | [IsPath.length_lt](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-length-lt.md) | 294 | `result-track:c0ffc8992d3ddc70d1f3f4709c2c2a951d1d8e8e4d489ce071ce62744d6c9de7` |
| 49 | `lemma` | [IsPath.getVert_injOn](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-getvert-injon.md) | 299 | `result-track:082d7f475810816e6aeff5d20f5a84108b41b5fb212f2b8c1cb178eac4db4e81` |
| 50 | `lemma` | [IsPath.getVert_eq_start_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-getvert-eq-start-iff.md) | 319 | `result-track:c97db87ce9cbdb5c868db17d7543d2d9d33b268fb6ec21673dee3d466a60233d` |
| 51 | `lemma` | [IsPath.getVert_eq_end_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-getvert-eq-end-iff.md) | 328 | `result-track:35553cbb762db47220f2eb3e88cffc5c04441dba585a3e3df3c46c153c65c313` |
| 52 | `lemma` | [IsPath.getVert_injOn_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-getvert-injon-iff.md) | 336 | `result-track:71d02622c46dc5717dc8435accb1f7d95ac1205546021073aef28bec6d0be3ec` |
| 53 | `lemma` | [IsCycle.getVert_injOn](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-getvert-injon.md) | 360 | `result-track:821243222727d2f3835a6c9b99fa343b648e7b395c9f0daa27e33bbe762f1fea` |
| 54 | `lemma` | [IsCycle.getVert_injOn'](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-getvert-injon-source-edition-2.md) | 372 | `result-track:dc8fb8091c6db5a2a026115c9f5e9107857ccfba15c752703d2e585231fd1f68` |
| 55 | `lemma` | [IsCycle.snd_ne_penultimate](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-snd-ne-penultimate.md) | 384 | `result-track:47688fe28595a3ffa44db156e8f9687ea098c814b5afce06b949b42010817f3c` |
| 56 | `lemma` | [IsCycle.getVert_endpoint_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-getvert-endpoint-iff.md) | 390 | `result-track:04117e2d44d6761f5274e1974243798e56d504782ff3b3d90f138c7b7b1dafe8` |
| 57 | `lemma` | [IsCycle.getVert_sub_one_ne_getVert_add_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-getvert-sub-one-ne-getvert-add-one.md) | 398 | `result-track:6bbbfa4c8fb698669745d874f0ea2588c59152e9cfc826f9b42e74e23ebc7993` |
| 58 | `theorem` | [IsTrail.takeUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-takeuntil.md) | 420 | `result-track:f290fc9f1a1f4c9fc77e6cb2fa1c404c74fbc9b93f21467f5eda11447953275e` |
| 59 | `theorem` | [IsTrail.dropUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-dropuntil.md) | 424 | `result-track:6d8c3fbcf91dd5056f1fac30971ec6859fa9f24d46669aa1f864eebc3bff1f9e` |
| 60 | `theorem` | [IsPath.takeUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-takeuntil.md) | 429 | `result-track:4e434ec60b666573008eae27bc30a41482fe4e4fd81c5ae4466807e7f83afd15` |
| 61 | `theorem` | [IsPath.dropUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-dropuntil.md) | 433 | `result-track:e46d0e0642d74af7f8a3953bef34627a8f2c460c658e459e78b305f0859c58ee` |
| 62 | `theorem` | [IsTrail.rotate](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail-rotate.md) | 438 | `result-track:44f1eb24387eddcdb5cfb7be36ca1a91e81f0f94314f51c6595ded073c8dd69c` |
| 63 | `theorem` | [IsCircuit.rotate](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscircuit-rotate.md) | 443 | `result-track:6d2474ab40778e6d280eec63f2448d6ff9e13af20592fd4fe5d24e136ada0f2e` |
| 64 | `theorem` | [IsCycle.rotate](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-rotate.md) | 453 | `result-track:0cbe7b33fccedd2e9e45aaade7f4801b36cb61e1ef723e230a23da60498067e3` |
| 65 | `lemma` | [IsCycle.isPath_takeUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-ispath-takeuntil.md) | 459 | `result-track:b98bd23b71f62ca4daf0dd3f691ea37794151eb3e68bed8fc89648b17907c14a` |
| 66 | `lemma` | [endpoint_notMem_support_takeUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/endpoint-notmem-support-takeuntil.md) | 468 | `result-track:67d7db994eaf00728437241b3910272468e730df5c81ce270aab64c5d93ce671` |
| 67 | `abbrev` | [Path](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/path.md) | 489 | `declaration-track:934ecc3f4eeb4be04ab2c9f74de78c75d01497f57f62d2ffb03f28fdf2d7f27d` |
| 68 | `theorem` | [isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath.md) | 496 | `result-track:8257c1bb0ad14d9d299849e55b7bd27119c026b1440629d1dc36dc0adf8ce713` |
| 69 | `theorem` | [isTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/istrail.md) | 499 | `result-track:74845ab786fca31f1261538bbfc7a7fd971c215ac1d317fcb61db0001b54caf8` |
| 70 | `def` | [nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/nil.md) | 504 | `declaration-track:70167b80bc1efc7552ad98293c1556ff113f03231aba078ef956e34c07185375` |
| 71 | `def` | [singleton](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/singleton.md) | 509 | `declaration-track:208de9fbf7c2f24f958e061d425c3209ca3892e837aa37445c1d5cebcb275b95` |
| 72 | `theorem` | [mk'_mem_edges_singleton](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/mk-mem-edges-singleton.md) | 512 | `result-track:047c3163aa1e307e7b5e16614044f77e535ee881ca356409042357eac1a80a38` |
| 73 | `def` | [reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reverse.md) | 517 | `declaration-track:20f725c3c83db6184f320e7fd284e30c2e5bb696b8e5277f245dfe034f085253` |
| 74 | `theorem` | [count_support_eq_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/count-support-eq-one.md) | 520 | `result-track:4b66cefdea96034fa86f6722ad0981332b2a1ef9d26b00ddfedcc3875c32fb6f` |
| 75 | `theorem` | [count_edges_eq_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/count-edges-eq-one.md) | 524 | `result-track:e35ba074ea531d35529ddef47632a88cd8923681d99abe83255150f9d33b6f95` |
| 76 | `theorem` | [nodup_support](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/nodup-support.md) | 529 | `result-track:c92c1d480ea304f89c8222853c9053850788d49d69d500ef31c31898a01d31e1` |
| 77 | `theorem` | [loop_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/loop-eq.md) | 532 | `result-track:4ee6ac1bf9cbce7f0af0f16b7163eb1e3e6b30570792ef7bdd007d285733b659` |
| 78 | `theorem` | [notMem_edges_of_loop](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/notmem-edges-of-loop.md) | 537 | `result-track:f60791e83bea226d540e003cd3f85ed618b0fbd44280702b5d1960bad69555a8` |
| 79 | `theorem` | [cons_isCycle](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/cons-iscycle.md) | 542 | `result-track:c6820b04739bfc08f553172b431fcda9c96cfda71a3871208132cff82449a684` |
| 80 | `def` | [bypass](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/bypass.md) | 558 | `declaration-track:b5783ab5859984c7f1bd75f903e945d2c991a81645857cbe48259bcae87ea629` |
| 81 | `theorem` | [bypass_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/bypass-copy.md) | 568 | `result-track:aac76f1df4cfc6faf142551476d5bd5dc9397b58c4e694b2c775986a7c555062` |
| 82 | `theorem` | [bypass_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/bypass-ispath.md) | 573 | `result-track:b136d5b54bb4616274c97457852b0873ebb00636c5d43b9392e3401a9b5092f1` |
| 83 | `theorem` | [length_bypass_le](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/length-bypass-le.md) | 582 | `result-track:5f06a662c6cf26c8081cf7d547d56cc1b363ee2fb56d5df9d27927d6785eff16` |
| 84 | `lemma` | [bypass_eq_self_of_length_le](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/bypass-eq-self-of-length-le.md) | 595 | `result-track:be743c9747730b609991fc7d1072a25afde37fc4062e51d4f33fc26d54188f05` |
| 85 | `def` | [toPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/topath.md) | 614 | `declaration-track:41c1799d298cbfb6f5af27e16b1d9c0b56c1207ee6a57bf304fc2af95aa2766e` |
| 86 | `theorem` | [support_bypass_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/support-bypass-subset.md) | 617 | `result-track:a9ffde83c9c61db1500cf4c8508b10eb43b8adc5da12bebb0ef0c09fdeda9089` |
| 87 | `theorem` | [support_toPath_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/support-topath-subset.md) | 630 | `result-track:3633d0898035172b29b7c6180f5edf465845d8d748745caf40d671554a43b97d` |
| 88 | `theorem` | [darts_bypass_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/darts-bypass-subset.md) | 634 | `result-track:80434916e98a004390806727e7c67f18cff0d26425aeb0002ffa7dbb84d1d4e7` |
| 89 | `theorem` | [edges_bypass_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/edges-bypass-subset.md) | 645 | `result-track:64e97ebde5a4899d50318c736b6fcf33f1c476bc760d74227124ff403dbc9a2b` |
| 90 | `theorem` | [darts_toPath_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/darts-topath-subset.md) | 648 | `result-track:d167135348214272f3692a6d4729cfa38b10f9b28991537ebe2b7a9ba0e2563a` |
| 91 | `theorem` | [edges_toPath_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/edges-topath-subset.md) | 651 | `result-track:f0e28552fccfe8538d03700af63a40680fd0f48cc51c3510f40e1e8a00087312` |
| 92 | `theorem` | [map_isPath_of_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map-ispath-of-injective.md) | 664 | `result-track:175300bc3a15266307d0eac6db5c19ec2edde83b736db2d13cd387f68aeb4b1d` |
| 93 | `theorem` | [IsPath.of_map](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-of-map.md) | 676 | `result-track:43c143019821511d44d0669bc486a90ab9b39974d0d7a2980831547e882f5cdb` |
| 94 | `theorem` | [map_isPath_iff_of_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map-ispath-iff-of-injective.md) | 687 | `result-track:a54636b8c5ad22b280d354ec2a6c94212f7891349f492d93577861e386d67505` |
| 95 | `theorem` | [map_isTrail_iff_of_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map-istrail-iff-of-injective.md) | 690 | `result-track:59cb0ea0f4639f667605d75a87fe68e7c28547611fa8927d72ae0e3107557d68` |
| 96 | `theorem` | [map_isCycle_iff_of_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map-iscycle-iff-of-injective.md) | 701 | `result-track:c2b496ab4b08a832c1f9eb17fbead212d60d86deb32b1845d7d52ede9b025a89` |
| 97 | `theorem` | [mapLe_isTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/maple-istrail.md) | 709 | `result-track:4de6459a643849c78e6aa939a07f1d20d74f5a92ccbe2dd1742050fd732dc061` |
| 98 | `theorem` | [mapLe_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/maple-ispath.md) | 716 | `result-track:835019ee9ad418519bb03932bc21d82d5c528856dc91eb0db12c74cf37da36cc` |
| 99 | `theorem` | [mapLe_isCycle](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/maple-iscycle.md) | 723 | `result-track:c9751b21db9af6bc0f8a8402f1d9a8992d169440a1e429311c3ab3e4ad6c4f95` |
| 100 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map-source-edition-2.md) | 737 | `declaration-track:b2793cda5b87ba78d3e6ab050542659a8376e7da1718cd388238fe9b08874899` |
| 101 | `theorem` | [map_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map-injective.md) | 741 | `result-track:5b2e7360829ac43a7a58a8d3968529478e18428382991e4d291fed138348c3f6` |
| 102 | `def` | [mapEmbedding](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/mapembedding.md) | 749 | `declaration-track:b48449921ecf7398a456ddf207e2baa3be082c0316346fe26e98821f09de1d03` |
| 103 | `theorem` | [mapEmbedding_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/mapembedding-injective.md) | 752 | `result-track:ac944a0ebcfebb21222cc1f1c11f37767d100f0258633c77202615bc7ae6521a` |
| 104 | `theorem` | [IsPath.transfer](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-transfer.md) | 765 | `result-track:6b147238b2353b3d84a04799e6e1ed3326e91a65f7028cc6be7b2041ec074bb0` |
| 105 | `theorem` | [IsCycle.transfer](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-transfer.md) | 773 | `result-track:d7137e56e2cc86226e20fc0d40ceb6e36a7b3cc6ff8e0b67d5bd3bc8815b0702` |
| 106 | `theorem` | [IsPath.toDeleteEdges](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ispath-todeleteedges.md) | 790 | `result-track:47551061b243c86fd8e7a520d5ebfc35a2fcccc2689e1ced3d467cffe8db263d` |
| 107 | `theorem` | [IsCycle.toDeleteEdges](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iscycle-todeleteedges.md) | 794 | `result-track:54c4a64de06a19eb02eb24bda2e7a79503a64686d226b027465cc9c5720c7373` |
| 108 | `theorem` | [toDeleteEdges_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/todeleteedges-copy.md) | 799 | `result-track:508988065b3e4c075b884241c3649562902e0a78f25d650d78372c92ce97a18b` |
| 109 | `def` | [Reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable.md) | 813 | `declaration-track:106926a7c9de28e754a622792812a2735536ef7018d7f7c7d3e08d17f3ab8a5b` |
| 110 | `theorem` | [reachable_iff_nonempty_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-iff-nonempty-univ.md) | 817 | `result-track:fde721918c8eba9862f48c8b91b90097db84a3dcfed9d3be4d6eba72980692e7` |
| 111 | `lemma` | [not_reachable_iff_isEmpty_walk](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/not-reachable-iff-isempty-walk.md) | 821 | `result-track:d8ea664d7ba667560d6791b97184efc6a99955085711fb9278aaa41939837749` |
| 112 | `theorem` | [Reachable.elim](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-elim.md) | 824 | `result-track:2579623744dbc9452c522c8da2d558f0603f4604cc1d744c8786f6b97d0a8fca` |
| 113 | `theorem` | [Reachable.elim_path](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-elim-path.md) | 828 | `result-track:11cf18f2d4d314554b20fa907a71ac8f3d5080614021c153b4030cd2c703c02a` |
| 114 | `theorem` | [Walk.reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/walk-reachable.md) | 831 | `result-track:b06869cc6a2d4623cf4c5a00452d04751b7af20afbcaf85ef71b4905b5eca635` |
| 115 | `theorem` | [Adj.reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/adj-reachable.md) | 834 | `result-track:b0a7dabd8d6797aa188db1b12d97384732cd85fdd40775716b0acbaddf4b1875` |
| 116 | `theorem` | [Reachable.refl](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-refl.md) | 838 | `result-track:b44e9d7bdd5d86ba00aaa8dbb282735d300ce133d6d7c5e522fcfdf1d4938448` |
| 117 | `theorem` | [Reachable.rfl](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-rfl.md) | 840 | `result-track:0df361084401e264fe5fbb8b4ecb8b6bdbf960b4955bf183a4590745688872ba` |
| 118 | `theorem` | [Reachable.symm](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-symm.md) | 843 | `result-track:a77d59150661d01e4d08c37b6ad6ebaaac055c9e938ad06d0f0030f4b0e87f09` |
| 119 | `theorem` | [reachable_comm](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-comm.md) | 846 | `result-track:6ed86941d068c3f4a4fb2604e87defb22dab7f2db5b210e699699d5ddfac24ae` |
| 120 | `theorem` | [Reachable.trans](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-trans.md) | 850 | `result-track:640b30e6920f8fc62ff649b72b0526b88c60157dd614c8c5863485290f288290` |
| 121 | `theorem` | [reachable_iff_reflTransGen](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-iff-refltransgen.md) | 854 | `result-track:142058b5336fdd4b007d803cd9d04ec6a664430c6d4709bd3f0e8c15436aff1f` |
| 122 | `theorem` | [Reachable.map](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-map.md) | 866 | `result-track:57137a736db79effe1c5bc7b76ce4b646b014e5cc981bcc43ea0308b02e30069` |
| 123 | `lemma` | [Reachable.mono](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-mono.md) | 871 | `result-track:a5461cb65308bf704df6896bfd29db3ac66aa75a43463e1c9f6e16f9b0f2b8de` |
| 124 | `theorem` | [Reachable.exists_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-exists-ispath.md) | 874 | `result-track:ce37dce2436265d4af35a554a4558b5ab6ac11d86baf3ab61ce47c852a61f6ec` |
| 125 | `theorem` | [Iso.reachable_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iso-reachable-iff.md) | 879 | `result-track:573d10848e842e1973ba10a0e90c97a098013f3882df1bcb49dc677ff6d4b1f7` |
| 126 | `theorem` | [Iso.symm_apply_reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iso-symm-apply-reachable.md) | 883 | `result-track:438ec8e57d25dc93b2110406b2e5168d01a6b5fa8dec225b5da5e82c86373c31` |
| 127 | `lemma` | [Reachable.mem_subgraphVerts](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-mem-subgraphverts.md) | 887 | `result-track:0a19595d0e1032731f988e9e23c7504165bc60c8db764d730043ab4a94862d04` |
| 128 | `theorem` | [reachable_is_equivalence](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-is-equivalence.md) | 904 | `result-track:d01a281f4083ba31ed42c4a79fe90c194518f8a57eddd21ebcf841ce5bdde411` |
| 129 | `lemma` | [reachable_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-bot.md) | 909 | `result-track:89705754515f26100e5689a07365430d8326cd050276fa66532303ce30802307` |
| 130 | `def` | [reachableSetoid](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachablesetoid.md) | 913 | `declaration-track:5a8145b8ed4a793c9a2260b0f2d79b572d182c112a3b770516b24e3280459cc9` |
| 131 | `def` | [Preconnected](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/preconnected.md) | 916 | `declaration-track:fe3194428507ca94355144d4d421318cf4a9f706da382fdb3d12a46993596b51` |
| 132 | `theorem` | [Preconnected.map](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/preconnected-map.md) | 918 | `result-track:380ad5e1239b7ebf41339c857ca552e23f87e00e42743ab5e1778ba17637138c` |
| 133 | `lemma` | [Preconnected.mono](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/preconnected-mono.md) | 923 | `result-track:e0d815a24839f7af6c10a70fb63f3d89d3ebbff90b00988fa55a4397ea8af1fb` |
| 134 | `lemma` | [bot_preconnected_iff_subsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/bot-preconnected-iff-subsingleton.md) | 926 | `result-track:a9c0abed6be8f56fd27b2ef83513b038930f2363a8990f6302fa2e269cbb0cb4` |
| 135 | `lemma` | [bot_preconnected](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/bot-preconnected.md) | 931 | `result-track:acd09e6ef98f09278a149b7e512e309647e646033ab8582e47cccf62e4fe1503` |
| 136 | `lemma` | [bot_not_preconnected](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/bot-not-preconnected.md) | 934 | `result-track:9dbad3bbf719eaeab81aaa5968b092770dcd4a163de68f60a4e9fe7fe8f26f77` |
| 137 | `lemma` | [top_preconnected](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/top-preconnected.md) | 937 | `result-track:8448511022c904279a93ca0addfa28d67730df833309fdeaed10f17f3f2d3a44` |
| 138 | `theorem` | [Iso.preconnected_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iso-preconnected-iff.md) | 940 | `result-track:6eb56eaf57ab80c2b6d111a7a1e588e7bbcdb1fe1662149c92cf40b880c8a6a6` |
| 139 | `lemma` | [Preconnected.support_eq_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/preconnected-support-eq-univ.md) | 945 | `result-track:4c72399a3f5da512426f427a52748f128d210da163e7ebee361db51e6eafb198` |
| 140 | `lemma` | [adj_of_mem_walk_support](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/adj-of-mem-walk-support.md) | 955 | `result-track:dcbfb7f462287625de0b3bed07533e2aaebdbac1c080b1813fd77577c7ddaef1` |
| 141 | `lemma` | [mem_support_of_mem_walk_support](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/mem-support-of-mem-walk-support.md) | 978 | `result-track:8b9777780b83f95be389b172c5f26d62291bca20e03a1934b0c6492b5e67d76e` |
| 142 | `lemma` | [mem_support_of_reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/mem-support-of-reachable.md) | 983 | `result-track:b1461387ccad7e523fad3e0fffa5b119f77e41cb98eac9cd3f09e87b675f369a` |
| 143 | `theorem` | [Preconnected.exists_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/preconnected-exists-ispath.md) | 989 | `result-track:34702d08a125721c416a4f2d645f017049ee6858b33f137c93352103c8a691c9` |
| 144 | `structure` | [Connected](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connected.md) | 999 | `declaration-track:5f8a24ee153aa794c16c165e4af3abe8b6cfb9a34ea9434b6366fff3a47d6371` |
| 145 | `lemma` | [connected_iff_exists_forall_reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connected-iff-exists-forall-reachable.md) | 1003 | `result-track:3933e38198529844f7e55625c97f03cc47711133e26d48b28b94fae79910eb6c` |
| 146 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/instance.md) | 1011 | `declaration-track:0cc87aa2922ae86a0429211d2f413cf0ca860988171ec0df004af4d5a756bd20` |
| 147 | `theorem` | [Connected.map](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connected-map.md) | 1013 | `result-track:24e9ca8ad8c4bc5e069f862691d4b82e10f29f669f8b3a8e974228237080e798` |
| 148 | `lemma` | [Connected.mono](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connected-mono.md) | 1019 | `result-track:540935987889b6a4faca1fb787b2ab2da9aa911df1c5bbc710e945021be8fc54` |
| 149 | `theorem` | [Connected.exists_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connected-exists-ispath.md) | 1024 | `result-track:a5509178e414bcf011877dd0db1ad38102de735d600be8ce588d135fbe6e5932` |
| 150 | `lemma` | [bot_not_connected](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/bot-not-connected.md) | 1028 | `result-track:e948d5b75f94171b1527538869ef66e95f7020a5d232059b4cf770d6033702e4` |
| 151 | `lemma` | [top_connected](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/top-connected.md) | 1031 | `result-track:c42ba8370c81172a843e3b5527c359459a2d19b9cd41dfa0fdeed9754bc9d307` |
| 152 | `theorem` | [Iso.connected_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iso-connected-iff.md) | 1034 | `result-track:d8aa9c08a15bf35b77f38615700cf9d7d47eb481d5228270f97b73466334ddbc` |
| 153 | `def` | [ConnectedComponent](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connectedcomponent.md) | 1040 | `declaration-track:e5dc99468aef494e8736230a93beb5526c2ec90cfb1765e38999a584f84cff4a` |
| 154 | `def` | [connectedComponentMk](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connectedcomponentmk.md) | 1043 | `declaration-track:55bdcfa3fdb6ab02f4109c98930fb0130f4a0cee3b8dc162292aee5e856a4bd9` |
| 155 | `instance` | [inhabited](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/inhabited.md) | 1050 | `declaration-track:796515ee49b24b5ac421b68e6b4f00748b62dbc63f9a269b7cd861b3b0223c60` |
| 156 | `instance` | [isEmpty](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/isempty.md) | 1053 | `declaration-track:6b26835a9ee871dc4ee2cdd62d2dc09b02782c96162804d2328a2a1c8aa3b380` |
| 157 | `theorem` | [ind](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ind.md) | 1060 | `result-track:1f2b033b013e0a1734df27e676a58b037b97beb739b952bb3da8a8ff89bbef7a` |
| 158 | `theorem` | [ind₂](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/ind-source-edition-2.md) | 1065 | `result-track:7ee7aab76738b9b3ebd4ae5c27bb5e9bd74cf649f4fda2766eeab8cc29955c52` |
| 159 | `theorem` | [sound](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/sound.md) | 1070 | `result-track:0d17ad19c787b51ea3f4055b8c2e174f149fe4ade304ccdeb170e12ebbca7a8d` |
| 160 | `theorem` | [exact](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/exact.md) | 1074 | `result-track:55d0d2fd94b26acc253bd41daef840d55bed3e8097f7b9248fc904d6e1ba00cf` |
| 161 | `theorem` | [eq](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/eq.md) | 1079 | `result-track:f9b470d727fb9bf3b654db22027237114f632126192707164aaadb76eb4a3903` |
| 162 | `theorem` | [connectedComponentMk_eq_of_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connectedcomponentmk-eq-of-adj.md) | 1083 | `result-track:3ec4aa1b31e5cfc0ac2828dc2fb0844b348867024f5e1ae388524e5e40e93c99` |
| 163 | `def` | [lift](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/lift.md) | 1089 | `declaration-track:1b3d3833be2301430257ba38b64a536112a2c286acc976dd77d000b51efc998c` |
| 164 | `theorem` | [lift_mk](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/lift-mk.md) | 1094 | `result-track:d97742d63fd9cdae6ca1062cbb001c26400b2e1b2cae928158b74a42076d09cd` |
| 165 | `theorem` | [«exists»](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/exists.md) | 1099 | `result-track:c242f05cc2ad09cf5e101a18fb9a5bb5f0c11ec97573a4b4c305cd6702b55142` |
| 166 | `theorem` | [«forall»](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/forall.md) | 1103 | `result-track:af9d9ba0c271f203057db323dc7134e1f06a00ad03ec8ef958e55a2773b791f6` |
| 167 | `theorem` | [_root_.SimpleGraph.Preconnected.subsingleton_connectedComponent](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/root-simplegraph-preconnected-subsingleton-connectedcomponent.md) | 1107 | `result-track:dd51c82449673b24c2ac52dc222a1dc837053f07928db71d2959d33caf9deb84` |
| 168 | `def` | [recOn](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/recon.md) | 1115 | `declaration-track:9cae2f1782f8cd3bc7411699933214a368469e870507832d6cee448d7a7895d8` |
| 169 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map.md) | 1125 | `declaration-track:94715db281f967972960abcf16ce4b7494faa57fa8cfbf3d0749d24785aba983` |
| 170 | `theorem` | [map_mk](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map-mk.md) | 1130 | `result-track:1b7988df33842419325b08c8eb818ce7f7fd4a7dee53fd029ecf5605177b7c1d` |
| 171 | `theorem` | [map_id](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map-id.md) | 1135 | `result-track:d5a4e5b2d3b8ea9371a8a6d057d5478b1c0b28eee1602161ab84a3d072251714` |
| 172 | `theorem` | [map_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/map-comp.md) | 1140 | `result-track:3c1a1d1a1c63f50124a7612c71ea851126c0b79c6891471981f7fd6be942cd3c` |
| 173 | `theorem` | [iso_image_comp_eq_map_iff_eq_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iso-image-comp-eq-map-iff-eq-comp.md) | 1148 | `result-track:61db0861c441538f37683c75a2168d840f9266d9607dfb048c794024e46fb7ef` |
| 174 | `theorem` | [iso_inv_image_comp_eq_iff_eq_map](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iso-inv-image-comp-eq-iff-eq-map.md) | 1155 | `result-track:6c0b10ffadde392bdb7955ebd7d666757039e96ed1876fcdfe41752b429d4ac7` |
| 175 | `def` | [connectedComponentEquiv](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connectedcomponentequiv.md) | 1167 | `declaration-track:2de26db5bbafce9c43546b7eb4c8c2f6ff5e6d346adb09c81e7215edff30b6ec` |
| 176 | `theorem` | [connectedComponentEquiv_refl](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connectedcomponentequiv-refl.md) | 1176 | `result-track:7eea75a91f79149c26eec8a7f1271145c34b2cfc79584530b4ead6819c0102e1` |
| 177 | `theorem` | [connectedComponentEquiv_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connectedcomponentequiv-symm.md) | 1182 | `result-track:a812109080e02a65052993d81caa377ff774c7eabae247d4f8170a72eadea508` |
| 178 | `theorem` | [connectedComponentEquiv_trans](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connectedcomponentequiv-trans.md) | 1188 | `result-track:1e35c42bb53338ed15767bb1242daa13044a0f455e1bb763a49cd65d2f510e72` |
| 179 | `def` | [supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/supp.md) | 1199 | `declaration-track:2def93bf1b1bf03916b05a6be6c1f61585bf21ef906c88a8cc835b290d6b8fa0` |
| 180 | `theorem` | [supp_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/supp-injective.md) | 1203 | `result-track:df7ca60fc7babe270e89fe60b4ffa7f27ab6c910648f0e3f87cfc1da2604eb25` |
| 181 | `theorem` | [supp_inj](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/supp-inj.md) | 1212 | `result-track:7208019d75fe250eb0cf4119319a880f4ef7b033cb6d0c6e2b3de91b99b1b2d7` |
| 182 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/instance-source-edition-2.md) | 1215 | `declaration-track:462d2fcddfc25a9e743c7147d726f7bba32157021b0165fb684eb627916e1c47` |
| 183 | `theorem` | [mem_supp_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/mem-supp-iff.md) | 1220 | `result-track:42f78153725af69054c093e61f088b875584aa76e89caf51833fafd94be97957` |
| 184 | `lemma` | [mem_supp_congr_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/mem-supp-congr-adj.md) | 1224 | `result-track:87796c0232d94c0fc3c53bbb85a22196b2bdf144407f157ec202e98c2e2e8ea9` |
| 185 | `lemma` | [adj_spanningCoe_induce_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/adj-spanningcoe-induce-supp.md) | 1231 | `result-track:215f4fec26523dbccb1b008a7b857c7fd971df5c3f17474333dc540b038bc6e5` |
| 186 | `theorem` | [connectedComponentMk_mem](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connectedcomponentmk-mem.md) | 1240 | `result-track:1a4b4dc4a290ab4ce272ae3bf75fabd0190780e38fe966ea1609bed1032b0b04` |
| 187 | `theorem` | [nonempty_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/nonempty-supp.md) | 1243 | `result-track:81edc595913c12f7080af771710ebfecf9fd0f3e63c35758997fca018179052b` |
| 188 | `def` | [isoEquivSupp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/isoequivsupp.md) | 1248 | `declaration-track:1c9d7a4367c329fcd2f1ee2a371762c33759827694b30fd107bcadca7871648a` |
| 189 | `lemma` | [mem_coe_supp_of_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/mem-coe-supp-of-adj.md) | 1255 | `result-track:909e5a9df085bda79827c28640e1fb166ac4e47d4f0d91202108ab5a2d134017` |
| 190 | `lemma` | [eq_of_common_vertex](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/eq-of-common-vertex.md) | 1263 | `result-track:012f9b369403da0e44d62680301b5b21f021b3a6756496c4580238e61dc5ac20` |
| 191 | `lemma` | [connectedComponentMk_supp_subset_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connectedcomponentmk-supp-subset-supp.md) | 1269 | `result-track:5bf877c05d4e4091d3678442c48f778b88a821a77862997b0b7b09dfe608fed8` |
| 192 | `lemma` | [biUnion_supp_eq_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/biunion-supp-eq-supp.md) | 1276 | `result-track:cdc41a842db4802c773f5a1b7acff228862ad86aad7312f39e7290d1cd941de0` |
| 193 | `lemma` | [top_supp_eq_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/top-supp-eq-univ.md) | 1286 | `result-track:6a57e0dfc88da2e3106dc474e6148c9b847028391facd66cdaba0649415c0ecf` |
| 194 | `lemma` | [reachable_induce_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-induce-supp.md) | 1294 | `result-track:52612d660bee804a231a1202389ac83cab54862df4817406acf1ee8007471899` |
| 195 | `lemma` | [connected_induce_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connected-induce-supp.md) | 1304 | `result-track:5d6a9b94cf1afe22588f204b40fa1485859de9d044f86e4d5379f183884d3925` |
| 196 | `lemma` | [pairwise_disjoint_supp_connectedComponent](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/pairwise-disjoint-supp-connectedcomponent.md) | 1317 | `result-track:f49a3dbf5c3b86f176cc96dc5848c71db25f450343b7886eefa80e841dffb654` |
| 197 | `lemma` | [iUnion_connectedComponentSupp](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/iunion-connectedcomponentsupp.md) | 1326 | `result-track:0d803b6b17d9873cfefa77819ac4d5675a2257cf9f4ae55cf62954993e8e6815` |
| 198 | `theorem` | [Preconnected.set_univ_walk_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/preconnected-set-univ-walk-nonempty.md) | 1332 | `result-track:90f473bdf732286a98f4cbecf92bea2c3c310b41f5a8326a49de1a3be368c376` |
| 199 | `theorem` | [Connected.set_univ_walk_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connected-set-univ-walk-nonempty.md) | 1337 | `result-track:9b0ec9c45e038a9166e2da42b295aa5459189f8cec58e008020c954a54783d83` |
| 200 | `def` | [IsBridge](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/isbridge.md) | 1347 | `declaration-track:5dd7f81f88134dd69bf0c26d1bd3e9adb0e147490aa06936a68f10e0fce8f4f3` |
| 201 | `theorem` | [isBridge_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/isbridge-iff.md) | 1351 | `result-track:c844f0705f44f15f0dc732693b080c7345b710bf5a83f1b5979e0259b295c6b6` |
| 202 | `theorem` | [reachable_delete_edges_iff_exists_walk](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-delete-edges-iff-exists-walk.md) | 1354 | `result-track:0e26e695ef31f58dd3819170ea0b2f1c02bb26177a389039ef7369f8c7d727cd` |
| 203 | `theorem` | [isBridge_iff_adj_and_forall_walk_mem_edges](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/isbridge-iff-adj-and-forall-walk-mem-edges.md) | 1368 | `result-track:37943d75b3ce00668c99aee0fbd9fcc065fc8d494567087163b035203bad6238` |
| 204 | `theorem` | [reachable_deleteEdges_iff_exists_cycle.aux](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/reachable-deleteedges-iff-exists-cycle-aux.md) | 1373 | `result-track:f3830e5428e1e05bce78c8573da7b14efa840dbbae25e15d6faf2d9eb27ef1b8` |
| 205 | `theorem` | [adj_and_reachable_delete_edges_iff_exists_cycle](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/adj-and-reachable-delete-edges-iff-exists-cycle.md) | 1399 | `result-track:69173f5773ad275599802b1d3edf68deeac22427cde70c641f475b1b9747036e` |
| 206 | `theorem` | [isBridge_iff_adj_and_forall_cycle_notMem](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/isbridge-iff-adj-and-forall-cycle-notmem.md) | 1423 | `result-track:823d7085ebcdead06d12e440c94925d0debbf31ccb7ae7996a81d180de9976d2` |
| 207 | `theorem` | [isBridge_iff_mem_and_forall_cycle_notMem](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/isbridge-iff-mem-and-forall-cycle-notmem.md) | 1435 | `result-track:9a1d88113ff1108ffefbd85018db8a76af7335a9f2e9d2abf77e0e6119a65353` |
| 208 | `lemma` | [Connected.connected_delete_edge_of_not_isBridge](../../../../../Combinatorics/GraphTheory/SimpleGraphPath.lean/declarations/connected-connected-delete-edge-of-not-isbridge.md) | 1443 | `result-track:abc7693c5380c7ef14b880cb9f1bf9a0b3840ea695e7f86f23118d8769384c50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d821e003cc52e43c01304dc1f85579aeb3eef02705185a113631b1392218d72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
