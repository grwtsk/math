# Verification target: Set Scalar Scalar Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63813eed21505df115db0b1b73f8229eb5d2494a",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Scalar/Variant3a3e9297bc3e6e29aad116c4c2f88a04c7107864bec23516c157662ccd6443d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63813eed21505df115db0b1b73f8229eb5d2494a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Scalar/Variant3a3e9297bc3e6e29aad116c4c2f88a04c7107864bec23516c157662ccd6443d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Scalar/Variant3a3e9297bc3e6e29aad116c4c2f88a04c7107864bec23516c157662ccd6443d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.NAry` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smulSet](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smulset.md) | 87 | `declaration-track:f883950016b2ceee2bf26c2d95425286351f3c7b3f1480fd58671e2a013f9d18` |
| 2 | `def` | [smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul.md) | 94 | `declaration-track:eff4b92d58bba7302ca5972a0d22b8b24de29cb7ad8591f0cb2c7899863e0eee` |
| 3 | `lemma` | [image2_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/image2-smul.md) | 103 | `result-track:0500ca7d74d43061495d26adf510a11b4c59435b1daf541852f9fd7e18dd8b14` |
| 4 | `lemma` | [image_smul_prod](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/image-smul-prod.md) | 106 | `result-track:336c2bde6f9bab1bb856ae0b17e906eb681caa3ddc0d19b088c3236ad1d265dd` |
| 5 | `lemma` | [mem_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/mem-smul.md) | 108 | `result-track:ecc730cc67960b144759ef8fc61eea3695856e7e0a93a35a20dcce7739ca47d9` |
| 6 | `lemma` | [smul_mem_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-mem-smul.md) | 110 | `result-track:82692c4754fde15240f96c90b62a61bfd9df621b337ac6dd2e23d85527df4827` |
| 7 | `lemma` | [empty_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/empty-smul.md) | 112 | `result-track:802b91d61016e42753e2899f03d5eaa511ef8805ea85c659a87764e3fd2ca7ed` |
| 8 | `lemma` | [smul_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-empty.md) | 113 | `result-track:c4a9b6c92e2c88c4360ecf468c78391ecd2c396f2fac03b2b5d28e341d3a08e6` |
| 9 | `lemma` | [smul_eq_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-eq-empty.md) | 115 | `result-track:4868deecc4167a1d60db40fa26c99688d0b64a8ae5ad4be31247d1b440a71358` |
| 10 | `lemma` | [smul_nonempty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-nonempty.md) | 118 | `result-track:38f90fd628927a0eb634637aabd3788fb38bbae16366c6d2dc108c6f15e4b85f` |
| 11 | `lemma` | [Nonempty.smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/nonempty-smul.md) | 120 | `result-track:ce0cf312969099296bdb9a5c67919e15c2c23e1b3d0b397fba9030634d1fa4f8` |
| 12 | `lemma` | [Nonempty.of_smul_left](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/nonempty-of-smul-left.md) | 121 | `result-track:f4d5f9e78f419bfad27c4c1c34912030e98aaae8c6834856b19848941b935616` |
| 13 | `lemma` | [Nonempty.of_smul_right](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/nonempty-of-smul-right.md) | 122 | `result-track:5c1a7d3046d7a620b1d5d577f984e7acafabe64d790232ebe8d31e0230ec813e` |
| 14 | `lemma` | [smul_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-singleton.md) | 125 | `result-track:c0ab4b960e8fb5f78b07483e1c70dd5f358cc7e9ce5e7dad0d7ee5284d2a28ee` |
| 15 | `lemma` | [singleton_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/singleton-smul.md) | 128 | `result-track:968a76aa3978e7142813a2ba487f89c5add72a74ff8232c43e4f8c75eee0d847` |
| 16 | `lemma` | [singleton_smul_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/singleton-smul-singleton.md) | 131 | `result-track:7e78c3e80e6f027189648778d62343890cc3cbae08bc70dd22a3ea8f8a3ddf39` |
| 17 | `lemma` | [smul_subset_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-subset-smul.md) | 134 | `result-track:b1068c86063233b0a3e37e641643bb6ceb0913982cf4f46a6d0067a5cd989b40` |
| 18 | `lemma` | [smul_subset_smul_left](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-subset-smul-left.md) | 137 | `result-track:4fbd0da8c17941e1996462d02a4e283b35143acd02c10035562fbd5100abeb51` |
| 19 | `lemma` | [smul_subset_smul_right](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-subset-smul-right.md) | 140 | `result-track:5c44a3b1aa3d6835671c09f5cda74dbdd4ff5bc14c9bbba067381bc9505682d2` |
| 20 | `lemma` | [smul_subset_iff](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-subset-iff.md) | 142 | `result-track:3b9280be8f11135dfc586ec94b496001f0a26204946411bb0a507ad4f0c3ddb6` |
| 21 | `lemma` | [union_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/union-smul.md) | 144 | `result-track:4dca136b26f9c6663e5cb4fa628d3015e181bb1e920a7eefdf5bfc25c2884aec` |
| 22 | `lemma` | [smul_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-union.md) | 145 | `result-track:971b9e297cb711df5706b4254a7fe578ee338ab93d41f15f2d639de46b542998` |
| 23 | `lemma` | [inter_smul_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/inter-smul-subset.md) | 148 | `result-track:3ee698443b9fbe53ae7ebbba5af460cb1b31bb3f6e99c0dfea560e7e1fca640a` |
| 24 | `lemma` | [smul_inter_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-inter-subset.md) | 151 | `result-track:2a3bbed8f2dff434994b63bfec4761927ccfeff7d8b137479841300d98fe4481` |
| 25 | `lemma` | [inter_smul_union_subset_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/inter-smul-union-subset-union.md) | 154 | `result-track:9538b20c6e32b58e3e775e9fa283ead6835cb7103f4920b683cd25259ad90f7b` |
| 26 | `lemma` | [union_smul_inter_subset_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/union-smul-inter-subset-union.md) | 158 | `result-track:3fd0275905a4b62f449652b1af6899c395e369bc8ee4765b02e55963d6964561` |
| 27 | `lemma` | [smul_set_subset_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-subset-smul.md) | 162 | `result-track:b18fa06116ba3ad1ac291c5a3011313afe05b2e4f17ff53e651c377b2c3da723` |
| 28 | `lemma` | [image_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/image-smul.md) | 169 | `result-track:2e7c4fe9274b066167ca757a68047d7c6622093c47fbaf35bf7fa2e267c9b744` |
| 29 | `lemma` | [mem_smul_set](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/mem-smul-set.md) | 173 | `result-track:83706b565e44b4d050f6b05717e5f292e051d1a9500c3ff1faf720d26a7145e5` |
| 30 | `lemma` | [smul_mem_smul_set](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-mem-smul-set.md) | 175 | `result-track:4fa1e7a947f0a5ffb81105ca3eb1964b7b3afd6c848c30bac62792ae7b4764ca` |
| 31 | `lemma` | [smul_set_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-empty.md) | 177 | `result-track:520f1c54c27a0d80e4809b1a0c20f34949603e310e5c8fa0f28b0ef982cfd949` |
| 32 | `lemma` | [smul_set_eq_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-eq-empty.md) | 178 | `result-track:d750db20c57c9099f2c9e241736190ed658f7015254a0263e0b0a089b78a1c13` |
| 33 | `lemma` | [smul_set_nonempty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-nonempty.md) | 181 | `result-track:1711ef4458b0d3554a83dc13d29af7bb68a8fb63ea4a2fabed1ab2994dddc6b6` |
| 34 | `lemma` | [smul_set_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-singleton.md) | 184 | `result-track:12c465a4b860ec2fa589dace19cbf9d18ab81d7a5759c0a30ba884edfb1eb981` |
| 35 | `lemma` | [smul_set_mono](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-mono.md) | 186 | `result-track:cbe6b012ae77e9f7583c5345632a5dad704d00ab2b382d71f882ecdb45a368f1` |
| 36 | `lemma` | [smul_set_subset_iff](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-subset-iff.md) | 189 | `result-track:751374bce6386923a10c1842170fbb568e4f6d7f4e64f315766aa063e33fa753` |
| 37 | `lemma` | [smul_set_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-union.md) | 193 | `result-track:ecc9506ad10a6bc3218eec0eebd3e22593e6f47baf457548c997fac683e346cf` |
| 38 | `lemma` | [smul_set_insert](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-insert.md) | 197 | `result-track:18c7559127d71a7bd4a3f2107c015700408b3e91b61d78fd4268f113af374c46` |
| 39 | `lemma` | [smul_set_inter_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-inter-subset.md) | 201 | `result-track:65dd458a4ef815432d976ed735d790d8fe6527feb0eaa7bad466c9d261a8d2b0` |
| 40 | `lemma` | [Nonempty.smul_set](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/nonempty-smul-set.md) | 204 | `result-track:02c108045a18e93a114518a8b077953b6604020fc686ede0673f39f08d41582d` |
| 41 | `theorem` | [smul_set_pi_of_surjective](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-pi-of-surjective.md) | 213 | `result-track:61f0e46fc2f8a468158b1aa2e82430777fdcad27f4c28eb33f01e0e7d1f574e8` |
| 42 | `theorem` | [smul_set_univ_pi](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-univ-pi.md) | 218 | `result-track:05b9220f18bfc6f8f68c1bdf00e86d1b592041218a2ff10bdc984c8d5c4b6b4f` |
| 43 | `lemma` | [range_smul_range](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/range-smul-range.md) | 226 | `result-track:413aa854e588ad73e4d65be86dd151a7965c73f409dd37945e2de76e00ed62a7` |
| 44 | `lemma` | [smul_set_range](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/smul-set-range.md) | 231 | `result-track:5c798659fa5daa13fb857deb182402863016fa73f587aae3045a1ea553c2829c` |
| 45 | `lemma` | [range_smul](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/range-smul.md) | 235 | `result-track:f3581918699b569aa240981fc9ac84c15c94644b7aea66d4a678a0cbdf626db1` |
| 46 | `instance` | [vsub](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub.md) | 244 | `declaration-track:4010207386296f53a39c724fcaeb4791490bf252885b4c201413dcb90bdc5c9b` |
| 47 | `lemma` | [image2_vsub](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/image2-vsub.md) | 246 | `result-track:bf245518ff04b15fe16672549f8b01d967c8e9a2ef6046f693efe92db5fb7a4b` |
| 48 | `lemma` | [image_vsub_prod](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/image-vsub-prod.md) | 248 | `result-track:e697bd62eb61d72caeafbad573a1e5e5814fe13041b7fd2b86679ad61054e859` |
| 49 | `lemma` | [mem_vsub](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/mem-vsub.md) | 250 | `result-track:b39e7b1655a8f2d4a078f023c8a9cf4af50a96525a223677a60a10f873746978` |
| 50 | `lemma` | [vsub_mem_vsub](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-mem-vsub.md) | 252 | `result-track:9776307c33b8deb73464a7b3514e47f4824a2429909ec635dd6e7c61ebca8cd4` |
| 51 | `lemma` | [empty_vsub](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/empty-vsub.md) | 254 | `result-track:9c2d1fbfd98435f1c7b8bb9791f9627855f3466e27d21e0e5c01c4116bd133b6` |
| 52 | `lemma` | [vsub_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-empty.md) | 255 | `result-track:956240558fde4b7623452991c57fdaa825a776407e33377c879d08bb14c6c382` |
| 53 | `lemma` | [vsub_eq_empty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-eq-empty.md) | 257 | `result-track:075cfe21b8b74725ff24fcc2a816a5edcbcabe90ca5f8b09d29935550dcfad27` |
| 54 | `lemma` | [vsub_nonempty](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-nonempty.md) | 260 | `result-track:50c7b42624964b73bc2593cbf5c1717e12ae2ae6115e9d23ee9598e749a66f25` |
| 55 | `lemma` | [Nonempty.vsub](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/nonempty-vsub.md) | 262 | `result-track:e8943e9466cd09aa882fe189f08b21eca4ea61f8fbbe38217e755f291b70e95f` |
| 56 | `lemma` | [Nonempty.of_vsub_left](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/nonempty-of-vsub-left.md) | 263 | `result-track:560588399ea7a5f448c6434ae4cfcce9ab41d33c283ee664e8acaf0a1f0bb081` |
| 57 | `lemma` | [Nonempty.of_vsub_right](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/nonempty-of-vsub-right.md) | 264 | `result-track:6e7cc52a8c7294589dda78a5d728f49f016b3f290d70175aba90bf31a5b5e8f4` |
| 58 | `lemma` | [vsub_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-singleton.md) | 267 | `result-track:997ab742552ed188b37ded14f1d4ebf91ba3e2553f6ae7e151569366acca5c36` |
| 59 | `lemma` | [singleton_vsub](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/singleton-vsub.md) | 270 | `result-track:1341b69cfe8a781c7b50ece8a24ad549d9fe0383a1d353187ef97ad9b8cd5b9a` |
| 60 | `lemma` | [singleton_vsub_singleton](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/singleton-vsub-singleton.md) | 272 | `result-track:34bc636363811edb5c99b8acbfaed7cab856a0e6330aa210561da64b82830788` |
| 61 | `lemma` | [vsub_subset_vsub](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-subset-vsub.md) | 274 | `result-track:44e51fcac024a66225824ba8aee4d50bad0574ff2931b9ce0d52fc07e737380e` |
| 62 | `lemma` | [vsub_subset_vsub_left](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-subset-vsub-left.md) | 276 | `result-track:035cd45f80e7697f4b1e427cfd8d26e2ad9a65a707e74b6af239a934262d20b5` |
| 63 | `lemma` | [vsub_subset_vsub_right](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-subset-vsub-right.md) | 277 | `result-track:1731a36371183d8d3cc52ec928d41583c90dda5d699dace5a93333d242d1402c` |
| 64 | `lemma` | [vsub_subset_iff](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-subset-iff.md) | 279 | `result-track:91dcf4caa3a3509864d9e4b6dd8b518bc806637914c196fef7a6a83ac8bec60d` |
| 65 | `lemma` | [vsub_self_mono](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-self-mono.md) | 281 | `result-track:dcf26f09542ec236f66196e082ea69ec08ca2a42b8620f451765fcfdf74812a4` |
| 66 | `lemma` | [union_vsub](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/union-vsub.md) | 283 | `result-track:f4eebd833e605f682d75f9a181fe0cba0eb67a985559fa3610d81649fe3b3d28` |
| 67 | `lemma` | [vsub_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-union.md) | 284 | `result-track:be8a9e11e00b25b0ef74cc7aa9fabf4f675a242ab760920311e311f4600a44a0` |
| 68 | `lemma` | [inter_vsub_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/inter-vsub-subset.md) | 286 | `result-track:bf9ade23b5176927fc3e05c39ebb905be763198b65e1aa6632880ec7925d0869` |
| 69 | `lemma` | [vsub_inter_subset](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/vsub-inter-subset.md) | 287 | `result-track:e1e12e30d899dde5e1454323572fdbe2aaba3c4a2fb3d1f1917f0cfebdb30f41` |
| 70 | `lemma` | [inter_vsub_union_subset_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/inter-vsub-union-subset-union.md) | 289 | `result-track:09d5206f8903107834ffa5854712265fe46dee460f6e0e31aab8d17e8cae02a1` |
| 71 | `lemma` | [union_vsub_inter_subset_union](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/union-vsub-inter-subset-union.md) | 292 | `result-track:c2d461a7dd7edf6af360ace8d4ee9a4d6658accbb5c2f7d15e606b3a66d955b4` |
| 72 | `lemma` | [image_smul_comm](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/image-smul-comm.md) | 298 | `result-track:6bc7ce3dcc28b1e9aee94d49db8e0c07c50303310124e8d69d2839d6c2f18eee` |
| 73 | `lemma` | [op_smul_set_smul_eq_smul_smul_set](../../../../GroupTheoryAndGeneralizations/SetScalarScalarNamespaced.lean/declarations/op-smul-set-smul-eq-smul-smul-set.md) | 306 | `result-track:0c18c6d1f6b948d9d8ad6f2816d5003e960da22db711c2a8a382d29a8a3538aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e0ad4304023e3f5f961fba6d15e8d4494d27fe5e7cd879ea97d3bea4187ddc4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Scalar/Variant3a3e9297bc3e6e29aad116c4c2f88a04c7107864bec23516c157662ccd6443d4.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Scalar/Variant3a3e9297bc3e6e29aad116c4c2f88a04c7107864bec23516c157662ccd6443d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
