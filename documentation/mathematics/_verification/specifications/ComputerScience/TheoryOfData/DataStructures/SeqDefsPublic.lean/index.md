# Verification target: Seq Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bb92ab1e4371027d346e21d0930684439009ec3",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant919c5a78c1bf6463b3606030b97b940bac3e2e0229a667df69b39b7ecb761bcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bb92ab1e4371027d346e21d0930684439009ec3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant919c5a78c1bf6463b3606030b97b940bac3e2e0229a667df69b39b7ecb761bcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant919c5a78c1bf6463b3606030b97b940bac3e2e0229a667df69b39b7ecb761bcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/isseq.md) | 58 | `declaration-track:cd77d451807f9adfe93ad9f6b76341cb9a73a5476ecff28fdaced4c3a8934ecc` |
| 2 | `def` | [Seq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/seq.md) | 64 | `declaration-track:b65230b002ee0eabfa1c58f057adc9c7b58a70657b3ffc741521abfa73eddc3a` |
| 3 | `def` | [Seq1](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/seq1.md) | 68 | `declaration-track:f76d194f604bf3b58ce1f29f267b9556fb84d39f95f09ac842f3a86c2364055e` |
| 4 | `def` | [get?](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/get.md) | 76 | `declaration-track:05132d7906146c7438afc4e0e6a2f05e1f20dcb8c5d65c43dd5d068c915677e2` |
| 5 | `theorem` | [val_eq_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/val-eq-get.md) | 80 | `result-track:6a0a0dee9f37da1bd850b9c2c7e1918161f395ed62b2892c3e1edc5a67a775a5` |
| 6 | `theorem` | [get?_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/get-mk.md) | 84 | `result-track:e61d4a299254dfe4f1ccb178ad4cd08f70487817b276518c502eec2fb00893c4` |
| 7 | `theorem` | [le_stable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/le-stable.md) | 87 | `result-track:1f2c1467f1a038ef85fe67cfcf78a7dfa3b79c932587f550b5fca33c33d9523f` |
| 8 | `theorem` | [ge_stable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/ge-stable.md) | 94 | `result-track:1a227248ef8fd02116d1bb0df941fdc4dc28560425778da74398cd31aba40bd7` |
| 9 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/ext.md) | 101 | `result-track:22de0678380237ae12e3c707924d72581251f5d696f6ca93f61e790f10b50922` |
| 10 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/nil.md) | 109 | `declaration-track:137a5023a68d8b5ac9eaf10d45e3587392d772657257bab1716bb4495574eb40` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/instance-source-edition-2.md) | 112 | `declaration-track:92d68abf6569a286bee4bf28d544d4ef24428d76707a01ef22eea55521d3200c` |
| 12 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/cons.md) | 116 | `declaration-track:b6c339283276dab89b42031f0d94facc4564289d7066daef7e6f7afba60a1214` |
| 13 | `theorem` | [val_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/val-cons.md) | 123 | `result-track:cbf3a28725ce125a19e7f28522db917edb8c3d908322b50206f0e4d0cccc61e6` |
| 14 | `theorem` | [get?_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/get-nil.md) | 127 | `result-track:ac6605b1cd6212fb2d83f74fe2b1d3fff47668a3ba462ce7927650ad87c1d437` |
| 15 | `theorem` | [get?_zero_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/get-zero-eq-none.md) | 131 | `result-track:bb00ee65d86a52609ced439a6d5c5c236e1f7ace08ca0664fd3292efc0210d6d` |
| 16 | `theorem` | [get?_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/get-cons-zero.md) | 137 | `result-track:5dd6a9d2e9a610d9763ebb9245ef5619f98204abd40e82a3978a46299285e3bd` |
| 17 | `theorem` | [get?_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/get-cons-succ.md) | 141 | `result-track:3cb7f51677bb223339a4a0ebce3860c972ee0854a09c05edb178846a324fa320` |
| 18 | `theorem` | [cons_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/cons-ne-nil.md) | 145 | `result-track:a1491048724b3901260975f9fdadc000f6fb9586d7f5cfaace6ef43455f87317` |
| 19 | `theorem` | [nil_ne_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/nil-ne-cons.md) | 150 | `result-track:13600e90de9364fd692baee4383efc51d537caf924495d420ba75f45dd935fd1` |
| 20 | `theorem` | [cons_injective2](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/cons-injective2.md) | 152 | `result-track:8a3db3095a06bec43b5ecfd54653d9204468c1166ffadc47e2090f981c29abc2` |
| 21 | `theorem` | [cons_left_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/cons-left-injective.md) | 156 | `result-track:6c1ba54df56331c8a1396ebcdd09b7ecfbbfe9477d75f84a670ee56aa7de526f` |
| 22 | `theorem` | [cons_right_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/cons-right-injective.md) | 159 | `result-track:99c1a022bc3d46c902d71b1e2d3d7c42c4c8afc316b30f28535ead2e8dd01d8d` |
| 23 | `theorem` | [cons_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/cons-eq-cons.md) | 163 | `result-track:80279b3ed2e1d2bb309328910034781bf0d031ca7849d0a6035ab004eee57a30` |
| 24 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/head.md) | 175 | `declaration-track:ee39a548361615c473edbb05b1477c63a0d94e17d0f9fddcabfd058e5218e552` |
| 25 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/tail.md) | 179 | `declaration-track:1778b14bd05ea3308d16cf0c2d578b62e74914f4936da332dbcdf6ec5c576f99` |
| 26 | `def` | [destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/destruct.md) | 186 | `declaration-track:09f92506bfe4fbdf4c76da3a163e29aafb28e1c0b26b6914cf89a8a8b287c881` |
| 27 | `theorem` | [head_eq_destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/head-eq-destruct.md) | 190 | `result-track:8043a9de7d7391db692b56bc282a089099f1291e61c3d6017c5d2fbef9502271` |
| 28 | `theorem` | [get?_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/get-tail.md) | 194 | `result-track:6f3dc56f5388478fa56ba63e8f864bc07556832f90c8ac782e3d9a0426c24944` |
| 29 | `theorem` | [destruct_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/destruct-nil.md) | 198 | `result-track:eeb5fc87101cdda067ab4ee1faf68b3c7febe5390b185782926dd6e75c76178e` |
| 30 | `theorem` | [destruct_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/destruct-cons.md) | 202 | `result-track:7ffd37f1ae2780aa2f8c1489bb4a8651e473a212694cefa3f7246db69a73a4f7` |
| 31 | `theorem` | [destruct_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/destruct-eq-none.md) | 208 | `result-track:8761496236d08862ce0bbbf200d014bdfa832441ded502be0e6bd52ef25426f3` |
| 32 | `theorem` | [destruct_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/destruct-eq-cons.md) | 214 | `result-track:442d26c6fe19f0b4ba1b8e6098c9f2e58eafd3734bb50de77e0eb79651a57982` |
| 33 | `theorem` | [head_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/head-nil.md) | 228 | `result-track:a2daa8b146e65fa00130f5fbbca8d49031fb3f5d0b5eff5714554e0b97efbbc5` |
| 34 | `theorem` | [head_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/head-cons.md) | 232 | `result-track:55b516e86a87bb82f658cd199c0ab3375e2905470a32038b64d6dd983f6a7da3` |
| 35 | `theorem` | [tail_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/tail-nil.md) | 236 | `result-track:f5583873e4c31fa7df6001a7a7c1ce6ef953cceeb321290ffba234c43fe97a08` |
| 36 | `theorem` | [tail_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/tail-cons.md) | 240 | `result-track:3c22c2f86f17b7e74b7694542b61abb3349e18198f60d7c997642a7ad430f876` |
| 37 | `theorem` | [head_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/head-eq-some.md) | 242 | `result-track:c8547a4a5198f10da912d6575cfd1229f8c5e3ee5014c795d78ec730a232b2d2` |
| 38 | `theorem` | [head_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/head-eq-none.md) | 248 | `result-track:919e5994bb7a952dee404391647d3d15984189ba510d0373599221448027b8c9` |
| 39 | `theorem` | [head_eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/head-eq-none-iff.md) | 252 | `result-track:3566a84d5f5f1a722ae31255d6a8cc403c6fedb2304fa8b22ae2f379f97f9bb6` |
| 40 | `def` | [recOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/recon.md) | 264 | `declaration-track:84abf75ce3e8f5b9f6a7ce3ab2e370db2bad6b3e1ed9e955ff43d9e3e9ab8186` |
| 41 | `def` | [omap](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/omap.md) | 276 | `declaration-track:ac3c9ab31daf00ee57ce1019f0c0a48db3a4931898d51973bf2871d8de0891c7` |
| 42 | `def` | [Corec.f](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/corec-f.md) | 281 | `declaration-track:504a5e3e5c0f2c56a457195d651f33c4b87cf9d28b4d93311453b82ee00ba521` |
| 43 | `def` | [corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/corec.md) | 290 | `declaration-track:e9e180763a72c08dbe424a1786eb530ad3cc0cdba358437ef761d685181597ea` |
| 44 | `theorem` | [corec_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/corec-eq.md) | 312 | `result-track:b9f43714bb07a6e6a39f859fcbd432cbba35a03835d3631961f094563bf8967c` |
| 45 | `theorem` | [corec_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/corec-nil.md) | 326 | `result-track:f5af2d451d0707534e937507ad57bef2eb87e51c3d1d3d49e55d3c32f64eb9a7` |
| 46 | `theorem` | [corec_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/corec-cons.md) | 332 | `result-track:1b7911348cc9093d2fced3141b8ed39a015eb5dbfd760692325d37b559e7c587` |
| 47 | `def` | [BisimO](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/bisimo.md) | 348 | `declaration-track:5e217cd102ac0213c5243d0d70512f74e1c5be6345419266819ca1b35c9f3e1e` |
| 48 | `def` | [IsBisimulation](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/isbisimulation.md) | 357 | `declaration-track:316e2213c1b317528d843ca435b09437a023be19fa6f196eccd09d9937b8a1e5` |
| 49 | `theorem` | [eq_of_bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/eq-of-bisim-source-edition-2.md) | 363 | `result-track:daf3531f50677c2252f20f6c1d72c9fefe6e95e6751772856f3afbc65a2d3011` |
| 50 | `theorem` | [eq_of_bisim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/eq-of-bisim.md) | 391 | `result-track:cca4e5bde264cf8b3acb601c1257d0deb48b0d94ea91379cc3a15c96b20e9d35` |
| 51 | `theorem` | [eq_of_bisim_strong](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/eq-of-bisim-strong.md) | 407 | `result-track:aa5a55718ba5cc54e56e8d0bc8c8cf26d860fd000a625af1ea8156cba80611a9` |
| 52 | `theorem` | [coinduction](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/coinduction.md) | 425 | `result-track:aef6c315187b9a5a787c53c2239cca6f4b108928c95a892a6d7e364e8167e426` |
| 53 | `theorem` | [coinduction2](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/coinduction2.md) | 432 | `result-track:9ca5b35d39459dec913be49998120fcf911b9d77f7f10e8e0e97835530dcaba3` |
| 54 | `def` | [TerminatedAt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/terminatedat.md) | 447 | `declaration-track:bb2d064a3ab67f127df92e1d420fed778846133632b7a3c4484e451fee55e3fd` |
| 55 | `instance` | [terminatedAtDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/terminatedatdecidable.md) | 451 | `declaration-track:8ec27bd193a8407f422a9943cde67b7ac7d34b6a0a87e6ad2867e8ac07e14797` |
| 56 | `def` | [Terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/terminates.md) | 455 | `declaration-track:b1cc573726bbecd68be83becc4379998769b4e63b635cb0c3ead305621b92348` |
| 57 | `def` | [length](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/length.md) | 459 | `declaration-track:162c623d95bdb0ab1f711f13305caaf4e8269d9e74b35604c7fad6bb78d96c37` |
| 58 | `def` | [length'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/length-source-edition-2.md) | 464 | `declaration-track:ae30de892163aafff447ca084cf5d6b26caa58d2ad4e0c99742020b478523855` |
| 59 | `theorem` | [terminated_stable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/terminated-stable.md) | 468 | `result-track:23f81e31f0c6c2458a6607df40e2bd523f1a28f5b5969ec9f9482c024629a55d` |
| 60 | `theorem` | [not_terminates_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/not-terminates-iff.md) | 471 | `result-track:427658ae53647dacf54bec7a6221a6c4f5dae887e1c4d01293f6135aece0e548` |
| 61 | `theorem` | [terminatedAt_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/terminatedat-nil.md) | 474 | `result-track:dc23544f6f6bb865c651705c68f56a4fc189b618b3b4071247856bcff89125ec` |
| 62 | `theorem` | [cons_not_terminatedAt_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/cons-not-terminatedat-zero.md) | 477 | `result-track:80a5b6ac391fc9c4e648ffd5f689f976dbfee2040fec0107641a1b60bf38d316` |
| 63 | `theorem` | [cons_terminatedAt_succ_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/cons-terminatedat-succ-iff.md) | 482 | `result-track:853c6246b680f1b2cbdea184bf0c7f0549b6d6c685952fd3a89fdf8a2e20e1fd` |
| 64 | `theorem` | [terminates_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/terminates-nil.md) | 487 | `result-track:c3c9b648a251b6c1e96ad1c3f020b8ad742975769394d416211eabe572beced9` |
| 65 | `theorem` | [terminates_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/terminates-cons-iff.md) | 490 | `result-track:66d1187b5d8c8276b96764263d9d054b311076680f007a44149d5a5cda92fd19` |
| 66 | `theorem` | [terminatedAt_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/terminatedat-zero-iff.md) | 496 | `result-track:e5f591242efd3a3983fccc46a35a2f4b7085fbb3ea60c322a8d26b2530c881f6` |
| 67 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/mem.md) | 510 | `declaration-track:ab14cf979e898c89fc4f54db77320a3c8a11f60b5c5c40a764ca77b1a6668496` |
| 68 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/instance.md) | 513 | `declaration-track:14f3c5a081798e749c6681de1fdfb5748814e4e47110ee28835b2649bbed1c50` |
| 69 | `theorem` | [get?_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/get-mem.md) | 517 | `result-track:530834b6fb60cecf1db61c5d045733bc18a50b8ca9f1692152f44c60331f2560` |
| 70 | `theorem` | [mem_iff_exists_get?](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/mem-iff-exists-get.md) | 519 | `result-track:21ca92f714f3e1a8f20a7e79ff074e8a73ef0b93b8783bfb0e2cd65bceb966bd` |
| 71 | `theorem` | [notMem_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/notmem-nil.md) | 526 | `result-track:9be129fbf492a7db5655209bc980a9a12cced698fad226f3d5016a9e0065388a` |
| 72 | `theorem` | [mem_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/mem-cons.md) | 528 | `result-track:f5ab41988d6493c6cd5bbce3bd029186be6d2b55011004d8c32f2da24daa21af` |
| 73 | `theorem` | [mem_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/mem-cons-of-mem.md) | 531 | `result-track:fa14624f5701c4b42ded5aed6ff188bc48704c5d5eedc050f9e0175e19daf465` |
| 74 | `theorem` | [eq_or_mem_of_mem_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/eq-or-mem-of-mem-cons.md) | 534 | `result-track:1150268c6b586ef29a018002eb3ce23bb6032a9d94526d326753ce028dd631e0` |
| 75 | `theorem` | [mem_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/mem-cons-iff.md) | 538 | `result-track:77163eb32dfced3d256456dd6227d684480260b7e4331a986b31dee84c622602` |
| 76 | `theorem` | [mem_rec_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/mem-rec-on.md) | 541 | `result-track:5bd664d4894a96854313be4c9d2192c92ca0b99d81dcd0a47f3c5ec7193a6c04` |
| 77 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/oflist.md) | 567 | `declaration-track:a70a43399bb8195d93285e72f09d2b65dd3722773b0d4a55092e94ce029a2070` |
| 78 | `instance` | [coeList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/coelist.md) | 572 | `declaration-track:678e1928d352c401426f655a121da7a8474284444121d312d3b253f3c40d5e05` |
| 79 | `theorem` | [ofList_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/oflist-nil.md) | 576 | `result-track:d661f57777ed37c728371ca5027f5b781b629733b18d3d7534c54da40a03be4e` |
| 80 | `theorem` | [ofList_get?](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/oflist-get.md) | 580 | `result-track:df67704d206d1599f080bd29545a48aaf7e8546fc104b10d232dabd94e430e8e` |
| 81 | `theorem` | [ofList_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/oflist-cons.md) | 584 | `result-track:135a05e16fd074352ad16b4c5d47d527f0e2e2030e998bb649c69324488ec41a` |
| 82 | `theorem` | [ofList_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/oflist-injective.md) | 587 | `result-track:f948722f83ce02e0d7c4b7130c758fb569b61caf0e70ea8462c5c2d9951d643f` |
| 83 | `def` | [ofStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/ofstream.md) | 592 | `declaration-track:ed095ac94e1433be4588a0336707aaf9158f75682a26b2b4002474ead0dcae61` |
| 84 | `instance` | [coeStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/coestream.md) | 595 | `declaration-track:90d8356909784b635a05c9c2f659bd0e3d6e6b1ffa73156abb1046138eaf891c` |
| 85 | `def` | [ofMLList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/ofmllist.md) | 603 | `declaration-track:971fb5b210ea2b35bb2df79945897b3bb7cf87ac3dd3f0e1aa77f01f32549f6a` |
| 86 | `instance` | [coeMLList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/coemllist.md) | 609 | `declaration-track:af190aa0de308bf622bd045c450dc0cecc41bc0b0bfc20e82cf9e2c90884c105` |
| 87 | `def` | [toMLList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/tomllist.md) | 613 | `declaration-track:d74f1920e5206f28d7197a814d8187d87dd3288f379860eb6b121fcc901bf0e7` |
| 88 | `def` | [forceToList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/forcetolist.md) | 623 | `declaration-track:91aabcbe53df38aa6853cef294cd60d03ad680e134746ca041c0826348c0fd49` |
| 89 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/take.md) | 627 | `declaration-track:ef13b131a26aec132469e35876709edbf645c75671312499a29275b51143f307` |
| 90 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/tolist-source-edition-2.md) | 635 | `declaration-track:c24568938474b258c4c115b8513993750f9d2673390c9db578dd70db07d9e3b0` |
| 91 | `def` | [toStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/tostream.md) | 639 | `declaration-track:00af538eb362c9d8c1443e599db35582c88242435d1ebff40d21d9cf73298608` |
| 92 | `def` | [toListOrStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/tolistorstream.md) | 645 | `declaration-track:42b6f48dc30b13dc4fec16af0a676e866074d314136e90513bba4495cbd07763` |
| 93 | `def` | [toList'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/tolist.md) | 651 | `declaration-track:39ec3fa8bc55c3edb5c7a523d993a7484d451869d903ec6c0e3ca700d8d135d8` |
| 94 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/append.md) | 665 | `declaration-track:7e5a4439d55306df46c9ccac5c94bec7931327944f6fc771a2526ba19f202696` |
| 95 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/map.md) | 674 | `declaration-track:f91fd35ee6898cd62afbc18e34d0f696fb2229e5419124523a5e933e32a856df` |
| 96 | `def` | [join](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/join.md) | 686 | `declaration-track:e36c5177cdb3f7f8e5fc7d45e2f22994a12b66853c5307355b61a2e04c91c642` |
| 97 | `def` | [drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/drop.md) | 698 | `declaration-track:25191a1ef4154ee70a30d20aa359529a0b018036c2f5ef4fd569961a24a6f4a0` |
| 98 | `def` | [splitAt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/splitat.md) | 704 | `declaration-track:20f3dc1d485106e20d0652e0355dc74734ea88964e08d793cdc65a644ba91b98` |
| 99 | `def` | [zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/zipwith.md) | 714 | `declaration-track:09c7802a7033b06dd92a9607b8f102c13d4172a09573f3ef38a17bac91c50306` |
| 100 | `def` | [zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/zip.md) | 719 | `declaration-track:cf14261919c95c93b4dc71700636f54bca2795765b9616c2f9ed1cbac3ec315b` |
| 101 | `def` | [unzip](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/unzip.md) | 723 | `declaration-track:66fb59fdad2e1427d16428cadf8915b9626626845e06272452f84a501294ac15` |
| 102 | `def` | [nats](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/nats.md) | 727 | `declaration-track:b69eb174e8f768f859f2f9ca7f185bf5a2ee8345de85e971643fe7ebe1779ccb` |
| 103 | `def` | [enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/enum.md) | 731 | `declaration-track:0521505ae1044a1d4fc43af5a1c90c63fcf72e5e1ef959568f7ec83068b18c87` |
| 104 | `def` | [fold](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/fold.md) | 736 | `declaration-track:9ea3e7f01d24dbda9e2dbc34653ed7655e60420bb787c68496582d3591924183` |
| 105 | `def` | [update](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/update.md) | 745 | `declaration-track:9fbd3586ff12ced49bf264d655f54838c36f376955eac144dc81890878b2bace` |
| 106 | `def` | [set](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/set.md) | 755 | `declaration-track:ac477d473edb43878d33070bf5fe795d8f99ead1670313b48f06f6728cb633cf` |
| 107 | `def` | [Pairwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/declarations/pairwise.md) | 767 | `declaration-track:af7094955d4828e4c597f594aee5fd79e085f59ae4ef6cfee84ae6bec34f193e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f63a63839aecbf0c11b6855bd70435f6e3d3476185e52a84eb2f4922ec608ad7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant919c5a78c1bf6463b3606030b97b940bac3e2e0229a667df69b39b7ecb761bcf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant919c5a78c1bf6463b3606030b97b940bac3e2e0229a667df69b39b7ecb761bcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
