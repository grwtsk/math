# Verification target: Congruence Subgroups Namespaced Mem Gamma One

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6fd6d034669498196383626cdc40a785a608d09",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/index.md) · [Full source](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6fd6d034669498196383626cdc40a785a608d09`.

Source path: `GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Integer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SL_reduction_mod_hom_val](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/sl-reduction-mod-hom-val.md) | 38 | `result-track:403d7bfc636ae29d9ecda81a1433c76d90cb0c3fc5c42d9f1d6e00d5e4e88e6c` |
| 2 | `def` | [Gamma](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma.md) | 46 | `declaration-track:286cde1e4ffa4b528f7dc5a0a44027fcfad3cf76cda237175d65bfcf99cac1e4` |
| 3 | `theorem` | [Gamma_mem'](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma-mem-source-edition-2.md) | 51 | `result-track:d4f324fa121263a3a1b626da28a9d0f341e3c28539e4dbfbdcd4bdb8506b6ca2` |
| 4 | `theorem` | [Gamma_mem](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma-mem.md) | 55 | `result-track:940f7eb59d917ec65eb9d1d0db2ef6ec94352f32f99816b432593d911a5aad67` |
| 5 | `theorem` | [Gamma_normal](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma-normal.md) | 67 | `result-track:b8542f39006f2357676f1acb8193d01f5ecd444efd773e4dde64333fd2931233` |
| 6 | `theorem` | [Gamma_one_top](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma-one-top.md) | 70 | `result-track:17fa91fec9ee1a7953affde62d98b3d402537ab915c52253fbbe1dddf17fa23c` |
| 7 | `lemma` | [mem_Gamma_one](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/mem-gamma-one.md) | 74 | `result-track:7faa4196f72c14487543083814cc0a650b635b9b9b9391ddbc1b975e06151e9e` |
| 8 | `theorem` | [Gamma_zero_bot](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma-zero-bot.md) | 77 | `result-track:7b9529577f17b52813bc446b6eef87ed30f3f9c60da6a3de9f0bfac1e9d322f5` |
| 9 | `lemma` | [ModularGroup_T_pow_mem_Gamma](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/modulargroup-t-pow-mem-gamma.md) | 79 | `result-track:b5624e1dbd7a5dad1dc861b9f5675acb2abced2802dbdc61ddc83d169ea14066` |
| 10 | `instance` | [instFiniteIndexGamma](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/instfiniteindexgamma.md) | 87 | `declaration-track:9bc8e44e6ef40c0c93b7e8f81e9bd71a5397539d28679a83d53f623382d6048b` |
| 11 | `def` | [Gamma0](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma0.md) | 91 | `declaration-track:58b76dc067ca18619c5b4e4020b8814f8245205360bfd762310f6297036f7464` |
| 12 | `theorem` | [Gamma0_mem](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma0-mem.md) | 110 | `result-track:a3a5643e133151d85655135bf54e97c918684f6b921c5e2b458ce95826308bf8` |
| 13 | `def` | [Gamma0Map](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma0map.md) | 115 | `declaration-track:88f710e1daa5c92f54276cadb99dc45dc70b841330270a15b621a335a9ac0fd5` |
| 14 | `def` | [Gamma1'](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma1.md) | 125 | `declaration-track:626dcaa6c86c94dde3dd81ad0aeabcf368e1dae79cfa2fcdc4b15900591855c8` |
| 15 | `theorem` | [Gamma1_mem'](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma1-mem-source-edition-2.md) | 129 | `result-track:b71975a0334723e8815235573ed7eeec4111d24682ec3ffc10629836b71a590f` |
| 16 | `theorem` | [Gamma1_to_Gamma0_mem](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma1-to-gamma0-mem.md) | 132 | `result-track:93f6f998e944817efcfd957dd9258d799e7a0fc100d3bf3b6d8e20e06ff529f2` |
| 17 | `def` | [Gamma1](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma1-source-edition-2.md) | 152 | `declaration-track:a2682d6d345c998f3dbc50531057ad954e9fba323c59685ccb8e28cd0fab66a9` |
| 18 | `theorem` | [Gamma1_mem](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma1-mem.md) | 156 | `result-track:440a22d68c6807c63508cada006259c578146eba87a88440ed68296ea22bd6f9` |
| 19 | `theorem` | [Gamma1_in_Gamma0](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma1-in-gamma0.md) | 176 | `result-track:56a7f3d4139154cba2e16a871e279a99732c388541a7d98587b9614c03496a2f` |
| 20 | `def` | [IsCongruenceSubgroup](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/iscongruencesubgroup.md) | 185 | `declaration-track:1b6c755c09a2d5f94f11a288ccb9fd4cfdd31a317a1d416a8bff7c7b06060a07` |
| 21 | `theorem` | [isCongruenceSubgroup_trans](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/iscongruencesubgroup-trans.md) | 188 | `result-track:1e0cd500b8712afadb6a1e4e27153e444c264461378b50f255c0a4f653e07c39` |
| 22 | `theorem` | [Gamma_is_cong_sub](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma-is-cong-sub.md) | 193 | `result-track:5667ab1a0171d9394f6cd3b3a18c4c2da3f7154e081513e439883ed7568e1c7d` |
| 23 | `theorem` | [Gamma1_is_congruence](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma1-is-congruence.md) | 196 | `result-track:475a9af63e34eea4f7b5aa8a1c06e703f23bc4c7481234ae355295aea6e62ebe` |
| 24 | `theorem` | [Gamma0_is_congruence](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma0-is-congruence.md) | 200 | `result-track:1da167bdf32928e975ebf00216996b584a433a4954920373fe24c7985fa7ad54` |
| 25 | `lemma` | [IsCongruenceSubgroup.finiteIndex](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/iscongruencesubgroup-finiteindex.md) | 203 | `result-track:9ff42e51a0fec51e0fb88035ff78a1cd30aacf32353a77304393978b46eccbcc` |
| 26 | `instance` | [instFiniteIndexGamma0](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/instfiniteindexgamma0.md) | 209 | `declaration-track:e3300f832b83cdd73fff789a4fb854f355b1969f9207427a2608b85ac39e8995` |
| 27 | `instance` | [instFiniteIndexGamma1](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/instfiniteindexgamma1.md) | 212 | `declaration-track:a38f04a2b5eb7dcd7288bd31a62b2885bda248a5dafbf3431c0280e13e9e21af` |
| 28 | `def` | [conjGL](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/conjgl.md) | 222 | `declaration-track:089eb2dde79013f61a16793a1043459780ad8f6ebedea1b3627c989370aa4e8b` |
| 29 | `lemma` | [mem_conjGL](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/mem-conjgl-source-edition-2.md) | 227 | `result-track:0e570c83d0adfca56f03b830cbbdae9fac93b497751a86d17e4919533818077c` |
| 30 | `lemma` | [mem_conjGL'](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/mem-conjgl.md) | 231 | `result-track:0506da8b5fdc415283a0b6dd439d952db7a1e66b7a5d95dcad91566cc8bcbbc5` |
| 31 | `lemma` | [conjGL_coe](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/conjgl-coe.md) | 238 | `result-track:8b9116461736a0fc05d80e7a3c64a08f54ce2e8f69c8690a695fe4b678ba6647` |
| 32 | `theorem` | [Gamma_cong_eq_self](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/gamma-cong-eq-self.md) | 249 | `result-track:33c9b7fd9af15bfb30c74630e8713ab5e8f3d6909fc77cd3bd7b5c321e9f9b8c` |
| 33 | `theorem` | [conj_cong_is_cong](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/conj-cong-is-cong.md) | 252 | `result-track:e2769816848435c7e7086effbbe9d1c02dcbf31b03737b6c37c4162283c7e118` |
| 34 | `theorem` | [exists_Gamma_le_conj](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/exists-gamma-le-conj.md) | 261 | `result-track:b3c1159ab65ed8f85892b08dbf100fea67460f9dedac0ccb73bfe508bbcecad5` |
| 35 | `theorem` | [exists_Gamma_le_conj'](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/exists-gamma-le-conj-source-edition-2.md) | 313 | `result-track:eb5eb302b018d3e4c8f61c2dc133d554c35af079f69b6d44dfd3eee5f77cb9af` |
| 36 | `lemma` | [finiteIndex_conjGL](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/finiteindex-conjgl.md) | 329 | `result-track:7126dbc98479cb6e29ee42622af49669e8dc7309a0b5b96d4860ebe9258c092b` |
| 37 | `lemma` | [IsCongruenceSubgroup.conjGL](../../../../NumberTheory/CongruenceSubgroupsNamespacedMemGammaOne.lean/declarations/iscongruencesubgroup-conjgl.md) | 353 | `result-track:99d7144fef7419216abf510770250179389713ac64df5430a5a6a8f7d590e764` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51afda319fd14e1661d0b7a6fd65f52a5a280d677889fa26962381402d814aaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
