# Verification target: Erase Public Erase PEmpty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad8a10fe57d5b95cb8fcbd750b50554de7764dca",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad8a10fe57d5b95cb8fcbd750b50554de7764dca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Erase` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Erase` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eraseP_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-empty.md) | 35 | `result-track:7c4fb1cfe1610ef8c25e9540181b2a10cf38cb50c8ba5ad8cb579f205486d7f4` |
| 2 | `theorem` | [eraseP_of_forall_mem_not](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-of-forall-mem-not.md) | 37 | `result-track:2fede3ae4cb4f5e8d0ad92f076bab918946b3203a7b76b2c421a042f803b4233` |
| 3 | `theorem` | [eraseP_of_forall_getElem_not](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-of-forall-getelem-not.md) | 41 | `result-track:26f32a16ab101f8215d2baf54d1fc5747a0eccc7632760faba288c6098188a1c` |
| 4 | `theorem` | [eraseP_eq_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-eq-empty-iff.md) | 47 | `result-track:c4318add6888ba450a17baaf913fd473ce90773fc1a7308171ee979a75d0476f` |
| 5 | `theorem` | [eraseP_ne_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-ne-empty-iff.md) | 51 | `result-track:919dcaf3fe24dad8c7bbdad82816d2aa921f763232129e2fd06ac156d42cfb06` |
| 6 | `theorem` | [exists_of_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/exists-of-erasep.md) | 54 | `result-track:4edfd0c9780ecc907ca330b5bc4c2ae587db103a44f70df50262fbf16f640892` |
| 7 | `theorem` | [exists_or_eq_self_of_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/exists-or-eq-self-of-erasep.md) | 61 | `result-track:92f6ab5e678affa388b199409912bcdcf789e1bf0879e5ffa02cce2877bd710a` |
| 8 | `theorem` | [size_eraseP_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/size-erasep-of-mem.md) | 70 | `result-track:5cc00c511edf1cd8b93e0618730e3dd17af5c7499e03ae96694d25dc1cb222d5` |
| 9 | `theorem` | [size_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/size-erasep.md) | 76 | `result-track:f92b024698b08213227170ec5273e8a5d613948af16bef80189bd65b80b9ab1e` |
| 10 | `theorem` | [size_eraseP_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/size-erasep-le.md) | 85 | `result-track:251f4a01a6db86385fb4fcf2ef62c8fb2700cc5248088cbb1591808cd77033f1` |
| 11 | `theorem` | [le_size_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/le-size-erasep.md) | 89 | `result-track:b72fefa864fca3f880b5a44c0bc1f1708092a01ebfd5f778bdce45e4e164a435` |
| 12 | `theorem` | [mem_of_mem_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/mem-of-mem-erasep.md) | 94 | `result-track:7f9e3208fde17fba056fd24bac722e7d67921c270cded5872b460aa7740b5f26` |
| 13 | `theorem` | [mem_eraseP_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/mem-erasep-of-neg.md) | 98 | `result-track:84ae87fd14c23dad5468b72cafe493e4a5cdccd93276ce5f0a876c9705d2c496` |
| 14 | `theorem` | [eraseP_eq_self_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-eq-self-iff.md) | 102 | `result-track:225239ad9e77f35588cf83202e959b3043002da97c9b6fd03ef8289aeacc54eb` |
| 15 | `theorem` | [eraseP_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-map.md) | 107 | `result-track:23c4e16084eb676b9d3f067e0c95520944f1c757edb053b21178cc029e335ee9` |
| 16 | `theorem` | [eraseP_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-filtermap.md) | 112 | `result-track:9307b0da7932cd89d00445cbe34be901f803b592bbcf9b1ea4a2082b42a6e894` |
| 17 | `theorem` | [eraseP_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-filter.md) | 118 | `result-track:a4f31d9c1741f6cf8178cd0e77d11073e875d8c5c6fcfe25f2edd330158daca4` |
| 18 | `theorem` | [eraseP_append_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-append-left.md) | 123 | `result-track:73004fa183fd7a2473559f2fd4704a0326202691b5017b46f9286778ec738d3a` |
| 19 | `theorem` | [eraseP_append_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-append-right.md) | 129 | `result-track:bf79c899ae8eb0a7aa3410d4e9d1f215d96d35b42b65b92bc4a4c2d9d2c5cf34` |
| 20 | `theorem` | [eraseP_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-append.md) | 136 | `result-track:5f87f2fa355bc9f7484b4da84d25d5e1043d6d47490c91f04196d4ed9e971ee5` |
| 21 | `theorem` | [eraseP_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-replicate.md) | 144 | `result-track:d774e0fc69c9c8b40583f47dad52ab27238605160facc155fa0ce6e440913b85` |
| 22 | `theorem` | [eraseP_replicate_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-replicate-of-pos.md) | 149 | `result-track:390932f08b53b0b48fff0c2045e4a5826146d5812783c35e6b20540b671a18e3` |
| 23 | `theorem` | [eraseP_replicate_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-replicate-of-neg.md) | 154 | `result-track:a969be2ac712e6262b2d4d0d99628171f2ae46cb698520698b23ff218da484cc` |
| 24 | `theorem` | [eraseP_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-eq-iff.md) | 159 | `result-track:f44f16b77cc538b05d7548392aa7bc1767496c107349c9961357038003676d7e` |
| 25 | `theorem` | [eraseP_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erasep-comm.md) | 175 | `result-track:a883385fdd12fb92e8c9481f61af49566a6c321632b34f455aae57aefb78ed38` |
| 26 | `theorem` | [erase_of_not_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-of-not-mem.md) | 185 | `result-track:7507ec1ce7bcc03f33eb24b3f84bb3994622201e416511886e43dcdc6eb9d25f` |
| 27 | `theorem` | [erase_eq_eraseP'](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-eq-erasep-source-edition-2.md) | 190 | `result-track:87bb0a40a12d52b3407fbafde6fba1773289520e0ea0dfe6b4b55869cd608c11` |
| 28 | `theorem` | [erase_eq_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-eq-erasep.md) | 195 | `result-track:776cfb8503cfcfcc10e0ca438673060351fcbda425ada1b0a6c4cd3a479c8812` |
| 29 | `theorem` | [erase_eq_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-eq-empty-iff.md) | 199 | `result-track:9ee8104e68d0fbfa8ec2c7dba5a08c2f6f5815b836fb4fcecdfe6c6bb6c85825` |
| 30 | `theorem` | [erase_ne_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-ne-empty-iff.md) | 204 | `result-track:92de9f8c2539eae6d4e7ecb2c30fc421848cdcd8bd99002d58fca3c4874235cc` |
| 31 | `theorem` | [exists_erase_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/exists-erase-eq.md) | 209 | `result-track:67da98697a731e2e49895207b9985f727106a7d9bcfbce79294c7ee5e0cde41c` |
| 32 | `theorem` | [size_erase_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/size-erase-of-mem.md) | 214 | `result-track:a20f4229c52232893137087d6cf3ba48c8f916e5ae11a7a6557635861543d427` |
| 33 | `theorem` | [size_erase](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/size-erase.md) | 219 | `result-track:54c507255cdb80a92d567dbdffb2661dda961f68aecca27851800e2a4b160ffb` |
| 34 | `theorem` | [size_erase_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/size-erase-le.md) | 225 | `result-track:d3a321c597fe8073da608c0296e3f025d63fe5fd0c20edb6b048b67a45bc645d` |
| 35 | `theorem` | [le_size_erase](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/le-size-erase.md) | 229 | `result-track:232fdd4a0ec4d1b4ed1fbe2b5ffc3ad37512e0623a140f203014b6acac747ae2` |
| 36 | `theorem` | [mem_of_mem_erase](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/mem-of-mem-erase.md) | 234 | `result-track:d204e56bff8fd4c0c102a45e36d64a467f5afb14188a0d7b984e03ab134e1828` |
| 37 | `theorem` | [mem_erase_of_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/mem-erase-of-ne.md) | 238 | `result-track:7660fddc6c37be2e4a7e77770975ed7a2c817271f76d3dd3c2ccea2c59c8e977` |
| 38 | `theorem` | [erase_eq_self_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-eq-self-iff.md) | 242 | `result-track:1e10e65ba2f6e0974dd50ba6cf957a5f696cf7ba0cc19c28d2657ee15f834df1` |
| 39 | `theorem` | [erase_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-filter.md) | 247 | `result-track:2cc8e91c18617f88846d630695bb75b0143cd4c9344208c136a916880b85ff29` |
| 40 | `theorem` | [erase_append_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-append-left.md) | 252 | `result-track:60863c28f2880a25fd3bf3a7eafbab7805dc32221feb114f1de620740b82473e` |
| 41 | `theorem` | [erase_append_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-append-right.md) | 258 | `result-track:47bd647ba8cc01eb978166a60d9dbe871fb4d80e589bd4088c71d3d07603acf4` |
| 42 | `theorem` | [erase_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-append.md) | 265 | `result-track:78de2e07edaef033a13ccb6c9ae15e220df6dcf45b37a8f95daba1ca665b380a` |
| 43 | `theorem` | [erase_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-replicate.md) | 273 | `result-track:2b475998b14f9aa1fb4d5533311cc3920ca10a7d41a9a50782a88d69dae58c91` |
| 44 | `theorem` | [erase_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-comm.md) | 282 | `result-track:276b759c76f6047ada04044de7d6f711e81a5d4b80c1d8e9c16790f356d7f191` |
| 45 | `theorem` | [erase_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-eq-iff.md) | 287 | `result-track:cab0b7a0695d553832e99f5bba1126bc118851c84e401df94c23d71b5c126d1d` |
| 46 | `theorem` | [erase_replicate_self](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-replicate-self.md) | 301 | `result-track:8f7a2203aeb5ee7cc8c4f59f362ff77e01e5bd808341e40c5d6c189ce713be45` |
| 47 | `theorem` | [erase_replicate_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-replicate-ne.md) | 306 | `result-track:7010727fb995f57c4f4f32b7a884b8b7140bf82ed36be2298d304a8e453b5563` |
| 48 | `theorem` | [eraseIdxIfInBounds_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidxifinbounds-eq.md) | 316 | `result-track:c9a92b0bd1993ecc8336ae0c52216799ef42e4e3ed3773b4aec40b245338ee5a` |
| 49 | `theorem` | [eraseIdx_eq_eraseIdxIfInBounds](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-eq-eraseidxifinbounds.md) | 322 | `result-track:18259187a018f1887e1f34f1eeeaa1e473918fe6df8ec85e743ed367b87c3ccb` |
| 50 | `theorem` | [eraseIdx_eq_take_drop_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-eq-take-drop-succ.md) | 326 | `result-track:3c081398ab7b27dd3081caf55cc35afbd2c4748b4e52064d39e005634fda7f0f` |
| 51 | `theorem` | [getElem?_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/getelem-eraseidx.md) | 340 | `result-track:3631d834bf1cc6f77db3511fd499b37fee2511d1a16b38c4b63f90f3ed41bb4e` |
| 52 | `theorem` | [getElem?_eraseIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/getelem-eraseidx-of-lt.md) | 345 | `result-track:4d1dff2dc316e10e9f8e5afac352293a956cf08c9420bcbfffd4038524d9632a` |
| 53 | `theorem` | [getElem?_eraseIdx_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/getelem-eraseidx-of-ge.md) | 350 | `result-track:64786a4af87a46a4515731df45299f29d8349eef35325b03b4df2c6748dfb058` |
| 54 | `theorem` | [getElem_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/getelem-eraseidx-source-edition-2.md) | 358 | `result-track:fb9e1157d8a146c16375e2db47f5a1fc31e8d38a2c27657284e81ce9110bf225` |
| 55 | `theorem` | [eraseIdx_eq_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-eq-empty-iff.md) | 367 | `result-track:429d15254e5fa65963d885a3bbce8ee52923b9cc61b0f5d3d5f3d67942eef1fa` |
| 56 | `theorem` | [eraseIdx_ne_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-ne-empty-iff.md) | 374 | `result-track:c0151c9c92182d667e6e79168b0acb9b7acef02bd2f2cbe884e36791d67e2bb8` |
| 57 | `theorem` | [mem_of_mem_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/mem-of-mem-eraseidx.md) | 381 | `result-track:1cfee4e512cfd54e0879732acc241468df80f49d55452aff946fc8293b6da3bc` |
| 58 | `theorem` | [eraseIdx_append_of_lt_size](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-append-of-lt-size.md) | 387 | `result-track:f66dfd42650ce8a474e32776bdc618de7ccf7a24f0d0c34479106c17e32ce22c` |
| 59 | `theorem` | [eraseIdx_append_of_size_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-append-of-size-le.md) | 394 | `result-track:f6d0d0764fcd84c7c7f86422eca75a32e50addca254da14543c688d46bd5033e` |
| 60 | `theorem` | [eraseIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-append.md) | 402 | `result-track:ec229c1beae31aa60229c03faf9835682868b382c25306105842aabe9ec79a99` |
| 61 | `theorem` | [eraseIdx_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-replicate.md) | 414 | `result-track:c7a022d63b8c228907fbee8fde9802d7d32d190f5df901c47b26c73770db10df` |
| 62 | `theorem` | [mem_eraseIdx_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/mem-eraseidx-iff-getelem-source-edition-2.md) | 420 | `result-track:92eb303aed0ef8212707d93eb0507d8aa6b9b2388dcaa266677e0ac3d24f3d94` |
| 63 | `theorem` | [mem_eraseIdx_iff_getElem?](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/mem-eraseidx-iff-getelem.md) | 424 | `result-track:61c161b7a56b292206fa4ce85e9407b7df43006b5d3f525c44ddd913d1c4b120` |
| 64 | `theorem` | [erase_eq_eraseIdx_of_idxOf](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/erase-eq-eraseidx-of-idxof.md) | 428 | `result-track:ba43e866393ee6287c5683f84fda3ddc536a06c5600c5fac02833ee83629dc1d` |
| 65 | `theorem` | [getElem_eraseIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/getelem-eraseidx-of-lt-source-edition-2.md) | 434 | `result-track:5721d973c71230aaba24ae368bf5f093e4db5767dfd6d0b263d5625233fbb85a` |
| 66 | `theorem` | [getElem_eraseIdx_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/getelem-eraseidx-of-ge-source-edition-2.md) | 439 | `result-track:f2ae4ff1d14b8f7d4da062ed565632168c3395abb62fb886b459ec33e464043c` |
| 67 | `theorem` | [eraseIdx_set_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-set-eq.md) | 444 | `result-track:6fec7f4376d4443f31cc13568b303e3daad6ff23fd6a70eda1db6d7fab4e453c` |
| 68 | `theorem` | [eraseIdx_set_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-set-lt.md) | 449 | `result-track:9d35c602355fe57f11197bffb110175e88dc2aa33ba785f124f64b149df339bb` |
| 69 | `theorem` | [eraseIdx_set_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-set-gt.md) | 454 | `result-track:0f181f113965c1de023ec2b73d3d25aa3d01d4443b72359537c7f2129ff1d78c` |
| 70 | `theorem` | [eraseIdx_set](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/eraseidx-set.md) | 460 | `result-track:f5405eba09ea6d0045630c1debf3ccfa2d377c74c7303c544bb409e59241f36d` |
| 71 | `theorem` | [set_eraseIdx_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/set-eraseidx-le.md) | 477 | `result-track:efb6f8909379f18c28cebc9acfb2b20cdaef1d98e0e9c8fea1d0cd65dd9a348e` |
| 72 | `theorem` | [set_eraseIdx_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/set-eraseidx-gt.md) | 483 | `result-track:252bc8b9cb8de25cbaf1968f9a5d510d042a7b9a98b84f0dc3cf975b5ddb7838` |
| 73 | `theorem` | [set_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/set-eraseidx.md) | 489 | `result-track:1de1b465868fd78933e0dd46fe2abee8ff606c66fa29e677ab39f43d2e27c46d` |
| 74 | `theorem` | [set_getElem_succ_eraseIdx_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ErasePublicErasePEmpty.lean/declarations/set-getelem-succ-eraseidx-succ.md) | 501 | `result-track:a7dbb370a1c23f94e612eb2f603eeb3085c8e1d745fe45a5a9020a4acf665480` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e942ef72af1517e373371d2c8230cb7d068a319f1c5da24f89d360bda987f0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant6a9b10ab5eaa72a4d16280384ec5bfcd22d94afcbe40156167a95feef71dfaa9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
