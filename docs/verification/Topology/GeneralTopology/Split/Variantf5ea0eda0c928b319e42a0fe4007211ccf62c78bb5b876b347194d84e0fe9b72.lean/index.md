# Verification target: GRWTSK.Topology.GeneralTopology.Split.Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6797b4068735b75a0d033c627995fe25d26d24b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6797b4068735b75a0d033c627995fe25d26d24b`.

Source path: `GRWTSK/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitlower--3578e4d36cb2711a1629369b.md) | 67 | `declaration-track:3578e4d36cb2711a1629369b2b9748468ae6726850768831b54aeccc2b4be958` |
| 2 | `theorem` | [coe_splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/coe-splitlower--43e8c322448568dfd6d71e88.md) | 71 | `result-track:43e8c322448568dfd6d71e8810b617e48ee25850d610c3a63c9a56396d3dcf08` |
| 3 | `theorem` | [splitLower_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitlower-le--26a411b9d9df7950f51a99d2.md) | 78 | `result-track:26a411b9d9df7950f51a99d241442d240fcc63cf23c8f54d6b25c5c0d03772c1` |
| 4 | `theorem` | [splitLower_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitlower-eq-bot--bfe46d5a2886d2d7a3fee855.md) | 82 | `result-track:bfe46d5a2886d2d7a3fee855711565767a095d6840e2c7b2ef6019be956c3f33` |
| 5 | `theorem` | [splitLower_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitlower-eq-self--5221356ed4d9befb2534a57b.md) | 88 | `result-track:5221356ed4d9befb2534a57bf72a61ae1be5cb3d0c6999403185a5b0056c92e3` |
| 6 | `theorem` | [splitLower_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitlower-def--e8e4cf5c87c3effd0e3788b6.md) | 91 | `result-track:e8e4cf5c87c3effd0e3788b6ca5cf9422909a790bc712b0cff4a2019958c3e73` |
| 7 | `def` | [splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitupper--6e707affafbc03ba5a4cd0d9.md) | 104 | `declaration-track:6e707affafbc03ba5a4cd0d9a28a2270acedd2e086bba696fbab023a8b193f32` |
| 8 | `theorem` | [coe_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/coe-splitupper--0871da307a735f85bf0997ac.md) | 108 | `result-track:0871da307a735f85bf0997accde974446c00a9951c342f00355cee54537de234` |
| 9 | `theorem` | [splitUpper_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitupper-le--d64fde0e8704f80b01165293.md) | 117 | `result-track:d64fde0e8704f80b01165293e318bd5955524f6a8f3edde9e999a5f84e3d2d74` |
| 10 | `theorem` | [splitUpper_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitupper-eq-bot--f58ccd03647451f4293c76d5.md) | 121 | `result-track:f58ccd03647451f4293c76d53266b8b2eb38cd849e6a38b26a886774ebfb0fe3` |
| 11 | `theorem` | [splitUpper_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitupper-eq-self--8731ed96a7712520fe5c97b5.md) | 127 | `result-track:8731ed96a7712520fe5c97b517ac67bcc8d9af8206e3247c58ce2418d9099c09` |
| 12 | `theorem` | [splitUpper_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitupper-def--24ac67e13e3584c423a8d17c.md) | 130 | `result-track:24ac67e13e3584c423a8d17cbcf2b5d585794a0ea3754d4f94db2ce7628f242d` |
| 13 | `theorem` | [disjoint_splitLower_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/disjoint-splitlower-splitupper--ec527efc1e89748260f0a8ce.md) | 138 | `result-track:ec527efc1e89748260f0a8ce9b487426f7f5997956f751241cfd65f9d7df8420` |
| 14 | `theorem` | [splitLower_ne_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitlower-ne-splitupper--45a769dbf11abf966f1dc4ee.md) | 145 | `result-track:45a769dbf11abf966f1dc4eea70561f23906b1349e3f5bde79e1cffc72f5762b` |
| 15 | `def` | [split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/split--6d842b4b7740d769e3be60cf.md) | 162 | `declaration-track:6d842b4b7740d769e3be60cfbbbc556e39c120b06d337a1d1390e9f1cfe51d77` |
| 16 | `theorem` | [mem_split_iff](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/mem-split-iff--451090ace4c6dcc8a6d3ef4c.md) | 175 | `result-track:451090ace4c6dcc8a6d3ef4c9a4746c76999c31a7e97ff27099fa46ebeaff07c` |
| 17 | `theorem` | [mem_split_iff'](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/mem-split-iff--5dbcb12bbfeca65f6c633dbf.md) | 178 | `result-track:5dbcb12bbfeca65f6c633dbf55a2d537d69b90107854c0cdcf8598aff908a763` |
| 18 | `theorem` | [iUnion_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/iunion-split--0f7b7045b9310c3f83786137.md) | 183 | `result-track:0f7b7045b9310c3f83786137e4f72b26fd8e5cbf87fb8682ca76cea9f37ef85c` |
| 19 | `theorem` | [isPartitionSplit](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/ispartitionsplit--524a193cf4b2d1c2a1617c44.md) | 186 | `result-track:524a193cf4b2d1c2a1617c449a0df827579535647a49a2d3c5979f87450a4f90` |
| 20 | `theorem` | [sum_split_boxes](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/sum-split-boxes--a8a9ee55656b731e3eda881e.md) | 190 | `result-track:a8a9ee55656b731e3eda881ebf5848629968d8b5c88fb2ecf788e3352662487d` |
| 21 | `theorem` | [split_of_notMem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/split-of-notmem-ioo--b7b0e1291225378e7518c46e.md) | 197 | `result-track:b7b0e1291225378e7518c46e2405cf47d95917dbcd0f89986d22f9b9d38732f5` |
| 22 | `theorem` | [coe_eq_of_mem_split_of_mem_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/coe-eq-of-mem-split-of-mem-le--607e3fa1cdc7fdcc0f1b5f3e.md) | 206 | `result-track:607e3fa1cdc7fdcc0f1b5f3e5ffca82b851f35a6e0ab217800a455934a547513` |
| 23 | `theorem` | [coe_eq_of_mem_split_of_lt_mem](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/coe-eq-of-mem-split-of-lt-mem--a0a3db42cd980fe6920cf542.md) | 212 | `result-track:a0a3db42cd980fe6920cf5420492b3902ca45c382e5c4a35ca3880b08be5d4f2` |
| 24 | `theorem` | [restrict_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/restrict-split--801a9418f2f3a364743873ed.md) | 219 | `result-track:801a9418f2f3a364743873ed611f0c3802f73daba8084f417025d4a90137fd05` |
| 25 | `theorem` | [inf_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/inf-split--6c14d6e2cb34ae17f3d1cd93.md) | 226 | `result-track:6c14d6e2cb34ae17f3d1cd936b305b0cfd18505ddb1bf1d945a99becd05a1db7` |
| 26 | `def` | [splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitmany--80a1dfa5c25968feb6417383.md) | 232 | `declaration-track:80a1dfa5c25968feb64173831be44066a720e3bcdde97c76f3231df5f77bff32` |
| 27 | `theorem` | [splitMany_empty](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitmany-empty--c8119c8efbc89e69581b9de5.md) | 236 | `result-track:c8119c8efbc89e69581b9de54fbc4be66a294526282b3a80fd758ce770008d4c` |
| 28 | `theorem` | [splitMany_insert](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitmany-insert--c64045079371346d883e679c.md) | 241 | `result-track:c64045079371346d883e679c3e71cc10d099c262d9cfd5b6902a23f99a94a953` |
| 29 | `theorem` | [splitMany_le_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/splitmany-le-split--85002c19b1761b118b355166.md) | 245 | `result-track:85002c19b1761b118b355166374721a7f8091ad77a60ad3aa1a66310c6c1e48b` |
| 30 | `theorem` | [isPartition_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/ispartition-splitmany--91cb87bc884f0127756dee05.md) | 249 | `result-track:91cb87bc884f0127756dee05633db4b06490a5c7bf5d965eb20e5a24e98f94d8` |
| 31 | `theorem` | [iUnion_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/iunion-splitmany--3daec75ba57db8ab274c00dc.md) | 255 | `result-track:3daec75ba57db8ab274c00dccab833202813878aca4d13e73d01cb20775277b2` |
| 32 | `theorem` | [inf_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/inf-splitmany--5121561ddc5bd2874dc47e5c.md) | 258 | `result-track:5121561ddc5bd2874dc47e5cf7cb5193b8d6534335796234583c55df19656c54` |
| 33 | `theorem` | [not_disjoint_imp_le_of_subset_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/not-disjoint-imp-le-of-subset-of-mem-splitmany--5681c9ad15c94688863e3568.md) | 270 | `result-track:5681c9ad15c94688863e3568a4628d3d7d7d324cd01d5ad7fbae14c563a48c02` |
| 34 | `theorem` | [eventually_not_disjoint_imp_le_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/eventually-not-disjoint-imp-le-of-mem-splitmany--326c603501ff316648a929a7.md) | 294 | `result-track:326c603501ff316648a929a7546bb2cbfb868b8ba0c0c20d099294ba4f35d994` |
| 35 | `theorem` | [eventually_splitMany_inf_eq_filter](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/eventually-splitmany-inf-eq-filter--e74519762ff3e82ebd3092e5.md) | 305 | `result-track:e74519762ff3e82ebd3092e5a6930e01d0304c85d8a4f393dfa27c0da87dd65d` |
| 36 | `theorem` | [exists_splitMany_inf_eq_filter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/exists-splitmany-inf-eq-filter-of-finite--63f9975a241f5da52db95567.md) | 320 | `result-track:63f9975a241f5da52db955671f8c21c73d3524d3dc02428fc8eab6ca80620305` |
| 37 | `theorem` | [IsPartition.exists_splitMany_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/ispartition-exists-splitmany-le--36a9990ef4324783b105227d.md) | 328 | `result-track:36a9990ef4324783b105227d50579d2ef6fbee457092d5aac18b3544abdd1950` |
| 38 | `theorem` | [exists_iUnion_eq_sdiff](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/exists-iunion-eq-sdiff--f81bdcceea365ace3a98858b.md) | 336 | `result-track:f81bdcceea365ace3a98858bb6635332f410752ec5a0f31fed13548c233f03e1` |
| 39 | `def` | [compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/compl--1a9b6b61b411c153a0f62c4f.md) | 346 | `declaration-track:1a9b6b61b411c153a0f62c4f624a5830d152f325615ee463a308b3fdddb2e5d2` |
| 40 | `theorem` | [iUnion_compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/iunion-compl--95ea8dd5af56feb79db5cb38.md) | 350 | `result-track:95ea8dd5af56feb79db5cb38b8394285d8b50081449aa17a63517ae394922869` |
| 41 | `theorem` | [compl_congr](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/compl-congr--e391836e1b2bfc36dd21fe4d.md) | 355 | `result-track:e391836e1b2bfc36dd21fe4d078e53f3b22cfbabaf7d7701b4f5917d69a4b19a` |
| 42 | `theorem` | [IsPartition.compl_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/ispartition-compl-eq-bot--98ab1524dda48706c6829334.md) | 360 | `result-track:98ab1524dda48706c6829334d4952408260d2c20960c9c020e2ec77e3793ba20` |
| 43 | `theorem` | [compl_top](../../../../../mathematics/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/declarations/compl-top--4babac4d17c714a3a2983222.md) | 364 | `result-track:4babac4d17c714a3a29832221f5ab9e1e6d0b25c1eca47e0c175874f08456b15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
