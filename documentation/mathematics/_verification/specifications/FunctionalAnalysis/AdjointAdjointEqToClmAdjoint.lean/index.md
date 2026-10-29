# Verification target: Adjoint Adjoint Eq To Clm Adjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "686fa8c35044a503b22403f7dd6a66e5a2bdc174",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variantea3e2d091bfd0987541cad2ae7a065557c5200c52d41b373e94fd3b7339ce090.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `686fa8c35044a503b22403f7dd6a66e5a2bdc174`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variantea3e2d091bfd0987541cad2ae7a065557c5200c52d41b373e94fd3b7339ce090.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Adjoint/Variantea3e2d091bfd0987541cad2ae7a065557c5200c52d41b373e94fd3b7339ce090.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/macro-rules.md) | 43 | `declaration-track:319678a3f2c3096c378d08affa5c649b27924ebef1bb0302f960a2a49a4881fe` |
| 2 | `def` | [adjointAux](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjointaux.md) | 71 | `declaration-track:052638534adc27c56eea0e79b379656bbb3e8319337d7f16c7fb10faf6a372cd` |
| 3 | `theorem` | [adjointAux_apply](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjointaux-apply.md) | 77 | `result-track:4a60d8f58dfd02d2d23f463ce7f141d45ec90be341afe16036f20051d34c4401` |
| 4 | `theorem` | [adjointAux_inner_left](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjointaux-inner-left.md) | 82 | `result-track:61a7bf23725d9396141c8e79b8b5819650267488d4ce1cf527c863ee993a384d` |
| 5 | `theorem` | [adjointAux_inner_right](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjointaux-inner-right.md) | 87 | `result-track:c34db55d4e315752748cef6cf154027d9461355b939e7f257fee036cf3e314f1` |
| 6 | `theorem` | [adjointAux_adjointAux](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjointaux-adjointaux.md) | 94 | `result-track:0fb53b6fe45ef30e6baf3c68e49af8d72311a3f76d7e780a828751ad995cfaf3` |
| 7 | `theorem` | [adjointAux_norm](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjointaux-norm.md) | 101 | `result-track:15d65bcb50b8bb60d2880c174cb8bf75904cf544a7d149bf5af44614b25e6f2c` |
| 8 | `def` | [adjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint.md) | 113 | `declaration-track:67464b776fb3bba6e4a93df79273f1cac81c68c43a0b2411f60bac3e52f4b8d5` |
| 9 | `theorem` | [adjoint_inner_left](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-inner-left-source-edition-2.md) | 122 | `result-track:86429fb2bd393cfdd333f1a3e728afabd7b91cfef55ec27b5ac15f020c4f361b` |
| 10 | `theorem` | [adjoint_inner_right](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-inner-right-source-edition-2.md) | 127 | `result-track:b6d1e7628184680eafbf4a32bfd4b698ba9193be15f3d8b24d60dff2656b82a1` |
| 11 | `theorem` | [adjoint_adjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-adjoint.md) | 133 | `result-track:0e77a7b79618859ded4492c2c46196b5ec1216be5599dc963127b8eeeccd3cd6` |
| 12 | `theorem` | [adjoint_comp](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-comp-source-edition-2.md) | 140 | `result-track:70ee359ca6d6cdf7dd61097e4fd9fdc1dd9513e032709d36d557027b08e8d3eb` |
| 13 | `theorem` | [apply_norm_sq_eq_inner_adjoint_left](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/apply-norm-sq-eq-inner-adjoint-left.md) | 146 | `result-track:10cae89ef1df6630a80bfdfdf883a9a653e989751349c23804fb3c7ff318b545` |
| 14 | `theorem` | [apply_norm_eq_sqrt_inner_adjoint_left](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/apply-norm-eq-sqrt-inner-adjoint-left.md) | 152 | `result-track:64fc059eeb8aecbee3b0da5e419b82f93614793187df7a45ca8f19a8681291cd` |
| 15 | `theorem` | [apply_norm_sq_eq_inner_adjoint_right](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/apply-norm-sq-eq-inner-adjoint-right.md) | 157 | `result-track:c583d4e429d337ccc3bb00a465161f5178c9875459e3b3f7cb178d8113d7745a` |
| 16 | `theorem` | [apply_norm_eq_sqrt_inner_adjoint_right](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/apply-norm-eq-sqrt-inner-adjoint-right.md) | 163 | `result-track:6b1dcdd188b76f541603f6b5df8a8eda9b0a406d3e48e72569cdbc7bc3f62e1a` |
| 17 | `theorem` | [eq_adjoint_iff](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff-source-edition-2.md) | 170 | `result-track:adfae091b29cd8ea93fcb20e1fc9b68c859edb4923939e7affe5058a87609b42` |
| 18 | `theorem` | [adjoint_id](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-id.md) | 177 | `result-track:4c72d775c3fd9ffd1df8ba368f048aa8e8ef1aa55733563ae1df93a55180f2b0` |
| 19 | `theorem` | [_root_.Submodule.adjoint_subtypeL](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/root-submodule-adjoint-subtypel.md) | 184 | `result-track:dbfa307f9ddf521cfde524b822586a9742290b2cd393bd42fe1ba6da060c51fa` |
| 20 | `theorem` | [_root_.Submodule.adjoint_orthogonalProjection](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/root-submodule-adjoint-orthogonalprojection.md) | 195 | `result-track:cc93c27585ae918f0f9b7720669010ec29604bea69b7db0042cb11f7d1228007` |
| 21 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-10.md) | 201 | `declaration-track:e45e0f827ee91fa61790e045f647b01603cb6a457a3fa6115b2acc0d1b85b616` |
| 22 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-6.md) | 204 | `declaration-track:6aada03e4d658cd6879bcb96df6e016e7843cd0d361435de129002889225127c` |
| 23 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-7.md) | 207 | `declaration-track:95986ab01a93e6a237c1e70094052c63a72ce5fb5d88c8b71a8354905627d7f6` |
| 24 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-4.md) | 210 | `declaration-track:37a2064dcd042ec513f7271ebb5189952a9ae01149fc97e7f540cc970c436d76` |
| 25 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-11.md) | 213 | `declaration-track:f39f78cfffb66ea9548395aee58000cfcf91be00ee79994348dd136d252e16b3` |
| 26 | `theorem` | [star_eq_adjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/star-eq-adjoint.md) | 216 | `result-track:b8edaa2691206889b7aa5f8fa81fb045d3e96b223753f918172bb035ae006a7d` |
| 27 | `theorem` | [isSelfAdjoint_iff'](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/isselfadjoint-iff-source-edition-2.md) | 221 | `result-track:9ae1bf2724afe7cf629ed880acc8ad53bf1f75c9cc776c013ba958706174921f` |
| 28 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance.md) | 226 | `declaration-track:019f624f4dca33e46e13906483ddfc4578bacf20deae6b2c4c04ca4f5a38d6dc` |
| 29 | `theorem` | [isAdjointPair_inner](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/isadjointpair-inner-source-edition-2.md) | 258 | `result-track:e672863831a931cd28980db55c8a2090a04f0777dc792576162353b7e51d8700` |
| 30 | `theorem` | [adjoint_eq](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-eq.md) | 278 | `result-track:475773662eb5527c6187b36728dd98cb9a183b27bc84b1407d0b3ccd5a83a9c5` |
| 31 | `theorem` | [isSymmetric](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/issymmetric.md) | 283 | `result-track:2da6c49ad99eee6b12c178ec1030d335e54d8f1ecb6c35ed02ec94e2453cee6f` |
| 32 | `theorem` | [conj_adjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/conj-adjoint.md) | 289 | `result-track:f14fc4e67aa97ff3be38e4952a4596d862af719c1b825923ba64abf21bbe6692` |
| 33 | `theorem` | [adjoint_conj](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-conj.md) | 297 | `result-track:0af0d375aff819c32ba917aa365217cdfc8b101792f23f11f84ae610b2948ed7` |
| 34 | `theorem` | [_root_.ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/root-continuouslinearmap-isselfadjoint-iff-issymmetric.md) | 304 | `result-track:58e8d940b1dedb56c547c1fba24b2cfb87c39867cfba9abeac07972db8b71369` |
| 35 | `theorem` | [_root_.LinearMap.IsSymmetric.isSelfAdjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/root-linearmap-issymmetric-isselfadjoint.md) | 310 | `result-track:d7b806cf0227ac13a1a8ac8cd16ece10ef9f790ac903249909c6ac6f5544426f` |
| 36 | `theorem` | [_root_.orthogonalProjection_isSelfAdjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/root-orthogonalprojection-isselfadjoint.md) | 316 | `result-track:b6d227d2bd440a92bfe4c1d6e65a302fba6574c7e21bc1c23920a8279d10f1f7` |
| 37 | `theorem` | [conj_orthogonalProjection](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/conj-orthogonalprojection.md) | 321 | `result-track:4c5a7ae319a46fe51ab649ae5b3dd1a8f40c473c1049f33d710a74a8c25ce358` |
| 38 | `def` | [IsSymmetric.toSelfAdjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/issymmetric-toselfadjoint.md) | 340 | `declaration-track:0ef3896fddae0173c4d9f9a9f9ddcfdeba738ec128e4845f92bbe6552fdd91c0` |
| 39 | `theorem` | [IsSymmetric.coe_toSelfAdjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/issymmetric-coe-toselfadjoint.md) | 344 | `result-track:8d4839c6c19e2c9c09c688a89ccb819191f6a073e7bbe4ea5fccc6a81562c01a` |
| 40 | `theorem` | [IsSymmetric.toSelfAdjoint_apply](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/issymmetric-toselfadjoint-apply.md) | 348 | `result-track:44b79d632aa9ab96f63c01bc2aa8555a2be619052cc9c0351842104d32276ad5` |
| 41 | `def` | [adjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-source-edition-2.md) | 370 | `declaration-track:b469453c0e83c2a6c54a685a5020e9c3f837ec4795c3649e660689175f0d70f7` |
| 42 | `theorem` | [adjoint_toContinuousLinearMap](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-tocontinuouslinearmap.md) | 376 | `result-track:2c5d282b8e37f101c6eb0bc79a3d760b5c6c3663eaf6866430fbdbeb03429cff` |
| 43 | `theorem` | [adjoint_eq_toClm_adjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-eq-toclm-adjoint.md) | 382 | `result-track:061f33423584775c39ba0c9e2da84188413ef33451e1aac5917e93c76c1bc150` |
| 44 | `theorem` | [adjoint_inner_left](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-inner-left.md) | 388 | `result-track:6b92d0a8ec2257e987d0a3cb4a9b9c6cd28458e0238eaa3316eba585f638fadd` |
| 45 | `theorem` | [adjoint_inner_right](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-inner-right.md) | 394 | `result-track:a7355d510e153c97c4789676fa8c244258fadac2b754f3e36d4fd44deb9a8590` |
| 46 | `theorem` | [adjoint_adjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-adjoint-source-edition-2.md) | 403 | `result-track:1f0749d565ff662b9ef8e56bb8dcc7df49e6a8271e5cb29b94be19da69732745` |
| 47 | `theorem` | [adjoint_comp](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/adjoint-comp.md) | 412 | `result-track:578d72b71045e7746a4c3f5e509ca66fb96ddb5b5e8c0d3995ea9eb1a9478278` |
| 48 | `theorem` | [eq_adjoint_iff](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff.md) | 421 | `result-track:2c72eba5960b2b5b7268e16b96c5deb403f12fb44d19921691d421bb2b28f666` |
| 49 | `theorem` | [eq_adjoint_iff_basis](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff-basis.md) | 430 | `result-track:9792e65fa2c95790a3b686fe3a99c4dbdcae64a77a85f77968edb6707ae8c745` |
| 50 | `theorem` | [eq_adjoint_iff_basis_left](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff-basis-left.md) | 438 | `result-track:c9a3fdf633ea063305e806f8ae72c208a44e6c273323b143d1563988159f29f8` |
| 51 | `theorem` | [eq_adjoint_iff_basis_right](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/eq-adjoint-iff-basis-right.md) | 444 | `result-track:62fc4203aeed8fe8b48c2d3cf6d2012c0b6d55f3cc65e463192446e0fbc36b29` |
| 52 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-5.md) | 452 | `declaration-track:5af616f785ea437ad019bff5848441ff9ff690919c8f7e5c3edee341592759ac` |
| 53 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-8.md) | 455 | `declaration-track:ac53ca70d0ac4b14ffc5720b4548e7acd9a06748864a6dff4ce9225762a549c3` |
| 54 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-3.md) | 458 | `declaration-track:360668f6db57f213449099731ba9d197d20a450da7e1464e51ffc53f53539f08` |
| 55 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-2.md) | 461 | `declaration-track:1a21322ade1e2c37b203e267f8d503e4b5b2f4b930599226ddd15a99e5082940` |
| 56 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/instance-source-edition-9.md) | 464 | `declaration-track:ad0fbcafde61e2cc7b4ad52c5eae35fb8382a6d8465ff822e1c3a6a2c8c7926a` |
| 57 | `theorem` | [star_eq_adjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/star-eq-adjoint-source-edition-2.md) | 467 | `result-track:e281e8ccc758dc1f68a44c69bc081587fcbc9d5500ac1c31063630f4a82d4010` |
| 58 | `theorem` | [isSelfAdjoint_iff'](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/isselfadjoint-iff.md) | 472 | `result-track:82dd8ecce8e130ba1a6e2916b1085afea127f433bef675d741123d670f581d41` |
| 59 | `theorem` | [isSymmetric_iff_isSelfAdjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/issymmetric-iff-isselfadjoint.md) | 476 | `result-track:aba6976598936356bc40d185e06a0d54adb423942cdc18860a6450e690cdba19` |
| 60 | `theorem` | [isAdjointPair_inner](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/isadjointpair-inner.md) | 492 | `result-track:2ac68b29a2f3ceb57d5f2e2667cd9bb7cc5bbdff6cc632826a3d843891621e9d` |
| 61 | `theorem` | [isSymmetric_adjoint_mul_self](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/issymmetric-adjoint-mul-self.md) | 502 | `result-track:57dc45a7cc13c2ef94722e8d9aa455e20feb12141d03b08a46b92bf7cfaac74d` |
| 62 | `theorem` | [re_inner_adjoint_mul_self_nonneg](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/re-inner-adjoint-mul-self-nonneg.md) | 508 | `result-track:7646382638e424bca4d152812000f8a77029b6d1d6f47972c409f997af85e3ca` |
| 63 | `theorem` | [im_inner_adjoint_mul_self_eq_zero](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/im-inner-adjoint-mul-self-eq-zero.md) | 516 | `result-track:10195c9ddce3c5ac892a5c1cc36627b194f36e60d424fce654eff71759c6da35` |
| 64 | `theorem` | [toEuclideanLin_conjTranspose_eq_adjoint](../../../../FunctionalAnalysis/AdjointAdjointEqToClmAdjoint.lean/declarations/toeuclideanlin-conjtranspose-eq-adjoint.md) | 532 | `result-track:8bb473b170899750b8a7878c1e57115255e08c6bf26d63736c4b0f7c2e57f030` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=370951a7cc3f494b2f2473b5ffc64720f36dc9637d9166131e8b8e5bc4542004 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variantea3e2d091bfd0987541cad2ae7a065557c5200c52d41b373e94fd3b7339ce090.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Adjoint/Variantea3e2d091bfd0987541cad2ae7a065557c5200c52d41b373e94fd3b7339ce090.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
