# Verification target: Seq Not Mem Nil

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b9cade0f229dd73bcbb574a33aab9610a9fbd6e",
  "lexical_observation_count": 134,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant1efeb7ab4c211cf7c48eb49706462c6ae71d910e438b7c445080c482f252cc74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b9cade0f229dd73bcbb574a33aab9610a9fbd6e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant1efeb7ab4c211cf7c48eb49706462c6ae71d910e438b7c445080c482f252cc74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant1efeb7ab4c211cf7c48eb49706462c6ae71d910e438b7c445080c482f252cc74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.LazyList` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Stream.Init` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Seq.Computation` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/isseq.md) | 33 | `declaration-track:e58141299332a3126e9464836afd55fd749f01aaff947c7f1d9b419c5374dfc7` |
| 2 | `def` | [Seq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/seq.md) | 40 | `declaration-track:87a70ab9b54ea430ff14812ba8e6354a61eca0c2901d43a1ef48e1774c858806` |
| 3 | `def` | [Seq1](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/seq1.md) | 45 | `declaration-track:fe375f3879f2bfd946586313d0a35c6a9994a625185ba29696c7ca7549343281` |
| 4 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/nil.md) | 54 | `declaration-track:21297c6130997bf588391632d6f4f27b94e07e779c5431329f0c71bd5804f88a` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/instance-source-edition-5.md) | 58 | `declaration-track:bdf12574483e7d5c3a682ed1c140713b16cb7f43ead6726f193e4ce1f1e0db92` |
| 6 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/cons.md) | 62 | `declaration-track:839d9ec82bfd0e64bd1d146782e6f69cc3cb0b16fc99205323e4ebb488fb7526` |
| 7 | `theorem` | [val_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/val-cons.md) | 70 | `result-track:57b016dd7d952e30443e13e7674bd181d55be860ffe205d647cf1591fdca8f42` |
| 8 | `def` | [get?](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/get.md) | 75 | `declaration-track:5c25aee7f67cda367db7e2caee63144957d754fcfb460e62ba1f8a3c1890b25d` |
| 9 | `theorem` | [get?_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/get-mk.md) | 80 | `result-track:0148744373dbcbb0def432bbd73fe82741bcd22fad8219cd6776cb1c6ca67570` |
| 10 | `theorem` | [get?_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/get-nil.md) | 85 | `result-track:4f96e4d98a7e7f9425c6a53e4fe435caf3a6c07640e58bd4c63008804f34fb21` |
| 11 | `theorem` | [get?_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/get-cons-zero.md) | 90 | `result-track:54c9fecaaaf558006e51490bda853c869f845b4854d3cf12c1362f2b859016bc` |
| 12 | `theorem` | [get?_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/get-cons-succ.md) | 95 | `result-track:c18db61f2bf8a2d82f6c9513b3e3ac75b85f50df42f50cafb55764d8951360ab` |
| 13 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/ext.md) | 100 | `result-track:9c51dba2e9e928c5d1a6503401f7aeba8c68221c9efc46b55ec7f5fbfe065115` |
| 14 | `theorem` | [cons_injective2](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/cons-injective2.md) | 104 | `result-track:b068c38f2bac7eb2c2e2bb0490ab69bf188bcd555a1b4c3bdbad96a8bccf2a25` |
| 15 | `theorem` | [cons_left_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/cons-left-injective.md) | 109 | `result-track:956f57726f20875f62206d2ecf5dd0efde7116a221fa1e2b1882c707841692eb` |
| 16 | `theorem` | [cons_right_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/cons-right-injective.md) | 113 | `result-track:736cbaa20f8cf1cec1bcc78b08e7e6b8a1d9c36f79f1b772c2d9134f53bd848a` |
| 17 | `def` | [TerminatedAt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/terminatedat.md) | 118 | `declaration-track:677a87ebaa7f146fd7deb757371324bffb8e02f046fa6188ed502d3e054d99eb` |
| 18 | `instance` | [terminatedAtDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/terminatedatdecidable.md) | 123 | `declaration-track:5259f02b6760090842a8e442fad1c10ded32f04359134c1433cdc01906261b12` |
| 19 | `def` | [Terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/terminates.md) | 128 | `declaration-track:9e5fef1a46808504cd0b6866b88040a8058888afc3bb072b19c329f52919fe28` |
| 20 | `theorem` | [not_terminates_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/not-terminates-iff.md) | 132 | `result-track:10c238b951ac024da7ec51a3416c8d6e5110ed9ff16a606527161d689ad81649` |
| 21 | `def` | [omap](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/omap.md) | 138 | `declaration-track:ad1d9582ecbc72ad4a1a92cdc64c38c8f0fe13d92a8937e37aa79ab3b705b7a5` |
| 22 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/head.md) | 144 | `declaration-track:5c1ed8c4dbc5913b3c00349c9eadfaf13524bf2d05165ada00a26faf31522600` |
| 23 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/tail.md) | 149 | `declaration-track:0b19461e621d17c706b5804643f5a6b0f1de29482452aa790b26c9fcc0b91af5` |
| 24 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/mem.md) | 156 | `declaration-track:cab294d59f82fbd94dcd1d3b287941ae1b83dd27d5ef2d434679041380d96cd2` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/instance-source-edition-3.md) | 160 | `declaration-track:a025548f573a69d9857983ca7eb34a734a8d67bdd86eb48d54b983b6fbd86d9e` |
| 26 | `theorem` | [le_stable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/le-stable.md) | 163 | `result-track:6870d5b4c5a20678a2ea909affad5730f2047a35608442e88c0e438a9dda13a4` |
| 27 | `theorem` | [terminated_stable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/terminated-stable.md) | 170 | `result-track:554563efcb0af0c039872510a9f08b6a6ad4948ff69698429e6b055cc996c8c5` |
| 28 | `theorem` | [ge_stable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/ge-stable.md) | 177 | `result-track:0350f06e20298b78842ddbb275341dd5cfca27d13319ae316711e67c88957d03` |
| 29 | `theorem` | [not_mem_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/not-mem-nil.md) | 184 | `result-track:98bcae3a7b861aa2aeaffeb7a49064265b95c15a838e4d9270538d48beecc3a0` |
| 30 | `theorem` | [mem_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/mem-cons.md) | 187 | `result-track:96fc6df759c3e3ed8d84b9f694ca923ff75ff85c4fd74ff04a7ee81acfe2b6b9` |
| 31 | `theorem` | [mem_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/mem-cons-of-mem.md) | 191 | `result-track:d7f6198eab199d309148fe06d3d141c57938d195cf6f288c65f3da5a0315d255` |
| 32 | `theorem` | [eq_or_mem_of_mem_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/eq-or-mem-of-mem-cons.md) | 195 | `result-track:86e340e447f7c500fb89d7ad37176d5cd3f1e297a58d1863cf7ed1631886b998` |
| 33 | `theorem` | [mem_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/mem-cons-iff.md) | 200 | `result-track:24fda0861270e26ceae187ad745568f62067ab7b7dc677247c9946bef79c6154` |
| 34 | `def` | [destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/destruct.md) | 206 | `declaration-track:fd4ff675b71c8763a681ee2b3df1a9d43306e5d54120cdf3e408cc56f2dc8966` |
| 35 | `theorem` | [destruct_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/destruct-eq-nil.md) | 210 | `result-track:da4225c359d322922882ac2b4660c8315ee904da7900dd16d557fd60b5f58032` |
| 36 | `theorem` | [destruct_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/destruct-eq-cons.md) | 220 | `result-track:074102f6824d7798b2927b2235991ee642c594b82812e03e95701913df53f978` |
| 37 | `theorem` | [destruct_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/destruct-nil.md) | 235 | `result-track:b022e143223b89a802fa064baa8af0a6b09322b2ac26c1fce045adc97d7170bd` |
| 38 | `theorem` | [destruct_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/destruct-cons.md) | 240 | `result-track:705d3b0d07a1041cbfe02a85ac46ee72bff27162b0bdc394b22aa8f2fce1a301` |
| 39 | `theorem` | [head_eq_destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/head-eq-destruct.md) | 248 | `result-track:647b0b69924d4cd95e9bd8f19f270de36e3b60fe452e959014f7de7eee9b7a05` |
| 40 | `theorem` | [head_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/head-nil.md) | 253 | `result-track:45eaef7985934f5b432e7a2a3d62b4d8ccce2705ee5a11d3ed434b5885fd41e0` |
| 41 | `theorem` | [head_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/head-cons.md) | 258 | `result-track:cd468cb86226c0ba7a9c96b68991d6a6b4165ac7167c6e45c2ff803db94de0f0` |
| 42 | `theorem` | [tail_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/tail-nil.md) | 263 | `result-track:d6b6e789ed76786ca95d853031c4597ecda1ea38e7bf94ab8a624d07ce9907dc` |
| 43 | `theorem` | [tail_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/tail-cons.md) | 268 | `result-track:aad65266ab5d1c88b0d0fe4363523b49cca957e62d53fa305af85f618f6c257f` |
| 44 | `theorem` | [get?_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/get-tail.md) | 275 | `result-track:658255bd43bdd7b874b1be3f0af0ad1e0f1e389336dacbb4c819cee308a01724` |
| 45 | `def` | [recOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/recon.md) | 280 | `declaration-track:3cda98ebc3e5bf5a4320d28e595b97e1ad6545af8412994a6a6d07e49382d5b9` |
| 46 | `theorem` | [mem_rec_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/mem-rec-on.md) | 290 | `result-track:0d6112a92e83c0983d13ac117cc503c66ac0feb6852ba60f167a2522626285af` |
| 47 | `def` | [Corec.f](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/corec-f.md) | 311 | `declaration-track:2553ae8931b5dfb81ce8d09ee98ad33ade16aca2d124ffdbc7abd6c14d45d992` |
| 48 | `def` | [corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/corec.md) | 322 | `declaration-track:16410d6142b05d80ae8bebe40fddd3b50fd12eb03ec914eb13bcc693f6bd786b` |
| 49 | `theorem` | [corec_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/corec-eq.md) | 342 | `result-track:b10b2ff063a33eb4dce37b24bd09f2b08760fbbf6bfd672f9729241e20722108` |
| 50 | `def` | [BisimO](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/bisimo.md) | 365 | `declaration-track:0549663a2e7ae8c17d6cbfd83486229c65f5fbf1706706938ded32e80f56a666` |
| 51 | `def` | [IsBisimulation](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/isbisimulation.md) | 374 | `declaration-track:f5671869545eedf65a071b638f0de4d7d5f3e9f24884e64e897998d0bcdc0b90` |
| 52 | `theorem` | [eq_of_bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/eq-of-bisim.md) | 379 | `result-track:06ab7355ece4e6cc9495a8c238b4f82c03788074205b8032d099c5e835e2faaf` |
| 53 | `theorem` | [coinduction](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/coinduction.md) | 413 | `result-track:70fc41998030b7fb3456bd178904961f26eccedc92150dd15116929487948baf` |
| 54 | `theorem` | [coinduction2](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/coinduction2.md) | 421 | `result-track:f41fede539d9eac9b7d5e2a6aa94dd90507367d2dd83f704daca8cce1df6d960` |
| 55 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/oflist.md) | 434 | `declaration-track:0a81daf1eb71b59433369302663422ae196ae46bc3e6692d24f587a0720d70c2` |
| 56 | `instance` | [coeList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/coelist.md) | 440 | `declaration-track:43df10f5d85331e281deb892b53f0bdf728c395f3dee236b363678e1f19033de` |
| 57 | `theorem` | [ofList_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/oflist-nil.md) | 445 | `result-track:705f2adecc91d5615e7d830c13209c3649cee5db28bd9bdda6c892673a0a5496` |
| 58 | `theorem` | [ofList_nth](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/oflist-nth.md) | 450 | `result-track:cdf79a0660b5c5899d11c9128b3b979a255485e5c570fdcd917ee36277ad0f98` |
| 59 | `theorem` | [ofList_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/oflist-cons.md) | 455 | `result-track:8f085befcf2bfb55f95bb94a6762ef8378e5e7ae6bc59968e6994b7c9d89ac6c` |
| 60 | `def` | [ofStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/ofstream.md) | 461 | `declaration-track:206e46e9bda46228a6f5a4aa279dc612cf2eef64f75022cf6a497e47b26191fa` |
| 61 | `instance` | [coeStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/coestream.md) | 465 | `declaration-track:d70b38826c5e08af5245eb467928079af88293ce6c76807b82336fe1a8c72c73` |
| 62 | `def` | [ofLazyList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/oflazylist.md) | 472 | `declaration-track:4db264d74e46831ec8b1083f584a8cbc83ff6385a74b6b1460bc0ccadf834f4e` |
| 63 | `instance` | [coeLazyList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/coelazylist.md) | 479 | `declaration-track:d30491193f4bc46a623bf40c1cc818cd9aa39a585be3dcedb89e25d30da38d0f` |
| 64 | `def` | [toLazyList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/tolazylist.md) | 485 | `declaration-track:b2608d203f34b6c9f93d929ddecb76d6351f3a1b650813c66995f0b213a7f230` |
| 65 | `def` | [forceToList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/forcetolist.md) | 494 | `declaration-track:551ff434f200bc63712eebbae4c5f97df775195785d893e27cbaede21b811d29` |
| 66 | `def` | [nats](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/nats.md) | 499 | `declaration-track:29d15d4f1d6f4d9ae4c28eb9566618021efb08ab7606c02818acbbb769888881` |
| 67 | `theorem` | [nats_get?](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/nats-get.md) | 504 | `result-track:c54851393ddd3654f47706ea33922994219955ffaafa6170cf73c2da7e0b43fc` |
| 68 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/append.md) | 510 | `declaration-track:db639f4d0844713c3de54708775f497894259076e65ddc809ebf743a68936856` |
| 69 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map.md) | 520 | `declaration-track:4b814410268cf12106f5b38c48c990fe544cb6539e011e8d3aa4836bac14a783` |
| 70 | `def` | [join](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-source-edition-2.md) | 534 | `declaration-track:ac529a1f802ce95aaac98f61d4ae850c3e923c2328ae3832b5fe1c3419c54cda` |
| 71 | `def` | [drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/drop.md) | 547 | `declaration-track:7a3382149b0abb8586866ff58d85fe63ebffc0dfac804edc67ece5e8b9b14c9a` |
| 72 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/take.md) | 555 | `declaration-track:a0ea94387912715e5f4cffdb2a331edecb4055663dac2927ae68f113379a5210` |
| 73 | `def` | [splitAt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/splitat.md) | 565 | `declaration-track:06e90ddb01bfc1f43d0d7d9d0e9272fe8a6eedaebf4b9e4d77e29e7916514962` |
| 74 | `def` | [zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/zipwith.md) | 578 | `declaration-track:9d752dfe8b549a08657b2a089d68248716a4fed0ced93864db374e335440ecbf` |
| 75 | `theorem` | [get?_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/get-zipwith.md) | 586 | `result-track:239c7e6cdc489adbd019dd7a14b648d441ca29cd1874ac428402029640eec179` |
| 76 | `def` | [zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/zip.md) | 594 | `declaration-track:146a93214a188062e131b77138ba65a7d2d6403c3dd4e01f85a784e92befe879` |
| 77 | `theorem` | [get?_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/get-zip.md) | 598 | `result-track:bf9124db1c0fa868c347d5001b1f47bdcbbb0f4a90fd84729910e8286213c905` |
| 78 | `def` | [unzip](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/unzip.md) | 604 | `declaration-track:4fa479885f01aad72bc23117f463ff5004487a5bac02c24de8ae15575a2bfef7` |
| 79 | `def` | [enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/enum.md) | 609 | `declaration-track:eb77dc55302de3dc5749fba3df4dfed6e85155d6b9e91e4b59516c90a8ebce02` |
| 80 | `theorem` | [get?_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/get-enum.md) | 614 | `result-track:a44fe502879ddf19733e82fafbf8cdda3e2514c2dc15cdf9898ff12af1ceb6c7` |
| 81 | `theorem` | [enum_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/enum-nil.md) | 619 | `result-track:ed64670f842dd8a57ba77b87c19f4d6a48110ba52cd02f6d8c63a5dad14b2d18` |
| 82 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/tolist.md) | 624 | `declaration-track:4b5db536a3a385465252a55defb80c611d24bdef3fd3e5da9ad47d2e3b529307` |
| 83 | `def` | [toStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/tostream.md) | 629 | `declaration-track:176b74ac7114614dc50ee52cd7c07e99b2445f810d45c3cb2661dcee36c01ffc` |
| 84 | `def` | [toListOrStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/tolistorstream.md) | 636 | `declaration-track:9138457510e559541ddddc29e30d51d2ac01a59154446244dff0a431df8a9346` |
| 85 | `theorem` | [nil_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/nil-append.md) | 641 | `result-track:2bd801c35e8ee0f917e626381d2f1ed04cb9c2f02a3f878bf0f6b72e5ac6a7df` |
| 86 | `theorem` | [cons_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/cons-append.md) | 653 | `result-track:76fe648c24391f63a6f99b2949ea255f8755afa249beb7a306b30537bbf80a2a` |
| 87 | `theorem` | [append_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/append-nil.md) | 660 | `result-track:86c2dc7794e1aa32b9e375557aeb3fc5edaa8ac1063364fd041877109539234b` |
| 88 | `theorem` | [append_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/append-assoc.md) | 671 | `result-track:26362c3e1096ff3fdc94b5de1e09ca9939e40a60d906c3e83aaa69eae169a150` |
| 89 | `theorem` | [map_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-nil.md) | 690 | `result-track:2cf22b56a63e2f23eb5ddfc6f574382161980f0c50f74325f7195b6601fba769` |
| 90 | `theorem` | [map_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-cons.md) | 695 | `result-track:a747ceb5115874c134752525001eeaf64d8e2d58661457babaf658be1af2a8b1` |
| 91 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-id-source-edition-2.md) | 700 | `result-track:3f96eccaad87e89652d0e7f5e82bf1c9526fc67a1937edb04eb3e5962fa52510` |
| 92 | `theorem` | [map_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-tail.md) | 707 | `result-track:62736727b37186ece32f4a4e6cab7a9fa804cab23a4c3dda5998f9805e0484a8` |
| 93 | `theorem` | [map_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-comp.md) | 711 | `result-track:b966684c3e88f3ae7db1d9d5c8ad87e1021bf849a7232366c9f87c7e165aa84c` |
| 94 | `theorem` | [map_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-append.md) | 719 | `result-track:1f64f53f08cfe91c9f0e2061c85c5f42c68c07e337395725724afa0bed55ceeb` |
| 95 | `theorem` | [map_get?](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-get.md) | 736 | `result-track:3d5db17854610f3cb2697a9900baff525d4d63253cc519974de5f8115de0304a` |
| 96 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/instance-source-edition-2.md) | 740 | `declaration-track:900bbe0d9aeed03b16d3852cf831c49d140450e8aff10bbe6f2b9aa17304eb49` |
| 97 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/instance-source-edition-4.md) | 742 | `declaration-track:aaab23e70b004f9832130de4c459c3ffc3080e4f6235451ac1bbfeaa62fc0f63` |
| 98 | `theorem` | [join_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-nil.md) | 748 | `result-track:4db1ff84616775ffc5235da2490f3f0065bb8f91b0525633cc624187dcf54109` |
| 99 | `theorem` | [join_cons_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-cons-nil.md) | 753 | `result-track:48b2091e6fb5103380c0e3e143a8f5949ef31e95f4a2ed3cdf7a07919fabbd7a` |
| 100 | `theorem` | [join_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-cons-cons.md) | 758 | `result-track:69eae9cd96f0d794b392b928d3a6b795b48fa03e0d3713ab208811d9352f7ead` |
| 101 | `theorem` | [join_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-cons.md) | 764 | `result-track:12f515c76e20a9ff945456b2f4ad569506902fb7543708c2fd125b3853931c89` |
| 102 | `theorem` | [join_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-append.md) | 786 | `result-track:9f29dd8682e9494f484343bf28cea02df19684e7adb91a61a1b8eedf0b490eac` |
| 103 | `theorem` | [ofStream_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/ofstream-cons.md) | 810 | `result-track:0f7aa44dce3b2111529ab7c196ff8de83879a2d89de7fc31e8e0cca2eba7bcbb` |
| 104 | `theorem` | [ofList_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/oflist-append.md) | 815 | `result-track:074faf475576e4cc7d9bbb967e30ad10cff803c331a939a2449167e222ae70de` |
| 105 | `theorem` | [ofStream_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/ofstream-append.md) | 820 | `result-track:651f804e825bd3960a0604119cba0e8e998580f73ad54c506f983b7080d8d4b6` |
| 106 | `def` | [toList'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/tolist-source-edition-2.md) | 828 | `declaration-track:ca013e89db4abcfb8ba41b52317f56f8dad7eb5f1b1ed55c90d954b4459c0aac` |
| 107 | `theorem` | [dropn_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/dropn-add.md) | 837 | `result-track:e485455c816bc46822e485b598bc9951780db70f23363b6c0df8534ebd016d1f` |
| 108 | `theorem` | [dropn_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/dropn-tail.md) | 842 | `result-track:718d729ad373c6d36cdf22499506365ae9bd4c889a0504fd03ed01abdc8e4f28` |
| 109 | `theorem` | [head_dropn](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/head-dropn.md) | 847 | `result-track:d50dffbb944342d0764cf3df970fe3f5fa6bdfb7309cbfca7071e00dd005d2a5` |
| 110 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/mem-map.md) | 852 | `result-track:94751a748351cdcc578183dc0e9347f1d9ca7278242fefcb21b2424d323ffbe4` |
| 111 | `theorem` | [exists_of_mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/exists-of-mem-map.md) | 856 | `result-track:58287f6da0cd55daea48259ceee009711bafb3786f131c18231dee8484958ff7` |
| 112 | `theorem` | [of_mem_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/of-mem-append.md) | 865 | `result-track:690fd0866d6a567d1d6fc3bb0c2032c83f01dbf3dbca0ff861efccc98b7813e0` |
| 113 | `theorem` | [mem_append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/mem-append-left.md) | 885 | `result-track:818208a41e970c74b16d2d33c36f2e3145ee18258104055a55ea9cf7e8f506fa` |
| 114 | `theorem` | [enum_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/enum-cons.md) | 890 | `result-track:17804e991b0ceb176f6bc77891cd328511fe8ce70b10acada893b2cd4b272079` |
| 115 | `def` | [toSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/toseq.md) | 907 | `declaration-track:4c14fa0230b5f41104786452da5420f37d2d61c047906ec2b7a7776577e9e4b5` |
| 116 | `instance` | [coeSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/coeseq.md) | 911 | `declaration-track:ae2c9957698a972522de3c1ed5a2d6679c5c23ab3c05e6fce648fb0d09b8d25f` |
| 117 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-source-edition-2.md) | 916 | `declaration-track:ab76e24994215c15db296a8b4a1effdcd095ae53b52281624f1e7b09dd7cd764` |
| 118 | `theorem` | [map_pair](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-pair.md) | 921 | `result-track:1efe680bd3a8ae7cb4b5c63188fe6790405cb6f64d49f926bd2a09e31f3d05b3` |
| 119 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-id.md) | 923 | `result-track:09b3f00597a0d27b2cce0a2fef1583d745a494c649234a653d99006e3c8b80b4` |
| 120 | `def` | [join](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join.md) | 928 | `declaration-track:1b9609808943b95f25d4950acd4211321a67d103ce7472047f4a2ee35bf784d4` |
| 121 | `theorem` | [join_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-nil-source-edition-2.md) | 936 | `result-track:9b26662b9af0dc13db6f97be9457513b4d613b96a6a7396d4c894ec168ab2c8d` |
| 122 | `theorem` | [join_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-cons-source-edition-2.md) | 941 | `result-track:670fce5ef4731aff8ab2bf2bf961b0e466ffcf97b369ad8f864eff6eec1a60b2` |
| 123 | `def` | [ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/ret.md) | 948 | `declaration-track:725e6529996d8c7a889fefb6bb5f7c9598d8520a70500cc195eae7b713866932` |
| 124 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/instance.md) | 952 | `declaration-track:842e7538ef5997c2d6b3c15310f22e73d82b0b0f15b04061ea66edf6d7a076c2` |
| 125 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/bind.md) | 959 | `declaration-track:01111858b9f44dd12340077703e3fbcc8a65d234fde97e995143b2ba514a2344` |
| 126 | `theorem` | [join_map_ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-map-ret.md) | 964 | `result-track:811a1628709ed630b813af853b8ab84274d931b7744ab774041a2b3f5e92de12` |
| 127 | `theorem` | [bind_ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/bind-ret.md) | 969 | `result-track:f6755d28ac527b75e45ba2e67b119ff9d8819053aacd1cebac2c54a6715c3f9f` |
| 128 | `theorem` | [ret_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/ret-bind.md) | 978 | `result-track:fd888b03ca994dad25ac8aa9522dd608a474b6c98fa2229d3c9fec651403e9e4` |
| 129 | `theorem` | [map_join'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-join-source-edition-2.md) | 985 | `result-track:af9dcb66c4aba5841b44e3e7578935e11ee3ac0a9239595d373869901f8fbc8a` |
| 130 | `theorem` | [map_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/map-join.md) | 1005 | `result-track:08a43b16b1b56975e3085c99de749506ebc0ac3e5d83806c2a45cf1afb1447b7` |
| 131 | `theorem` | [join_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/join-join.md) | 1010 | `result-track:6b98e822ea51ae16a2afaf5edc3b5d8c72aa59b9cba2fe4d54fd4f629474a173` |
| 132 | `theorem` | [bind_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/bind-assoc.md) | 1034 | `result-track:55a937b54228ee4fcca8e98f1b0c4a84edae4541d4ddf7e47f9aafff74a5d313` |
| 133 | `instance` | [monad](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/monad.md) | 1052 | `declaration-track:1efe3d0e46b4251be8c53f8b3735c995ef6aaecd714a6118f3b514732ca774d8` |
| 134 | `instance` | [lawfulMonad](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/declarations/lawfulmonad.md) | 1058 | `declaration-track:3e7fd41e42f2eb408b9307b0b33b70249763c82a19580f8a7c34f564748295aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48fce6e3f7d21c94fbb5362b205381a5dfc1ae5924a0fe75b1f66ac2576d9eb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant1efeb7ab4c211cf7c48eb49706462c6ae71d910e438b7c445080c482f252cc74.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant1efeb7ab4c211cf7c48eb49706462c6ae71d910e438b7c445080c482f252cc74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
