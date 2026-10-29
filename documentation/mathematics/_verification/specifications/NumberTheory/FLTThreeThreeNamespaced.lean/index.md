# Verification target: FLTThree Three Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86eac8ca69a001fbbafadc15da5546a575c62124",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variantd81c8b74332ae2d220e11f396727bc0b02b0cf494a1e53427cc1e75f78193a1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86eac8ca69a001fbbafadc15da5546a575c62124`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variantd81c8b74332ae2d220e11f396727bc0b02b0cf494a1e53427cc1e75f78193a1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Three/Variantd81c8b74332ae2d220e11f396727bc0b02b0cf494a1e53427cc1e75f78193a1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.FLT.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.PID` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.Three` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cube_of_castHom_ne_zero](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/cube-of-casthom-ne-zero.md) | 63 | `result-track:76702a38e40c14052722c6085ea3e5d605b19744bc11f3f77c26461e4f69783d` |
| 2 | `lemma` | [cube_of_not_dvd](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/cube-of-not-dvd.md) | 67 | `result-track:5c6909f122c988fba8e96fee5c2c7b6d89f9f70b91e376e27a88f1edb7551d3e` |
| 3 | `theorem` | [fermatLastTheoremThree_case_1](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/fermatlasttheoremthree-case-1.md) | 73 | `result-track:647e3fc8210baa66c2cfdcdb319568281f32a58c35ae0f91e91640d6935e2f00` |
| 4 | `lemma` | [three_dvd_b_of_dvd_a_of_gcd_eq_one_of_case2](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/three-dvd-b-of-dvd-a-of-gcd-eq-one-of-case2.md) | 87 | `result-track:8041f0bd6b4b83cabd7de52e789fd505773a6402d482aa09b4f84950b878e505` |
| 5 | `lemma` | [fermatLastTheoremThree_of_dvd_a_of_gcd_eq_one_of_case2](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/fermatlasttheoremthree-of-dvd-a-of-gcd-eq-one-of-case2.md) | 108 | `result-track:889944fe1735d0893f76a1aedca422e4c5e867c18bd75cd137ccca59e4e64876` |
| 6 | `theorem` | [fermatLastTheoremThree_of_three_dvd_only_c](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/fermatlasttheoremthree-of-three-dvd-only-c.md) | 131 | `result-track:245105d28b20bee98b335cf23bb07f31ff60becb3881dcf286a66d016fd7656d` |
| 7 | `def` | [FermatLastTheoremForThreeGen](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/fermatlasttheoremforthreegen.md) | 166 | `declaration-track:5e8d09e36e70a8c34ecbb37388a203c629de1ddeebeb27ccef43f197fa2a5944` |
| 8 | `lemma` | [FermatLastTheoremForThree_of_FermatLastTheoremThreeGen](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/fermatlasttheoremforthree-of-fermatlasttheoremthreegen.md) | 171 | `result-track:424fbe59acb70c7347730ebea84ed4704c6434ac536c953c63270e3a03613a00` |
| 9 | `structure` | [Solution'](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-source-edition-2.md) | 192 | `declaration-track:f4ec3408ac08ad2b37927e7a651e0f02cabbff0a194d51245f3b1559dabef5a3` |
| 10 | `structure` | [Solution](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution.md) | 209 | `declaration-track:506b0bf22d19116ab6d19579c47dba8adc877b22ff7b269aee09fe23d709f229` |
| 11 | `lemma` | [Solution'.multiplicity_lambda_c_finite](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-multiplicity-lambda-c-finite.md) | 220 | `result-track:a882bfd81136d54659825f1c610280ceb1a5b2d350dd056f48a2aed2cdd4e0bd` |
| 12 | `def` | [Solution'.multiplicity](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-multiplicity-source-edition-2.md) | 226 | `declaration-track:f935986ee3160ad0f896df26136b9f4cc29e01aad8e344177c91c7793da2fb13` |
| 13 | `def` | [Solution.multiplicity](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-multiplicity.md) | 231 | `declaration-track:390f1101f2a076567e20f13940918dc0c848be54282202d630a77bbb50f110d7` |
| 14 | `def` | [Solution.isMinimal](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-isminimal.md) | 235 | `declaration-track:0d191ade033d1402fd2eee5f0be6006d0473316facb222c5d3cc261c0387044a` |
| 15 | `lemma` | [Solution.exists_minimal](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-exists-minimal.md) | 240 | `result-track:68f892e79d0091ff556a57cad7267323758e9679d49ba9a5dbde94718faacfe0` |
| 16 | `lemma` | [a_cube_b_cube_congr_one_or_neg_one](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/a-cube-b-cube-congr-one-or-neg-one.md) | 248 | `result-track:3d5646165edeec4a7a59fedbdbc4048971996eb62cd1a01ff328351782a57f84` |
| 17 | `lemma` | [lambda_pow_four_dvd_c_cube](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-pow-four-dvd-c-cube.md) | 275 | `result-track:542b049615c72d97f32ca7295f47fa8cd9b096c0ea61ab178704dc42b7803d9b` |
| 18 | `lemma` | [lambda_sq_dvd_c](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-sq-dvd-c.md) | 286 | `result-track:b2a64f18495bb0391fb14e5cb540bd8652201ee3b58588f44921be43442bdd35` |
| 19 | `lemma` | [Solution'.two_le_multiplicity](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-two-le-multiplicity-source-edition-2.md) | 301 | `result-track:9199f249c8be0e7732ba30ce673a31844de2cd9230ee2e0428cb1b72d0906a39` |
| 20 | `lemma` | [Solution.two_le_multiplicity](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-two-le-multiplicity.md) | 306 | `result-track:15e8d5c44c366e2e681fa5a0f206b45df7fece442f979009a6c789b43d3241ef` |
| 21 | `lemma` | [a_cube_add_b_cube_eq_mul](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/a-cube-add-b-cube-eq-mul.md) | 312 | `result-track:b225779592269b888b0a4ebfd55f5a579d43bdc7bbc34426b1ad2b0db2094a2d` |
| 22 | `lemma` | [lambda_sq_dvd_or_dvd_or_dvd](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-sq-dvd-or-dvd-or-dvd.md) | 325 | `result-track:d95a6159b944a3c63dc9fe7fd764268cc5b65f891ff9bf06572f59a05971a6b5` |
| 23 | `lemma` | [ex_cube_add_cube_eq_and_isCoprime_and_not_dvd_and_dvd](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/ex-cube-add-cube-eq-and-iscoprime-and-not-dvd-and-dvd.md) | 353 | `result-track:9a8661758519d63f2d2939e7d85444d50694e448a3a7f6628ff462e598fb4d36` |
| 24 | `lemma` | [exists_Solution_of_Solution'](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/exists-solution-of-solution.md) | 372 | `result-track:475217fec1610dff4da057961821cd4eb641c9627c7b1ce81ab9b6b7b748068c` |
| 25 | `lemma` | [a_add_eta_mul_b](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/a-add-eta-mul-b.md) | 391 | `result-track:eef29d83369aaa9a5002e37fe972939d4697855cd1cc41647b036887cc490644` |
| 26 | `lemma` | [lambda_dvd_a_add_eta_mul_b](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-dvd-a-add-eta-mul-b.md) | 394 | `result-track:f3f7342ceb58e5abb435cf118b8bbc37078a5225fc402c21991f5e24ee239804` |
| 27 | `lemma` | [lambda_dvd_a_add_eta_sq_mul_b](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-dvd-a-add-eta-sq-mul-b.md) | 398 | `result-track:c4cc996cb40a7c5ec7cae976fc0b5697bdf6f5cc9d1f9adc91703d4f5018eb30` |
| 28 | `lemma` | [lambda_sq_not_dvd_a_add_eta_mul_b](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-sq-not-dvd-a-add-eta-mul-b.md) | 408 | `result-track:bb8a98472179559424cd17c475262be9d8718e2fcc7a4cbad6dfb2084efac821` |
| 29 | `lemma` | [lambda_sq_not_dvd_a_add_eta_sq_mul_b](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-sq-not-dvd-a-add-eta-sq-mul-b.md) | 413 | `result-track:0685142c1595e7f94f423590b98bf3a7ec58f10416a119036a21d376bf5aad84` |
| 30 | `lemma` | [associated_of_dvd_a_add_b_of_dvd_a_add_eta_mul_b](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/associated-of-dvd-a-add-b-of-dvd-a-add-eta-mul-b.md) | 432 | `result-track:becde08833963af71b48f9113f25014556450e60e59c05cfe5e6622848621176` |
| 31 | `lemma` | [associated_of_dvd_a_add_b_of_dvd_a_add_eta_sq_mul_b](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/associated-of-dvd-a-add-b-of-dvd-a-add-eta-sq-mul-b.md) | 442 | `result-track:d5f20f49691284370a3dd97a2a97826c89f2f716f012316c42da78d4baf92639` |
| 32 | `lemma` | [associated_of_dvd_a_add_eta_mul_b_of_dvd_a_add_eta_sq_mul_b](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/associated-of-dvd-a-add-eta-mul-b-of-dvd-a-add-eta-sq-mul-b.md) | 455 | `result-track:d8ab440128522cbf66c8501580e1e540b51430dc72d2c6156ae86537f78652c9` |
| 33 | `def` | [y](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/y.md) | 471 | `declaration-track:3234b7fc3d24950c069cbb1d55b33df94908f0974b8e9fa08ed0be02a4cca21a` |
| 34 | `lemma` | [y_spec](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/y-spec.md) | 472 | `result-track:5e182bc50a0b455661d81c732097ce667a93ef5877a97dbdba5f92b419ed1edf` |
| 35 | `def` | [z](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/z.md) | 476 | `declaration-track:0b0ecce5110a1fa9e0186beb8ce27d36d7da15879e411a470a5ffd4a7296cddf` |
| 36 | `lemma` | [z_spec](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/z-spec.md) | 477 | `result-track:0e718565dc25b37077d37117be7e57976f331b7c3b8176cf50fbb66e6adbacf2` |
| 37 | `lemma` | [lambda_not_dvd_y](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-not-dvd-y-source-edition-2.md) | 482 | `result-track:614c91ed9b8a917555ea227c185c4aa108ea6abaf926db33723b7ca48ece7636` |
| 38 | `lemma` | [lambda_not_dvd_z](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-not-dvd-z.md) | 487 | `result-track:4c2b7852ac4c8c96d9ddd837f2041fc14bb0bb2f912e475d75c071ffe2c212bb` |
| 39 | `lemma` | [lambda_pow_dvd_a_add_b](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-pow-dvd-a-add-b.md) | 493 | `result-track:4667923d2a3fcf3892fcb9e5c7d0e8610cf10262df8c364ccbd3936744764adb` |
| 40 | `def` | [x](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/x.md) | 507 | `declaration-track:2b7308e1f8174562f682990a82b7691d52959aefff71563d511d958b1222f314` |
| 41 | `lemma` | [x_spec](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/x-spec.md) | 508 | `result-track:0d269202073083dbf0fac9fef727843f6dbf25f307ac4aeb2cb7add0040e5ab6` |
| 42 | `def` | [w](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/w.md) | 512 | `declaration-track:0912ef5143b12f79d40ea8eb782768b54d607d856170aa509a106e73647aff42` |
| 43 | `lemma` | [w_spec](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/w-spec.md) | 516 | `result-track:e4d4b23af0ef6f65d51e9887bd7e33cf35b63be43cd2091f860dd4790a0a5675` |
| 44 | `lemma` | [lambda_not_dvd_w](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-not-dvd-w.md) | 519 | `result-track:e7554176fa5aac89cb87e0ca70501f6a7981dea6348a533bc469e034b2e74659` |
| 45 | `lemma` | [lambda_not_dvd_x](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-not-dvd-x.md) | 525 | `result-track:431e80623b9f8b3d643217e743f0da654542f145e6574d5738bceb834c2f0ad5` |
| 46 | `lemma` | [isCoprime_helper](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/iscoprime-helper.md) | 540 | `result-track:1b2009baa206fc75a88479c2124e199ea8f894cb71cf6d736416203360a7ca56` |
| 47 | `lemma` | [isCoprime_x_y](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/iscoprime-x-y.md) | 547 | `result-track:cba04aed23784e36373e756fa17c14c99b78f33bf396a315fc1db94f5afd952a` |
| 48 | `lemma` | [isCoprime_x_z](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/iscoprime-x-z.md) | 552 | `result-track:ee5b0b94253264df0681d158dd8b867451ab08362f7699b463cfbf526d63f4fa` |
| 49 | `lemma` | [isCoprime_y_z](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/iscoprime-y-z.md) | 557 | `result-track:0fec1cb2f261082857930de04fdf9825bab08e9cf0fab3fadca7d47272747283` |
| 50 | `lemma` | [x_mul_y_mul_z_eq_u_mul_w_cube](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/x-mul-y-mul-z-eq-u-mul-w-cube.md) | 562 | `result-track:099bfa2a20144a024c0f0f89e9dbbca4db1b4e040da0778b48f81bc4889f5657` |
| 51 | `lemma` | [exists_cube_associated](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/exists-cube-associated.md) | 579 | `result-track:7e4561767f362ee53e610f726cb8cfea2de50f0a7a0fc1fc49887c339f9a7564` |
| 52 | `def` | [X](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/x-source-edition-2.md) | 592 | `declaration-track:364f852b8a71aabc399e156cea27ebc31c51588d05cb6c4acabcacec65a0cd8d` |
| 53 | `def` | [u₁](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/u-source-edition-3.md) | 593 | `declaration-track:97f4eedd1ca5babc150dfb5865c5383ff5910818f5bcade630542d98993e4b42` |
| 54 | `lemma` | [X_u₁_spec](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/x-u-spec.md) | 594 | `result-track:87968f4fb9b34c92044fb444874fc19a6450af1afded1499ec685e0707179336` |
| 55 | `def` | [Y](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/y-source-edition-2.md) | 599 | `declaration-track:905e8a65b0d39a5864b544af7d1a6b94dc12b02822b2062926a4ae830db6b6d4` |
| 56 | `def` | [u₂](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/u-source-edition-2.md) | 600 | `declaration-track:2b79a1bbabd67954f97a6b7057915028cb9bd4653b0991945a1465e4f4b0b042` |
| 57 | `lemma` | [Y_u₂_spec](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/y-u-spec.md) | 601 | `result-track:47ff2f5344f9fe5a7acb6c1c806cbfe65f9af19828cc16e02a8d47f85d334f0b` |
| 58 | `def` | [Z](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/z-source-edition-2.md) | 606 | `declaration-track:b694e263d15321460088fd90ea5f8ba6de24f0e39283b0a482c5546a10fdd98e` |
| 59 | `def` | [u₃](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/u-source-edition-5.md) | 607 | `declaration-track:ccb0095e8e1fdd40106da4c98c367720435a48b0cd1d85fbd099fed2dfe7ffa2` |
| 60 | `lemma` | [Z_u₃_spec](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/z-u-spec.md) | 608 | `result-track:b27f262a595675e70af12899c19878e811aa832f023d1c66529fcbda2979638f` |
| 61 | `lemma` | [X_ne_zero](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/x-ne-zero.md) | 611 | `result-track:843f7e15a2a539b185766630f1fa98447b8769a491ff165b4b0bab0577c222e5` |
| 62 | `lemma` | [lambda_not_dvd_X](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-not-dvd-x-source-edition-2.md) | 614 | `result-track:edfb78fd7974009296f8dd01c27729e12334f9584eca9daaf29fe92e35db8c8b` |
| 63 | `lemma` | [lambda_not_dvd_Y](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-not-dvd-y.md) | 617 | `result-track:02d0a148aa91cf4ac7e5b186e6b611f9fa614d03bc068d8564b5536622b9e6c9` |
| 64 | `lemma` | [lambda_not_dvd_Z](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-not-dvd-z-source-edition-2.md) | 620 | `result-track:622f5203cf323e4879f0d1b5cd9e24a3997cb09d8bf9ceae427546db47223fa1` |
| 65 | `lemma` | [isCoprime_Y_Z](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/iscoprime-y-z-source-edition-2.md) | 623 | `result-track:610a79ba750baa4e021db95d622d2a3ec175775fe0e27f946b469786a366e309` |
| 66 | `lemma` | [formula1](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/formula1.md) | 629 | `result-track:b003f5a6f9bfb1e6b652f14d1206a9a671d45b09ea81f3d69849e10adcb98eb5` |
| 67 | `def` | [u₄](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/u-source-edition-4.md) | 636 | `declaration-track:b83ba7a37dd49278fdb6431ca0046304662d02b604e807aa3bd2c0b9bd96629e` |
| 68 | `lemma` | [u₄_def](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/u-def.md) | 637 | `result-track:54c8f0268e7b4a910418ca681738c24557f8463bb1528b3bf21622e2eb5b0642` |
| 69 | `def` | [u₅](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/u.md) | 639 | `declaration-track:0376669abdf5b7b8358a1e323f5fdeafda12c74fbbb8c18c2f515432fb73cc3f` |
| 70 | `lemma` | [u₅_def](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/u-def-source-edition-2.md) | 640 | `result-track:c2bfd9b2a67ead4e141609503efeedbc9205d0fa530448d8a8eed9328877b493` |
| 71 | `example` | [(anonymous)](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/example.md) | 642 | `declaration-track:32e0f1a4aee9a2e69a7fdf39c2847c26e7a290596cae443019dfaae2d8b49d83` |
| 72 | `lemma` | [formula2](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/formula2.md) | 645 | `result-track:271743def7bf23f25f3b41a511b9f146fc6b4bf6c633fb3dbcf94cac167c02dd` |
| 73 | `lemma` | [lambda_sq_div_u₅_mul](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/lambda-sq-div-u-mul.md) | 661 | `result-track:f53f57db56547465e425e8734fa3b68ff2e9936a0ff8226a87acd1e56fe597c1` |
| 74 | `lemma` | [u₄_eq_one_or_neg_one](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/u-eq-one-or-neg-one.md) | 668 | `result-track:ec6811660dda2313e974000fb1b8501a96ee249074158efda2574fc415083cb8` |
| 75 | `lemma` | [u₄_sq](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/u-sq.md) | 690 | `result-track:f393982f529dcebbc1b4970abead4801a20bea6069ffc7ac848f2c1ef6283d1e` |
| 76 | `lemma` | [formula3](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/formula3.md) | 695 | `result-track:38fdede4d6f58a6cf11e49c1f61b7b631a7ebb351fd503490e52c033e9d26ca6` |
| 77 | `def` | [Solution'_descent](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-descent.md) | 703 | `declaration-track:9f9ed398de85c8fd09400d9799a90928d8e7ab2388cd9aa2649e3aff90c47455` |
| 78 | `lemma` | [Solution'_descent_multiplicity](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-descent-multiplicity.md) | 719 | `result-track:4fcb1a4007342345eaa5dbb8f8f90fbae5ed068ff512453a517994a6432c4eba` |
| 79 | `lemma` | [Solution'_descent_multiplicity_lt](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/solution-descent-multiplicity-lt.md) | 729 | `result-track:aebc4197b3d8490906edfb35942bc36d0a9a45ea7e038654d91293119c6a81ff` |
| 80 | `theorem` | [exists_Solution_multiplicity_lt](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/exists-solution-multiplicity-lt.md) | 736 | `result-track:f28584707672a4eb179c3daac53bc8e45c8356b74e1665cc3c75e777e1653df6` |
| 81 | `theorem` | [fermatLastTheoremThree](../../../../NumberTheory/FLTThreeThreeNamespaced.lean/declarations/fermatlasttheoremthree.md) | 751 | `result-track:377143a76354bf36e66daed018917af054c745aac4406a87ecb2dd79423ff57a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84c6097cf85d4611dd4b3e46922e7dcdb1640288022c71f52543f7482d693872 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variantd81c8b74332ae2d220e11f396727bc0b02b0cf494a1e53427cc1e75f78193a1a.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Three/Variantd81c8b74332ae2d220e11f396727bc0b02b0cf494a1e53427cc1e75f78193a1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
