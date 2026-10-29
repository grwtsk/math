# Verification target: Data Finset Basic Disjoint Of Subset Iff Left Eq Empty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a49b951c14e905c3004ae235cc8b5ce75bde33",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf9ebef00ae0e5acc9054c518529c3a2f9c3856d56dec3e2e64ece934f7ec7ded.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a49b951c14e905c3004ae235cc8b5ce75bde33`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf9ebef00ae0e5acc9054c518529c3a2f9c3856d56dec3e2e64ece934f7ec7ded.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantf9ebef00ae0e5acc9054c518529c3a2f9c3856d56dec3e2e64ece934f7ec7ded.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Attach` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Disjoint` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Erase` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Filter` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Range` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.SDiff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Directed` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.SymmDiff` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sizeOf_lt_sizeOf_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sizeof-lt-sizeof-of-mem.md) | 62 | `result-track:940f9aed4b7a4b768e7ad367ea95bd443e21bbea06caf4c5c2fa0f75e87d541d` |
| 2 | `theorem` | [disjUnion_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjunion-eq-union.md) | 79 | `result-track:e9552fa119c5d2b620924bec169c7984562b16bf5a3ead22de3e4f64ab46a001` |
| 3 | `theorem` | [disjoint_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-union-left.md) | 83 | `result-track:7392074834cc3861d6455ba5a08f1bb13e91c5e8ecda41ab6a271da8de962feb` |
| 4 | `theorem` | [disjoint_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-union-right.md) | 87 | `result-track:d595dddcf8d24877bde7207356bf9bd3f23c71fbcffba1dfb521e09e67bfa97d` |
| 5 | `theorem` | [not_disjoint_iff_nonempty_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/not-disjoint-iff-nonempty-inter.md) | 92 | `result-track:1bc2a7abba5916d070477f489ec072e8654609694dea85b725219f263ff96895` |
| 6 | `theorem` | [disjoint_or_nonempty_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-or-nonempty-inter.md) | 97 | `result-track:aa701931d5d462e1b442d642d7bfc054a3108c9e8427fbb4250a5d34f4ab95f1` |
| 7 | `theorem` | [disjoint_of_subset_iff_left_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-of-subset-iff-left-eq-empty.md) | 102 | `result-track:c678a93bb5e7e5763f20e6b1c3224113a82c083e2b34d2012868451f37afc084` |
| 8 | `lemma` | [pairwiseDisjoint_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/pairwisedisjoint-iff.md) | 106 | `result-track:3002f0ac932785164a6ad7e0220a89435921caddaed02874376d26d81af49f95` |
| 9 | `instance` | [isDirected_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/isdirected-le.md) | 113 | `declaration-track:8c8b5034b10cb73ee039d7a37caadcb4e7424276978f7263846a22d23aa54c18` |
| 10 | `instance` | [isDirected_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/isdirected-subset.md) | 114 | `declaration-track:cbc99948656ff071e7e1dc93b10998593ac9c225b8171efe087e7fdf304bb517` |
| 11 | `theorem` | [erase_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-empty.md) | 123 | `result-track:50f51724f3e1aeb3ffe4b1da1c81791c69b35c5807019e017ac358c9fea31c7f` |
| 12 | `lemma` | [Nontrivial.erase_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/nontrivial-erase-nonempty.md) | 126 | `result-track:2dc004d7f0ba351e167c04d5f7b1f91f184eed052c41312feb38e6f983f796b2` |
| 13 | `lemma` | [erase_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-nonempty.md) | 129 | `result-track:88a02e347562e3ee5ae45e07828418e72723dceb7d7763797695994e3560a1bd` |
| 14 | `theorem` | [erase_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-singleton.md) | 136 | `result-track:39537b0c2534df2e70e147ff8e9cc02a0d0217ca1c0933b3aa444ae12218b33b` |
| 15 | `theorem` | [erase_insert_eq_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-insert-eq-erase.md) | 141 | `result-track:987c60736823eab9dc139fe6ffc5b3869a1e39b2890401c843dc2bcd9dc3ca03` |
| 16 | `theorem` | [erase_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-insert.md) | 146 | `result-track:fdd2c9fdc665e42a92f7abd3de7e65f9a45033439921b8eca9bda0b65c766c44` |
| 17 | `theorem` | [erase_insert_of_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-insert-of-ne.md) | 149 | `result-track:280c56d83c04d706d401358dff89ef5d0cf1656f91716bccc4b7c069614757dc` |
| 18 | `theorem` | [erase_cons_of_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-cons-of-ne.md) | 155 | `result-track:8d6ff383de820b4858901eda81e1cb27a901439aa96d6620e64fd6eccbb5135c` |
| 19 | `theorem` | [insert_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/insert-erase.md) | 159 | `result-track:0e8a2e4a8f6273b4c29564ee2d9e09b205fcdbe93d3af3580540b3bb889f031b` |
| 20 | `lemma` | [erase_eq_iff_eq_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-eq-iff-eq-insert.md) | 166 | `result-track:53a84611800bf0b694e0b2402651ce401a12cf88a73480fcf5e5592bab6a5bc4` |
| 21 | `lemma` | [insert_erase_invOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/insert-erase-invon.md) | 169 | `result-track:9ddb4e9fb200b5a721e8db5e64f92f58fa271e5611e10c86505a76b92b49e2c5` |
| 22 | `theorem` | [erase_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-ssubset.md) | 173 | `result-track:fba86f34ece6ecd8af8b06e378e34bf239a5175fd1644491bb4b535cf9aeea77` |
| 23 | `theorem` | [ssubset_iff_exists_subset_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/ssubset-iff-exists-subset-erase.md) | 178 | `result-track:69e65893de20bc5aa316b4aef7f401ec66f6b8f794e8d3a3417a2bc822e7ef62` |
| 24 | `theorem` | [erase_ssubset_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-ssubset-insert.md) | 183 | `result-track:1a8f666ba85f6255f875506940f18607c7393e2c178014494b0c92fdf336ad60` |
| 25 | `theorem` | [erase_cons](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-cons.md) | 187 | `result-track:8657e80ca4dcb4fe2ba4ed3cc725e2fe702e212dc30878da96a12e39e2bebaa2` |
| 26 | `theorem` | [subset_insert_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/subset-insert-iff.md) | 190 | `result-track:091dc0cbc36ff3edb406715eb28a90534e1fe79c237a6f3c79627090b7eac01d` |
| 27 | `theorem` | [erase_insert_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-insert-subset.md) | 194 | `result-track:f790a711371c3addeb01761c9af54828cbbf6cf0f08344a25f96292c4aa1a518` |
| 28 | `theorem` | [insert_erase_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/insert-erase-subset.md) | 197 | `result-track:202866de3fc714189568ee6b48e7a4c2b8d88688341be5c6f7f95e563b6589c4` |
| 29 | `theorem` | [subset_insert_iff_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/subset-insert-iff-of-notmem.md) | 200 | `result-track:2e76385c250f535bdeb73a420e26ea3959db976f7aa893a2b608a840c88c550a` |
| 30 | `theorem` | [erase_subset_iff_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-subset-iff-of-mem.md) | 206 | `result-track:7b504d01b4a776342c03e9cd182439673b28979ef8796a3732d07cfd8645cd43` |
| 31 | `theorem` | [erase_injOn'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-injon.md) | 209 | `result-track:4ae43332454c038dd01e9aed906ffc9ee85b6fbdef05775d9b18359199f4d3d1` |
| 32 | `lemma` | [Nontrivial.exists_cons_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/nontrivial-exists-cons-eq.md) | 214 | `result-track:52a0799a003e7a09596db933950ffe27f5bb417f5d9c13c13f1fb004f276f8ef` |
| 33 | `lemma` | [erase_sdiff_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-sdiff-erase.md) | 229 | `result-track:f3f1fe44b9af92cc90676f3aa0fc267dccc65ac0685782e99e07a74df09360b7` |
| 34 | `theorem` | [sdiff_singleton_eq_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-singleton-eq-erase.md) | 234 | `result-track:286f468b48253fb19a45773cfe30763eada7f1fa1fc7de9a24d56028d2fc8cf0` |
| 35 | `theorem` | [erase_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-eq.md) | 239 | `result-track:723aa413df0adec322f27564565c0a3cea2b3c740024160e4cad5b869dce6e89` |
| 36 | `theorem` | [disjoint_erase_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-erase-comm.md) | 242 | `result-track:f6354fbdae596c3c717d0320f4b8fae506830554f75167f005043b47977f65a1` |
| 37 | `lemma` | [disjoint_insert_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-insert-erase.md) | 245 | `result-track:0cc0913b8149724647b1b9a179cf9570495ee90085b13a2a66d6a5d975c715c5` |
| 38 | `lemma` | [disjoint_erase_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-erase-insert.md) | 248 | `result-track:d2e514a1ae50381437037adb43aae7763520b680c02ec7ac17264ea644a65d58` |
| 39 | `theorem` | [disjoint_of_erase_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-of-erase-left.md) | 251 | `result-track:8c632b9ed2971d382283cfcee41effb5b231da58fb57c84e19d9b260de2e4113` |
| 40 | `theorem` | [disjoint_of_erase_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-of-erase-right.md) | 255 | `result-track:0b4ed6f533b972bbca6f3e73b0c038d55894a0bf77072a4ed92a4d54ba231f23` |
| 41 | `theorem` | [inter_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/inter-erase.md) | 259 | `result-track:1225704dadf110c4c50840df59b8fa2963d6b32a48b79d4213364bbf9c7444f9` |
| 42 | `theorem` | [erase_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-inter.md) | 263 | `result-track:43f3b76e6339915720b9fb6372f3fc58645710044feefac7a5bbb98ebd0cbc7d` |
| 43 | `theorem` | [erase_sdiff_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-sdiff-comm.md) | 266 | `result-track:1b9c3f77a1e29803a2d31136176c498a90ab6421a751afc17c2ed7bbcb39f221` |
| 44 | `theorem` | [erase_inter_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-inter-comm.md) | 269 | `result-track:c7c8b9e208bdc42f062366a1b593ce11692a92c5945effd750a6410e6c077a71` |
| 45 | `theorem` | [erase_union_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-union-distrib.md) | 272 | `result-track:1f6abaaac6b3d5ea8d876d90a88d3cee1685cc019cf3a26228e1f7b8f611fe3b` |
| 46 | `theorem` | [insert_inter_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/insert-inter-distrib.md) | 275 | `result-track:b612be4b54e3856fcf1865f5279494ae4753cfc7bde644c6b6ea56bea5cedbaa` |
| 47 | `theorem` | [erase_sdiff_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-sdiff-distrib.md) | 278 | `result-track:35e6c3ea7f5761308f638be14330b3bbdac20a0bd47c6c51fe1d24e732298b20` |
| 48 | `theorem` | [erase_union_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-union-of-mem.md) | 281 | `result-track:a03fba4c83ecfc61bf3e840bd9bbf6a59608291ad5d5054c5dcfecd0c7406f4c` |
| 49 | `theorem` | [union_erase_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/union-erase-of-mem.md) | 284 | `result-track:c60a573a7ce5191f9e6af01420158d13da2632c356e0c4678d825a5cb1d9a66a` |
| 50 | `theorem` | [sdiff_union_erase_cancel](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-union-erase-cancel.md) | 287 | `result-track:ac91914adbde424445b1f4442b082074fd856029020ce2551ec72665afb8c457` |
| 51 | `theorem` | [sdiff_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-insert.md) | 290 | `result-track:743372fec0ee78ff0afd00c5e8065911c8bea6aa499ea96d0998265f23acb9df` |
| 52 | `theorem` | [sdiff_insert_insert_of_mem_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-insert-insert-of-mem-of-notmem.md) | 294 | `result-track:1195f66b17d539a98e5fa2e6c774744ba0fa7d9204d151c39cf9fa0ee009c15b` |
| 53 | `theorem` | [sdiff_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-erase.md) | 301 | `result-track:bd648e1d95589839ff2aa39bb3047b3bb662655c3f37ee5e28455147222a3ad1` |
| 54 | `theorem` | [sdiff_erase_self](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-erase-self.md) | 305 | `result-track:195ac294e97f670d1a554941fbcb44e0e22c5142572f1554c7eef5b16e3ecc8e` |
| 55 | `theorem` | [erase_eq_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-eq-empty-iff.md) | 308 | `result-track:f7fb8951757249ab1da8e9c880dcee723af5624a86c8a3dc8c70d3f73d68d03e` |
| 56 | `theorem` | [sdiff_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-disjoint.md) | 312 | `result-track:d79c5290ec9b306ec9e152554b420c55886d9e64a5a08117bd23294290f3cba8` |
| 57 | `theorem` | [disjoint_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-sdiff.md) | 315 | `result-track:6398f7146ba74f89dd9ec0d314fda3005fe9104f9b65a0cb1039f86623ad3416` |
| 58 | `theorem` | [disjoint_sdiff_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-sdiff-inter.md) | 318 | `result-track:9e67983521356866d35a7c5fc99277cf3d92fd0485ca281976d443643b2d455a` |
| 59 | `theorem` | [attach_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/attach-empty.md) | 326 | `result-track:4b7609cbb60c0d74bc0cd0dda5c08d298724a1891aba2ad1854cfa050c737b72` |
| 60 | `theorem` | [attach_nonempty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/attach-nonempty-iff.md) | 330 | `result-track:25a18936ffa7c63fef9b8d000a2585c3c0a5dc2e2510f452152cbdaee36a2da0` |
| 61 | `theorem` | [attach_eq_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/attach-eq-empty-iff.md) | 337 | `result-track:eba5772f0b4545496e3a10b7f9594692cd0f1ae7f90f13d1c5e38cc5dc95053f` |
| 62 | `theorem` | [filter_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-singleton.md) | 345 | `result-track:e01e9b9eabe0ccdfac66339540d2c23a7657359db7c0b52fc60c29a6cbce0d6c` |
| 63 | `theorem` | [filter_cons_of_pos](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-cons-of-pos.md) | 351 | `result-track:5ff5e59add7e11a7254a2bd9447b6d48be40c21dff9d63fdbb3038883560d181` |
| 64 | `theorem` | [filter_cons_of_neg](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-cons-of-neg.md) | 355 | `result-track:0b9b3a6a14a4b9dccccc13011f5120f91eeb0f09199029f70590d12cf0764b30` |
| 65 | `theorem` | [disjoint_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-filter.md) | 359 | `result-track:56533c74db5bcfb7bdc64a32d7baa953709389a4f15ddc9cc4df4b8069abe501` |
| 66 | `theorem` | [disjoint_filter_filter'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-filter-filter.md) | 363 | `result-track:9b7972d37a88b13e3ac1df600dc39fbf4d239eb23907bfc9ce7dad38b9c570f8` |
| 67 | `theorem` | [disjoint_filter_filter_neg](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-filter-filter-neg.md) | 371 | `result-track:75ea50b0a9d4ded88bcdd2d13704227de87dd44a7215b106c1d6546e2c5f0239` |
| 68 | `theorem` | [filter_disj_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-disj-union.md) | 376 | `result-track:b3c8b4a948988ddf25e13705cfbde88f079f01106ce6ba9bc03ac02508acc901` |
| 69 | `theorem` | [filter_cons](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-cons.md) | 380 | `result-track:ff9adae07adc4221b6be8d4628ad2fa4e8f33586532eb3c9df23941c089e264c` |
| 70 | `theorem` | [filter_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-union.md) | 390 | `result-track:c0dc408a95faa11699389515bfc86386b635376383675ef43d92b1713492302e` |
| 71 | `theorem` | [filter_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-union-right.md) | 393 | `result-track:54e5924975cdbc1c5faf0d751eb752e6f251e666e23b8450572996ae476d8e9c` |
| 72 | `theorem` | [filter_mem_eq_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-mem-eq-inter.md) | 396 | `result-track:2519d1809add3492ef7112490aa39ee426f89fcc940e1c2c7da3943ed3537eea` |
| 73 | `theorem` | [filter_inter_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-inter-distrib.md) | 400 | `result-track:c93075d2e402dc3cf1c6dd965d20278240a1244b02b91ce47026984a9a10d16e` |
| 74 | `theorem` | [filter_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-inter.md) | 404 | `result-track:59378119b52bb9cd70166fda665599d05dbc8a774516cbaf75b7daefe3666662` |
| 75 | `theorem` | [inter_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/inter-filter.md) | 408 | `result-track:e16758426d63c980dc7701959bc3a4a457c3b3c347edc0d26c6b7ef5d4ce3e6a` |
| 76 | `theorem` | [filter_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-insert.md) | 411 | `result-track:ad3a1b47033f9db8c5be3c61c339c426b2d0475a44a9379b19a4b11e43f8d97f` |
| 77 | `theorem` | [filter_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-erase.md) | 416 | `result-track:d1ce2664ac28b638592402aab6792491681806c1c66e0437b92c35e4a2296101` |
| 78 | `theorem` | [filter_or](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-or.md) | 420 | `result-track:1e8745cec029da3494af195d14f647966460a217443fbddb1966a27fe4476fc6` |
| 79 | `theorem` | [filter_and](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-and.md) | 423 | `result-track:6b8b38fd91864e3be58eb3e426e23b2017bbdbb5805e8358f20119f016792a8e` |
| 80 | `theorem` | [filter_not](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-not.md) | 426 | `result-track:8efe91181a87ff9952af0258a4716dd86033eed9935fd0e9580f63560890bd84` |
| 81 | `lemma` | [filter_and_not](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-and-not.md) | 431 | `result-track:46527f1f39479e44a87a614b1bc6d43b570f455c4a508f059029960fc4bf0f15` |
| 82 | `theorem` | [sdiff_eq_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-eq-filter.md) | 435 | `result-track:94f5ffc27fd3bbf48a1902af60e511cd239617ced30fab42982b7e6def7df131` |
| 83 | `theorem` | [subset_union_elim](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/subset-union-elim.md) | 438 | `result-track:6fd634ad7cfa59ea7d9f7726440b28b2fb338891763559b26f902bf501ce03e2` |
| 84 | `theorem` | [filter_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-eq.md) | 456 | `result-track:a1222244e6a142c4149da34391d85491560ff596cfc2993adbf12d50b9e7733b` |
| 85 | `theorem` | [filter_eq'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-eq-source-edition-2.md) | 473 | `result-track:a71f0ba6e41a40158d8aa21c335ea085b47d73a9b900b06507fbba80a2b09e1f` |
| 86 | `theorem` | [filter_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-ne.md) | 477 | `result-track:268b67777672c6ba748a6ebe59837b2a6006a8ee96034a5acbd84805ddf1f2c1` |
| 87 | `theorem` | [filter_ne'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-ne-source-edition-2.md) | 483 | `result-track:5249cbb9edaa6225e4ee6c536f6850d1048fe11d6e6397feac12d2e248fc84c4` |
| 88 | `theorem` | [filter_union_filter_of_codisjoint](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-union-filter-of-codisjoint.md) | 486 | `result-track:cceba35bbd54ba1906e611ed56511891d20e8f7f9e2b83f724db779e7aab0e75` |
| 89 | `theorem` | [filter_union_filter_neg_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-union-filter-neg-eq.md) | 490 | `result-track:8dddd9fe927b5573d69754b469dac9ddd32d8456f028324f5820a7609a95f280` |
| 90 | `theorem` | [range_filter_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/range-filter-eq.md) | 508 | `result-track:710041d154123f23e4d64008b90e73c852337e8c04ad2d8ef5b467c1776d8290` |
| 91 | `theorem` | [toFinset_add](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-add.md) | 525 | `result-track:c3e9d88ce7bbb5d3502991c27af975a9c502443019dc8ed59c170256399fc0c4` |
| 92 | `theorem` | [toFinset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-inter-source-edition-2.md) | 529 | `result-track:d22f51045aaa97c0359d570a29eee128ca03974a9cb6203b4b14f9e36e423b19` |
| 93 | `theorem` | [toFinset_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-union.md) | 533 | `result-track:337947982c8741e703eaf4f5f135d57e818a20ad1d2e9f13a345d1421d07b8e2` |
| 94 | `theorem` | [toFinset_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-eq-empty.md) | 537 | `result-track:80fbad99f26feaed22cc6a215d9b5f90ed85b08ff2fa2c478ee74a0d95553933` |
| 95 | `theorem` | [toFinset_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-nonempty.md) | 541 | `result-track:53493c0adaa59bd7a5df907fc57071ec21687d2dc8575650ac7baa083a4027f5` |
| 96 | `theorem` | [toFinset_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-filter.md) | 548 | `result-track:8ad99fccd7ea6711fe5ced23fd7c5185ffa040933b5dbd54b5bd8757028af625` |
| 97 | `theorem` | [toFinset_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-union-source-edition-2.md) | 560 | `result-track:a6d2fca73c4f10cfccfcdfc0bb9e04fb1955339221213a62fba667cf0fa67082` |
| 98 | `theorem` | [toFinset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-inter.md) | 565 | `result-track:0de2d6b0c20d888c84cdff3be25ae7fa4f9f1dcc05557a9b236c825fa9a782e7` |
| 99 | `theorem` | [toFinset_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-filter-source-edition-2.md) | 573 | `result-track:b9fcd5261e12f6388a589518d845bd047b641b74dfd8f0bc3f417fd5b4dcaa87` |
| 100 | `theorem` | [toList_eq_nil](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tolist-eq-nil.md) | 584 | `result-track:2528d6659b72ec689772cc4f2e85b2d3e485cc5a51be14d3ee1d52e80ab4f122` |
| 101 | `theorem` | [empty_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/empty-tolist.md) | 587 | `result-track:3d3e4b618000e2a10954cfce5c94151a7a47e214512dc90f16c4c8b120cf117e` |
| 102 | `theorem` | [toList_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tolist-empty.md) | 590 | `result-track:2449af7b54b264f8a96c21ef02dbb83d982f4074f31c9d60f9788768e07b9d8a` |
| 103 | `theorem` | [Nonempty.toList_ne_nil](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/nonempty-tolist-ne-nil.md) | 593 | `result-track:a8ac364278a7470b01a4f2fb68a121de68006f84bdf967f00389fa7a36f5926b` |
| 104 | `theorem` | [Nonempty.not_empty_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/nonempty-not-empty-tolist.md) | 596 | `result-track:de6750a2d5680167f03d9f227db578da6912778910fe78500398e1b5adc1281f` |
| 105 | `def` | [chooseX](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choosex.md) | 610 | `declaration-track:81e56a443f54cadd788855b17df78bc3ba3579d4fe4b0351eca0ad40f6688e1c` |
| 106 | `def` | [choose](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choose.md) | 615 | `declaration-track:e853de5f6252889a34b89e239891acb3c1ecd37ec668749921def082cea98e42` |
| 107 | `theorem` | [choose_spec](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choose-spec.md) | 618 | `result-track:590fb0222002c860c5535e2ab46c606e477e64d05ef206ff0e646a0f986011e3` |
| 108 | `theorem` | [choose_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choose-mem.md) | 621 | `result-track:8ecc7ebe212fa2ee3860ba670d46be794abd0d4353a8d84f3976a37c02e60fd4` |
| 109 | `theorem` | [choose_property](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choose-property.md) | 624 | `result-track:86800ed6a6d0b0452d9333b39f277d3b7334a4e8c6bb41e4186a947858513bc8` |
| 110 | `def` | [Finset.union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/finset-union.md) | 637 | `declaration-track:1f6e18065d419629f5a896a61bd4e8c9ac001f0e6996fdf985f6b401b43a0bf9` |
| 111 | `theorem` | [Finset.union_symm_inl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/finset-union-symm-inl.md) | 642 | `result-track:cbe551eb25450306a895b232405676eea68587bbc5a7789d13dd34376bddd53e` |
| 112 | `theorem` | [Finset.union_symm_inr](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/finset-union-symm-inr.md) | 647 | `result-track:1f88aa1ee6b99266d3e1919252f22f88c5c07a5919a6eab3edd92c434884c0dd` |
| 113 | `def` | [piFinsetUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/pifinsetunion.md) | 653 | `declaration-track:ed7e2376888cbf9cc2ff9d53742935b836da87c0ac2f26db33aa8496995d2459` |
| 114 | `def` | [_root_.Finset.equivToSet](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/root-finset-equivtoset.md) | 659 | `declaration-track:bd2bd7c526f9ea50079acc40b3960f5de99479ab72e85b61f5ac9628bed6eaca` |
| 115 | `lemma` | [toFinset_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-replicate.md) | 672 | `result-track:5f2e0b738885cd96877fcda03f7448ef7d4620108fd3a46618379cf6f53056a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca0290581ba4d508eb5e705226cbe62cd52c57606b0811a0aacf5a67db98aa27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf9ebef00ae0e5acc9054c518529c3a2f9c3856d56dec3e2e64ece934f7ec7ded.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variantf9ebef00ae0e5acc9054c518529c3a2f9c3856d56dec3e2e64ece934f7ec7ded.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
