# Verification target: Algebra Mv Polynomial Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c927bb5bf68d837d34e0798956fb6c5bfba530fc",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Equiv/Varianta1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c927bb5bf68d837d34e0798956fb6c5bfba530fc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Equiv/Varianta1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Equiv/Varianta1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Degrees` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Rename` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pUnitAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/punitalgequiv.md) | 63 | `declaration-track:550733839ba8a40969e7ac57cd51e4e33812f44102580f67bc083069edde92f9` |
| 2 | `theorem` | [pUnitAlgEquiv_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/punitalgequiv-monomial.md) | 86 | `result-track:24fe71f2de5984ede3f107cab3ae0ff950b9d216828ef31650158f760e3151a0` |
| 3 | `theorem` | [pUnitAlgEquiv_symm_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/punitalgequiv-symm-monomial.md) | 91 | `result-track:3acd173a00a59829b1b346fc640a3de1f148aa7ad152516c3b24ab50943dceb4` |
| 4 | `def` | [mapEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mapequiv.md) | 102 | `declaration-track:dd618d7e56434ffe27b17ccff53bdb65000dab79912dedccf89527434bf550a1` |
| 5 | `theorem` | [mapEquiv_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mapequiv-refl.md) | 111 | `result-track:715d2acca7e6719937172d1ddd62ca4d1d63bf5845c8dc85cafbfb787bcb9c85` |
| 6 | `theorem` | [mapEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mapequiv-symm.md) | 115 | `result-track:2c04cb31492d6502c5ee792081a7b8d821a79d455737583dcfcee9b15622b3b8` |
| 7 | `theorem` | [mapEquiv_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mapequiv-trans.md) | 120 | `result-track:e3c3ccf39b9407c3a1359ca24dfb3fc4e2b3e0fe6f39182bb8c143f733f0a925` |
| 8 | `def` | [mapAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mapalgequiv.md) | 131 | `declaration-track:275c78d002cc8bbada23be40bcb92475e2e693d19d92a7ce0cd563ee3b50a361` |
| 9 | `theorem` | [mapAlgEquiv_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mapalgequiv-refl.md) | 135 | `result-track:96b4516fd001cd78af01802fe34f8768db78f23fd3cbf2cc12888ac766150e24` |
| 10 | `theorem` | [mapAlgEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mapalgequiv-symm.md) | 139 | `result-track:6e2a4f27b8edaf66a5e2e41dc8c56575f8022571628ebe73da747c0b9135c4a3` |
| 11 | `theorem` | [mapAlgEquiv_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mapalgequiv-trans.md) | 143 | `result-track:862a29b0c8469ebc628e14d350bbde7b420e2807ee6edea89832ab8c094d4916` |
| 12 | `theorem` | [eval₂_pUnitAlgEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/eval-punitalgequiv-symm.md) | 155 | `result-track:26c15434397dfc3b583403c844aad60c991c637ca62c42bc25aac086c34c7dbb` |
| 13 | `theorem` | [eval₂_const_pUnitAlgEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/eval-const-punitalgequiv-symm.md) | 163 | `result-track:1d213c12a02156cfff3e1b31a9d2d0984aeff7b684f8ffdb31c15d11037201e7` |
| 14 | `theorem` | [eval₂_pUnitAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/eval-punitalgequiv.md) | 168 | `result-track:c8bfc2d7d49db2f5ddfbbcbd4057eb1e8d13cf7929436c657660496ca1957a22` |
| 15 | `theorem` | [eval₂_const_pUnitAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/eval-const-punitalgequiv.md) | 175 | `result-track:3f1efbda5061832ced602c2da53ec1a6e3249ac145197b3e8440892587f25bd6` |
| 16 | `def` | [sumToIter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/sumtoiter.md) | 191 | `declaration-track:e10fb718bfc6bf14c6f2edbcb4aec72387433deb52909ed78d3fc36899c77cf1` |
| 17 | `theorem` | [sumToIter_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/sumtoiter-c.md) | 195 | `result-track:7b67a0523534f19a950aa1f19bd4290576baef93a54a4adede8d2b712133497d` |
| 18 | `theorem` | [sumToIter_Xl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/sumtoiter-xl.md) | 199 | `result-track:b5ee86e510a3df83f52a0f35b26637351edcf7fe75da4ea48fc586e7c55ea6b2` |
| 19 | `theorem` | [sumToIter_Xr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/sumtoiter-xr.md) | 203 | `result-track:a8b0e4c1dad71997043fdf8db537dc00f59075b77bd6ad6203604952b4fd33c4` |
| 20 | `def` | [iterToSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/itertosum.md) | 212 | `declaration-track:4488165f0c6ac5f1f1b3ef0773a44d15def88c123a1a2365ffca2369da356d96` |
| 21 | `theorem` | [iterToSum_C_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/itertosum-c-c.md) | 216 | `result-track:90262744d62ac56aa30ab768d800c9e679ed78b89eeffec8e5db5a95f8779960` |
| 22 | `theorem` | [iterToSum_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/itertosum-x.md) | 220 | `result-track:91396973bef4e65a2a8918f80924d201ea10d39804426bc1e1f85fad3b4d6dde` |
| 23 | `theorem` | [iterToSum_C_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/itertosum-c-x.md) | 224 | `result-track:ca2c9d3cd56dc253c97e84bdda23cf8169f843acf74ee255d1fc96d0fdb9ef99` |
| 24 | `def` | [isEmptyAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/isemptyalgequiv.md) | 234 | `declaration-track:fb525253a2fe31a0f1343291000f73e863ab9a82a89f698bdcd1cf584d27aa9b` |
| 25 | `lemma` | [aeval_injective_iff_of_isEmpty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/aeval-injective-iff-of-isempty.md) | 239 | `result-track:cdef84875b341063208239ab8545654878d6c937a9450d69067107a039803c0f` |
| 26 | `def` | [isEmptyRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/isemptyringequiv.md) | 252 | `declaration-track:8463de4558df77426c5c93a32d8db99b63c5b85a074a701dda93099f7f2722e8` |
| 27 | `lemma` | [isEmptyRingEquiv_symm_toRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/isemptyringequiv-symm-toringhom.md) | 254 | `result-track:a2e1784ec2fb492874b8b579cad5484a430786dde03645287b79acaa994db59a` |
| 28 | `lemma` | [isEmptyRingEquiv_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/isemptyringequiv-symm-apply.md) | 255 | `result-track:cdc58c9bae7db73203db425585963391bd1e9280d331f594b5d963839f94627c` |
| 29 | `lemma` | [isEmptyRingEquiv_eq_coeff_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/isemptyringequiv-eq-coeff-zero.md) | 257 | `result-track:73f2d51a5dd1f9f497112b94c65a2423b9e7bd2a35d9d933773b1458422ace79` |
| 30 | `def` | [mvPolynomialEquivMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mvpolynomialequivmvpolynomial.md) | 265 | `declaration-track:72211f36cfc4cc03e5011ce1ed6c5e4a2ced87092906e096ddff8eb521c0e01f` |
| 31 | `def` | [sumRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/sumringequiv.md) | 280 | `declaration-track:e66159d8a1a55cb29f99fcfecb22b2842a2ca1ed6f2cf42f97efe5bab2533a7c` |
| 32 | `def` | [sumAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/sumalgequiv.md) | 294 | `declaration-track:4258daf579455c3ec269fc83b9db8d70b3726bb7fe9b95cf69dfd1fae03144e4` |
| 33 | `lemma` | [sumAlgEquiv_comp_rename_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/sumalgequiv-comp-rename-inr.md) | 303 | `result-track:99111899bd8388d00299995e23aa45eae03cb053491cf27d88503bc7fe5b9f5a` |
| 34 | `lemma` | [sumAlgEquiv_comp_rename_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/sumalgequiv-comp-rename-inl.md) | 309 | `result-track:baf6d486466056651f6fca0f5688fc5843a0a6581ae2048bb9156546b6deb5c9` |
| 35 | `def` | [commAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/commalgequiv.md) | 323 | `declaration-track:325a51d8a5409b2cf73733977e59e1f9e069af51385c1ce5a8873511807b7efc` |
| 36 | `lemma` | [commAlgEquiv_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/commalgequiv-c.md) | 326 | `result-track:40d04e5f6d4660c70e9fdaae146f2a4f278f308f72c852e5d56600126d8f4509` |
| 37 | `lemma` | [commAlgEquiv_C_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/commalgequiv-c-x.md) | 333 | `result-track:31d57b6ff0f8560326cc0416bd2e3b8b7f896dd26637ea1128f8e7789a0e4da4` |
| 38 | `lemma` | [commAlgEquiv_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/commalgequiv-x.md) | 335 | `result-track:956f071598e31b09641720c77b30c37df22df11f40d16d35342276ad15c3c910` |
| 39 | `def` | [optionEquivLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivleft.md) | 348 | `declaration-track:f32f700d34c99d941a63b35d449655d4cf36553fed74828eb738695bb2725f9c` |
| 40 | `lemma` | [optionEquivLeft_X_some](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivleft-x-some.md) | 353 | `result-track:9d05e49e880163bec610df8b39d0a7c40d6c484f404a5f9a058e038185e778a5` |
| 41 | `lemma` | [optionEquivLeft_X_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivleft-x-none.md) | 356 | `result-track:520f47967db246e127fbf6409e727989c685b04332d72b58afd9d07f917c7151` |
| 42 | `lemma` | [optionEquivLeft_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivleft-c.md) | 359 | `result-track:5547c3a51341af9cb657a471e5a7bc3ea0180f9813a179979a2927e4a5659665` |
| 43 | `theorem` | [optionEquivLeft_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivleft-monomial.md) | 362 | `result-track:123a1b48d5e346d39408e785c6a63a9fbb9e0bda0a6d187c55c1919fde2d0fad` |
| 44 | `theorem` | [optionEquivLeft_coeff_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivleft-coeff-coeff.md) | 375 | `result-track:549daeeb7ee2bbe9494b076278b4603689a92b2a7db9df0d77955b7f54db104e` |
| 45 | `theorem` | [optionEquivLeft_elim_eval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivleft-elim-eval.md) | 394 | `result-track:618e7a8929a2ce7e47415efa7586f8a05fb832d591adb690ddcbd04f32fb76e9` |
| 46 | `lemma` | [natDegree_optionEquivLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/natdegree-optionequivleft.md) | 415 | `result-track:d2f4cc89728b6c20a3f0863a92751bd5990c0bf618600ea2522ad62e711e65c3` |
| 47 | `lemma` | [totalDegree_coeff_optionEquivLeft_add_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/totaldegree-coeff-optionequivleft-add-le.md) | 433 | `result-track:9af9be9987845ba68b3bfdc85c43b2a234830d3af334e1c244a24dca0a835c6a` |
| 48 | `lemma` | [totalDegree_coeff_optionEquivLeft_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/totaldegree-coeff-optionequivleft-le.md) | 445 | `result-track:41f2814e1f1931edf0417d2b03e9996e7d0d81ae8703c1bd2a1c1d5088da4a11` |
| 49 | `def` | [optionEquivRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivright.md) | 463 | `declaration-track:00cd1c86c040c06dfcdba4cf24ccb0bb813103035fe27d2d08768963ca6f6936` |
| 50 | `lemma` | [optionEquivRight_X_some](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivright-x-some.md) | 476 | `result-track:8d5aaceeeebe276e32c76241aaae591655d26d65e473b60dfe1a95e35ff08e77` |
| 51 | `lemma` | [optionEquivRight_X_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivright-x-none.md) | 479 | `result-track:9d5fcd4c17bff1dc967668eec68f6c0359492ec4e26d38bf8ea3622c4be2b2ac` |
| 52 | `lemma` | [optionEquivRight_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/optionequivright-c.md) | 482 | `result-track:2cb2cd523cb7e8bef7d22bb334dbf3457ba24d20d6856316043a4b09b1b0613a` |
| 53 | `def` | [finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/finsuccequiv.md) | 490 | `declaration-track:08dd50db3499d2df6e3f496e6403c8b4069ccae7a30b841150ff68c046df6972` |
| 54 | `theorem` | [finSuccEquiv_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/finsuccequiv-eq.md) | 493 | `result-track:08d645e7f6708c8f01dd8eb959ebc795efd9d3193671ee4b99e06e9cde500c9f` |
| 55 | `theorem` | [finSuccEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/finsuccequiv-apply.md) | 503 | `result-track:5af38f2afcb9f546955861a324249a97d5c0cb841511eadb5e71ea2b942f00b4` |
| 56 | `theorem` | [finSuccEquiv_comp_C_eq_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/finsuccequiv-comp-c-eq-c.md) | 509 | `result-track:f785ac7d223f1282e3104825fb822e99b05faebac8846bacc91d77b4d43310db` |
| 57 | `theorem` | [finSuccEquiv_X_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/finsuccequiv-x-zero.md) | 522 | `result-track:cb31b62f4fc55acf62b9e86525ea4cb7f04ef0033e27f2b20b5e30b7b73c74c6` |
| 58 | `theorem` | [finSuccEquiv_X_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/finsuccequiv-x-succ.md) | 524 | `result-track:f0947c5de2fd5e17c0afd8a69abc9d87de82ad3683b37e7c196f22a15d89cea0` |
| 59 | `theorem` | [finSuccEquiv_coeff_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/finsuccequiv-coeff-coeff.md) | 529 | `result-track:86fa29496ba655e39ef78206bae230e2794fd264dd9b462508d8ecf9fe7317f8` |
| 60 | `theorem` | [eval_eq_eval_mv_eval'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/eval-eq-eval-mv-eval.md) | 552 | `result-track:08258bdc2f85c55748a448fff3a0ed0a153ac69cbe8b980c2b0324fd0b83531e` |
| 61 | `theorem` | [coeff_eval_eq_eval_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/coeff-eval-eq-eval-coeff.md) | 575 | `result-track:b4686c94b27fcc058e6ba69db5fe175d178fd8a1fe57d03ebbc27be05dd611c3` |
| 62 | `theorem` | [support_coeff_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/support-coeff-finsuccequiv.md) | 579 | `result-track:5e0a6d2b078db24fb7446e6e3d3d5ca2478898e6043257e201da2fe996ac6b35` |
| 63 | `lemma` | [totalDegree_coeff_finSuccEquiv_add_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/totaldegree-coeff-finsuccequiv-add-le.md) | 591 | `result-track:c97502c42d1264b85122c2c9f19460e6281c539275c98be4bee0140ddd1624ee` |
| 64 | `theorem` | [support_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/support-finsuccequiv.md) | 607 | `result-track:d26f50eab5ed17a6bb68080cbe48a364a2db471cc4387722526c681c5fb6a4bc` |
| 65 | `theorem` | [mem_support_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mem-support-finsuccequiv.md) | 622 | `result-track:ef4d0b22e7b96d69133434683af01f0cee6fbddb0fdfd3da1769552ad90ac539` |
| 66 | `theorem` | [image_support_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/image-support-finsuccequiv.md) | 626 | `result-track:fe6bde31e6d7f28d71636514e48415b8bf34cf0b8598fa14e4c743b3a4a4613d` |
| 67 | `lemma` | [mem_image_support_coeff_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mem-image-support-coeff-finsuccequiv.md) | 645 | `result-track:0f08bf5911f71de779a234eb6bba3df34742b70d79e43ba112b5dacbe9a1514f` |
| 68 | `lemma` | [mem_support_coeff_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mem-support-coeff-finsuccequiv.md) | 650 | `result-track:7cdf680a89089abb5d1e667f9874eec0c09841a0a9d4bbb6616ec81a287b98db` |
| 69 | `theorem` | [support_finSuccEquiv_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/support-finsuccequiv-nonempty.md) | 657 | `result-track:d47932f155fea962d136769329fc6a98147ad06bae0fb49e08397d0d8bbffb8c` |
| 70 | `theorem` | [degree_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/degree-finsuccequiv.md) | 661 | `result-track:38bb4ab7ae23d4963b306617199bef4bdcdc0367cc3377670f49f4b0f5000e8e` |
| 71 | `theorem` | [natDegree_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/natdegree-finsuccequiv.md) | 672 | `result-track:fd6483486e61eb0af4d67ce834c3e1f1d8f8f1f65eb449b740a77f19fef53037` |
| 72 | `theorem` | [degreeOf_coeff_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/degreeof-coeff-finsuccequiv.md) | 678 | `result-track:df3c1fe631e544b69388a65de20382bd99a9c051a0a350adeb67f0d0c89ef5af` |
| 73 | `lemma` | [finSuccEquiv_rename_finSuccEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/finsuccequiv-rename-finsuccequiv.md) | 697 | `result-track:3a5026c2d7c08bdb0c66763d061ca1d265c17534ae63f3ba7f2785bab7e32da1` |
| 74 | `theorem` | [rename_polynomial_aeval_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/rename-polynomial-aeval-x.md) | 711 | `result-track:61314ce63e59b9c10c0a2eb67f9d0e874ac8248cbee305587a587a6bf2868f83` |
| 75 | `def` | [Polynomial.toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/polynomial-tomvpolynomial.md) | 724 | `declaration-track:c43e413a7abe9cd893f8485606672133f85d0f3f9d4cba4ab235002585fff955` |
| 76 | `lemma` | [Polynomial.toMvPolynomial_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/polynomial-tomvpolynomial-c.md) | 728 | `result-track:7455da4e6168428f2eed25900932f9a0b910d8177ced29f4931aa6bd222b322c` |
| 77 | `lemma` | [Polynomial.toMvPolynomial_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/polynomial-tomvpolynomial-x.md) | 732 | `result-track:5e86f1b7679019be7341a394186c1dbd3229a2fa61330c08c1e0b420ca224379` |
| 78 | `lemma` | [Polynomial.toMvPolynomial_eq_rename_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/polynomial-tomvpolynomial-eq-rename-comp.md) | 735 | `result-track:eb3fe8e26bc585d3127d03ee75352d1eba0bb16a19e5c0b7f998b83ea6d275d7` |
| 79 | `lemma` | [Polynomial.toMvPolynomial_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/polynomial-tomvpolynomial-injective.md) | 741 | `result-track:89260c9cd24d4b73a87d1a45f7ac30436b96fcf61a25598291e1fe3ddb1333b8` |
| 80 | `lemma` | [MvPolynomial.eval_comp_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mvpolynomial-eval-comp-tomvpolynomial.md) | 748 | `result-track:fbc2d5ce6a822b582cf25cbcbb3b76d131fe5a3b70bb0f1c2024e84b8cf786b6` |
| 81 | `lemma` | [MvPolynomial.eval_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mvpolynomial-eval-tomvpolynomial.md) | 753 | `result-track:acbdba23f3fbc2e85d98f93c8e9160179862b52d41c7786ff11a4efb9fc075af` |
| 82 | `lemma` | [MvPolynomial.aeval_comp_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mvpolynomial-aeval-comp-tomvpolynomial.md) | 758 | `result-track:ffcf62f7952f306f7944967f18900bbd688d1d06a4858773bf0bf01b88b4470d` |
| 83 | `lemma` | [MvPolynomial.aeval_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mvpolynomial-aeval-tomvpolynomial.md) | 764 | `result-track:dbe6c0b41631a321573fafc80b89ad8692a6204e3235fb367eaf095db67db0b4` |
| 84 | `lemma` | [MvPolynomial.rename_comp_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mvpolynomial-rename-comp-tomvpolynomial.md) | 769 | `result-track:3177fa0dee8371ae96998fe3e4cdd9c7ca4a783ea2de25de8a37b9a4957f4ea9` |
| 85 | `lemma` | [MvPolynomial.rename_toMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquiv.lean/declarations/mvpolynomial-rename-tomvpolynomial.md) | 775 | `result-track:9c3f52af3de399920610c1c664251c1a7e4868f0275fd0580423b90eded4a387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=859a79705848226487d3ae5c4e201f38e5134f9cd58d0886913053f75e5da6be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Equiv/Varianta1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Equiv/Varianta1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
