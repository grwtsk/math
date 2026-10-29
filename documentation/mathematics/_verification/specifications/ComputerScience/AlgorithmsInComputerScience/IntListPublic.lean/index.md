# Verification target: Int List Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "437f0afaa210e48d2e91098454a02527d360e30e",
  "lexical_observation_count": 98,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntList/Variant5760ee7f3c39d7b2515d52ad4ef327520f81bfc037224206e9fd51ba12f3333b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `437f0afaa210e48d2e91098454a02527d360e30e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntList/Variant5760ee7f3c39d7b2515d52ad4ef327520f81bfc037224206e9fd51ba12f3333b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntList/Variant5760ee7f3c39d7b2515d52ad4ef327520f81bfc037224206e9fd51ba12f3333b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 13; external provider; requires a separately pinned dependency.
- `Init.PropLemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getElem?_cons_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/getelem-cons-succ.md) | 24 | `result-track:c7c40576f8ea3fd1e58411ceeb0b05edcd297aa18b9bece75e139a9a888f8ce8` |
| 2 | `theorem` | [getElem?_map](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/getelem-map.md) | 26 | `result-track:d6c3f97ccef772acd58b19d0b19bf6f518bd6528acad580c07cd7e15e3a8ddd2` |
| 3 | `theorem` | [getElem?_zipWithAll](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/getelem-zipwithall.md) | 31 | `result-track:0e4d1c0501eaa2796f541e82bd8a7a7d0fca247a4151f22c2acaa1787bbefaee` |
| 4 | `theorem` | [map_id](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/map-id.md) | 44 | `result-track:5d0e9d3096e8fa44d87d1d2dbc922a7ba5f6f85959888297cce038c9e81d0ca5` |
| 5 | `theorem` | [map_id'](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/map-id-source-edition-2.md) | 47 | `result-track:8988355babb6101dd32c2f58c5023b9d8cac11fa0f3d4144073dc9b1f3fd2fd7` |
| 6 | `theorem` | [getElem?_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/getelem-zipwith.md) | 49 | `result-track:f1d66dbb119411cea795c85c015b6402e6de80b7bfe081feb190d90f6927aa58` |
| 7 | `theorem` | [mem_cons_self](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mem-cons-self.md) | 60 | `result-track:294a99c01286920a10a2ed649585b382e79414271529a35da53503d9c411ecab` |
| 8 | `theorem` | [mem_cons_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mem-cons-of-mem.md) | 62 | `result-track:693e202f54cb368b43055e1d5ae7ebc51a34d755ca32a138f4170cdaa9c5dd35` |
| 9 | `theorem` | [length_map](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/length-map.md) | 64 | `result-track:b7770d439685f5bf1390bc5fa50324c8a8861afb5908d55310fa6ae7a31f892e` |
| 10 | `abbrev` | [IntList](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/intlist.md) | 79 | `declaration-track:bfca9d95711a34772fd609e4e508d4ba6ec94c8ee481f7dba244f2008860b426` |
| 11 | `def` | [get](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/get.md) | 84 | `declaration-track:a2c433681c6e27a2363bb07b0769207088e20f888dd9c6c867405f5c6c936540` |
| 12 | `theorem` | [get_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/get-nil.md) | 86 | `result-track:42bd36e2627078b9a48e1f55b61ac7fd8659beb85009b0d50095bab32d9501cd` |
| 13 | `theorem` | [get_cons_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/get-cons-zero.md) | 87 | `result-track:4201eac2a733ae60348c412787262d7517f6b838d2d13ddc810c2bdf16eef82b` |
| 14 | `theorem` | [get_cons_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/get-cons-succ.md) | 88 | `result-track:a8ac42bc7d95d870cfc26e805b3918497866f9323e36d634b38f6a998083e646` |
| 15 | `theorem` | [get_map](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/get-map.md) | 90 | `result-track:75565b15a2a606ee0afb57e91ca40f9658ac5c5914983c32c86074bfeee23ec9` |
| 16 | `theorem` | [get_of_length_le](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/get-of-length-le.md) | 94 | `result-track:ca3795a5060e6827c6a31edbedbf3c42249384419ce1a8f75b1c4c9cafe39408` |
| 17 | `def` | [set](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/set.md) | 99 | `declaration-track:8b61a2c1811c81be99ecd1eb794ae23c564a1a9afeb705999b5ca056857998c7` |
| 18 | `theorem` | [set_nil_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/set-nil-zero.md) | 106 | `result-track:cd0183575db352fb18752da6f3c977c0e0746d0fea3a592fc6459d6870b7fda6` |
| 19 | `theorem` | [set_nil_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/set-nil-succ.md) | 107 | `result-track:df1dc71a216a9b3fafd992a2b6d301317f43867c25ea52d99fd97362944d0243` |
| 20 | `theorem` | [set_cons_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/set-cons-zero.md) | 108 | `result-track:bc5d385d2b4d5356d326e05334bd3a3f1695e8aae76e49306dec69b3de209d6e` |
| 21 | `theorem` | [set_cons_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/set-cons-succ.md) | 109 | `result-track:b77f8cbab8f899139b970c395a852b7f480d367dfe128d0e874787c49a72fe89` |
| 22 | `def` | [leading](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/leading.md) | 112 | `declaration-track:6b884caf3ded3c125873e89d751bd70a7ec54656d7add006d932c1efeb2ee53c` |
| 23 | `def` | [add](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/add.md) | 115 | `declaration-track:c671f28ce38f6b258ce5ccebe0baee604abd583df9e25335aa42386d9b63e536` |
| 24 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/instance-source-edition-4.md) | 118 | `declaration-track:d44838e25bdf3609bcd857356946650e77a205ca1aef7253fd02bd07f9eec918` |
| 25 | `theorem` | [add_def](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/add-def.md) | 120 | `result-track:9b791b2e826414d1ae00b10e2702eede3ca754bd5f6d44cb6718080913fdae4a` |
| 26 | `theorem` | [add_get](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/add-get.md) | 124 | `result-track:d91f767d0830df02585c3ac4d5f51e00058d7403bfe7a482c194451dfe66579c` |
| 27 | `theorem` | [add_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/add-nil.md) | 128 | `result-track:0581143d063dd27ccba9d81b9b078ec27056fa3cea3839f878e6bd9c81c00422` |
| 28 | `theorem` | [nil_add](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/nil-add.md) | 129 | `result-track:5d36950f5941306410c28c0d051bab915a727bdb18dbd0dae21e1a1b0b9db187` |
| 29 | `theorem` | [cons_add_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/cons-add-cons.md) | 130 | `result-track:a5c8123079bb42c1b7289ef00a0edb585a131cf52949695a51905190b93604c5` |
| 30 | `def` | [mul](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul.md) | 134 | `declaration-track:81bb81611f96cf32e1587ade36613018bc439ba5ea08aa2d13a182d6ef286fd4` |
| 31 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/instance-source-edition-5.md) | 136 | `declaration-track:e92e1031a26b9b95bdf08c07df5e4f80c01ae1d1697696a2d8b55db4b40c2120` |
| 32 | `theorem` | [mul_def](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul-def.md) | 138 | `result-track:dabafcabc49504cfd0b9cef033c3aedf77f61496ac28b52ba14219fd7fbaa865` |
| 33 | `theorem` | [mul_get](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul-get.md) | 141 | `result-track:d6c4c1c0c74bbd425914c73924ad8dccc1c4bce8fcdeefe1d6261bf1819effa5` |
| 34 | `theorem` | [mul_nil_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul-nil-left.md) | 145 | `result-track:ee6ff9ad90d8785297f507e97fb371518d493bc5d471fc49de9a978a4b461296` |
| 35 | `theorem` | [mul_nil_right](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul-nil-right.md) | 146 | `result-track:b624b5c872ba6ee1791fcaf3dbf67fe672a488ef5d0f75643154ec5557597795` |
| 36 | `theorem` | [mul_cons_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul-cons-cons.md) | 147 | `result-track:74488239fbf24a91b01b779e6a7f86d78b6024c4aaf11056f310f6aa20e66cf9` |
| 37 | `theorem` | [mul_cons₂](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul-cons.md) | 150 | `result-track:9f2249ea749b2030b86c68b7ac46815c9677f82629f069087cc82996317d12fc` |
| 38 | `def` | [neg](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/neg.md) | 153 | `declaration-track:155fef358920526f2c9fcec4ab3b74d48e42a2a2b9219c6a74769a6ac8cf0db2` |
| 39 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/instance.md) | 155 | `declaration-track:3a22789c9ef5d3c1b76c708a39a2242b49f67f063ae4f1844977ef9a9df740f9` |
| 40 | `theorem` | [neg_def](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/neg-def.md) | 157 | `result-track:cd66ddd35f3515fa5fe8cd0ba8e1c76e93d0a55e936b76338d31c0b1cf6b3221` |
| 41 | `theorem` | [neg_get](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/neg-get.md) | 159 | `result-track:53d5c5deb07d3fb10ef33cafc739b90b0d688566d8b51173511baf842e863877` |
| 42 | `theorem` | [neg_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/neg-nil.md) | 163 | `result-track:5b99377d3b578618c506a94e33cb458dbaa267b2e78ea6650b9cc6e76a1b3412` |
| 43 | `theorem` | [neg_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/neg-cons.md) | 164 | `result-track:040a842e2b2ebb66d137d972bfd938a2d641b3b488fc48228edef28f3de8f84c` |
| 44 | `def` | [sub](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sub.md) | 167 | `declaration-track:68ed0f3ae467672941ed44053ea49d9c96a3307867dce0b57dab101162ae6e24` |
| 45 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/instance-source-edition-3.md) | 170 | `declaration-track:bc66dfa270ec9fdc32cf0c415017be79cf6e32e061824d3453328dc63c66c8c0` |
| 46 | `theorem` | [sub_def](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sub-def.md) | 172 | `result-track:7da2eb8dd26ae6c3e66ee8eb1066163f498691cdeb45810f4720c8e0b1d116c4` |
| 47 | `def` | [smul](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/smul.md) | 177 | `declaration-track:c9410dfbe63e4916d4a9264579ea26aec958a0d273e979c0edae19892c755da7` |
| 48 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/instance-source-edition-2.md) | 180 | `declaration-track:3fcc1e305e8a0b447f889e3d496681c6aad3398486c8afdee267d31d50a6215e` |
| 49 | `theorem` | [smul_def](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/smul-def.md) | 183 | `result-track:235e9ccfd35fb8582ca6b07dafba328e10c8b95e7d4c0c40fb5506cc271de83c` |
| 50 | `theorem` | [smul_get](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/smul-get.md) | 185 | `result-track:e2f28ab81b58536600ed781c94d45e73e5e5a10c601c31fa1aad4e1c9f7c2d0c` |
| 51 | `theorem` | [smul_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/smul-nil.md) | 189 | `result-track:e2c04d6264b43755280f09d17fba65e8be6c06cf0f2a67b485bf2cdcbe33bb35` |
| 52 | `theorem` | [smul_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/smul-cons.md) | 190 | `result-track:9739d8b303acdd5f6f677dee77bab409b6b8de12b095cfc387d4ec97f03b59db` |
| 53 | `def` | [combo](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/combo.md) | 193 | `declaration-track:4a358c9bc3bd469e347782befba9d484ffa7f04e184fbf73683fa358b4b19720` |
| 54 | `theorem` | [combo_eq_smul_add_smul](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/combo-eq-smul-add-smul.md) | 196 | `result-track:db64f3c07db39945bb0765ecf041880dd036fcebbcd494b0f55bf8b4bda64838` |
| 55 | `theorem` | [mul_distrib_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul-distrib-left.md) | 207 | `result-track:81bf2ef7d653476e08f962ded2f5929e7174d0a8b1cf7a7f7bc6193b8c4572fb` |
| 56 | `theorem` | [mul_neg_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul-neg-left.md) | 224 | `result-track:c5419a9028d26fdd203c40ac46ebee187042b445b0a3222c6e625961a34a7558` |
| 57 | `theorem` | [sub_eq_add_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sub-eq-add-neg.md) | 233 | `result-track:a0a486d255dd7789c81569361dbb698cf1218aa16b4160a9f42395975024b280` |
| 58 | `theorem` | [mul_smul_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/mul-smul-left.md) | 241 | `result-track:f784a5156135e90134b5dc430f62c1f336f1215878dda40afc418dc6084070af` |
| 59 | `def` | [sum](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sum.md) | 250 | `declaration-track:6c67bff49d160c7dd871075708afa31762d5680921b33a3a2ffa3395f577cb1f` |
| 60 | `theorem` | [sum_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sum-nil.md) | 252 | `result-track:05d1e862fa106a6daee40e83cfc4e1a1daa0aacd6c577c12288b8e8cd941bf36` |
| 61 | `theorem` | [sum_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sum-cons.md) | 253 | `result-track:449d13a3f3d63a3dbe3329dc5f7ad40c2f9e2ab1b783f14c50dc96ce7cc68ad3` |
| 62 | `theorem` | [sum_add](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sum-add.md) | 256 | `result-track:b7ada731895887eefee892b9299c20d4faf44f366d8cc79408b9e2151a6e09e0` |
| 63 | `theorem` | [sum_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sum-neg.md) | 265 | `result-track:77c5c5a4fb7c73939c8814922455fbbefec4fba69f3f6e47712b84a4ed818953` |
| 64 | `theorem` | [sum_smul](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sum-smul.md) | 271 | `result-track:80c29b36e64b189338710256d6de55bd843d858f4f0f97b9c784d6424246a5e6` |
| 65 | `def` | [dot](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot.md) | 277 | `declaration-track:014754d4aaffb3749beda0cce35abaff16e1218296f4fa602b1a5853a73a9f05` |
| 66 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/example-source-edition-2.md) | 279 | `declaration-track:0c63d434ec0202745490a8501fb38907616979694b1efc1e2fa36a04f1e4f1a3` |
| 67 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/example.md) | 280 | `declaration-track:001830f1a58843b73bd9f3999d0109ba8dfd95703e073ec6758c6aa52b6cc44e` |
| 68 | `theorem` | [dot_nil_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-nil-left.md) | 282 | `result-track:d2dcfce6a1e6648fe95c2a4301cfac137424063bb958e744abde89cd626f0cb7` |
| 69 | `theorem` | [dot_nil_right](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-nil-right.md) | 283 | `result-track:643875c996a02eb8d027c5ba3cf852faf92eb3eec3edd9fa7ef72b3b782cb186` |
| 70 | `theorem` | [dot_cons_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-cons-cons.md) | 284 | `result-track:4def699cb8bc2c3c44e61adef2bb3cd0a47f0eba224057e8d4d14aefc0d1cd5c` |
| 71 | `theorem` | [dot_cons₂](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-cons.md) | 287 | `result-track:41c2ac497e910c868be6792ccfedac9d942439bdc9e02fef8d9a028e63e83d5e` |
| 72 | `theorem` | [dot_set_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-set-left.md) | 292 | `result-track:9bd5418cc7a246641a47ccddf04156cfbe165c0060cfbaf8cc189f88063a532e` |
| 73 | `theorem` | [dot_distrib_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-distrib-left.md) | 312 | `result-track:ce4108f86d63ac6dd4a90104954e3efca8a582a4f555aae31c03888b3b6cf58c` |
| 74 | `theorem` | [dot_neg_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-neg-left.md) | 315 | `result-track:a431dfc08e953ce0df16c8e09d87f6331370f5cd732c42c8733794a3603742b4` |
| 75 | `theorem` | [dot_smul_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-smul-left.md) | 318 | `result-track:b22216ca53c977ead92a4745a7bc3fedb09d9887bfce9f34000d47025622532c` |
| 76 | `theorem` | [dot_of_left_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-of-left-zero.md) | 321 | `result-track:6a8fe70c14d94cd2008752776b38af7e1ef8ae7763be0f2df2a17eb67a0d593f` |
| 77 | `def` | [sdiv](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sdiv.md) | 335 | `declaration-track:fb7113a241f92b41dfd778e6a96d35d44fcd15a56ada051e9aedcfa64df7e950` |
| 78 | `theorem` | [sdiv_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sdiv-nil.md) | 337 | `result-track:4706f5c0e81d42fe3aa6d623f5814ec92c19cd0bf52690296c5abba901e79ec1` |
| 79 | `theorem` | [sdiv_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/sdiv-cons.md) | 338 | `result-track:225d59a97ca038e098d0a1e8b50c55a2a5c7e0ecf32e62438493224939ea8890` |
| 80 | `def` | [gcd](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd.md) | 341 | `declaration-track:8e8e32cc21a80778809156787b95d0e2b3ef2f842b2a9a6264bc797364f245c7` |
| 81 | `theorem` | [gcd_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd-nil.md) | 343 | `result-track:bac662e04c83d2846da19ea5c045a3d8d211ec4bdb4f1fc2b1117484e241102c` |
| 82 | `theorem` | [gcd_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd-cons.md) | 344 | `result-track:197aad173e52a2b6e55f7506bdc46c5dfaeccd40997b09652887bb054278f46c` |
| 83 | `theorem` | [gcd_cons_div_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd-cons-div-left.md) | 346 | `result-track:1cddfd05d5d79ac6dd8ef063284c4374542352058a1c02db374e0258f2cd8cd6` |
| 84 | `theorem` | [gcd_cons_div_right](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd-cons-div-right-source-edition-2.md) | 350 | `result-track:ecfd18e4b6ff39d9879f4bcd4a74760b1dac3dca7df0662a8212d0a6b5062596` |
| 85 | `theorem` | [gcd_cons_div_right'](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd-cons-div-right.md) | 354 | `result-track:6274304669bdb30a10570e4fa5b5bc26360046ae5bd578db14cbedffd2cfa45d` |
| 86 | `theorem` | [gcd_dvd](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd-dvd.md) | 358 | `result-track:23bb8c01b23897a3f14d722544a367e672cdb54c921a8b1746a6e58e1c3840c4` |
| 87 | `theorem` | [dvd_gcd](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dvd-gcd.md) | 368 | `result-track:dc7fa1810f26443c8267c487099331270bbe3aa631fb4e09e9725e92694f8bde` |
| 88 | `theorem` | [gcd_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd-eq-iff.md) | 383 | `result-track:6c19d3d7224236ebac285add8e4c8fffecb90017ddd6ad1dc82e6d3ddfd56782` |
| 89 | `theorem` | [gcd_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd-eq-zero.md) | 399 | `result-track:1382c6f74d020ac05481564af051c9de415c8153e7bc266a4d2d60b943125147` |
| 90 | `theorem` | [dot_mod_gcd_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-mod-gcd-left.md) | 402 | `result-track:6b3eeb079eae0e46c3dd6a2fda3e3caf32a676b5533524194299f24be863dce0` |
| 91 | `theorem` | [gcd_dvd_dot_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/gcd-dvd-dot-left.md) | 414 | `result-track:97c301a8e39ec7d824c2ad1c9be81459e1831b0440d9d5866a49d04e26eb6dea` |
| 92 | `theorem` | [dot_eq_zero_of_left_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-eq-zero-of-left-eq-zero.md) | 417 | `result-track:7d5260bf9d5db1c1580f167dc0c7648188a34780eda184a069c409ec579c476f` |
| 93 | `theorem` | [nil_dot](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/nil-dot.md) | 427 | `result-track:5572b75584bbd09898a0b1f717def4d5dc964b4539aa944c7d528b2a27247c91` |
| 94 | `theorem` | [dot_sdiv_left](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dot-sdiv-left.md) | 429 | `result-track:f05ffb501cfec222ccfa1dda133f0efb2deb429e464b8ffe2c4e7ba28aa22df2` |
| 95 | `abbrev` | [bmod](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/bmod.md) | 443 | `declaration-track:5acbe769b78c3c121c7085b886e8af1d7d9b4bb3a74b8098377efeedf54189ca` |
| 96 | `theorem` | [bmod_length](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/bmod-length.md) | 445 | `result-track:26d1b766ca4de5d136c97b797fb3aae8d1a1669dc7ad7943fe0363f16a7b3e57` |
| 97 | `abbrev` | [bmod_dot_sub_dot_bmod](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/bmod-dot-sub-dot-bmod.md) | 452 | `declaration-track:e14c77e7aa8bbb2f20e1011b4010be266cdfda668c9795b21c8ee537ac102fdd` |
| 98 | `theorem` | [dvd_bmod_dot_sub_dot_bmod](../../../../../ComputerScience/AlgorithmsInComputerScience/IntListPublic.lean/declarations/dvd-bmod-dot-sub-dot-bmod.md) | 455 | `result-track:b3d315035bebc4ad634542b82dcfdc88de3e4dc9db6dbaf454ccad377c232b0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0b082b2791777c5d486e69a452a2fdac5043f3937c9a24281e59c97be554885 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntList/Variant5760ee7f3c39d7b2515d52ad4ef327520f81bfc037224206e9fd51ba12f3333b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntList/Variant5760ee7f3c39d7b2515d52ad4ef327520f81bfc037224206e9fd51ba12f3333b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
