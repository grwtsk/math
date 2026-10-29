# Verification target: Circuit Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd9bf31de4a8209bcd163db1349199f94a10c3e5",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CircuitPublic.lean/index.md) · [Full source](../../../../Combinatorics/CircuitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd9bf31de4a8209bcd163db1349199f94a10c3e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit.md) | 61 | `declaration-track:5ab5e3c63dd98b7653fb3648a6aed624a5123eea83de2180edc8fd050c3e5b23` |
| 2 | `lemma` | [isCircuit_def](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-def.md) | 63 | `result-track:090a7e27d6978924af5079f34322807de557bfa9bb27e36b2e87f167f3b2dcc1` |
| 3 | `lemma` | [IsCircuit.dep](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-dep.md) | 65 | `result-track:37b50a81f039b0c73d084ff5b9835efa417b92c782adf5e04e4c74a98a68ce6b` |
| 4 | `lemma` | [IsCircuit.not_indep](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-not-indep.md) | 68 | `result-track:07b076b096fa62b873c4dc99bb6972de082e26a998e7b2909d1ee29db8b490c2` |
| 5 | `lemma` | [IsCircuit.minimal](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-minimal.md) | 71 | `result-track:7b592f6fb366a559ffdd7b872817c8c27cc889846579b6b7cc5fd84319772b41` |
| 6 | `lemma` | [IsCircuit.subset_ground](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-subset-ground.md) | 75 | `result-track:81f33d3b920b31887452b0351ea5c4d012419aa0a879c205e107e4ae17d1d253` |
| 7 | `lemma` | [IsCircuit.nonempty](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-nonempty.md) | 78 | `result-track:3cf3e171e2c5972049f7ef3db6bfd924d08b63a0e6f0a0c71f4eea73575b4678` |
| 8 | `lemma` | [empty_not_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/empty-not-iscircuit.md) | 81 | `result-track:3954d8d701cd9b5e424330994c2e56a33c293d359648508e9777163e7eb5484b` |
| 9 | `lemma` | [isCircuit_iff](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-iff.md) | 84 | `result-track:b989788a5c7ed0a52ad024cafa69efd696aa84f29abec86ab6c9ae261116f173` |
| 10 | `lemma` | [IsCircuit.ssubset_indep](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-ssubset-indep.md) | 87 | `result-track:e22d2784c12c08a2ceba0bf6717cf893956aa15e3fead2e47dab996ec6824973` |
| 11 | `lemma` | [IsCircuit.minimal_not_indep](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-minimal-not-indep.md) | 91 | `result-track:07615c7ec709a6ed4ce2558dd54fa7a9e6130816dda4f54bd5e606bf44d14a20` |
| 12 | `lemma` | [isCircuit_iff_minimal_not_indep](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-iff-minimal-not-indep.md) | 95 | `result-track:35e1f1fb0b9c07cba39b9905cfb2bc92c5c890bdc13f07ca133cda72b710bbb6` |
| 13 | `lemma` | [IsCircuit.sdiff_singleton_indep](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-sdiff-singleton-indep.md) | 99 | `result-track:e4bcc30ce207faee95101c1547c09017a014574da86e5aac48ca4a1428882e66` |
| 14 | `lemma` | [isCircuit_iff_forall_ssubset](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-iff-forall-ssubset.md) | 105 | `result-track:33bbe71e4e6337184edc89ae6495e66dbb75fe5f0b429fd0e9f88b4638e51cd0` |
| 15 | `lemma` | [isCircuit_antichain](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-antichain.md) | 110 | `result-track:d4eec9824992ab2c419f2e02e584fe915639e9e59dbed274237fa28f4e7b241f` |
| 16 | `lemma` | [IsCircuit.eq_of_not_indep_subset](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-eq-of-not-indep-subset.md) | 113 | `result-track:9e187d3b2b4d1f5e902eb1425417dec7750a207d6a31fb8433e0ba4bd683c8df` |
| 17 | `lemma` | [IsCircuit.eq_of_dep_subset](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-eq-of-dep-subset.md) | 117 | `result-track:2b02a6410408814b1e1fe95d4368fc21f81e8d9fef98ea0cc17321333a3ccde5` |
| 18 | `lemma` | [IsCircuit.not_ssubset](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-not-ssubset.md) | 120 | `result-track:9e323e13bd750d66cc33cf5f7aac58649794f4795a2b553fbadbd4515d379f0e` |
| 19 | `lemma` | [IsCircuit.eq_of_subset_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-eq-of-subset-iscircuit.md) | 123 | `result-track:66136776c67aa1abd9731e8114e4d7ec1ab2fc1008214565ea75e66c526269a0` |
| 20 | `lemma` | [IsCircuit.eq_of_superset_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-eq-of-superset-iscircuit.md) | 127 | `result-track:30cd535b3c887f591d693244d22de74071795b8096b3d856e489f03863bb9728` |
| 21 | `lemma` | [isCircuit_iff_dep_forall_sdiff_singleton_indep](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-iff-dep-forall-sdiff-singleton-indep.md) | 131 | `result-track:8b172a6b3a66ef4dda20fcfcf4a57dd375d1b86ca08372f2d153181358806254` |
| 22 | `lemma` | [Indep.insert_isCircuit_of_forall](../../../../Combinatorics/CircuitPublic.lean/declarations/indep-insert-iscircuit-of-forall.md) | 145 | `result-track:dbe98b1b424a61771a750925570fa4f98dbd7a727e0c2169dfc12fcf6f23fd5c` |
| 23 | `lemma` | [Indep.insert_isCircuit_of_forall_of_nontrivial](../../../../Combinatorics/CircuitPublic.lean/declarations/indep-insert-iscircuit-of-forall-of-nontrivial.md) | 154 | `result-track:73aca1c7116a6476300195449a78281579fcef067b0f468b452aa837cdd6fefc` |
| 24 | `lemma` | [IsCircuit.sdiff_singleton_isBasis](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-sdiff-singleton-isbasis.md) | 160 | `result-track:ec03c2985ed521dae16518a2a4230c6b3c512fcb74496f99da1916a60ce95129` |
| 25 | `lemma` | [IsCircuit.isBasis_iff_eq_sdiff_singleton](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-isbasis-iff-eq-sdiff-singleton.md) | 170 | `result-track:20f50257741fa401eb79f647b9117f38ffead095630428cfaa2b5efbe31c6b4a` |
| 26 | `lemma` | [IsCircuit.isBasis_iff_insert_eq](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-isbasis-iff-insert-eq.md) | 183 | `result-track:a1c4c46a40ae2f1f8d4a7e5edef9d48c08485dc9ea2c2be2ba835a275fc2ccb9` |
| 27 | `lemma` | [IsCircuit.isCircuit_restrict_of_subset](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-iscircuit-restrict-of-subset.md) | 193 | `result-track:caa01f43223e35c2550f7a1bb8124dd92e65ceb08ce4490eff4dcf03dce07490` |
| 28 | `lemma` | [restrict_isCircuit_iff](../../../../Combinatorics/CircuitPublic.lean/declarations/restrict-iscircuit-iff.md) | 198 | `result-track:48a597a2083449699104c44043132492bc73bd7d80d0fd01b31c34c896512eb4` |
| 29 | `def` | [fundCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcircuit.md) | 211 | `declaration-track:3e1de9b529108c932d4e9e4be011a3bd012b66559d053a965a34a1027e0ce749` |
| 30 | `lemma` | [fundCircuit_eq_sInter](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcircuit-eq-sinter.md) | 214 | `result-track:87b0d7e40337755bd108fc269690c70bcf8f9da4c4e9f2e039d1346cd4227780` |
| 31 | `lemma` | [fundCircuit_subset_insert](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcircuit-subset-insert.md) | 221 | `result-track:273277db35257896c99881f29727744f53d49036850f43da02c8095a81ecd420` |
| 32 | `lemma` | [fundCircuit_subset_ground](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcircuit-subset-ground.md) | 225 | `result-track:ef7a84bf2fcdd85d5dae82e9dd6f9feaedbd6a210bd94777dbe0709745059d6f` |
| 33 | `lemma` | [mem_fundCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/mem-fundcircuit.md) | 229 | `result-track:34a2e5243f52ab1c9fe5b97e74ab513b70ee9298d4a02908cb4702f26017c4e6` |
| 34 | `lemma` | [fundCircuit_sdiff_eq_inter](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcircuit-sdiff-eq-inter.md) | 232 | `result-track:797993b4769ca941e3aa5ff9620a178a050b2641b191abfd5e1bbfe9e4d8e221` |
| 35 | `lemma` | [fundCircuit_eq_of_mem](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcircuit-eq-of-mem.md) | 240 | `result-track:1ecd8db2bf4d90bd22b601d1f4089b31d20d4da8ddf34b3e0388c739e412fbaf` |
| 36 | `lemma` | [fundCircuit_eq_of_notMem_ground](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcircuit-eq-of-notmem-ground.md) | 245 | `result-track:6bb6fa2c85057527fcc1829eb4f6c6a9c4ea2b6e3760857641c230901c27ca3e` |
| 37 | `lemma` | [Indep.fundCircuit_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/indep-fundcircuit-iscircuit.md) | 251 | `result-track:f3d118195f22fb4abb8bad2be5cd24c4643df9c898992e543842bc835dd7c21d` |
| 38 | `lemma` | [Indep.mem_fundCircuit_iff](../../../../Combinatorics/CircuitPublic.lean/declarations/indep-mem-fundcircuit-iff.md) | 262 | `result-track:73d1d21db9df755a45cd9221b1ed5b7954d0fb3ebb195a20285734a6aeb5b9db` |
| 39 | `lemma` | [IsBase.fundCircuit_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/isbase-fundcircuit-iscircuit.md) | 272 | `result-track:2ec9968c5de2d54680051b9dbec9520ea2846c33909f72b4460f56aa87b9326a` |
| 40 | `lemma` | [IsCircuit.eq_fundCircuit_of_subset](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-eq-fundcircuit-of-subset.md) | 277 | `result-track:989d8456a06ef92ec8c12b8aa4c87fbff34039221b896fafed38ad353f62245b` |
| 41 | `lemma` | [fundCircuit_restrict](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcircuit-restrict.md) | 292 | `result-track:5388a87746aa2a511f9b3c27a536a18e16583fc28e21220a0d37f99afcf863df` |
| 42 | `lemma` | [fundCircuit_restrict_univ](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcircuit-restrict-univ.md) | 306 | `result-track:5dab26ce812d111f57fc84c1eab5b8104f8ef4e97a7a6080c614d368ad727f0b` |
| 43 | `lemma` | [Dep.exists_isCircuit_subset](../../../../Combinatorics/CircuitPublic.lean/declarations/dep-exists-iscircuit-subset.md) | 316 | `result-track:7a9547c152abbb859254aad6da146a9ca47368d86628fca855821a096a68b371` |
| 44 | `lemma` | [dep_iff_superset_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/dep-iff-superset-iscircuit.md) | 323 | `result-track:7ce7979ab5d1a42d83d3a5fa8b6e0b711f979c3566d0ce499af956a65744c317` |
| 45 | `lemma` | [dep_iff_superset_isCircuit'](../../../../Combinatorics/CircuitPublic.lean/declarations/dep-iff-superset-iscircuit-source-edition-2.md) | 329 | `result-track:91c73a02f635c3d7126499f0825e36f8183003dfe17687fb8c00591f048ad1d4` |
| 46 | `lemma` | [indep_iff_forall_subset_not_isCircuit'](../../../../Combinatorics/CircuitPublic.lean/declarations/indep-iff-forall-subset-not-iscircuit-source-edition-2.md) | 335 | `result-track:646e6bf189f86e6bc0a947c9b031068d75ece2382f50783f7b0cac2bb2733c5b` |
| 47 | `lemma` | [indep_iff_forall_subset_not_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/indep-iff-forall-subset-not-iscircuit.md) | 340 | `result-track:2051a41924ba59527c2556b5683bf93dcc8f1c3d9aca879924e85606991b292e` |
| 48 | `lemma` | [IsCircuit.closure_sdiff_singleton_eq](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-closure-sdiff-singleton-eq.md) | 346 | `result-track:55eb87b35d1f12dd0b8e8f1766bd95ec0340587f6fee3ad2a16d7e7dd7f771b1` |
| 49 | `lemma` | [IsCircuit.subset_closure_sdiff_singleton](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-subset-closure-sdiff-singleton.md) | 355 | `result-track:e997734f39e7a460a17d98ccef012218df33a2e63ed762b439987028953b5bc2` |
| 50 | `lemma` | [IsCircuit.mem_closure_sdiff_singleton_of_mem](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-mem-closure-sdiff-singleton-of-mem.md) | 363 | `result-track:fc040755b4ec123ac8b4c740f60b4b0f408e2839d015fa3df8b323e03c98fdac` |
| 51 | `lemma` | [exists_isCircuit_of_mem_closure](../../../../Combinatorics/CircuitPublic.lean/declarations/exists-iscircuit-of-mem-closure.md) | 370 | `result-track:b76787966272938f36f065279a87fd97ed5632de8db5640142172f62bf26a47b` |
| 52 | `lemma` | [mem_closure_iff_exists_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/mem-closure-iff-exists-iscircuit.md) | 377 | `result-track:5b93d287337f1f3b2834edb9e705a876d85ca90c3393987042db1adc0ce00a11` |
| 53 | `lemma` | [ext_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/ext-iscircuit.md) | 384 | `result-track:ebdc26458e0ba22adb5a12a2957dc51fae4149f5da8f0a285f062661ac7f612f` |
| 54 | `lemma` | [ext_isCircuit_not_indep](../../../../Combinatorics/CircuitPublic.lean/declarations/ext-iscircuit-not-indep.md) | 395 | `result-track:20de4332680d066973629165deb15aa5084ecf091d797dcd368cab006294db35` |
| 55 | `lemma` | [ext_iff_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/ext-iff-iscircuit.md) | 404 | `result-track:0a2f69fb0f22ea029fec3854765355c59b2d2f4a4f615a8f15e937b4d379ddff` |
| 56 | `lemma` | [IsCircuit.strong_multi_elimination_insert](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-strong-multi-elimination-insert.md) | 415 | `result-track:e4d4f1000e39eedaf293a3d9c5d5951ec05c9f07775633c1f40f636cf4fbe09d` |
| 57 | `lemma` | [IsCircuit.strong_multi_elimination](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-strong-multi-elimination.md) | 448 | `result-track:ea700d0975298f670e7784ac294be7d90bded29b49126483ec9b7abfe8ff021c` |
| 58 | `lemma` | [IsCircuit.strong_multi_elimination_set](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-strong-multi-elimination-set.md) | 474 | `result-track:183525397dce74c4802ffcee3b0ba10613df52eb31743e75c4834d58f1a43bbb` |
| 59 | `lemma` | [IsCircuit.strong_elimination](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-strong-elimination.md) | 494 | `result-track:13d68161d28fda4d98b2c1d388101c20b88f0a7d8704ab97f1dc2297d7afa108` |
| 60 | `lemma` | [IsCircuit.elimination](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-elimination.md) | 506 | `result-track:ced9f81d93f2f4adf17cddd7559279ae871869db6d51d72f3422ef42d4e5888d` |
| 61 | `lemma` | [IsCircuit.finite](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-finite.md) | 522 | `result-track:74156e71bbbe2d410529c22a4e5da5012c926c108888a3105803de257dd9b06f` |
| 62 | `lemma` | [finitary_iff_forall_isCircuit_finite](../../../../Combinatorics/CircuitPublic.lean/declarations/finitary-iff-forall-iscircuit-finite.md) | 528 | `result-track:6cca2d58fbe90a9903262da4eff4d8521793d8a36e21a47db7bb7b45c789ca1d` |
| 63 | `lemma` | [exists_mem_finite_closure_of_mem_closure](../../../../Combinatorics/CircuitPublic.lean/declarations/exists-mem-finite-closure-of-mem-closure.md) | 537 | `result-track:0b6aa07614afe59a5ce36eb5dd9e6e089871365802734f9b0affad1202138e36` |
| 64 | `lemma` | [exists_subset_finite_closure_of_subset_closure](../../../../Combinatorics/CircuitPublic.lean/declarations/exists-subset-finite-closure-of-subset-closure.md) | 549 | `result-track:f01605a5ce323ffa5e5dfeb1b53b322b8c0a7ebccdedea6282822faaa4385d9b` |
| 65 | `abbrev` | [IsCocircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/iscocircuit.md) | 569 | `declaration-track:07831de0ce942c575fbfd18d84d809c21937f887bd044fd887defb6bb07b2f44` |
| 66 | `lemma` | [isCocircuit_def](../../../../Combinatorics/CircuitPublic.lean/declarations/iscocircuit-def.md) | 571 | `result-track:a709f8ae00c665922b601f3125d783378e9a3da8840dc6977d9e8ff3846fbf1f` |
| 67 | `lemma` | [IsCocircuit.isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/iscocircuit-iscircuit.md) | 573 | `result-track:d7ae1357707bbde63165ce7174d2513a9933069575fe0c37ed2a0b0b3b6a277c` |
| 68 | `lemma` | [IsCircuit.isCocircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-iscocircuit.md) | 576 | `result-track:715a99ed7ddcc1061a1a52592ecf61fbd4c08fb5fdfc088b8c024134369f4a00` |
| 69 | `lemma` | [IsCocircuit.nonempty](../../../../Combinatorics/CircuitPublic.lean/declarations/iscocircuit-nonempty.md) | 579 | `result-track:4ed3a633ae39a560f94f55a7b3ec770ef3a55bb34dfcd34cbaf62716e1a68f55` |
| 70 | `lemma` | [IsCocircuit.subset_ground](../../../../Combinatorics/CircuitPublic.lean/declarations/iscocircuit-subset-ground.md) | 583 | `result-track:8856a689d0a6c094ef20db2e8b6cfd235042a1094c2e9bf628fe37772ed68ce2` |
| 71 | `lemma` | [dual_isCocircuit_iff](../../../../Combinatorics/CircuitPublic.lean/declarations/dual-iscocircuit-iff.md) | 586 | `result-track:755c8ce2b972845a14f70699440b782f89b37486da9b1d1f216ec6323b9a138a` |
| 72 | `lemma` | [coindep_iff_forall_subset_not_isCocircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/coindep-iff-forall-subset-not-iscocircuit.md) | 589 | `result-track:dd0814e3c720d0679d9bdce686c6d2906aea1e88735e2c905fa71f58812ef742` |
| 73 | `lemma` | [isCocircuit_iff_minimal](../../../../Combinatorics/CircuitPublic.lean/declarations/iscocircuit-iff-minimal.md) | 594 | `result-track:beef830ab30b6602f7cf3316c6323741ab8d8b25953517875be9814817f6eb35` |
| 74 | `lemma` | [isCocircuit_iff_minimal_compl_nonspanning](../../../../Combinatorics/CircuitPublic.lean/declarations/iscocircuit-iff-minimal-compl-nonspanning-source-edition-2.md) | 605 | `result-track:ad2f41bcd150ba365e83004c486da5ea43aec2158c17b425a3673098ecfe5a5e` |
| 75 | `lemma` | [IsBase.compl_closure_sdiff_singleton_isCocircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/isbase-compl-closure-sdiff-singleton-iscocircuit.md) | 613 | `result-track:51ffbd3577ef78d095da07b083e5d0ba282a96d2353856ba7d118e32e3122bb0` |
| 76 | `lemma` | [isCocircuit_iff_minimal_compl_nonspanning'](../../../../Combinatorics/CircuitPublic.lean/declarations/iscocircuit-iff-minimal-compl-nonspanning.md) | 636 | `result-track:1e1842fd505b41771741099206227eafff41e7d9e7c23e2594685d80a1bc12ba` |
| 77 | `lemma` | [IsCircuit.inter_isCocircuit_ne_singleton](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-inter-iscocircuit-ne-singleton.md) | 644 | `result-track:496628c452264f4679a0057b5be8e962d71994d66c42068436f7184abbc2992d` |
| 78 | `lemma` | [IsCircuit.isCocircuit_inter_nontrivial](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-iscocircuit-inter-nontrivial.md) | 661 | `result-track:6ea463d54eae8f82d3aeb5def161264a6057c914918e80ba6c227ca2efbd48df` |
| 79 | `lemma` | [IsCircuit.isCocircuit_disjoint_or_nontrivial_inter](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-iscocircuit-disjoint-or-nontrivial-inter.md) | 667 | `result-track:e1d31811250960a6834cee0cc89f58eb03ad1f87d916736be2a6306feba3f0ee` |
| 80 | `lemma` | [dual_rankPos_iff_exists_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/dual-rankpos-iff-exists-iscircuit.md) | 672 | `result-track:cf8731aecc0a64987e12e4dca5d3b535d3b603b7e29782acfc0c7bf61071ba66` |
| 81 | `lemma` | [IsCircuit.dual_rankPos](../../../../Combinatorics/CircuitPublic.lean/declarations/iscircuit-dual-rankpos.md) | 677 | `result-track:0fa8cf8951f9724b0c6fdc1ae3f158a8a99d83d28a51540a4fc4b1338acaa6a5` |
| 82 | `lemma` | [exists_isCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/exists-iscircuit.md) | 680 | `result-track:be5996ab4af5cad98c8a86e025320ff904e78d0677861ba7818e94d4e39e6a4f` |
| 83 | `lemma` | [rankPos_iff_exists_isCocircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/rankpos-iff-exists-iscocircuit.md) | 683 | `result-track:b8e05e05633c228f4b2cac121451c75b842e95a9a20b45199946b9f83a2e3c5f` |
| 84 | `def` | [fundCocircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcocircuit.md) | 690 | `declaration-track:581a9e4752a0404fc6162f37ac7979736899bb433889c1e4a02db72238134e83` |
| 85 | `lemma` | [fundCocircuit_isCocircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcocircuit-iscocircuit.md) | 692 | `result-track:7be66139f08345cc72ab8859b483e38b5d0010ddf2ae6ee04cb2d170988673c1` |
| 86 | `lemma` | [mem_fundCocircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/mem-fundcocircuit.md) | 698 | `result-track:cb34ed517abf2c26e3309eccf142f0fb940fabac815b4c6b71200a69b01f596c` |
| 87 | `lemma` | [fundCocircuit_subset_insert_compl](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcocircuit-subset-insert-compl.md) | 701 | `result-track:a511a0f283d05fe1cd8c6b1443f6b7ba9fc0218eaa15a16b426d660136ebe029` |
| 88 | `lemma` | [fundCocircuit_inter_eq](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcocircuit-inter-eq.md) | 705 | `result-track:3e859fd8248d9b57ee7b0b3ee4178b8f15e50c0967731e6019579c21baeb288a` |
| 89 | `lemma` | [fundCocircuit_eq_of_notMem_ground](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcocircuit-eq-of-notmem-ground.md) | 712 | `result-track:216a073147a1fffbddc5336809a617d2177efe22effa79a0120cf2120454264c` |
| 90 | `lemma` | [fundCocircuit_eq_of_notMem](../../../../Combinatorics/CircuitPublic.lean/declarations/fundcocircuit-eq-of-notmem.md) | 717 | `result-track:16b7a68d6891bada56dafd9914d2703cb1a05e16956dbb3340c329d2f464899d` |
| 91 | `lemma` | [Indep.exists_isCocircuit_inter_eq_mem](../../../../Combinatorics/CircuitPublic.lean/declarations/indep-exists-iscocircuit-inter-eq-mem.md) | 725 | `result-track:d9e942551dd2db8ad8e5e1dd62ce982c397c312b6ea1ef9b34a633543f94022b` |
| 92 | `lemma` | [IsBase.mem_fundCocircuit_iff_mem_fundCircuit](../../../../Combinatorics/CircuitPublic.lean/declarations/isbase-mem-fundcocircuit-iff-mem-fundcircuit.md) | 739 | `result-track:ce5550b20ef3345813fe7e64003643a5fa9570064209a44c38f43ab6620cc620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d568fe8fea67a8b6b6200d1ec7468beda4d1717021eaaee7b94c96366759788 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
