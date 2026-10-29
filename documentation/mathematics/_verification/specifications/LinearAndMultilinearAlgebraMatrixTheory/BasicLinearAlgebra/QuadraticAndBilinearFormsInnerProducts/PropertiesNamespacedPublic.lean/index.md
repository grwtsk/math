# Verification target: Properties Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18b20cdc4b39d91c4cbdf59a8c41567949484051",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Properties/Variant78fb4f8fa4c1cc1f54dd325a0475be9534ac2a03dbda3617683111388127476c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18b20cdc4b39d91c4cbdf59a8c41567949484051`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Properties/Variant78fb4f8fa4c1cc1f54dd325a0475be9534ac2a03dbda3617683111388127476c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Properties/Variant78fb4f8fa4c1cc1f54dd325a0475be9534ac2a03dbda3617683111388127476c.lean.json)

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
| 1 | `def` | [IsRefl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isrefl-source-edition-2.md) | 67 | `declaration-track:a29e216571a04d8c4edf57357e4106cbcfda8393df696dfcd53aad8e3634bb1a` |
| 2 | `theorem` | [eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/eq-zero.md) | 71 | `result-track:ad2c1e65c3feb0b55ec296023814c101045d986ce3c54912458204bc68f062d8` |
| 3 | `theorem` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/neg.md) | 73 | `result-track:556678df768941af1dc43c1ddd1653bed3bd8925095f036ea114104721db4557` |
| 4 | `theorem` | [smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/smul.md) | 76 | `result-track:50cac64cb797409befd90d1e13e11164471944ad7dce4a34a8de4785a55b1408` |
| 5 | `theorem` | [groupSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/groupsmul.md) | 82 | `result-track:9088cd17506a450dd887cddae236b211d6b212db379fc798a7526d323a8e46ac` |
| 6 | `theorem` | [isRefl_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isrefl-zero.md) | 89 | `result-track:e8cbfa09a0624efc2f7ca1adb3de159ec4c56eaa6d45c221e2e608a31158e39c` |
| 7 | `theorem` | [isRefl_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isrefl-neg.md) | 92 | `result-track:0b6a5bf0a9186f2d17978bc3633e8829e476e6271dc4b902b4f147d6b5334703` |
| 8 | `structure` | [IsSymm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/issymm.md) | 96 | `declaration-track:8bcb240f60e380a897cf065d2b73b7003de143ddee8ce9b33fe8023330e1f446` |
| 9 | `theorem` | [isSymm_def](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/issymm-def.md) | 99 | `result-track:2cb3bf0c8366471dcd9d1700438b0a28657873b6dc86f1569707fd40c521f361` |
| 10 | `theorem` | [isSymm_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/issymm-iff.md) | 103 | `result-track:3967895e33f006f6e074af2a029bc825feb00015a31c116e2d38c1d02c611be2` |
| 11 | `theorem` | [isRefl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isrefl-source-edition-3.md) | 108 | `result-track:fe75d966fa60631edf63efee982ae2bf105e4bfa942d54b3a5b789ef30f4ec8d` |
| 12 | `theorem` | [add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/add-source-edition-2.md) | 110 | `result-track:60743e0c8bd1464aa7ce11866993f8f0b61fb345f7d7b3cd69a556a7e86a50a8` |
| 13 | `theorem` | [sub](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/sub-source-edition-2.md) | 113 | `result-track:82503887fadd31c787cc4efe772c918f71bc0e00dccbf7043a19817a3248bc43` |
| 14 | `theorem` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/neg-source-edition-3.md) | 116 | `result-track:d9349d0cb24a7284a3fd67b5aaf7e3a91405e1de2fdc4b7cd03fd8c11e1c77f4` |
| 15 | `theorem` | [smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/smul-source-edition-3.md) | 119 | `result-track:afaa2d45fd49281fd08607f4b23125c9977baaa255f8ac2c9db42eb8fd3fec8d` |
| 16 | `theorem` | [restrict](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/restrict.md) | 124 | `result-track:f9e577b7785e71c6554c6dfbf843e26225605e8c4f632ffc084efa819b2354b5` |
| 17 | `theorem` | [isSymm_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/issymm-zero.md) | 130 | `result-track:f6777764bd29d62a6b925242fdc1d0ee9feb2e5e64c9cf2680c9466543416476` |
| 18 | `theorem` | [isSymm_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/issymm-neg.md) | 133 | `result-track:e5e73a29097b85c5e785888ecd681b87fe37099e155069dd0c57c915c4322012` |
| 19 | `theorem` | [isSymm_iff_flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/issymm-iff-flip.md) | 136 | `result-track:0b6eb6d2b335fabe2e3350edf9feae2cc77075414a77ec135bfc1c15aaa4d2c7` |
| 20 | `lemma` | [IsSymm.polarization](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/issymm-polarization.md) | 146 | `result-track:9c0b4474561433ead8db9c53f38fb28292fdcb7d92e821d36a1a665ba404d4f1` |
| 21 | `lemma` | [ext_of_isSymm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/ext-of-issymm.md) | 154 | `result-track:5231be9844a17aa3b0e436993036fa6cd83c79973bf804ecf11f6ede030781a7` |
| 22 | `lemma` | [ext_iff_of_isSymm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/ext-iff-of-issymm.md) | 161 | `result-track:f5c597cace532fc975e03f90301c1d47c025506b275a892282f1b85aadd53799` |
| 23 | `lemma` | [isSymm_iff_basis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/issymm-iff-basis.md) | 168 | `result-track:7815ddee8280b31f0bc08ba318adc1bbc2f1adb3f35b9df406df1680e11574ea` |
| 24 | `structure` | [IsNonneg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isnonneg.md) | 192 | `declaration-track:4d16718a0500d8ac5aa382fb3821626c090eaafa7929264b6db353fc891148d5` |
| 25 | `lemma` | [isNonneg_def](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isnonneg-def.md) | 195 | `result-track:f1638a8e3e862e2ab0ee19dfb9ce121ecc4ea59a8e394161c2becdbc4bab4360` |
| 26 | `lemma` | [isNonneg_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isnonneg-iff.md) | 199 | `result-track:6a610e09edcd607f9194356a2b4c99f4812ee4a1ca3d73036c514fecdd987758` |
| 27 | `lemma` | [isNonneg_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isnonneg-zero.md) | 203 | `result-track:72023b39d8082b99b783a2e6345712dbeecd55717eb17a8779753d2cbf5a563a` |
| 28 | `lemma` | [IsNonneg.add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isnonneg-add.md) | 206 | `result-track:05d1ff7b87b4f181d1976eefb330c5e739ac0f76d5e52ce8fd9593740ee07d51` |
| 29 | `lemma` | [IsNonneg.smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isnonneg-smul.md) | 210 | `result-track:fa9c312885e62226d7be097d9261f54ab74cd85a0a8686dcb46b070c85bdaee2` |
| 30 | `structure` | [IsPosSemidef](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/ispossemidef.md) | 215 | `declaration-track:28d78de612128cd8773ff18a93d006b1d0562656c1a199dfecb782a94644315a` |
| 31 | `lemma` | [isPosSemidef_def](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/ispossemidef-def.md) | 221 | `result-track:50944fe24e4406cfee8598da43dc27ca8ab6cdc713be8cf42401bc5234ace1ae` |
| 32 | `lemma` | [isPosSemidef_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/ispossemidef-iff.md) | 226 | `result-track:483dd0b7aa2635b4f055cd218faf17c5cf74179bafe7e6e35b727eb19646beda` |
| 33 | `lemma` | [isPosSemidef_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/ispossemidef-zero.md) | 230 | `result-track:c56c4a1e0fd46659d8ba17dfbc07ec74984a034a51c96914eec9b09ab3b5d882` |
| 34 | `lemma` | [IsPosSemidef.add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/ispossemidef-add.md) | 233 | `result-track:82a6adde354bc6536d9ed6d0b49e1fbdbe150f7213c7fa04eb3af991f81c1b02` |
| 35 | `lemma` | [IsPosSemidef.smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/ispossemidef-smul.md) | 237 | `result-track:188ef6c0073028b73ea9f7ab3a12a37e20590fc03db5b41503f40cbd0f7acb63` |
| 36 | `def` | [IsAlt](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isalt.md) | 244 | `declaration-track:4a6e3a1b1d6fe3ae1d54129518b69e3faf11b25ab414fb796f6301efea2d16bb` |
| 37 | `theorem` | [self_eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/self-eq-zero.md) | 248 | `result-track:4d7f5da1ff4d762a19b11074bf7dc7c5f4d7877e084721831c4efd759a09065e` |
| 38 | `theorem` | [neg_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/neg-eq.md) | 250 | `result-track:cd0f9a0b3f4595c16825f9359c1bc89bb404899b7e8a54115cc3561a7598c98d` |
| 39 | `theorem` | [isRefl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isrefl.md) | 252 | `result-track:9288fa2e3a3485cc50bfec2b10b48ad089745397b67b43cea9ade28a08b060d2` |
| 40 | `theorem` | [eq_of_add_add_eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/eq-of-add-add-eq-zero.md) | 254 | `result-track:dcef78c4cfbf9caaa516e55e21bdf5b35ed74947178e58d627cf186a0a3e2efb` |
| 41 | `theorem` | [add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/add.md) | 257 | `result-track:53dfa6ec267e97398037a20efbeef0f4b8c0189c6b7c1c21aa6326e25dbd9edc` |
| 42 | `theorem` | [sub](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/sub.md) | 260 | `result-track:2eb7e9dcbf5ec06b1f8c6c87aadf806a53e1a18ec03284921844ecca55199a71` |
| 43 | `theorem` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/neg-source-edition-2.md) | 263 | `result-track:6c7f8de8e16824b424ee1b291cf9773408e6b59117e1b28c943d5cd7231e165f` |
| 44 | `theorem` | [smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/smul-source-edition-2.md) | 266 | `result-track:674c5a8c2edb5a43f07c6a2040fef53efd17bf5dfe2148eff855a867212270e8` |
| 45 | `theorem` | [isAlt_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isalt-zero.md) | 273 | `result-track:5acea16056a142a307d99b27449c6e456438067ab7657e01b463b6f3a5ac6fad` |
| 46 | `theorem` | [isAlt_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isalt-neg.md) | 276 | `result-track:1d371d28c5dc3f5cf4f92668d388148aaf5bce3f44bfb45062e5ace4745831fb` |
| 47 | `abbrev` | [Nondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/nondegenerate.md) | 299 | `declaration-track:9cd2701216718c35092f611a5e6c93be1957e76a62f3c45d63900dd35db37e35` |
| 48 | `theorem` | [not_nondegenerate_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/not-nondegenerate-zero.md) | 307 | `result-track:fa638d2b081d198fdb73d896ad4eafbb7f89dbc8fe829012383b93de6d3d2558` |
| 49 | `theorem` | [Nondegenerate.ne_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/nondegenerate-ne-zero.md) | 316 | `result-track:2dfc0de2f6d0114fac0ed736d169f3e44e03e230e9d5543330f7579f9242aa62` |
| 50 | `theorem` | [Nondegenerate.congr](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/nondegenerate-congr.md) | 319 | `result-track:db04ef9b25dd12409e388d5bc72c723a048083eb9a99bd5dc6818e6279e1a060` |
| 51 | `theorem` | [nondegenerate_congr_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/nondegenerate-congr-iff.md) | 324 | `result-track:66b9127cc76057d71586b06f34fbe52883f864df4a325a6fcbc3a94c6ebbec4f` |
| 52 | `theorem` | [Nondegenerate.ker_eq_bot](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/nondegenerate-ker-eq-bot.md) | 330 | `result-track:3def12f40ee37434942a0d62b9cbcaa44b0c1a7b6d62e50edafed7ed6a4ec35d` |
| 53 | `theorem` | [compLeft_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/compleft-injective.md) | 333 | `result-track:9e897f3bc7876c4518ca64efb02ccbdc836c3570604539d06a6f7a56ef6072cf` |
| 54 | `theorem` | [isAdjointPair_unique_of_nondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isadjointpair-unique-of-nondegenerate.md) | 340 | `result-track:7b59e8e22771028b901b2cd8cccfa2aba53ceab8ab90e1c787eeb4afb9954536` |
| 55 | `lemma` | [Nondegenerate.flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/nondegenerate-flip.md) | 345 | `result-track:d2a5e60f89574353ce43b908e1d5a73f4609ca81f5da94c41513493710ae7ada` |
| 56 | `lemma` | [nondegenerate_flip_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/nondegenerate-flip-iff.md) | 349 | `result-track:2146a84927a0c3fa104d8a9c9432d788c6e480d75aa163c27e5c3b5cf1144a08` |
| 57 | `def` | [toDual](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/todual.md) | 358 | `declaration-track:962344edeba243188fa0d9f6a507af0125eedd4cadaf5a90b100acf14be27d13` |
| 58 | `theorem` | [toDual_def](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/todual-def.md) | 362 | `result-track:3a1196ea07113004501c77227926bcf383048aafca5b530121cd21f1b4f63083` |
| 59 | `lemma` | [apply_toDual_symm_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/apply-todual-symm-apply.md) | 366 | `result-track:6939b3fe99696747e958920ea3b32c42c40c8a2bd603456c595b6f37db4a2003` |
| 60 | `def` | [dualBasis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/dualbasis.md) | 381 | `declaration-track:443446c3c05e7a477aae750e9ce4b71628ba340ca2980334f7f5d98e84fe21ca` |
| 61 | `theorem` | [dualBasis_repr_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/dualbasis-repr-apply.md) | 389 | `result-track:70530301b81e6226d3ff2a7e5028ef11ec90d20052de78e43d26781c2eec1795` |
| 62 | `theorem` | [apply_dualBasis_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/apply-dualbasis-left.md) | 395 | `result-track:15bb23399d343327c16b56d84b0eba410c00a5bbe5bae7c5bef7c4547154a2c8` |
| 63 | `theorem` | [apply_dualBasis_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/apply-dualbasis-right.md) | 401 | `result-track:44a7ac430dbcfd8dda28b2df1dd1bbc13a57418eb86a7c2c8bcd736659204222` |
| 64 | `lemma` | [dualBasis_dualBasis_flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/dualbasis-dualbasis-flip.md) | 406 | `result-track:bd7cb213197e1a7d795256d649462e52929bf3bf34044adf60d7f5aa91c8e68d` |
| 65 | `lemma` | [dualBasis_flip_dualBasis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/dualbasis-flip-dualbasis.md) | 413 | `result-track:1a2f56092c439f2b90021772335cdf4eaf2fb961c6d3a614c23efed77768a602` |
| 66 | `lemma` | [dualBasis_dualBasis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/dualbasis-dualbasis.md) | 418 | `result-track:aecfe80220d9eef4b8c345d2447de2d2f23253d07d21bddb09ca83907d7f7476` |
| 67 | `lemma` | [dualBasis_involutive](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/dualbasis-involutive.md) | 424 | `result-track:a20834ccec9e64ecd0500605f1a59f7482a7bbe65e02f2ea0486308d1943a50c` |
| 68 | `lemma` | [dualBasis_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/dualbasis-injective.md) | 428 | `result-track:c9ee5b48d4828759e9ebd1583d4510e8262365281aa3689a670a402648102354` |
| 69 | `theorem` | [dualBasis_eq_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/dualbasis-eq-iff.md) | 433 | `result-track:c0d402117d9b4d761ea9d68f91916c916d8c9988f70c5528a2ac1b52a35712f3` |
| 70 | `def` | [symmCompOfNondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/symmcompofnondegenerate.md) | 447 | `declaration-track:3d651a740825e9bb48fe8afcb799c6495859bfbbdca58c470d56d6b0c9bf4c68` |
| 71 | `theorem` | [comp_symmCompOfNondegenerate_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/comp-symmcompofnondegenerate-apply.md) | 451 | `result-track:f29f65bfa8276900f99ab911f640f8898a08d8f7aa1793d56b3ea6e6000e6a14` |
| 72 | `theorem` | [symmCompOfNondegenerate_left_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/symmcompofnondegenerate-left-apply.md) | 459 | `result-track:d568e25b09c2a2c8aa8f9cf622c05bcd520641ddc4d65df61b381a8a57ac9c0d` |
| 73 | `def` | [leftAdjointOfNondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/leftadjointofnondegenerate.md) | 466 | `declaration-track:db38b41b669373cebd6b0fdc4ca5f365fcd8c9181e228940abcdc5964bc28764` |
| 74 | `theorem` | [isAdjointPairLeftAdjointOfNondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isadjointpairleftadjointofnondegenerate.md) | 470 | `result-track:fd61e5adbf4e0dd649ea91bdfe8002973cf8459a719d84548a6d01730f10e548` |
| 75 | `theorem` | [isAdjointPair_iff_eq_of_nondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespacedPublic.lean/declarations/isadjointpair-iff-eq-of-nondegenerate.md) | 476 | `result-track:bac26ef74f1ee769a15dc094388630ae84dfc64e5db932cff4fc8b9a9dc371f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39276c9337edf6f53aaef164f9cd26f58d7e0a12b7111ee840af23ef4b5dee60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Properties/Variant78fb4f8fa4c1cc1f54dd325a0475be9534ac2a03dbda3617683111388127476c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Properties/Variant78fb4f8fa4c1cc1f54dd325a0475be9534ac2a03dbda3617683111388127476c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
