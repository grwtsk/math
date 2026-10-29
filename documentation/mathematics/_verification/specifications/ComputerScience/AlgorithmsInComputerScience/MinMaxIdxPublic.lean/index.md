# Verification target: Min Max Idx Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0449482ed15e28382cb6edb81a59c8a350bd14b6",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Varianteacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0449482ed15e28382cb6edb81a59c8a350bd14b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Varianteacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Varianteacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.TakeDrop` — import line 10; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-source-edition-2.md) | 37 | `declaration-track:ad64c6be043292d787bbd00f6034c5e8df5a46e94abc5723e1d735f5b3c6a904` |
| 2 | `def` | [minIdxOn?](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon.md) | 59 | `declaration-track:6c51607a2c4898362061efd9509021b6f81305248ce62b7ffbeb4e789bf42172` |
| 3 | `def` | [maxIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon.md) | 72 | `declaration-track:38975ac6247f05bd5969900d411429c421aa0f48b9a489fbbae01746e13ab948` |
| 4 | `def` | [maxIdxOn?](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-source-edition-2.md) | 84 | `declaration-track:69ec8cd1eaf7c3e25548c3c53fa4c15696abf4ff3458f8aef049694d71004d26` |
| 5 | `theorem` | [maxIdxOn_eq_minIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-minidxon-source-edition-2.md) | 88 | `result-track:b0340924f1088409210666e8e8c4b1c939a018768a99c45a735834d92a1e29bb` |
| 6 | `theorem` | [minIdxOn.go_lt_length_add](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-go-lt-length-add.md) | 93 | `result-track:3368b37abbad721ba0a74e88d3b97fd7d4bce6e0997b16bea607cee6be1dc258` |
| 7 | `theorem` | [minIdxOn.go_eq_of_forall_le](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-go-eq-of-forall-le.md) | 104 | `result-track:6ee292b7e6a16d970c99338e43537f42ef3678ba49c887d7649fdd69e9bb39bd` |
| 8 | `theorem` | [exists_getElem_eq_of_drop_eq_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/exists-getelem-eq-of-drop-eq-cons.md) | 116 | `result-track:2b09a15a93626bc58f872b1e2ceab131ce50cbd5afcc97b03a00b38c9f7e61b1` |
| 9 | `theorem` | [take_succ_eq_append_of_drop_eq_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/take-succ-eq-append-of-drop-eq-cons.md) | 129 | `result-track:8e52430a26cf2e0b450142e5cc48667f9d0131eebbbad59b15ead97dfbb85b4e` |
| 10 | `theorem` | [minIdxOn_eq_go_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-eq-go-drop.md) | 134 | `result-track:a7b053815e67b259bec385c36f059aa14018c4fc40e414ddd925083ed7f436fa` |
| 11 | `theorem` | [minIdxOn_nil_eq_iff_true](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-nil-eq-iff-true.md) | 165 | `result-track:79f82868c483e49c4925ad05199e8b2b0965dc3b6fcd96d22b1fc3ad597decee` |
| 12 | `theorem` | [minIdxOn_nil_eq_iff_false](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-nil-eq-iff-false.md) | 169 | `result-track:09e1af8375cf20e837cf24d307f869e88a19db6c64a7c5de5c6c0cb52eab4f7a` |
| 13 | `theorem` | [minIdxOn_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-singleton.md) | 174 | `result-track:403af45f3356ef7ce5e5006f0bef7601c2d7a1850c69465f31f60f26e3fd5dd8` |
| 14 | `theorem` | [minIdxOn_lt_length](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-lt-length.md) | 179 | `result-track:657b7fe4b6e9cd9d6809ae9415a48a2f9ce2704d0dc349498ad57bf3d0aadaef` |
| 15 | `theorem` | [minIdxOn_le_of_apply_getElem_le_apply_minOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-le-of-apply-getelem-le-apply-minon.md) | 185 | `result-track:78a0fd43bb001ed40ce9ca36647cf7a8f5d45260bb361081f35b387d7a8020b7` |
| 16 | `theorem` | [apply_minOn_lt_apply_getElem_of_lt_minIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/apply-minon-lt-apply-getelem-of-lt-minidxon.md) | 201 | `result-track:46f91a1b354d4593d29c62349259668bbc2266af80a2fd2940e24e0060a7e454` |
| 17 | `theorem` | [getElem_minIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/getelem-minidxon.md) | 211 | `result-track:ace36201d9170f97daf60c809eba48402860e1e7a7e40a22a0b3da23350aaafe` |
| 18 | `theorem` | [le_minIdxOn_of_apply_getElem_lt_apply_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/le-minidxon-of-apply-getelem-lt-apply-getelem.md) | 218 | `result-track:b97cf5d17eb0987fcb88a3b1b8db008c453266907edac05ea81a5aed0f897293` |
| 19 | `theorem` | [minIdxOn_le_of_apply_getElem_le_apply_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-le-of-apply-getelem-le-apply-getelem.md) | 230 | `result-track:45d4f4f6f18693734f1ba0fcce92fedd2eaccd09f66892d125343739d0ca28bf` |
| 20 | `theorem` | [minIdxOn_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-eq-iff.md) | 239 | `result-track:cd276aae196c6526f9d5c34d314289af07c4f595372ed64ca516a5e06fd7cf9f` |
| 21 | `theorem` | [minIdxOn_eq_iff_eq_minOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-eq-iff-eq-minon.md) | 256 | `result-track:f1506fe29e8339fce40a08e8269cd1ed7a75599226e57ba84c75c6e21b13db74` |
| 22 | `theorem` | [minIdxOn.go_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-go-eq.md) | 273 | `result-track:a86bcd5c3ac5291be25910c57c0b0d66ed8eb914d66d53ed56dac38a53bd35f7` |
| 23 | `theorem` | [minIdxOn_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-cons-source-edition-2.md) | 311 | `result-track:afaec8a61aac79a27a1460ba670a5db91c9b262100bfd5295965e502784cf58b` |
| 24 | `theorem` | [minIdxOn_eq_zero_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-eq-zero-iff.md) | 319 | `result-track:e1d391f75adafee8bed131b3d23040d8c5fedba5aa5493978eaa464041ff35e5` |
| 25 | `def` | [combineMinIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/combineminidxon.md) | 348 | `declaration-track:fee8e779a63d113c80df2f8d6e4a02e7b75d0ce1a56429f64ff7566049125120` |
| 26 | `theorem` | [combineMinIdxOn_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/combineminidxon-lt-source-edition-2.md) | 355 | `result-track:8af485dbbb7d8ddd12fc28f2a61fa74a5412675357a6c5440fe71e654a42496e` |
| 27 | `theorem` | [combineMinIdxOn_lt'](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/combineminidxon-lt.md) | 361 | `result-track:51b23179bbd9793ee23e98c26560b12635674742b021d25c838484ed20cab6ba` |
| 28 | `theorem` | [combineMinIdxOn_assoc](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/combineminidxon-assoc.md) | 368 | `result-track:5ca7166136e3cf77076cf1764edfcd50f95e259ca28ed990ffa969b2514a37c3` |
| 29 | `theorem` | [minIdxOn_cons_aux](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-cons-aux.md) | 400 | `result-track:f3b9effa4f89bdcb3d7695172d3ac5466854b55917a4837157ff0fd7fcae7ded` |
| 30 | `theorem` | [minIdxOn_append_aux](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-append-aux.md) | 409 | `result-track:ad2dfdf8ec8f5c298b16d335f7622abf5a8b85e49af1c56c48d298aea1c310f0` |
| 31 | `theorem` | [minIdxOn_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-append.md) | 426 | `result-track:d6db888dfad6498028d21915fd6a412373ac03dc629441bf0d11f9cd472dcd98` |
| 32 | `theorem` | [left_le_minIdxOn_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/left-le-minidxon-append.md) | 437 | `result-track:2153554c5b461043450905bd0fbb2e10a27dd3c6efa37859f30d951da04a039e` |
| 33 | `theorem` | [minIdxOn_take_le](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-take-le.md) | 448 | `result-track:1c4946c23f8e8cb451c3a8e9c4dcf22bb53557f1813a3a0480152611ca25b4d2` |
| 34 | `theorem` | [minIdxOn_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-replicate-source-edition-2.md) | 456 | `result-track:be9c17f3cb5255b392ff000cdf37982381c6da213fc57245aff752460126d01b` |
| 35 | `theorem` | [maxIdxOn_nil_eq_iff_true](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-nil-eq-iff-true.md) | 473 | `result-track:57ff117540d2d05092c39074a5951aeb556fa26269aa5af2c0e191faa5c9991b` |
| 36 | `theorem` | [maxIdxOn_nil_eq_iff_false](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-nil-eq-iff-false.md) | 477 | `result-track:fa62bb2c85c8fcb5f6c52c83428b4345f81e03cc9c00a91f886a96782715c16e` |
| 37 | `theorem` | [maxIdxOn_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-singleton-source-edition-2.md) | 482 | `result-track:adae5f570fecd04dfab0fe864e8c2c28c57f9843a6df7c6bf4ce6b50856e7210` |
| 38 | `theorem` | [maxIdxOn_lt_length](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-lt-length.md) | 488 | `result-track:58c16648f7d4de4ad0ebb56ba02abde4ed14ca2c9f44fbb2f808f6e6bb5b7acf` |
| 39 | `theorem` | [maxIdxOn_le_of_apply_getElem_le_apply_maxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-le-of-apply-getelem-le-apply-maxon.md) | 493 | `result-track:9f0ab5a70db41af2a9bff420d08eeb6de72409fd54dfcf385f465e49eb78d4f3` |
| 40 | `theorem` | [apply_maxOn_lt_apply_getElem_of_lt_maxIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/apply-maxon-lt-apply-getelem-of-lt-maxidxon.md) | 501 | `result-track:a3e1809f50c81ba01a0ddd8de96166b8dc67b410689cd659a5a428e88829c303` |
| 41 | `theorem` | [getElem_maxIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/getelem-maxidxon.md) | 512 | `result-track:b422e3ed3fbd6858c6f1d2a3c0d06f4ded879b51782ab15cf3b7485e08026b22` |
| 42 | `theorem` | [le_maxIdxOn_of_apply_getElem_lt_apply_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/le-maxidxon-of-apply-getelem-lt-apply-getelem.md) | 519 | `result-track:4b8607ce05f48ff6e55877c0b661b9839b590f12208c29c0124851da02cad58a` |
| 43 | `theorem` | [maxIdxOn_le_of_apply_getElem_le_apply_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-le-of-apply-getelem-le-apply-getelem.md) | 529 | `result-track:50fae756ab3c3f02008c1f9c713117d99d9deb7ca8f3ef64021552e94979d4f9` |
| 44 | `theorem` | [maxIdxOn_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-iff.md) | 538 | `result-track:56ecbccb8c1af5cd55866cd18584edd7a7bb43ce72b016677840d7febe68ebb8` |
| 45 | `theorem` | [maxIdxOn_eq_iff_eq_maxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-iff-eq-maxon.md) | 549 | `result-track:8e1798d51d3e7a1664d1da864aba46119948840cbdedeaf7a1194c978d205813` |
| 46 | `theorem` | [maxIdxOn_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-cons-source-edition-2.md) | 558 | `result-track:debfdb6f5e580a831c8c0edc388c19feec59109b80c2051a8f4251c1bbfd1b45` |
| 47 | `theorem` | [maxIdxOn_eq_zero_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-zero-iff.md) | 568 | `result-track:b4c705dc2346fb95c45940a8474039dfe1917911249bc074846ef5ca8bddc9fa` |
| 48 | `theorem` | [maxIdxOn_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-append.md) | 575 | `result-track:aa0e29596124f1aed9ec9dc0cd75928d36e84f864364b2fc4feaad427323c431` |
| 49 | `theorem` | [left_le_maxIdxOn_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/left-le-maxidxon-append.md) | 586 | `result-track:c37977c07a9408b361b89e8ca6bbb54ac91856a23550cee440b21dfcb262a60b` |
| 50 | `theorem` | [maxIdxOn_take_le](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-take-le.md) | 592 | `result-track:7a39d4936142f650ddf1ff1ac094dbfaef58aadc440ceccbe0092e67114b7285` |
| 51 | `theorem` | [maxIdxOn_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-replicate-source-edition-2.md) | 599 | `result-track:c052c930d71298d4af092bb1681e3598a17d42897637512a91fbd1a767e94e5e` |
| 52 | `theorem` | [minIdxOn?_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-nil.md) | 606 | `result-track:f3be5729153bc2464e9bbd34b326f23b4ce4fb5a4aa2748d3faf3828008ca8e3` |
| 53 | `theorem` | [minIdxOn?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-singleton-source-edition-2.md) | 611 | `result-track:86be4562a955b09e45789a82e6dc21bd5002ce05f64d925e66ff38974a2fcf1f` |
| 54 | `theorem` | [isSome_minIdxOn?_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/issome-minidxon-iff.md) | 616 | `result-track:d1886811c0a453e48b84f90dab7528d672e4d73b16200051a4d1690c30385183` |
| 55 | `theorem` | [minIdxOn_eq_get_minIdxOn?](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-eq-get-minidxon.md) | 620 | `result-track:23e1a2e4c3d9732cb288047dd182401785e8796df9a63e6c24b2c73b02dc02d8` |
| 56 | `theorem` | [get_minIdxOn?_eq_minIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/get-minidxon-eq-minidxon.md) | 627 | `result-track:0804e236a355211391f9021d83d6cb0d200790fe80e06231a428a6851c0a6df0` |
| 57 | `theorem` | [minIdxOn?_eq_some_minIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-eq-some-minidxon.md) | 632 | `result-track:a6cb32add56d0c961b6ed24aacd58cce80ab99b2c5d96c6c2dbb4dd4c3ec3605` |
| 58 | `theorem` | [minIdxOn_eq_of_minIdxOn?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-eq-of-minidxon-eq-some.md) | 638 | `result-track:6594f13fa830a4eba5058025134891375c920ca7af85229979bd614eb760319b` |
| 59 | `theorem` | [isSome_minIdxOn?_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/issome-minidxon-of-mem.md) | 644 | `result-track:121f1ca328026e6bf45f87caaedbc49c7814a0e55c2a562adc55acaaf90a77e4` |
| 60 | `theorem` | [minIdxOn?_cons_eq_some_minIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-cons-eq-some-minidxon.md) | 650 | `result-track:037d8022a68eda6dd3a98c544be08ab7254196852784d80576a14d4077e814d7` |
| 61 | `theorem` | [minIdxOn?_eq_if](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-eq-if.md) | 655 | `result-track:44fda85cc4483a86bb93f2a15a6dd9cd9281956e4b7e13331a18dbfe6acff723` |
| 62 | `theorem` | [minIdxOn?_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-cons.md) | 664 | `result-track:16c37fe2ed90f6c35656d01f8fcd97ca467eedeb05af5979ae7bd2bcd4452f66` |
| 63 | `theorem` | [ne_nil_of_minIdxOn?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/ne-nil-of-minidxon-eq-some.md) | 672 | `result-track:0acb8ed0e77c824ef66ed995b5fc7decf4026d6e6d9e10d38818e8bcf3838e2a` |
| 64 | `theorem` | [lt_length_of_minIdxOn?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/lt-length-of-minidxon-eq-some.md) | 678 | `result-track:359f0e76e8acec88bcee193451a32bd4e6226723f1ba2733ba611ec850460926` |
| 65 | `theorem` | [get_minIdxOn?_lt_length](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/get-minidxon-lt-length.md) | 686 | `result-track:44f75688bc78b16509dc8ffca52c0880eaa600d7338a636d418dd615182c5433` |
| 66 | `theorem` | [getElem_get_minIdxOn?](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/getelem-get-minidxon.md) | 692 | `result-track:a589c98fdd3f2f430e6eb412c4e2d17afa54a8fa9936e07d78711045aaceec5a` |
| 67 | `theorem` | [minIdxOn?_eq_some_zero_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-eq-some-zero-iff.md) | 697 | `result-track:6437feaa2a1ffe9394b5c8c99888c294120fc79e8851bb6b1bb1908a2991902d` |
| 68 | `theorem` | [minIdxOn?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-replicate.md) | 702 | `result-track:92a54df7e282cace31dfa54d49d9cd259b359a61d3462928638b3f897a5618fd` |
| 69 | `theorem` | [minIdxOn?_replicate_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/minidxon-replicate-of-pos.md) | 708 | `result-track:9ad83f18eaebdb2db8696adc80c3e6ccd5c225d015ffc4b669dd6b97823a631d` |
| 70 | `theorem` | [maxIdxOn?_eq_minIdxOn?](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-minidxon.md) | 715 | `result-track:3181104c4ac83724d66d6024b8befcd3a26a15d04f0624627845b99d1bd5a66b` |
| 71 | `theorem` | [maxIdxOn?_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-nil.md) | 721 | `result-track:d6305b64261cd3824d5935d02c31040b94471d6d8e397a45d2699596818c0314` |
| 72 | `theorem` | [maxIdxOn?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-singleton.md) | 727 | `result-track:3f523023dd13ea65c009bdc59ecb28027ee8408918f295fa10019dd0c50e2c54` |
| 73 | `theorem` | [isSome_maxIdxOn?_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/issome-maxidxon-iff.md) | 733 | `result-track:a94488d5b5116b096041af9439420107d0957eee436184c942f56616e59c01b0` |
| 74 | `theorem` | [maxIdxOn_eq_get_maxIdxOn?](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-get-maxidxon.md) | 738 | `result-track:7e092fecc8bcebd67ddd95cd29bae5b216f4041e3d27f7c4d749728c0c7ccf85` |
| 75 | `theorem` | [get_maxIdxOn?_eq_maxIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/get-maxidxon-eq-maxidxon.md) | 744 | `result-track:02a0425294036d7bceb0713a94693abdbdc2e2bd0316d9893a4dd3de4c80a610` |
| 76 | `theorem` | [maxIdxOn?_eq_some_maxIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-some-maxidxon.md) | 750 | `result-track:3736511594e221723d245ffd4afb5442c06db8915af04c2b8f524709fd73d440` |
| 77 | `theorem` | [maxIdxOn_eq_of_maxIdxOn?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-of-maxidxon-eq-some.md) | 755 | `result-track:f7ccfe8e850d1d88dbaeeffa53b279bcbe56cbb1ae054a4c7f01a83349d4090e` |
| 78 | `theorem` | [isSome_maxIdxOn?_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/issome-maxidxon-of-mem.md) | 761 | `result-track:dd5d434155cf00590cc3d93b46cf1e783d60bf2419f17f0d116e211c87b8493b` |
| 79 | `theorem` | [maxIdxOn?_cons_eq_some_maxIdxOn](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-cons-eq-some-maxidxon.md) | 767 | `result-track:c2e349692ce8297e85900f5633457b9dbc06430de08f3adde5bb4a809b31ccbf` |
| 80 | `theorem` | [maxIdxOn?_eq_if](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-if.md) | 773 | `result-track:cfb86057f1454026242e6a9daf09a9914ce80f905e843a3ee3cc926e52c631cd` |
| 81 | `theorem` | [maxIdxOn?_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-cons.md) | 783 | `result-track:5fd9e14f5755a2706cafb05efd432222e8cd68b8755b385a22bbb26010ad010a` |
| 82 | `theorem` | [ne_nil_of_maxIdxOn?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/ne-nil-of-maxidxon-eq-some.md) | 793 | `result-track:01c56480184adfc300e9b5a7965c8c61146be3814b44ecc334560307690f0e38` |
| 83 | `theorem` | [lt_length_of_maxIdxOn?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/lt-length-of-maxidxon-eq-some.md) | 799 | `result-track:fc8b6a95bd99545ae42966003ca7c5daadd1ff6c28bc0e1e2ff730aba146a44c` |
| 84 | `theorem` | [get_maxIdxOn?_lt_length](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/get-maxidxon-lt-length.md) | 805 | `result-track:ce815827bf773e772ac974ee655fa732c6046a2b491f2a854edb4311a9110fac` |
| 85 | `theorem` | [getElem_get_maxIdxOn?](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/getelem-get-maxidxon.md) | 811 | `result-track:a0f0c27a62d1e95eff9fd9b12277f30f70f7888ff804bb8f95a2a3825893945d` |
| 86 | `theorem` | [maxIdxOn?_eq_some_zero_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-eq-some-zero-iff.md) | 818 | `result-track:91e77d065b0486c3a1af97d977d4233899ef337c9098a27605e7aeaf5c253143` |
| 87 | `theorem` | [maxIdxOn?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-replicate.md) | 825 | `result-track:5edd32921d532dec9be639e7aac4479f1734da87e0ea3b357da62ab641c53a96` |
| 88 | `theorem` | [maxIdxOn?_replicate_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/MinMaxIdxPublic.lean/declarations/maxidxon-replicate-of-pos.md) | 832 | `result-track:c4911d42c1930b070e07a231e9ebb93a7872d993fb3d6d2acb819754fdd32b95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a8e0b90e8da1f0405eb4c0b331b9dfe61f7e74aa6e18469337947ae1484e8f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Varianteacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Varianteacc11877fc025b8333bf375cbc3e5c56a6420cb17d3741405e18556c90c0690.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
