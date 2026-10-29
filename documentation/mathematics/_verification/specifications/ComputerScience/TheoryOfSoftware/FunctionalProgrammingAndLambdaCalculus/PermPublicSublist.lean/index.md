# Verification target: Perm Public Sublist

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a1a3a37aee8bc87a494e2450b6bbb939840562a",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a1a3a37aee8bc87a494e2450b6bbb939840562a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Util.ProofWanted` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nil_subperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/nil-subperm.md) | 31 | `result-track:3d9e366772bafee631a2e18949923c927f4973e582fba13501822faf042a2c06` |
| 2 | `theorem` | [Perm.subperm_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-subperm-left.md) | 33 | `result-track:14dd2e13c1eaf5529b38b131e99b2c0f6d59a190d28658d92de4301182c8a3e3` |
| 3 | `theorem` | [Perm.subperm_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-subperm-right.md) | 39 | `result-track:420ffc9754b6e5f6fdbe85dad09382b43e3835461f8ddf7061dc8b69d9fe3998` |
| 4 | `theorem` | [Sublist.subperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/sublist-subperm.md) | 42 | `result-track:1923f5d6d8eda6b1eb98232ceb9d1ccf7a6aa6b22d082e748a910843eb01d9ae` |
| 5 | `theorem` | [Perm.subperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-subperm.md) | 44 | `result-track:e68030759bc669803586fc86848396bcf4db509c514edd7fd28e091491cb9dcc` |
| 6 | `theorem` | [Subperm.refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-refl.md) | 46 | `result-track:ff89e81cd8e8c001ba8fc585fda117c68e23e5f61f884823740c0d8188dcf7f4` |
| 7 | `theorem` | [Subperm.trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-trans.md) | 48 | `result-track:9507c995afba7ef0ad45f71d97b4c9c3a8a50d99832a561b861bfbc696d65417` |
| 8 | `theorem` | [Subperm.cons_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-cons-self.md) | 53 | `result-track:4406973c0f5a69583ff14c7625839783f4176621aa2d6edfe08432c5950bf3f2` |
| 9 | `theorem` | [Subperm.cons_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-cons-right.md) | 55 | `result-track:cf60d3f8c851450ebeb17d3c205022e3c6f1d8ce02bd521ff45e850dceda0365` |
| 10 | `theorem` | [Subperm.length_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-length-le.md) | 58 | `result-track:436558e1324b4946ecefb70ff7f3bf367ac27686767533f718208cf58c276470` |
| 11 | `theorem` | [Subperm.perm_of_length_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-perm-of-length-le.md) | 61 | `result-track:ed222b225d22d4d303070ec3fb2e550a6d36b4d39781584149192436d63945ae` |
| 12 | `theorem` | [Subperm.antisymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-antisymm.md) | 64 | `result-track:1e5cf7559e998e272d9cffea5fe2231c784b22bc7f781eb8f836a78538317958` |
| 13 | `theorem` | [Subperm.subset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-subset.md) | 67 | `result-track:f44a5065294673106aa18c9edc9f06a15eaa4d2f83c468cef5cc0036ea3de165` |
| 14 | `theorem` | [Subperm.filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-filter.md) | 70 | `result-track:3fc4d442e56db5de41059ea0bf23ec3e955915fd6eed030d8185f399db62994e` |
| 15 | `theorem` | [subperm_nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-nil.md) | 75 | `result-track:2f0e31a9a7b5b6b2483d8948266689d77bb7881bcb2efc3976c5c9cbf2ca7284` |
| 16 | `theorem` | [singleton_subperm_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/singleton-subperm-iff.md) | 78 | `result-track:55c52a8464bd504872a4a3b3b2887b6a5063c59213e0389d2445dd1c126e8824` |
| 17 | `theorem` | [Subperm.countP_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-countp-le.md) | 82 | `result-track:187b81181502649ff3475bf1e299a6f98bae0a051c2e099ce9aaed2e39d0f676` |
| 18 | `theorem` | [Subperm.count_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-count-le.md) | 85 | `result-track:c40e79ae67d66c8cdcdfb627787b14d1f706a1ff74d502bafca341429c3d2f13` |
| 19 | `theorem` | [subperm_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-cons.md) | 88 | `result-track:988f8632d8af924fc77a098ddd891a1480101b2640484ba3b23464a4738c05d5` |
| 20 | `theorem` | [cons_subperm_of_not_mem_of_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/cons-subperm-of-not-mem-of-mem.md) | 95 | `result-track:9e5951b912b377304ac0c36b9941e016151748db4b8f69ff61208d57d049c5fd` |
| 21 | `theorem` | [subperm_append_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-append-left.md) | 116 | `result-track:1afdaae920b7231b5bb964a0398c8ff3e86ca488100abe3d52440c3a80b33933` |
| 22 | `theorem` | [subperm_append_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-append-right.md) | 120 | `result-track:cb756656aa596c210888e5236237d6b871e9b434509fb3f35c9ca4a99f4c1504` |
| 23 | `theorem` | [Subperm.exists_of_length_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-exists-of-length-lt.md) | 123 | `result-track:807ed620ed80eaf350f228371e5ff77b6eb6bd765add7f1ce88017997bfe857c` |
| 24 | `theorem` | [subperm_of_subset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-of-subset.md) | 139 | `result-track:b55095e670d9d7ffcb9d96c74112ba616806a23dea2808a6e59d97e369f7ae94` |
| 25 | `theorem` | [Nodup.perm_iff_eq_of_sublist](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/nodup-perm-iff-eq-of-sublist.md) | 146 | `result-track:a0c6da869b54d8e6dc478e0f65dad33726f9971272fee3f5361bd4fc8e268ee8` |
| 26 | `theorem` | [subperm_cons_erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-cons-erase.md) | 164 | `result-track:43e5d010d1a1ae3bceb0e56d08d81c5ab3dbb6889f61fc54a241ec768db353f8` |
| 27 | `theorem` | [erase_subperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/erase-subperm.md) | 170 | `result-track:a7ee9c75299b1aed1c2f5287e8b5ef7714e5bde44fd2dc20512a914bcc8582e8` |
| 28 | `theorem` | [Subperm.erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-erase.md) | 172 | `result-track:71eac2a6587dc323ce93cc0a861a06d189f3673af5c7f0b8a10d133a34b3a4a7` |
| 29 | `theorem` | [Perm.diff_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-diff-right.md) | 176 | `result-track:35ee5d89c8c358bee4596cdc0ee31d04a8ce2273b755764acaad858cd625eecc` |
| 30 | `theorem` | [Perm.diff_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-diff-left.md) | 186 | `result-track:9354f3ec8f72620644f0ca58c28b4722fa44f8f3e899649062c58f33ca04d029` |
| 31 | `theorem` | [Perm.diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-diff.md) | 198 | `result-track:4e2183cc33f7de987c0499b95df6190d06679c0c248a4a9ff02c4157c3b66b20` |
| 32 | `theorem` | [Subperm.diff_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-diff-right.md) | 202 | `result-track:c616dee2f1433f69c19ca4d12632214698e17e6aab1b27e8460835900e436bb3` |
| 33 | `theorem` | [erase_cons_subperm_cons_erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/erase-cons-subperm-cons-erase.md) | 214 | `result-track:3295667504c183bbdf425860fa4a9cbf547d33c022f7513c20a5148d272dd60b` |
| 34 | `theorem` | [subperm_cons_diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-cons-diff.md) | 222 | `result-track:e6eaf1f925d536aaac6757597fb7a3203331b3c0e4447334f813afd38af92431` |
| 35 | `theorem` | [subset_cons_diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subset-cons-diff.md) | 230 | `result-track:6096619bab39029d74ee0a94ce97efc0d9e826f38518c48150e523196b4edc7d` |
| 36 | `theorem` | [subperm_append_diff_self_of_count_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-append-diff-self-of-count-le.md) | 235 | `result-track:8240d1eb8c1af0d718286db084a5c49088c93e24385db6e33e2f159ded7bae7b` |
| 37 | `theorem` | [subperm_ext_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-ext-iff.md) | 253 | `result-track:748ab9e78c7c2c58df06a0c9c611bc5804a9446d0db8eae40228675a52f6c188` |
| 38 | `theorem` | [isSubperm_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/issubperm-iff.md) | 260 | `result-track:1d2eae360e128ac1930ee509b1cea29be2c297898f6d8e65bdcd717135a1da02` |
| 39 | `instance` | [decidableSubperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/decidablesubperm.md) | 263 | `declaration-track:1fc93d3873897b7cd7e09be7609d4be5c12edb2c9be9c63aeb39ca0da644261c` |
| 40 | `theorem` | [Subperm.cons_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-cons-left.md) | 267 | `result-track:6f6bb0388088681ba6f7e15759660f74502a8392f45b955f923692ad2a94fdfd` |
| 41 | `theorem` | [Perm.union_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-union-right.md) | 278 | `result-track:1590c8991ea9f76e572fcd48f970dca243218b73a6764016568c12cebfdcf83d` |
| 42 | `theorem` | [Perm.union_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-union-left.md) | 286 | `result-track:071d9414247d42aad96561faf1c2904b44d4b06969dca6e94b8c647797f946e7` |
| 43 | `theorem` | [Perm.union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-union.md) | 291 | `result-track:8ed555d3e0b2c915e10535420680511b8442b53512d377a0142dc45a8471ec27` |
| 44 | `theorem` | [Perm.inter_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-inter-right.md) | 295 | `result-track:be4e7eca4b49403400a3c7092e4358e85af6f15c74677af6747baa5ff83ef483` |
| 45 | `theorem` | [Perm.inter_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-inter-left.md) | 297 | `result-track:df8ec8f4edafd637154aaf38a329b0d1427dd5a37c07b316dd04959029436f4e` |
| 46 | `theorem` | [Perm.inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-inter.md) | 300 | `result-track:b3f00c8e05e49eae965667ade57a19dd32c904d788a31111ef12e32aa1d1b874` |
| 47 | `theorem` | [Perm.flatten_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-flatten-congr.md) | 304 | `result-track:a13ae5231025d717b3222b7ecdd88c714dd3ffc664ac001ecdfca35499c8e398` |
| 48 | `theorem` | [perm_insertP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-insertp-source-edition-2.md) | 309 | `result-track:c4405602b877595ecdc9d01d26341db5c2b074c34764dfca88d67890bb981a25` |
| 49 | `theorem` | [Perm.insertP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-insertp.md) | 317 | `result-track:178256ba1cb9f9081d64f0d4831da5c56714c21e34e339ec48a7e79a0909ed28` |
| 50 | `theorem` | [getD_set_perm_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/getd-set-perm-cons.md) | 320 | `result-track:23a1ff573d34254619fb2a72b69e0138155c96442b4ffacefd519d89a036af32` |
| 51 | `theorem` | [cons_uncurry_swapAt_perm_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/cons-uncurry-swapat-perm-cons.md) | 327 | `result-track:239eb7177c66695adcb9a36c8569cf478c483739c13715ab2786eb588f8fe1ca` |
| 52 | `theorem` | [swap_perm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/swap-perm.md) | 330 | `result-track:5a0b0e880871f58beb1a684e5689784206d99143445772b726f64489022940d1` |
| 53 | `theorem` | [mem_swap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/mem-swap.md) | 338 | `result-track:17131412657309518e4a4837cdcba2bfd7fd09eac5ee25526b129d231c47dc04` |
| 54 | `def` | [Subperm.idxInj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-idxinj.md) | 350 | `declaration-track:517196a280253b6664a624c3a425b5b4551378255af47837c0dd4b8c7c3a9a2a` |
| 55 | `theorem` | [coe_idxInj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/coe-idxinj.md) | 356 | `result-track:9937869f417ce8d69e2bab1e22d783b8474db356334c0ee024f370f84b55e608` |
| 56 | `theorem` | [Subperm.getElem_idxInj_eq_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-getelem-idxinj-eq-getelem.md) | 360 | `result-track:5820c1a56207da52a082d19e21614ef86b4e666589b5f71000374782557b55de` |
| 57 | `theorem` | [Subperm.idxInj_injective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-idxinj-injective.md) | 364 | `result-track:c98c998ed50412247ca381e17403af75e3f792d67d58b9af2acf2a6632aeee2e` |
| 58 | `theorem` | [Subperm.idxInj_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/subperm-idxinj-inj.md) | 370 | `result-track:f77ab63a31f4627beec3506f37a7425e1d37555b7dacf44a660d9b6b5927d7be` |
| 59 | `def` | [Perm.idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-idxbij.md) | 383 | `declaration-track:f52a71d072363218368e5290e357c2d1c01e0ba6f189b091d873fdbc5845f81f` |
| 60 | `theorem` | [Perm.subperm_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-subperm-idxbij.md) | 387 | `result-track:c92c09834b7f536379dbb910542de3e34ee2daf618b6c4e5ed8e2a3fb466bb6e` |
| 61 | `theorem` | [Perm.coe_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-coe-idxbij.md) | 391 | `result-track:161eba5556d88c7d1f15114d3225d52250dab22ee5da3db1ad4cb9cf4c2d267c` |
| 62 | `theorem` | [Perm.getElem_idxBij_eq_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-getelem-idxbij-eq-getelem.md) | 394 | `result-track:f1a0e3c7c0877f2146a70e0e7a409c973c69bf6d5ce2a9b4dd84ca943fc4d184` |
| 63 | `theorem` | [Perm.getElem_idxBij_symm_eq_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-getelem-idxbij-symm-eq-getelem.md) | 398 | `result-track:ba70ab104ea9572023801b255d0966f4c5e551f7d1eebe1e7600bc4dbb5767a9` |
| 64 | `theorem` | [Perm.idxBij_leftInverse_idxBij_symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-idxbij-leftinverse-idxbij-symm.md) | 402 | `result-track:53c67cfe36a9ec2527e3cbd2e42fd91bf9dfa28a5ecc6897d4b6bf4e16ead79d` |
| 65 | `theorem` | [Perm.idxBij_rightInverse_idxBij_symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-idxbij-rightinverse-idxbij-symm.md) | 405 | `result-track:df6b2fe6d14ec26e5dae87c6694e96b8124625bc6b1c1602b1ed9ff9705b1489` |
| 66 | `theorem` | [Perm.idxBij_symm_rightInverse_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-idxbij-symm-rightinverse-idxbij.md) | 408 | `result-track:8c70c33fb9b9262a3ad8f0f32a7674e7283ab6ae14357899c721fa63c9346a99` |
| 67 | `theorem` | [Perm.idxBij_symm_leftInverse_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-idxbij-symm-leftinverse-idxbij.md) | 411 | `result-track:1ddfb8b8dbcb3ad0089ef04b9383cc0690443efaed57680b796b936d97c2d7f1` |
| 68 | `theorem` | [Perm.idxBij_idxBij_symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-idxbij-idxbij-symm.md) | 414 | `result-track:30a1bf975fb7ea054299a73f15bde96f7393478ed50444475fa30ad5f17f4a30` |
| 69 | `theorem` | [Perm.idxBij_symm_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-idxbij-symm-idxbij.md) | 417 | `result-track:742e9aaab5ba7c3501dbc8e72124ca3d4c6a49d415956ce1926f2204aa93abdd` |
| 70 | `theorem` | [Perm.idxBij_injective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-idxbij-injective.md) | 420 | `result-track:cd13c90fdb0c73633007aba896fc0cf4b106ac17fd58650e41f531d7c0cfcb60` |
| 71 | `theorem` | [Perm.idxBij_surjective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermPublicSublist.lean/declarations/perm-idxbij-surjective.md) | 423 | `result-track:f8ce7ba5f775b3a6af88ef9d5eed2d7e741ccddb1a8549e2d5c6d92b2be884aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4164350418652f5fa666e61a6a87e6326aef9a4cca7392840bd519c9949a6d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf5f5547a4c0e2d45a63f855378c845dc4e4f5ad5ed8bce0c80331ee3dbb9bc03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
