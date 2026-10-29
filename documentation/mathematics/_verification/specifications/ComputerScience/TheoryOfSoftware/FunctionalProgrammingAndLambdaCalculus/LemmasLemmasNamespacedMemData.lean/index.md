# Verification target: Lemmas Lemmas Namespaced Mem Data

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "002547e89b294ed72a588f9b5f52af62fcef929a",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6f16a6779e4db75287795d746e1fd2016ba98801e4861bb7ccb7a3126f325336.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `002547e89b294ed72a588f9b5f52af62fcef929a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6f16a6779e4db75287795d746e1fd2016ba98801e4861bb7ccb7a3126f325336.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6f16a6779e4db75287795d746e1fd2016ba98801e4861bb7ccb7a3126f325336.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Nat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Tactic.HaveI` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Tactic.Simpa` — import line 16; external provider; requires a separately pinned dependency.
- `Std.Util.ProofWanted` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/macro-rules.md) | 22 | `declaration-track:0fdbb2b069a1d4b5f889ccb3b3bd4c2860ac28012febc5962f69115285ccba6e` |
| 2 | `theorem` | [getElem_fin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-fin.md) | 24 | `result-track:594cc6ebef95663c6ba57c3c81a8c5bf9e0046b5f96561b92526848140c284fd` |
| 3 | `theorem` | [getElem?_fin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-fin-source-edition-3.md) | 27 | `result-track:ca9c5d109e3c42ebf5c7ee37ed9e152e8539d62e80f386653b642a913571c69a` |
| 4 | `theorem` | [getElem!_fin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-fin-source-edition-2.md) | 30 | `result-track:65a2d09e401bd8deff2a0b070ba3dc4bcb5d1172fa80a12dc7dc2d625a3ea793` |
| 5 | `theorem` | [getElem?_pos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-pos.md) | 33 | `result-track:28ff932e5f3523db8e9c8dba719b38ffcfb41787db37187a9df846892e6f0e17` |
| 6 | `theorem` | [getElem?_neg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-neg.md) | 36 | `result-track:1fa9d7692b542e49760c3312025c39164e74c4d34d51cdccc042b94a1257714d` |
| 7 | `theorem` | [mkArray_data](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/mkarray-data.md) | 39 | `result-track:526feeb723e40ef640ed293af86ffce772dc78eb7fac951843c9af9aa3aaeedb` |
| 8 | `theorem` | [singleton_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/singleton-def.md) | 45 | `result-track:d2112a39c25423678d10004118dc926e30ed9ddd107a4970dc4fe9d3036b1626` |
| 9 | `theorem` | [toArray_data](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/toarray-data.md) | 47 | `result-track:f92676ba58ff164b543928e0d9b830bdf6651499ca22ab438a1f3faf98c5aded` |
| 10 | `theorem` | [mem_data](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/mem-data.md) | 50 | `result-track:d81584dff7d2accd3007bce984c5a93cdb29e633aefd5938e3d086c38ad175c3` |
| 11 | `theorem` | [not_mem_nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/not-mem-nil.md) | 52 | `result-track:228239bead3610eb37dee65df8274791994f319d74c912dc3bd4715998d28cb8` |
| 12 | `theorem` | [getElem?_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-mem.md) | 54 | `result-track:9b74cce09cd30f0288d044b7b124cb44f25992324700490f97c61fa5413d562b` |
| 13 | `theorem` | [get_eq_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-eq-getelem.md) | 58 | `result-track:03788d40c6ba6cea20c6478b1829c93792e9e4667ea1cd28808c1b80cf7e6940` |
| 14 | `theorem` | [get?_eq_getElem?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-eq-getelem-source-edition-2.md) | 59 | `result-track:8be107d4d9d96d6ab85d92313478fe1c65b252b3997d3d2f1bcbdb3cd54a54f8` |
| 15 | `theorem` | [getElem_fin_eq_data_get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-fin-eq-data-get.md) | 60 | `result-track:d67a3f111fb5fc086ad47f791e9764d873c009573616541e4641162f8cc75c4a` |
| 16 | `theorem` | [ugetElem_eq_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/ugetelem-eq-getelem.md) | 62 | `result-track:0ff8055a11a3f6d65bb330f53c54d4b3a30356840127b09261cf63ce646256e1` |
| 17 | `theorem` | [getElem?_eq_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-eq-getelem.md) | 65 | `result-track:3b4883247ba92a1bbde11e0ed70fff29da62c66d6cf6f98777c22eb3c8cb6d3c` |
| 18 | `theorem` | [get?_len_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-len-le.md) | 68 | `result-track:4228a0ced893937f6225a1d6e36ae8333b5714320941eac80cd0be6bf867b7ae` |
| 19 | `theorem` | [getElem_mem_data](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-mem-data.md) | 71 | `result-track:7d9461e66eff748003aef88c0a98dce2f90fd1731fb31a7799e81e80510290e8` |
| 20 | `theorem` | [getElem?_eq_data_get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-eq-data-get.md) | 74 | `result-track:2bc186869e0c047e256305432a0e65fdc721b16562a8040314579431456aeee9` |
| 21 | `theorem` | [get?_eq_data_get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-eq-data-get.md) | 77 | `result-track:c0038c5580739ffd974085331b7fa087530dc2412b52a801bd1c991ebd3afc27` |
| 22 | `theorem` | [getD_eq_get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getd-eq-get.md) | 80 | `result-track:44b82dd02fc16af37bbdf69cc6f21ca78a64aa240c9b00148b414ae77a0108e3` |
| 23 | `theorem` | [get!_eq_getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-eq-getd.md) | 83 | `result-track:1fe1b2be7824ac1ff822f93b231343d092a17e0174d5be3463485e9410c25c70` |
| 24 | `theorem` | [get!_eq_get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-eq-get.md) | 85 | `result-track:d0ced348852f3705d8d8c4a55e439ab77a3867e3acd35fe28d2e173c7af5f888` |
| 25 | `theorem` | [back_eq_back?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/back-eq-back.md) | 88 | `result-track:60e86fd798ed52096d8edf31e5b8459c4d57a2737be98d6f5b9d8243a0fb06fc` |
| 26 | `theorem` | [back?_push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/back-push-source-edition-2.md) | 91 | `result-track:afc541f3de458aeb542188a72e44f6b3d85fd3e374042357dcb004ca94f3fa30` |
| 27 | `theorem` | [back_push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/back-push.md) | 94 | `result-track:5f1c3a7567063306fd0b62ec0f320dc7adee99894885112e34bd10988dff0392` |
| 28 | `theorem` | [get?_push_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-push-lt.md) | 98 | `result-track:de0fbea2487bdd84078fc05bafb10d6cc58be2c7247676bdc59ede7cfcae547a` |
| 29 | `theorem` | [get?_push_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-push-eq.md) | 102 | `result-track:4cc9d8c0494d95a5056759a8ffe1e0fa0501bb1198d359b57e65e82027a780c8` |
| 30 | `theorem` | [data_set](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/data-set.md) | 107 | `result-track:5d068b7a1d06fae29f87283da8d27980a85f504c540cabffdb5f0f2e34cbc8c7` |
| 31 | `theorem` | [get_set_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-set-eq.md) | 109 | `result-track:58a0aa0990b615d9c0452dde3d2ea20cd396ef7fccf9f6e6221b4d3ebe9a5f8c` |
| 32 | `theorem` | [get_set_ne](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-set-ne-source-edition-2.md) | 113 | `result-track:5bd97f9d37cb5d74251a00256efabb72de756da0cdacca0ef3cfe46aa1ff86d7` |
| 33 | `theorem` | [get?_set_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-set-eq-source-edition-2.md) | 117 | `result-track:baaac0ed05f1237b0a285fe5d96940d91322dab6a3538a984a143b9a3d74e147` |
| 34 | `theorem` | [get?_set_ne](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-set-ne.md) | 120 | `result-track:117204e97cf1e44d682f0ea15787eff8e1618e1f808287b96858b3dfec684ed3` |
| 35 | `theorem` | [get?_set](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-set.md) | 124 | `result-track:4b0323024d7ac49782a769a55b82f36f34f31326929bca3f21a9870909a8d8e9` |
| 36 | `theorem` | [get_set](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-set-source-edition-2.md) | 128 | `result-track:c7c11e4520ca5a24e5400a3a4702e14a4ae3a04528d70b27ae4d925b77664892` |
| 37 | `theorem` | [set_set](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/set-set.md) | 132 | `result-track:f73af71cbb340fc13d1979c00d92d76cc54219443aba8cfbd172fa55a0e21a9c` |
| 38 | `theorem` | [fin_cast_val](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/fin-cast-val.md) | 135 | `result-track:1da8fdcb25580cb66f9f535c00d2e97ec2eb69e9a6ee8c4bfb3b0b72060f958f` |
| 39 | `theorem` | [swap_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/swap-def.md) | 137 | `result-track:56d1b4efa7cb32dc3876829761f39a8c53fcde37f6f2b112ec29005962a0da36` |
| 40 | `theorem` | [data_swap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/data-swap.md) | 141 | `result-track:56a266c1436f4805f4a67a55ad49fa691b70e4db8906b07cfbeacd970c4b1ae1` |
| 41 | `theorem` | [get?_swap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/get-swap.md) | 144 | `result-track:428810430dcccb93abb5d9341cf70eea08b0f0fccc255c2386b879f84d6cc1bb` |
| 42 | `theorem` | [swapAt_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/swapat-def-source-edition-2.md) | 148 | `result-track:e88bc57c1d4c64b2b2f548a9564da638c900cf4789c7c39bd91c206520cfec9c` |
| 43 | `theorem` | [swapAt!_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/swapat-def.md) | 152 | `result-track:4a5e98918a57bb7dfe9a86e9f51064bf12171e5b0d3c70c98d434b8222a4efdd` |
| 44 | `theorem` | [data_pop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/data-pop.md) | 155 | `result-track:3e7dc5cd0027a730a3565bb351788fe53c8c5691a659b2d0bf014f91cf042fab` |
| 45 | `theorem` | [pop_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/pop-empty.md) | 157 | `result-track:96bf6697b766d5f5c730ac44f699732eb73d5507ff839da3029b1c9b314914e0` |
| 46 | `theorem` | [pop_push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/pop-push.md) | 159 | `result-track:bf26f04f3ae1e12d9a48a279eedb4a6db271ad312ca3335474c9e88d4b45abc0` |
| 47 | `theorem` | [getElem_pop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-pop.md) | 161 | `result-track:ca00d4135abf7704039b177aebebb94f5fb5c000158eafb474c40280cb0987f2` |
| 48 | `theorem` | [SatisfiesM_foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/satisfiesm-foldrm.md) | 165 | `result-track:9bd423c18c5b702a6fe9d0504dc2fc71452427b6386488b404c25e84dc3957ae` |
| 49 | `theorem` | [foldr_induction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/foldr-induction.md) | 181 | `result-track:4015490be9c2e6693c72d7e6ef995f55853776a6fb417e1bdf43405780a7a527` |
| 50 | `theorem` | [mapM_eq_mapM_data](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/mapm-eq-mapm-data.md) | 189 | `result-track:b962ebe4150ba40aaafdc0210816a848014017ef5ef372002fd9ca309ef5419d` |
| 51 | `theorem` | [SatisfiesM_mapIdxM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/satisfiesm-mapidxm.md) | 197 | `result-track:6c5fb1b9018bad3ca32cce8fbf1a81701ef298e0c29fe12f0065cee58bfbe6ed` |
| 52 | `theorem` | [mapIdx_induction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/mapidx-induction-source-edition-2.md) | 219 | `result-track:eab6dd7714a9fd005dd3f06c2ab4b6052a8b15c7b305c1cc1493b2e3403b14c4` |
| 53 | `theorem` | [mapIdx_induction'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/mapidx-induction.md) | 229 | `result-track:77ec2b1acb278da9d7d719970ac0a8ecca0141fe9f47d52d668b4880bf8fbec3` |
| 54 | `theorem` | [size_mapIdx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/size-mapidx.md) | 235 | `result-track:287c9ffa1e47354ecec0b8fbea3a9ca6f2e22160cb0e9cb8f81da57d64bea352` |
| 55 | `theorem` | [getElem_mapIdx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-mapidx.md) | 238 | `result-track:27ff506d913212a3ee0e4cdad472ec2e7d83500b17388d00deb32e485f00c133` |
| 56 | `theorem` | [size_swap!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/size-swap.md) | 243 | `result-track:c575f5f6333ef55863e8fc77714db6e873095f996246af3c850b4973486a51a6` |
| 57 | `theorem` | [size_reverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/size-reverse.md) | 246 | `result-track:ea442a3cbf42b7fca171fc75f617ae0292e301467d831264f8cdb4d9d33953a6` |
| 58 | `theorem` | [size_range](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/size-range.md) | 256 | `result-track:9ec5de1c091eb46b1cc952c9e2f4ce8501d536e39dbc66463b1303110c174155` |
| 59 | `theorem` | [size_modifyM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/size-modifym.md) | 262 | `result-track:b9f46a5d0db69050b4fb825396b8e8faeab37fe765d48764d849034a06ab0797` |
| 60 | `theorem` | [size_modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/size-modify.md) | 268 | `result-track:6cae0221bf5678078e87fda680e3071c072d389722e8420999ded4bdd7294a8e` |
| 61 | `theorem` | [reverse_data](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/reverse-data.md) | 272 | `result-track:673167c9853d45b1e5b2ef20f316907b992c1c4c93558c1d7cdb18d30af5d682` |
| 62 | `theorem` | [size_ofFn_go](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/size-offn-go.md) | 309 | `result-track:9b2dc35759008db3ac459c27acfb18729501aaba1f1bbf4412d3942a4379abb2` |
| 63 | `theorem` | [size_ofFn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/size-offn.md) | 322 | `result-track:7cc94ac7585d1f0e33f32295cab0ab2604849d069bf956e24a3f9d24530dc3d0` |
| 64 | `theorem` | [getElem_ofFn_go](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-offn-go.md) | 324 | `result-track:310320761eaf1ed5713cbadac6720b451d4924b2f454bae16317078cc1e13962` |
| 65 | `theorem` | [getElem_ofFn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/getelem-offn.md) | 342 | `result-track:61b59f56b00bbe6521b8daee4f8e4781bd17174ac7de00aedd78aab85105c053` |
| 66 | `theorem` | [forIn_eq_data_forIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/forin-eq-data-forin.md) | 346 | `result-track:9922ae74bd8d8f34f207adda239ca4fa7c1336021849b9c5c57ad623e81ffa04` |
| 67 | `theorem` | [join_data](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/join-data.md) | 364 | `result-track:d2d9c69ed5fea4472e790d628102c388605b67ecda4f268ec04ad29501916e55` |
| 68 | `theorem` | [mem_join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/mem-join.md) | 374 | `result-track:ecdc8bb5f57e41292abd3c0f4a1fb6f336be577431f3365cbc8398370c386622` |
| 69 | `theorem` | [mem_append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/mem-append.md) | 385 | `result-track:beeb9445528fc2e214cb0beea08774d04ac85e4a50c6bb8dab55ac7750e6e0b1` |
| 70 | `theorem` | [all_iff_forall](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/all-iff-forall.md) | 390 | `result-track:a513ab477719008102464807da98858bd57f342aff78f700aa7bc686ab6838b8` |
| 71 | `theorem` | [all_eq_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/all-eq-true.md) | 398 | `result-track:9b63e8e6782c04e02e0d2ca02d81e239224cd5119b55dc287fdeb310562088b1` |
| 72 | `theorem` | [all_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/all-def.md) | 401 | `result-track:32c7085668fb83872252958e0a9f2a4418921b9fc7470edd63de9d0fec1b5349` |
| 73 | `theorem` | [all_eq_true_iff_forall_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedMemData.lean/declarations/all-eq-true-iff-forall-mem.md) | 410 | `result-track:4740ca4972afcaf219db1c5a7184989a020f856ea2c00d5fe8af2876fcf69bbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b7e1859fbeb711160fa3fb7ab1009309cd7404e148814a52b4da5cde3e8a963 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6f16a6779e4db75287795d746e1fd2016ba98801e4861bb7ccb7a3126f325336.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6f16a6779e4db75287795d746e1fd2016ba98801e4861bb7ccb7a3126f325336.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
