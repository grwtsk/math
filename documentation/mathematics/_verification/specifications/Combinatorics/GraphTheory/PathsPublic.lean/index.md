# Verification target: Paths Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00cdc01c08911f51e54db8dbdcf5cb318c16e500",
  "lexical_observation_count": 181,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00cdc01c08911f51e54db8dbdcf5cb318c16e500`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean.json)

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
| 1 | `structure` | [IsTrail](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-source-edition-2.md) | 69 | `declaration-track:b3c16efb9cf7a52e30f5ef789b848f2d0d6f6c6a0750d9d66ae1c13118f0c3f3` |
| 2 | `structure` | [IsPath](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-source-edition-2.md) | 74 | `declaration-track:c498686166e8024c0687e9074c94857830b5a565e4c3da5d6e082344eef1e032` |
| 3 | `structure` | [IsCircuit](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit.md) | 79 | `declaration-track:06b25d2dddd1653fe2342ae5bf8112e8f3f8ec446b8afb4484ff0505e126ec63` |
| 4 | `structure` | [IsCycle](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle.md) | 84 | `declaration-track:4a6e43b0a84a51c7cce4127f1af5520d848c9f49b45c873468a5a24922118f71` |
| 5 | `theorem` | [isTrail_copy](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-copy.md) | 88 | `result-track:508f4ea3d4dff1968b364156c3e520f3edba1d30c09f263ad76e8563df783ce3` |
| 6 | `theorem` | [IsPath.mk'](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-mk.md) | 93 | `result-track:3a28e373b84626607d4fbace3407894d1d510a695d8803e841d3dc81de92465d` |
| 7 | `theorem` | [isPath_def](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-def.md) | 96 | `result-track:88382888e435d735f092933cb409695f41fd6733ade458c5095e146fb0308bea` |
| 8 | `theorem` | [isPath_iff_injective_get_support](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-iff-injective-get-support.md) | 99 | `result-track:ada1f1ed582d6bdd0d19c6ee728e50cfa838e5025338f7de5d81bf3fd16170f1` |
| 9 | `theorem` | [isPath_copy](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-copy.md) | 104 | `result-track:a94b94841d0ec5389ee31dda7513c11798d95d4e0a3442d4793215baa88a668c` |
| 10 | `theorem` | [isCircuit_copy](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-copy.md) | 110 | `result-track:fad1f99b6b56b837f805be3715a6b6dacbd2d7782b69386631233a6ac741c6d3` |
| 11 | `lemma` | [IsCircuit.not_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-not-nil.md) | 115 | `result-track:4734b26d127c66db045c4785bc76670cbeba637fb4dbc6bb1cdf0382adf34c8d` |
| 12 | `theorem` | [isCycle_def](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-def.md) | 117 | `result-track:9c8449686e4217882cbb2768f00d643bed3794f62cef0a7c75e9afa01b0b441d` |
| 13 | `theorem` | [isCycle_copy](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-copy.md) | 122 | `result-track:28e457989468a69e452d0705586e7a12e760350f6da4a93b7bac257c5fb3f1c1` |
| 14 | `lemma` | [IsCycle.not_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-not-nil.md) | 127 | `result-track:ca589a457c1a417ce4a72a638b0bd5b8038332bfa2de2591a2a59a8d363d346e` |
| 15 | `theorem` | [IsTrail.nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-nil.md) | 130 | `result-track:23b61fbe508458c17df890c9bf6cd167f8f436d8518ff3335ad1d99b4e3b96fb` |
| 16 | `theorem` | [IsTrail.of_cons](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-of-cons.md) | 133 | `result-track:5e9d04326f65cc9f20968ba5a7fa28e9d20e29446f085855f9ac4f8a3a938fca` |
| 17 | `theorem` | [isTrail_cons](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-cons-source-edition-2.md) | 137 | `result-track:ec90a87025982cdff3e66ac6fe3c5925d599197c11d9f1e26625a189089ad6bf` |
| 18 | `lemma` | [IsTrail.cons](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-cons.md) | 140 | `result-track:d4233679e005b361215684328649a0164cb9c33affecc8aed9a1d64c2670ee6d` |
| 19 | `theorem` | [isTrail_concat](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-concat-source-edition-2.md) | 144 | `result-track:d956922000114e42bb8d3f72907be7fef97029919243359a77c35d1b1501edda` |
| 20 | `theorem` | [IsTrail.concat](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-concat.md) | 148 | `result-track:6895b4bff783bfe4a1e0f713647d043d3e0fdcbf1870103284206f0ad94bf94e` |
| 21 | `theorem` | [IsTrail.reverse](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-reverse.md) | 152 | `result-track:73d53dd4dcbe90aa7c87bd507eb476c1d6cf599b0aa95f779eadf18803c20ddf` |
| 22 | `theorem` | [reverse_isTrail_iff](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/reverse-istrail-iff.md) | 156 | `result-track:afa4559c057cedf1b72e8c827a6db0cfdd7ddd2af494b331d611c926868d52a7` |
| 23 | `theorem` | [isTrail_append](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-append.md) | 163 | `result-track:7074242aca53832faea1b4c5e1a263cb3032fbe5b87ec5f65025fa7a2c04adf5` |
| 24 | `theorem` | [IsTrail.of_append_left](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-of-append-left.md) | 167 | `result-track:b1c75da216e96874e8e5cfa95e5814f0c7ed80f558049bda5c9c0717fb9a22e5` |
| 25 | `theorem` | [IsTrail.of_append_right](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-of-append-right.md) | 171 | `result-track:e39aeb05d1427aad5c57419518a1788378a72cb37997f03adc4a6f4784775bb5` |
| 26 | `theorem` | [IsTrail.count_edges_le_one](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-count-edges-le-one.md) | 175 | `result-track:45e005b9c02943a49924620a3cb6f4d67f9c9f1839ab28572535b67b5c69df27` |
| 27 | `theorem` | [IsTrail.count_edges_eq_one](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-count-edges-eq-one.md) | 179 | `result-track:1a60c5c73ebef0ef8d9f0b36be0ed4505ac66093bfb9e4756eb3d90bfd010c02` |
| 28 | `theorem` | [IsTrail.length_le_card_edgeFinset](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-length-le-card-edgefinset.md) | 183 | `result-track:e0a75253601ce8e93d0b516d45992f5288ee34b64a586c5df2eae4ed1b05cfb5` |
| 29 | `theorem` | [IsPath.nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-nil.md) | 196 | `result-track:8a2307d2fe7b2fcc078e9fef7ba6b2dda92a8a09969cb171e74eea3551c4ed1e` |
| 30 | `theorem` | [IsPath.of_cons](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-of-cons.md) | 198 | `result-track:5718e46c934c7539e598659fbf31d7eb8c6c63b75e6ad69fb4903400d5ccd3f1` |
| 31 | `theorem` | [cons_isPath_iff](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/cons-ispath-iff.md) | 202 | `result-track:3f8c05a6b8dd82555d05d21bb829c65ac2dcf7fe2efe9a951ac691bee860cb2a` |
| 32 | `lemma` | [IsPath.cons](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-cons.md) | 206 | `result-track:3e1ebbafc9c59de6e1f84b2404251a974da0e945d500300936848ef11cac139d` |
| 33 | `theorem` | [isPath_iff_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-iff-nil.md) | 211 | `result-track:fc01e0d38d2d5c4841b66f2ac940e90e845df32fd460a95d03bb23302defed18` |
| 34 | `theorem` | [isPath_iff_eq_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-iff-eq-nil.md) | 215 | `result-track:0e11d106be673d9e6209c3525e5a14d8741624a128ca6c8ba8d9fac540dab8e8` |
| 35 | `theorem` | [IsPath.nil_iff_eq](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-nil-iff-eq.md) | 218 | `result-track:f32c64c5eb19be18f4a39f83bc213aea9310a82039a833134cc4bc2921d7965a` |
| 36 | `theorem` | [_root_.SimpleGraph.Adj.isPath_toWalk](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/root-simplegraph-adj-ispath-towalk.md) | 223 | `result-track:160132d9d737ff652c9ab55c83d74a757efb5d6316d9145ea462f04d25093953` |
| 37 | `theorem` | [IsPath.reverse](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-reverse.md) | 226 | `result-track:d0ea3ac9e37972f64813d7b5f27b7e81188d60c3b745ce3c593a35fc8e4be494` |
| 38 | `theorem` | [isPath_reverse_iff](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-reverse-iff.md) | 230 | `result-track:a223857dd9bb4a293091b377a1383e8faa653c024fda33c6e1eed73844e10195` |
| 39 | `theorem` | [IsPath.of_append_left](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-of-append-left.md) | 233 | `result-track:391ad2896bb5d205ac7be3ef94b0182bbc878c18b8da28fdc527d001b9ee48ff` |
| 40 | `theorem` | [IsPath.of_append_right](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-of-append-right.md) | 238 | `result-track:2a59b891ea27f1e195777121487245a6ee21e5bf9251e403d7631fde48eadc3d` |
| 41 | `theorem` | [isTrail_of_isSubwalk](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-of-issubwalk.md) | 244 | `result-track:7def5f090857563286ebf974aeabe4c3aea94d17eaf47f484bc534e2d0ec19c7` |
| 42 | `theorem` | [isPath_of_isSubwalk](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-of-issubwalk.md) | 250 | `result-track:dac6948be8b4b286660f64564ce4052bf603fb702429544fc1cff22936fa627b` |
| 43 | `lemma` | [IsPath.of_adj](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-of-adj.md) | 256 | `result-track:ee5d070d8b1daa0ffd126718e708dca6f60140a263037a4fc1e6be17079b9808` |
| 44 | `theorem` | [isPath_concat](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-concat-source-edition-2.md) | 260 | `result-track:4b4c7e6400f06c318250babd4ea0d334e82581544652dc9763eca7bff44c92ea` |
| 45 | `theorem` | [IsPath.concat](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-concat.md) | 266 | `result-track:092b477e665952be69835866c69a332147f0846dc3d0842e240f688ae611080a` |
| 46 | `lemma` | [IsPath.take_of_take](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-take-of-take.md) | 270 | `result-track:48e79e2cdb2f99726344bafd4f6d2fdd8b000b144bd37e3a6919dff1f271e637` |
| 47 | `lemma` | [IsPath.drop_of_drop](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-drop-of-drop.md) | 274 | `result-track:5327f7b5fa3e5854d50786a777087a71a30a5190df2c6179ead4334a2e6cc3de` |
| 48 | `lemma` | [IsPath.take](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-take.md) | 278 | `result-track:d9ecd68e078a683c50400042859c352a009a10b4c8c8a31d19df21c05a52c561` |
| 49 | `lemma` | [IsPath.drop](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-drop.md) | 282 | `result-track:b53db4cf3ce4f8fc73614045f335e13bced33c7bb3e352a6406a54691333ce1c` |
| 50 | `lemma` | [IsPath.mem_support_iff_exists_append](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-mem-support-iff-exists-append.md) | 286 | `result-track:29d08c80a77f298a6acd2935301ad2616961a4b7db621f167383f27cd2098077` |
| 51 | `lemma` | [IsPath.disjoint_support_of_append](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-disjoint-support-of-append.md) | 293 | `result-track:99209abea122ce7c454c3ce141468a9df1f080f0e60fad44ac2c32ad4733faa6` |
| 52 | `lemma` | [IsPath.ne_of_mem_support_of_append](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-ne-of-mem-support-of-append.md) | 300 | `result-track:419f832584ac8f4f5302dc319171de5e0f21f5456cd01ccad99af06e3a8491b9` |
| 53 | `theorem` | [not_isCircuit_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/not-iscircuit-nil.md) | 314 | `result-track:b038cfad9a8c6beeb93970d2c60900c88270564922dd0970fc70cc654769ec93` |
| 54 | `theorem` | [not_isCycle_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/not-iscycle-nil.md) | 318 | `result-track:aff56248911f451ad2fe791d64c60ef21b1f57af6d499752af4fcf4f66538b03` |
| 55 | `lemma` | [IsCircuit.ne_bot](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-ne-bot.md) | 323 | `result-track:b5209734892765d0001ca1fa688754f61713f1ee1541ace52b8b445ef70f9922` |
| 56 | `lemma` | [IsCircuit.three_le_length](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-three-le-length.md) | 326 | `result-track:05bf83831d2922f665669de9f59b8c497ef7e0ee8b6f1e71bb576d7aa26cbf78` |
| 57 | `lemma` | [not_nil_of_isCycle_cons](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/not-nil-of-iscycle-cons.md) | 332 | `result-track:f2b5525dabcf6c72eca2de1a6843388fea5c79fb2985749ef0159621ebf56625` |
| 58 | `theorem` | [cons_isCycle_iff](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/cons-iscycle-iff.md) | 336 | `result-track:910b38eb1ae2e97623d086b2e5580a8e5a373282fc296b0053c1dbb0b4bcb2b4` |
| 59 | `theorem` | [IsCycle.nodup_dropLast_support](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-nodup-droplast-support.md) | 343 | `result-track:2d724bcdbfc0d32200eef4cd2d5e1e174d15593fd5eeeb61c00e12a86289165d` |
| 60 | `lemma` | [IsCycle.reverse](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-reverse-source-edition-2.md) | 347 | `result-track:ed791ed576cefaea108711faacc6242fa3e00d993ebed3414cad7ddd3fbf88c9` |
| 61 | `lemma` | [isCycle_reverse](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-reverse.md) | 352 | `result-track:dcc9941be1c6ec447a06954719af54318ea835c347c7390675dcae47a3be10bc` |
| 62 | `lemma` | [IsCycle.isPath_of_append_right](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-ispath-of-append-right.md) | 356 | `result-track:60b615c99e0cfb4665567a9c2ced23341b506246a5ae465321552e43734dcec9` |
| 63 | `lemma` | [IsCycle.isPath_of_append_left](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-ispath-of-append-left.md) | 363 | `result-track:aadfaccca5649fa4e09c66ec47d7d4a10ad11f51c49b48ac4f2d96c9bb8417d7` |
| 64 | `theorem` | [IsCycle.isPath_tail](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-ispath-tail.md) | 367 | `result-track:c1c5a4afe098f30587f9461bf0b96982c9186b019769938d98250ae561238dd6` |
| 65 | `lemma` | [IsPath.tail](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-tail.md) | 370 | `result-track:2098d73a195a9448bf4355c82e561d7bbf30ebe9115fd10eb2132d46ce425bc0` |
| 66 | `theorem` | [IsCycle.isPath_dropLast](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-ispath-droplast.md) | 376 | `result-track:ee0ad1551b71b11e78874f8345a363dbc9d6df95fa028a168d98906da4072bdb` |
| 67 | `theorem` | [IsPath.dropLast](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-droplast.md) | 379 | `result-track:77c5751a34aed99b6abcb5af063c36f355663d2abbfa567ec1e265561bbcd01b` |
| 68 | `theorem` | [IsCycle.isPath_drop](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-ispath-drop.md) | 382 | `result-track:701bdde55cd05721706de17d4b67481f526fbf56eb7dfe5bb716457c9d0c97e0` |
| 69 | `theorem` | [IsCycle.isPath_take](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-ispath-take.md) | 388 | `result-track:2374ac9c9699fc8c9f7d39fd9b81bb469cc846758056e00f952820660532048b` |
| 70 | `lemma` | [exists_isTrail_forall_isTrail_length_le_length](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/exists-istrail-forall-istrail-length-le-length.md) | 396 | `result-track:200fdd56793411d26b871cbd3574218432856afa587d57092cd5b3df51e34a79` |
| 71 | `lemma` | [exists_isPath_forall_isPath_length_le_length](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/exists-ispath-forall-ispath-length-le-length.md) | 411 | `result-track:a9f7620834774a27e0d2f75dd8c99eff981ac9546c1a24d1ed91c770a9b8249c` |
| 72 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/instance.md) | 427 | `declaration-track:a58185ef2aaa15851d17b9fdc4f699090ef71d2fc387a330d832dedda2afe502` |
| 73 | `theorem` | [IsPath.length_lt](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-length-lt.md) | 431 | `result-track:13fa9f2efa49cab7240d38bcc72c80f82774ce4312bdbeeea4905ee61911d31f` |
| 74 | `lemma` | [IsPath.getVert_injOn](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-getvert-injon.md) | 436 | `result-track:8280662bdd28cf9abdffc1f8be3ac752e5f2b7cb308cf95bfb6402bdd9b776ed` |
| 75 | `lemma` | [IsPath.getVert_eq_start_iff_of_not_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-getvert-eq-start-iff-of-not-nil.md) | 456 | `result-track:f51c9c7612f4729d951dbcfec38f49c119ca3d8ac90a3d051d0d3229e7dfdbd4` |
| 76 | `lemma` | [IsPath.getVert_eq_start_iff](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-getvert-eq-start-iff.md) | 466 | `result-track:6ced91676530022aa60d361e800dac1ef0b4a09de303834e3bf740f0911610f5` |
| 77 | `lemma` | [IsPath.getVert_eq_end_iff](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-getvert-eq-end-iff.md) | 472 | `result-track:d65bdc328c09516771648cf1010bf3b343abd10241b5d1feec8ba2631f08d62d` |
| 78 | `lemma` | [IsPath.getVert_injOn_iff](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-getvert-injon-iff.md) | 479 | `result-track:b25dc6ea76e339d1228854e2bbbb722e09df876533d626a28957231030a29edc` |
| 79 | `theorem` | [IsPath.eq_snd_of_mem_edges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-eq-snd-of-mem-edges.md) | 502 | `result-track:1f13015dcb5f724fa13ded3d81a3a3080ea28c91b23a261739da56ac1f5606f4` |
| 80 | `theorem` | [IsPath.eq_penultimate_of_mem_edges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-eq-penultimate-of-mem-edges.md) | 509 | `result-track:0190a990d37ac8be97fdf3a8e8010061d3e1e984af03346ead6110e2830c57de` |
| 81 | `theorem` | [IsPath.injOn_support_of_isPath_map](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-injon-support-of-ispath-map.md) | 513 | `result-track:ed3902182be08df619578cf9d472061e08220164f21a62a1493b0eff4f7ddafe` |
| 82 | `lemma` | [IsCycle.getVert_injOn](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-getvert-injon.md) | 527 | `result-track:01b774fa6691a13bb1363f49f7c7488b43a01f824acc693e8efce0f120b60047` |
| 83 | `lemma` | [IsCycle.getVert_injOn'](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-getvert-injon-source-edition-2.md) | 538 | `result-track:2b80610b6922e3ce5ceb4d92c3772d9a9f068059841990d2c1e14754374aa86a` |
| 84 | `lemma` | [IsCycle.snd_ne_penultimate](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-snd-ne-penultimate.md) | 550 | `result-track:3dd4b563ac933e537d1e901e3960d03993b868948dd2d135d8ffc9d395df1810` |
| 85 | `lemma` | [IsCycle.getVert_endpoint_iff](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-getvert-endpoint-iff.md) | 556 | `result-track:3a656b95798122e5f4909943a360e6c655751ae662e97dc7735a2a797faa2979` |
| 86 | `lemma` | [IsCycle.getVert_sub_one_ne_getVert_add_one](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-getvert-sub-one-ne-getvert-add-one.md) | 564 | `result-track:0031557ff2c36c2e03de17d4e2185422a22d8330c8ef7a09872b36411fb96ad0` |
| 87 | `theorem` | [isCycle_iff_isPath_tail_and_le_length](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-iff-ispath-tail-and-le-length.md) | 576 | `result-track:3d76ad7e2655bdc6f0020ff08cb2f01661ddf1de5b55f4fd3cd2951b41ba04cc` |
| 88 | `theorem` | [IsTrail.takeUntil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-takeuntil.md) | 595 | `result-track:bf35c35b0808d5cc2f9813601fd186235799ba6edc82bac567ede6c2021123df` |
| 89 | `theorem` | [IsTrail.dropUntil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-dropuntil.md) | 599 | `result-track:d7248714dabc0edb64582732d15b30a6ae49dd63841b30ff245243ed3af4300d` |
| 90 | `theorem` | [IsPath.takeUntil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-takeuntil.md) | 604 | `result-track:8220b26cadb7f9c6cd3d994c82d41b7a50175d1526ba7ea0bcd62ac24ff2c18b` |
| 91 | `theorem` | [IsPath.dropUntil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-dropuntil.md) | 608 | `result-track:a0da737c8e4e33f0b4ce64d77d470bf9f7b5ef0fe209764f2569c6540e916549` |
| 92 | `lemma` | [IsTrail.disjoint_edges_takeUntil_dropUntil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-disjoint-edges-takeuntil-dropuntil.md) | 613 | `result-track:432fb582d6de64b41479e39dd983986507de272f449a523561022e52fa27f134` |
| 93 | `lemma` | [isTrail_rotate](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-rotate.md) | 617 | `result-track:4dd1f1ac04441eed316d5425149ac09df80559f5ea5649b8f17fae0adf66ba5b` |
| 94 | `lemma` | [isCircuit_rotate](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-rotate.md) | 621 | `result-track:b3dafefc6fa73ea2672a3aff1c0b52153458174aafa405a3ac009781660dcdff` |
| 95 | `lemma` | [isCycle_rotate](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-rotate.md) | 624 | `result-track:7ff4052c364d7d64ba1b52f947d667a8501aabe999276068463bbffbd26882ee` |
| 96 | `lemma` | [IsCycle.isPath_takeUntil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-ispath-takeuntil.md) | 631 | `result-track:8b62241531a64d2d47842436210fa4c9284544e43fce9fc5fc878c02b3b454b5` |
| 97 | `theorem` | [IsCycle.count_support](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-count-support.md) | 639 | `result-track:aa20fd96954ae4099949bf26d21bca2d2a5c36c07fccd6ee9a712a2cf0884961` |
| 98 | `theorem` | [IsCycle.count_support_of_mem](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-count-support-of-mem.md) | 644 | `result-track:9de1ddd4b91637fc621cbcec0f0487c3d6f6564e871cc7880e0f998bcbcc4e5b` |
| 99 | `lemma` | [endpoint_notMem_support_takeUntil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/endpoint-notmem-support-takeuntil.md) | 652 | `result-track:094df638088609aacd9924bcf4755d1bab000b3a2f1c750bcdcf4ae238444aa4` |
| 100 | `theorem` | [isPath_iff_isSubwalk_imp_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-iff-issubwalk-imp-nil.md) | 665 | `result-track:93859aa60f5ead14ff528b0338d3e86ea09ec8dd3f24c27c064837cd1cbb4e70` |
| 101 | `theorem` | [IsTrail.isPath_iff_isSubwalk_imp_not_isCycle](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-ispath-iff-issubwalk-imp-not-iscycle.md) | 675 | `result-track:fd6f437706fbf711b79f65f9076a0fd267a280115532e1671c3d24c41e93430d` |
| 102 | `abbrev` | [Path](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/path.md) | 694 | `declaration-track:a103a263742f2bddf39a6191b3f08d3390e2ffb823a88d93ea403d2baa9245c0` |
| 103 | `theorem` | [isPath](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath.md) | 701 | `result-track:3ba52aa8b363bf86d9d2081560ee519008d23710a8ebcc3f2b073a317634ef68` |
| 104 | `theorem` | [isTrail](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail.md) | 704 | `result-track:400e463539cfa71dd467ae026ae2a97e67b4ca3238caa70a4747bf4f539a379e` |
| 105 | `def` | [nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/nil.md) | 709 | `declaration-track:8754f4dc1092630ba698a98f3f59fc6cff8c38e7def55d7c54aba16f60eb632f` |
| 106 | `def` | [singleton](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/singleton.md) | 714 | `declaration-track:be00ea1519bbeae4087d4c3eec293f3f5ce8724669994fcc0fa5884f50bcff64` |
| 107 | `theorem` | [mk'_mem_edges_singleton](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/mk-mem-edges-singleton.md) | 717 | `result-track:7a9f61aa038fe87e02ff40055b4ab51a309fe475f6f44ef460fa83f34deafb5a` |
| 108 | `def` | [reverse](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/reverse.md) | 722 | `declaration-track:2ab40bf1a911d38a58c4bc88edc76b737bf6b497d2b61f39061ed0c58b8e61f0` |
| 109 | `theorem` | [count_support_eq_one](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/count-support-eq-one.md) | 725 | `result-track:cb0b7df158ff9f55e9e74fa420f3c172f55c7b49cceb23c40dfcc1d88ca4f670` |
| 110 | `theorem` | [count_edges_eq_one](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/count-edges-eq-one.md) | 729 | `result-track:8f7f41777ae5a28e834bbc5580d719c728c5118b3ad3536bbe271b7e534b8caf` |
| 111 | `theorem` | [nodup_support](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/nodup-support.md) | 734 | `result-track:85aeb663b946adcecf94dbdbee897914b1e475d71f79e06220128f26aced458e` |
| 112 | `theorem` | [loop_eq](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/loop-eq.md) | 737 | `result-track:f351fb55ff0ac64623ff873168ee2e5296603cde9863fb202157a0d249375836` |
| 113 | `theorem` | [notMem_edges_of_loop](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/notmem-edges-of-loop.md) | 742 | `result-track:f0899dc82adfc3e10fd830f01d1f6059507bfc1110664c0774178af5fe6e7914` |
| 114 | `theorem` | [cons_isCycle](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/cons-iscycle.md) | 745 | `result-track:bd8e778026a6003b8b2fdcd23dc46c40232ee16505c4ba60a6eef28c4ef8a0a0` |
| 115 | `theorem` | [IsPath.length_eq_one_of_mem_edges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-length-eq-one-of-mem-edges.md) | 758 | `result-track:f45cd4c1b79caf33acbab290f30d4cb3f629ef0c9689f4c7215e92f14e9bf647` |
| 116 | `theorem` | [IsPath.eq_adj_toWalk_of_mem_edges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-eq-adj-towalk-of-mem-edges.md) | 764 | `result-track:a2377b647cc821230b31487874110f51c638cb44e69f85d235c9c6a685c0e11c` |
| 117 | `theorem` | [IsPath.disjoint_edges_of_disjoint_support](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-disjoint-edges-of-disjoint-support.md) | 773 | `result-track:a0c14a936af19a4f9a02dc2d7832f0f616a7c708f532daea3e37995111d461b6` |
| 118 | `lemma` | [IsPath.isCycle_append](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-iscycle-append.md) | 785 | `result-track:947c609311bf45bdc9241bbaf1e7b9d52215f961150c2f56cce67ed86fd64792` |
| 119 | `theorem` | [IsPath.exists_isCycle_of_ne](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-exists-iscycle-of-ne.md) | 799 | `result-track:17eb97176f1330a82e46a49f24ed3ada85685b40c288e2e18c12388b40ac6e23` |
| 120 | `theorem` | [IsPath.exists_isCycle_sublist_of_ne](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-exists-iscycle-sublist-of-ne.md) | 823 | `result-track:edf290a3b9d82e7d78f374a67062b09ba4201e31c1a665953b5de73699b12f27` |
| 121 | `theorem` | [IsPath.exists_isCycle_length_le_add_of_ne](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-exists-iscycle-length-le-add-of-ne.md) | 839 | `result-track:6fb67156c43b9de76f2f7a8a87e9126d6dc6647da12e23aa23b1d0a051f84b34` |
| 122 | `def` | [bypass](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/bypass.md) | 851 | `declaration-track:a576506e63747aa7a10a173f2b03fd24a3be7e8a76d274f55f6e03456dc7aaa9` |
| 123 | `theorem` | [bypass_copy](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/bypass-copy.md) | 861 | `result-track:334c4de73ee29bd001e54dae94a90adcaf9851ae86a805da99656bf3730dc11b` |
| 124 | `theorem` | [bypass_isPath](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/bypass-ispath.md) | 866 | `result-track:21ebba95ba910e5c6cd892b3f487d409b4482cc943488b3c6564d398f1a586cd` |
| 125 | `def` | [toPath](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/topath.md) | 876 | `declaration-track:a92e18d74e45f86feb055d82cac4aeb75c4fab895109f4b1f8715368247f8a7d` |
| 126 | `theorem` | [support_bypass_sublist_support](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/support-bypass-sublist-support.md) | 880 | `result-track:495f3183befaf6b85a4506ad7a1b3ca4cc30b93727ac753e45a3ad3c89e5150b` |
| 127 | `theorem` | [support_bypass_subset_support](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/support-bypass-subset-support.md) | 889 | `result-track:40ad8be2fab34653aa4c192e959b858d41987012399e047cef1754c625798acb` |
| 128 | `theorem` | [support_toPath_subset_support](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/support-topath-subset-support.md) | 894 | `result-track:178053fc3daffcee787f57c70036dfb8498fc55e8bf700759e3594cdf3037deb` |
| 129 | `theorem` | [darts_bypass_sublist_darts](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/darts-bypass-sublist-darts.md) | 901 | `result-track:a2390a78259507a273931e048b62baddbb55b4f768218af9f04dbda109de98cc` |
| 130 | `theorem` | [darts_bypass_subset_darts](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/darts-bypass-subset-darts.md) | 910 | `result-track:771cd7caf73730fe1c34c6f572c5931b9683a596201e1dd9190481380815887b` |
| 131 | `theorem` | [edges_bypass_sublist_edges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/edges-bypass-sublist-edges.md) | 916 | `result-track:ce1c119f218e4609bf2907c5ceb59e5b039632679590606b8ee795c47c1dbeba` |
| 132 | `theorem` | [edges_bypass_subset_edges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/edges-bypass-subset-edges.md) | 919 | `result-track:b2902330c9ca723e532b533271257ec5c63ee2d63c0e327d567a5ef88570ceb7` |
| 133 | `theorem` | [length_bypass_le_length](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/length-bypass-le-length.md) | 924 | `result-track:9771804c3da4cc5c609d43c4d4a1d260d2e3ae5324d28003885a017ae4943ae7` |
| 134 | `lemma` | [length_le_bypass_length_iff](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/length-le-bypass-length-iff.md) | 930 | `result-track:3d6ef147fc8dd1a4464209dbfc9b1c9daffe3108706c1f6898c186b184133559` |
| 135 | `lemma` | [bypass_cons_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/bypass-cons-nil.md) | 942 | `result-track:8dcdd6617708e26b707ea3cee2f33396e4c45b9e2749eb0e152c34f414dac8fb` |
| 136 | `lemma` | [nil_bypass](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/nil-bypass.md) | 946 | `result-track:7f1753abb3973aedb77a04ce859cd6d545323d8236c7b23d90183e7058818fef` |
| 137 | `lemma` | [IsPath.bypass_eq_self](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-bypass-eq-self.md) | 950 | `result-track:dbf13f091a33a46d5384c53aac7b4edf491c8fa2ea98fec20a268704f7ec1b9e` |
| 138 | `theorem` | [bypass_eq_self_iff_isPath](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/bypass-eq-self-iff-ispath.md) | 954 | `result-track:8aba63e6a90bba4aa0c1ece9b91084c9faf58718ebc08abd9c0698f060f22001` |
| 139 | `theorem` | [darts_toPath_subset_darts](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/darts-topath-subset-darts.md) | 957 | `result-track:3648839ff0c12573d2f9e9358c1c6477b7e99b05cc237368ead6bd5c98e5d955` |
| 140 | `theorem` | [edges_toPath_subset_edges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/edges-topath-subset-edges.md) | 962 | `result-track:f8bf923068caa7c7c9ad83d78290343a459aeb35744d6847ad96eea51c683dd7` |
| 141 | `def` | [cycleBypass](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/cyclebypass.md) | 971 | `declaration-track:8ad75c5f64703d86a20ea906866880c443d8482795d0c2dfb1a3dad6d732bb68` |
| 142 | `lemma` | [cycleBypass_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/cyclebypass-nil.md) | 975 | `result-track:8ea697dbeb7c89bb4fd53b0f97c77ae3e84e2d9efdde3ef22722cacc4e6be48c` |
| 143 | `theorem` | [support_cycleBypass_sublist_support](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/support-cyclebypass-sublist-support.md) | 978 | `result-track:d43329dcbf9c472be544092b38b3c38430372e4c646f85c2d3790c87d0cf5507` |
| 144 | `theorem` | [darts_cycleBypass_sublist_darts](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/darts-cyclebypass-sublist-darts.md) | 983 | `result-track:9f0b59bdc05b92233349df4a7e977a1a9763a87733f4573081141d995d02416a` |
| 145 | `theorem` | [edges_cycleBypass_sublist_edges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/edges-cyclebypass-sublist-edges.md) | 988 | `result-track:c60bfc5ca6114de94c985a3a8fe8a7ca3f8e3bcfa78edee9c17d093ecfb284d8` |
| 146 | `lemma` | [edges_cycleBypass_subset_edges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/edges-cyclebypass-subset-edges.md) | 992 | `result-track:ab6af19d88bc98f41e69ccd2f8e3d49e0a74d5fb7f4d8b15aa7ebdf043727a51` |
| 147 | `lemma` | [length_cycleBypass_le_length](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/length-cyclebypass-le-length.md) | 998 | `result-track:78c3ffd7d8f9cb0b4287653d80fab9babd6dba6d5f1e7e3d444b1b2c1b51152d` |
| 148 | `lemma` | [IsCircuit.isCycle_cycleBypass](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-iscycle-cyclebypass.md) | 1001 | `result-track:ca2582045c86f709b0c6cd3d298b77e0706616ca8dc7fc66e3dda98272c96887` |
| 149 | `lemma` | [IsTrail.isCycle_cycleBypass](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-iscycle-cyclebypass.md) | 1010 | `result-track:b6adbc749114e5f60ba4cd26b659c7b7af975ca4052d994f3aa3a674f8581b2b` |
| 150 | `theorem` | [cycleBypass_eq_self_iff_length_le](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/cyclebypass-eq-self-iff-length-le.md) | 1014 | `result-track:75e0751e7eea9964ff299b97fae5dbb7bd424b324333595a9b545cbdb4f87ce1` |
| 151 | `theorem` | [IsCycle.cycleBypass_eq_self](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-cyclebypass-eq-self.md) | 1018 | `result-track:27c62e951bd6c034d3ec888a7a5423b0ca5756a3aaa7e9ce143d73cb5e5ad89b` |
| 152 | `theorem` | [IsTrail.cycleBypass_eq_self_iff_isCycle_or_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-cyclebypass-eq-self-iff-iscycle-or-nil.md) | 1024 | `result-track:97cdddae5655e9eaa6a903e445052ad716b86eb2f395f4c20b8134855300dd07` |
| 153 | `theorem` | [IsCircuit.cycleBypass_eq_self_iff_isCycle](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-cyclebypass-eq-self-iff-iscycle.md) | 1030 | `result-track:2a93d8fbda19a393652fbbc66d2fe9470069fed8ab00f73dfdda9771727eeae9` |
| 154 | `theorem` | [IsTrail.length_cycleBypass_lt_iff_not_isCycle_and_not_nil](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-length-cyclebypass-lt-iff-not-iscycle-and-not-nil.md) | 1034 | `result-track:11907e6dc57bd3398ee7b25523125d269b63c6f9cdef7c8dd1bf6e6fad3a791d` |
| 155 | `theorem` | [IsCircuit.length_cycleBypass_lt_iff_not_isCycle](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-length-cyclebypass-lt-iff-not-iscycle.md) | 1039 | `result-track:13fd493ae5f28f7eca10f16b98c02601859e7698ab5e0dd6664fcc52c5fe535e` |
| 156 | `theorem` | [exists_minimalFor_isCircuit_length](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/exists-minimalfor-iscircuit-length.md) | 1044 | `result-track:f6561edba9fa690e513d8bbade0b1477441e603fff2a1bbdf29138dde2f7dc6c` |
| 157 | `theorem` | [exists_minimalFor_isCycle_length](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/exists-minimalfor-iscycle-length.md) | 1049 | `result-track:a4cbbc28097ea4a84661352111d0f05243ad69baf5a73290e9541cd91ee8b1a2` |
| 158 | `theorem` | [exists_isCycle_forall_isCircuit_length_le_length](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/exists-iscycle-forall-iscircuit-length-le-length.md) | 1060 | `result-track:77243eb4c5af55a073161c56133968dfcf538544972c544944a9be285603f9ba` |
| 159 | `theorem` | [IsTrail.of_map](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-of-map.md) | 1075 | `result-track:424cf71a17cba45ee23968b7d4125bad5073915bf1a7b1b2bc94b90148df7ab1` |
| 160 | `theorem` | [isTrail_map_iff_of_injective](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-map-iff-of-injective.md) | 1080 | `result-track:a73180a0a3f402e2bf7d5ff98feab9a8ce6a68639bed8526ad41dfa635ebda55` |
| 161 | `theorem` | [IsPath.of_map](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-of-map.md) | 1091 | `result-track:abe91dd54de801fbc5fed8d59b7c425e2806f9e5b3841e7c1e30a26a00b3d7b9` |
| 162 | `theorem` | [isPath_map_iff_of_injective](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-map-iff-of-injective.md) | 1096 | `result-track:7caa37decae138630f00eb8b0ac54b368076894e7541f3db6fa327ad3d885ffa` |
| 163 | `theorem` | [IsCircuit.of_map](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-of-map.md) | 1107 | `result-track:0c08b0b441879c3fc3e1809c8a4d36b1ca99d86642551cd8cae7966a07dcce2b` |
| 164 | `theorem` | [isCircuit_map_iff_of_injective](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-map-iff-of-injective.md) | 1112 | `result-track:49daaf7f27353a52ece4396c8a97ab170699a2b1ff302a39f084b40303b123ce` |
| 165 | `theorem` | [IsCycle.of_map](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-of-map.md) | 1119 | `result-track:64fa50fe4b2494cbdb43344c7c9d2aeacef7241535062ed16b42fa5354da9845` |
| 166 | `theorem` | [isCycle_map_iff_of_injective](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-map-iff-of-injective.md) | 1124 | `result-track:16a807b7001cf72dc453d9c5b0aa6364091843a891c817fe4f4d57f1bd1a6144` |
| 167 | `theorem` | [isTrail_mapLe](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-maple.md) | 1135 | `result-track:180ecec2741d42be3cea8a222182ea4c0a3aa5b88992ca16338bfaad30076dc9` |
| 168 | `theorem` | [isPath_mapLe](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-maple.md) | 1144 | `result-track:c3e7c6e55edf9591b40603e2048a9f9f1622e28a10164d69f285ae31449aab6c` |
| 169 | `theorem` | [isCircuit_mapLe](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-maple.md) | 1153 | `result-track:3c22bce20e1e5889a2ae663fec67b8c6edac8f71ad0cc8427bee5fd0545ed978` |
| 170 | `theorem` | [isCycle_mapLe](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-maple.md) | 1160 | `result-track:9fa37fd09419f3a03df18a8327e15b2d4e611cbbed85d966c6d405df4e614ce1` |
| 171 | `def` | [map](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/map.md) | 1176 | `declaration-track:00384a1d741a09f94c6dbf2812869f30f1f43e9c5e41b57bc761d267882386b6` |
| 172 | `theorem` | [map_injective](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/map-injective.md) | 1180 | `result-track:a478d1544f499c5edc32ec0167974b0c428e7afe620975d9a97992cd90f6b16d` |
| 173 | `def` | [mapEmbedding](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/mapembedding.md) | 1188 | `declaration-track:416ab774e9bdefdb85a456236bde3940fe7b50f8301d49f99e2260d584294536` |
| 174 | `theorem` | [mapEmbedding_injective](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/mapembedding-injective.md) | 1191 | `result-track:e6e22c1d81b275c710cd596ed7f2bd57cfc717c3459d2a070b17974953d9f62f` |
| 175 | `theorem` | [isTrail_transfer](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/istrail-transfer.md) | 1205 | `result-track:5c751da0c4604fb2f8b5a8360d31d97f86c30f7ab6ea05cdef6f51b66f29be1e` |
| 176 | `theorem` | [isPath_transfer](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-transfer.md) | 1211 | `result-track:94051d82723e3ccab28c2a8144969b077ee0cf6d50a4d1761556bd127b604a8b` |
| 177 | `theorem` | [isCircuit_transfer](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscircuit-transfer.md) | 1217 | `result-track:8a30467420333e18be80d62851b613990bd67bf42cfecbfe347c9ded03ffc25d` |
| 178 | `theorem` | [isCycle_transfer](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-transfer.md) | 1223 | `result-track:c62a6295233b3daca41913d9cdd6b56e1f464246836b10775756791943e930ec` |
| 179 | `theorem` | [IsPath.toDeleteEdges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/ispath-todeleteedges.md) | 1236 | `result-track:c7a2c3e4261e7cdffe9e780661555e031e890c47dc6481bad6723ef067ff2efb` |
| 180 | `theorem` | [IsCycle.toDeleteEdges](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/iscycle-todeleteedges.md) | 1240 | `result-track:96f9367b730172cd5a5f02bf1226c56a4325d9a07ca520042ff10528995d49bc` |
| 181 | `theorem` | [toDeleteEdges_copy](../../../../../Combinatorics/GraphTheory/PathsPublic.lean/declarations/todeleteedges-copy.md) | 1245 | `result-track:0f4094575cead0f67318ee62101ba1e9cd8bc6de26ec0d48fcf8c985865c9c94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=107eeced7ba22f51ec64ee75a1ecbc32bc07d516bd31d33d1265744d81b4aedc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
