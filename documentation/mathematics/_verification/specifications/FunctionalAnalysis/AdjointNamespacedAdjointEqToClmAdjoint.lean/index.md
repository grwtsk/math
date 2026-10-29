# Verification target: Adjoint Namespaced Adjoint Eq To Clm Adjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52e4f359eafe80066db8530bd17aa98c4cff05e8",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant3839bebeef5b6e7581d56ff8d200e1947c0f27ad6a6db6a30806d7bb54eacbc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52e4f359eafe80066db8530bd17aa98c4cff05e8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant3839bebeef5b6e7581d56ff8d200e1947c0f27ad6a6db6a30806d7bb54eacbc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Adjoint/Variant3839bebeef5b6e7581d56ff8d200e1947c0f27ad6a6db6a30806d7bb54eacbc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/macro-rules.md) | 51 | `declaration-track:7f56506b3a4225b935e398bb09ab6576fcf50cebaf875b4d0556ef1b0f2dde64` |
| 2 | `def` | [adjointAux](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjointaux.md) | 79 | `declaration-track:abbce35856739bcb321d3415887b6fb8ceccc239ca90c5dd03894d678af15d62` |
| 3 | `theorem` | [adjointAux_apply](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjointaux-apply.md) | 85 | `result-track:7ca98d7fa59dd0d34227a6327940832a9214273893612aa871e30acfe10c0326` |
| 4 | `theorem` | [adjointAux_inner_left](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjointaux-inner-left.md) | 90 | `result-track:4739c68a7bb4b77dfb27a63e551f5a0277af68a8c9c1c575bcd06cc20883e2b4` |
| 5 | `theorem` | [adjointAux_inner_right](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjointaux-inner-right.md) | 95 | `result-track:00c1fb3d9a06c1efc5236f4196b997db5f3119d2c3252267e0cfe01e798ba4c6` |
| 6 | `theorem` | [adjointAux_adjointAux](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjointaux-adjointaux.md) | 102 | `result-track:253c01b3de337a949425ad8c0bf9c2600ed0283e1bb15f5d96e0c06d27960121` |
| 7 | `theorem` | [adjointAux_norm](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjointaux-norm.md) | 109 | `result-track:643081040bf20fca0572667e675f0d313556839a9deb997c7e4b771c68428686` |
| 8 | `def` | [adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint.md) | 121 | `declaration-track:5e5efddfebfa00a11a80e6bc8f2102b13ea70b5910befd6b98c6629790ea03f4` |
| 9 | `theorem` | [adjoint_inner_left](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-inner-left-source-edition-2.md) | 130 | `result-track:b0d961fce79cfb34a70c766dc04637a95ca5a0fcddcb91a9df5c53fef840a04f` |
| 10 | `theorem` | [adjoint_inner_right](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-inner-right-source-edition-2.md) | 135 | `result-track:89641978a29a8c55624997b4042c21cb7955f9629d1c3999ca32f768904d9307` |
| 11 | `theorem` | [adjoint_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-adjoint.md) | 141 | `result-track:3a7c43e8b5fc54c6905bf3efae2f204048e02c8d96a8d6a0ea02444c53c06adb` |
| 12 | `theorem` | [adjoint_comp](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-comp-source-edition-2.md) | 148 | `result-track:b4168d296b80daf20e351dc810c7730a38d1d57b57b1065ce9a7553deb8f8d1c` |
| 13 | `theorem` | [apply_norm_sq_eq_inner_adjoint_left](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/apply-norm-sq-eq-inner-adjoint-left.md) | 154 | `result-track:fca1adea1b15d688814c906dc66e8831d3adbc03e51e015aadf6f1dfe7462765` |
| 14 | `theorem` | [apply_norm_eq_sqrt_inner_adjoint_left](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/apply-norm-eq-sqrt-inner-adjoint-left.md) | 160 | `result-track:15424b9403413c9b37e2a151065178da704153b2adc89f2119a38cfea4cb279f` |
| 15 | `theorem` | [apply_norm_sq_eq_inner_adjoint_right](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/apply-norm-sq-eq-inner-adjoint-right.md) | 165 | `result-track:cf28a951184c42ec68da1daaf89795d215ff67672c06817aaecb9b46fe54feeb` |
| 16 | `theorem` | [apply_norm_eq_sqrt_inner_adjoint_right](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/apply-norm-eq-sqrt-inner-adjoint-right.md) | 171 | `result-track:17bec6ba37e970eb05f9f9062cfdf7a315cc45790c702726707b1a52c08d5eb6` |
| 17 | `theorem` | [eq_adjoint_iff](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff-source-edition-2.md) | 178 | `result-track:44d9bbb307544af788023b76d01b95ee432548086cfe1af9ebb5d8c92f2e44c6` |
| 18 | `theorem` | [adjoint_id](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-id.md) | 185 | `result-track:561fd575a8d9dbad53df76bb469f230d7fa39590483648808433b234eccd2054` |
| 19 | `theorem` | [Adjoint Namespaced Adjoint Eq To Clm Adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-subtypel.md) | 192 | `result-track:b070a3e75e5eb9ab4b629af50316aa13a05fbed36bf4431750f1dfbb01bf8ef8` |
| 20 | `theorem` | [Adjoint Namespaced Adjoint Eq To Clm Adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-orthogonalprojection.md) | 203 | `result-track:3eb1b477df7a1c94adea183212eccfb9008428e4da5434ad1b9c4acf3f9aa469` |
| 21 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-8.md) | 209 | `declaration-track:dfb87da78cdf69a0ae2cc4e1c9b90c86da2e838aa5176ef35c34107244a10cec` |
| 22 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-11.md) | 212 | `declaration-track:f64b4d4a51ac18baa0d1bf1668b60dd2831c2101e323c5e392cf0abc20bc7e62` |
| 23 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-6.md) | 215 | `declaration-track:8a32078bd07cd7cf5212b63c09c07cf286737b337cabb9d8dbfb08be6b90657b` |
| 24 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance.md) | 218 | `declaration-track:0bd2896c47b29b626bb176ce22b5b37d4235b49e554ca606869d1395988d3299` |
| 25 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-4.md) | 221 | `declaration-track:43e1c3c5001ba4e98d3eba331e3aef1105d29e42954997a1f4856905046935a0` |
| 26 | `theorem` | [star_eq_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/star-eq-adjoint.md) | 224 | `result-track:a1a3e60a49faf89f6201cde9886e32164c838fb634e7b1f7ab03046b149bd12c` |
| 27 | `theorem` | [isSelfAdjoint_iff'](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/isselfadjoint-iff-source-edition-2.md) | 229 | `result-track:fcebef25cbf065d13528d4f0f9ea77f29e94224dca29ae65e1cd40c75bcea355` |
| 28 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-3.md) | 234 | `declaration-track:3a70dbce639de60ac300805474d7e3e6211a1984213a89463a7e0b407392fe2b` |
| 29 | `theorem` | [isAdjointPair_inner](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/isadjointpair-inner-source-edition-2.md) | 266 | `result-track:7baf558fda0303faf9232b87d976385c4c9317cdf5d46141294cf454247c81c7` |
| 30 | `theorem` | [adjoint_eq](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-eq.md) | 286 | `result-track:48cb4c7aad9d57904153322e516ab63c9ecae9bd6ee89a5a29faef9010129634` |
| 31 | `theorem` | [isSymmetric](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/issymmetric.md) | 291 | `result-track:5b1591a5848878be4fa30591735efa799a8fbf69eade003ee6694b6aa0784e67` |
| 32 | `theorem` | [conj_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/conj-adjoint.md) | 297 | `result-track:bb45d7117632d13640df7562a011822b82526c1b85f0abeb83a217e8cce2e34e` |
| 33 | `theorem` | [adjoint_conj](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-conj.md) | 305 | `result-track:8418e273ecb9747727cc9a9b5f0bd6facb0133582bebe089d8cd66b657b2baac` |
| 34 | `theorem` | [Adjoint Namespaced Adjoint Eq To Clm Adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/isselfadjoint-iff-issymmetric.md) | 312 | `result-track:0c127f3d118a1f663c63e89aa52976f545435a2fabd25c5f47f0dec10f3a7eda` |
| 35 | `theorem` | [Adjoint Namespaced Adjoint Eq To Clm Adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/isselfadjoint.md) | 318 | `result-track:d69d1f085ce31184dff22a23c0695a6658f6cedeca03dd49643ce418c94c2e05` |
| 36 | `theorem` | [Adjoint Namespaced Adjoint Eq To Clm Adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/orthogonalprojection-isselfadjoint.md) | 324 | `result-track:1c17583faedc0a5cebe1687444c733ceff0ace85ca618305482b57089579e2e5` |
| 37 | `theorem` | [conj_orthogonalProjection](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/conj-orthogonalprojection.md) | 329 | `result-track:9d1a0432e3c51d2be7f5d0ad42b58bc7118c36881c28c359ab024267d6ceb8b7` |
| 38 | `def` | [IsSymmetric.toSelfAdjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/issymmetric-toselfadjoint.md) | 348 | `declaration-track:6fc45b4a8d6e94acd0c42eaf73edc94c9be657de32c6e69b2a46868a2a207fd5` |
| 39 | `theorem` | [IsSymmetric.coe_toSelfAdjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/issymmetric-coe-toselfadjoint.md) | 352 | `result-track:01af58762fca73fc977cb097997528c0f7abadf16ff759ca43d6fb897e65dbb9` |
| 40 | `theorem` | [IsSymmetric.toSelfAdjoint_apply](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/issymmetric-toselfadjoint-apply.md) | 356 | `result-track:26a87c2294120f80b62f355cfa1d3c85445d7924906fb87c01de3865379976d2` |
| 41 | `def` | [adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-source-edition-2.md) | 378 | `declaration-track:76e176079116176be311d8eac7de404426409be60ae9774722be91d4a736ea00` |
| 42 | `theorem` | [adjoint_toContinuousLinearMap](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-tocontinuouslinearmap.md) | 384 | `result-track:80d8466e5fb146a2beb0ab23113a4862b3edb55fdce630a6be0e638e7a5df503` |
| 43 | `theorem` | [adjoint_eq_toClm_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-eq-toclm-adjoint.md) | 390 | `result-track:9dd19e6e823b6193c59c39a1f8abc9b5ed7a4e20c692836bad58444a060a2a27` |
| 44 | `theorem` | [adjoint_inner_left](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-inner-left.md) | 396 | `result-track:6f50e294f36d13ad76c9334b1bc083e6c8826be964becd59e4406e5de4d1a2dc` |
| 45 | `theorem` | [adjoint_inner_right](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-inner-right.md) | 402 | `result-track:09ef56138dd720d9defa466110f28930ebe01564c3202a56031045b126010bf7` |
| 46 | `theorem` | [adjoint_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-adjoint-source-edition-2.md) | 411 | `result-track:b546585b45e83f56380074895945ec2457206de0dc46e3cecc88e67038a47e50` |
| 47 | `theorem` | [adjoint_comp](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/adjoint-comp.md) | 420 | `result-track:028e886d4989f28144067279992583cfe1f1145e9d336f2160c141738465f6c3` |
| 48 | `theorem` | [eq_adjoint_iff](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff.md) | 429 | `result-track:15be7c0f07be30fef3cb73302860e577003fb4573585bfb186642d62351467c6` |
| 49 | `theorem` | [eq_adjoint_iff_basis](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff-basis.md) | 438 | `result-track:fa789502703196961cfb1b29f5f6d9a8dc6259e0b27e40e508c8c9c5c983038e` |
| 50 | `theorem` | [eq_adjoint_iff_basis_left](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff-basis-left.md) | 446 | `result-track:a5855496bc1f0db8cce02c9409b9cb35ab94d32d337438c527d90aafa09b1aa8` |
| 51 | `theorem` | [eq_adjoint_iff_basis_right](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff-basis-right.md) | 452 | `result-track:e20be46b5bae542078d4281b6e661357130f6e040fcaf7ff248da5e475e6cf07` |
| 52 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-2.md) | 460 | `declaration-track:0e8dd9f1efd9c21e97cfb5c0e9f06104db72e4081782d205c11b823afac04ddf` |
| 53 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-7.md) | 463 | `declaration-track:cdbb361083af01b019bc571f36eb2c8e9559df4040c9a719f1c5702f8d51e9ee` |
| 54 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-10.md) | 466 | `declaration-track:f1375c6e24b7b500ff76d9e57ddeeac7956f1cea392fd21d6b8dbee5dddfb5a7` |
| 55 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-5.md) | 469 | `declaration-track:5a437740e6dea9424d048081f5a306926fc7bcfdeccc76d8325a81970da57a4d` |
| 56 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-9.md) | 472 | `declaration-track:e66d9c266c804989c33e9b2cd221ec5f470c33ec2d0ce956b50a9c980c738686` |
| 57 | `theorem` | [star_eq_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/star-eq-adjoint-source-edition-2.md) | 475 | `result-track:e9b3a7b50c34830772427669df7c394d109e9ef1c580358027a4dfd9d71c1b12` |
| 58 | `theorem` | [isSelfAdjoint_iff'](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/isselfadjoint-iff.md) | 480 | `result-track:7b5dc590e74ee8dd1fd235cbaa285a00a3f544c4e04186bbaf0c89f9193cbb45` |
| 59 | `theorem` | [isSymmetric_iff_isSelfAdjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/issymmetric-iff-isselfadjoint.md) | 484 | `result-track:aca1c02a0bd469cde44e0e96d3911ad434fa59576d2455b4138aef1f9b062f35` |
| 60 | `theorem` | [isAdjointPair_inner](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/isadjointpair-inner.md) | 500 | `result-track:21802e2cc1bb72a2544d76541846b3c935c65785b632df4a324b7ec1f1dd49cf` |
| 61 | `theorem` | [isSymmetric_adjoint_mul_self](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/issymmetric-adjoint-mul-self.md) | 510 | `result-track:c768015995eb9cb53d222d807fbfd42f540d3eb4c49ec83f81e47bc32345ac5c` |
| 62 | `theorem` | [re_inner_adjoint_mul_self_nonneg](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/re-inner-adjoint-mul-self-nonneg.md) | 516 | `result-track:84d94eaff9fc9e67084ea1061adfd1246c3ef92c7d4777a9679200b6423568b7` |
| 63 | `theorem` | [im_inner_adjoint_mul_self_eq_zero](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/im-inner-adjoint-mul-self-eq-zero.md) | 524 | `result-track:41ad08b8731b11ba7f50788a45d301fc148d6513436c57166bc5490749de704c` |
| 64 | `theorem` | [toEuclideanLin_conjTranspose_eq_adjoint](../../../../FunctionalAnalysis/AdjointNamespacedAdjointEqToClmAdjoint.lean/declarations/toeuclideanlin-conjtranspose-eq-adjoint.md) | 540 | `result-track:d6d99aec44b3abd10acfc8bba367e06c81db4d6bacfb139d7727d7c2f515917b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2520f81a25904ab7bac5e032afd051bf59534cf303a1392fa34dd91e60276ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant3839bebeef5b6e7581d56ff8d200e1947c0f27ad6a6db6a30806d7bb54eacbc2.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Adjoint/Variant3839bebeef5b6e7581d56ff8d200e1947c0f27ad6a6db6a30806d7bb54eacbc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
