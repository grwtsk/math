# Verification target: Scale Roots Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79afc27c3351833a16a37d00d3b67c633c9baf96",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79afc27c3351833a16a37d00d3b67c633c9baf96`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean.json)

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
| 1 | `def` | [scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots.md) | 29 | `declaration-track:869c99a8b9754e91f48161e56ef297a9b34c30768aae93c29631a7c7ad5a1d08` |
| 2 | `theorem` | [coeff_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/coeff-scaleroots.md) | 33 | `result-track:cea4f77b26ca3c534cd6ac10856ad9bda89e5d1653f9a021bffd9f73eec8707d` |
| 3 | `theorem` | [coeff_scaleRoots_natDegree](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/coeff-scaleroots-natdegree.md) | 37 | `result-track:d116b5e3fadf8405c80a9da79d646e8dfb24f1c2c5ba37cb77ac15b7fa75b1f7` |
| 4 | `theorem` | [zero_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/zero-scaleroots.md) | 42 | `result-track:7e3d8dbb8f6c5629362cc4e086453b2b590e373b96c50031f048c7e0e684d47c` |
| 5 | `theorem` | [scaleRoots_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-ne-zero.md) | 46 | `result-track:5641ab426c83c5152790eda680dafc0d6e39d57041919375380a5626cbf39f04` |
| 6 | `theorem` | [support_scaleRoots_le](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/support-scaleroots-le.md) | 53 | `result-track:d94fe0883a6e342b050123f37c91f447d25efe025e45149f010dc8cbb1011365` |
| 7 | `theorem` | [support_scaleRoots_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/support-scaleroots-eq.md) | 57 | `result-track:e31fbcc8032f7e33a9aa47ff2f956334848d1927fc74d8d7e74fb686a67da7fe` |
| 8 | `theorem` | [degree_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/degree-scaleroots.md) | 67 | `result-track:3fdacf89d3d4bf49dc3eb820eac28af990ab36c4ad099c61bacb8014189cd1f3` |
| 9 | `theorem` | [natDegree_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/natdegree-scaleroots.md) | 78 | `result-track:57c1752d51fa216224c620f9c685297365e7f717e22a97e713995ad19f5219a0` |
| 10 | `lemma` | [leadingCoeff_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/leadingcoeff-scaleroots.md) | 82 | `result-track:32e4cb2d940e0288e735a53e995a3b652943309814adb1e028274018866d392d` |
| 11 | `theorem` | [monic_scaleRoots_iff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/monic-scaleroots-iff.md) | 86 | `result-track:a0353f27cc4d816482c2580c5a629e35bf1f61dd343d657895c43864f12e0e38` |
| 12 | `theorem` | [map_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/map-scaleroots.md) | 89 | `result-track:3c52acefcba47effa256ee12b528c3ea77796ef7b2eb4d1d45e32ee7fdcff5a2` |
| 13 | `lemma` | [scaleRoots_C](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-c.md) | 95 | `result-track:33c796d25244f8d7bccb081102a971cb285ef7775392dffcdb49c7b8d93fbc7b` |
| 14 | `lemma` | [scaleRoots_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-one.md) | 99 | `result-track:af2370f342f31a88e80d171c0fc0d5330a34bacc9a7f1159380b6548177f3da3` |
| 15 | `lemma` | [scaleRoots_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-zero.md) | 103 | `result-track:a6ab9f4c35cf86e062099fa01a3c81a38470d638c860c8044e191d796287c996` |
| 16 | `lemma` | [one_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/one-scaleroots.md) | 115 | `result-track:8a502456819e5ba8621403a5d6d7fc884c32a0615a08df5bd8e6808c988d5402` |
| 17 | `lemma` | [X_add_C_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/x-add-c-scaleroots.md) | 119 | `result-track:18cef367326bf0296b1afa79d50dff4121a705eda2736503b52073830652ddee` |
| 18 | `theorem` | [scaleRoots_eval₂_mul_of_commute](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-eval-mul-of-commute.md) | 129 | `result-track:57f2fdea339c725a8d8f57e05775b5d98f414722fcd8f09799025707ca0a8d6f` |
| 19 | `theorem` | [scaleRoots_eval₂_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-eval-mul-source-edition-2.md) | 149 | `result-track:61ce606dee5daf597790692576d053db6ced0e4ed8470d530d8da93f9818157c` |
| 20 | `theorem` | [scaleRoots_eval₂_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-eval-eq-zero.md) | 153 | `result-track:00ec3e653286b11eb2c24f2d1a2f3af4e7186dee706ccf6c4b286d137915be18` |
| 21 | `lemma` | [scaleRoots_eval_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-eval-mul.md) | 156 | `result-track:17aeedb81268fe4ee433927530ce93f6d92348192111d291277ca6b7f02ce0f7` |
| 22 | `lemma` | [scaleRoots_aeval_smul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-aeval-smul.md) | 160 | `result-track:da143557cd5e04de359eaec666175de411c34c7187d3e0ee5065da9054355459` |
| 23 | `theorem` | [scaleRoots_aeval_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-aeval-eq-zero.md) | 165 | `result-track:e264e554a2722953cc9f7e8d9c55db6baa695b8f41bd20e77c80541a4ac8e2a4` |
| 24 | `theorem` | [scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-eval-eq-zero-of-eval-div-eq-zero.md) | 171 | `result-track:b587850f4dd11bc66c29400ff78128576a5eefd5e47125c66218c759b5f37f89` |
| 25 | `theorem` | [scaleRoots_aeval_eq_zero_of_aeval_div_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-aeval-eq-zero-of-aeval-div-eq-zero.md) | 180 | `result-track:665b9e3a994254a3d22c1e59a04b37840d1131ab619fdcd16bdbc39a2acb184d` |
| 26 | `lemma` | [scaleRoots_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-mul.md) | 187 | `result-track:95f746fa8948a0d3fcbe6d8fa13cec8fb652d77ff350adfde21586831c7283a6` |
| 27 | `lemma` | [mul_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/mul-scaleroots-source-edition-2.md) | 193 | `result-track:859e5d3fd91078bca818e53b7c41556a6b8ac9905a910354eb7d2828f7750527` |
| 28 | `lemma` | [mul_scaleRoots'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/mul-scaleroots.md) | 217 | `result-track:55b7e40a16abbc56ef1575c8667b371592cb13c772f6da3ecf0af6a86e67c0ac` |
| 29 | `lemma` | [mul_scaleRoots_of_noZeroDivisors](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/mul-scaleroots-of-nozerodivisors.md) | 221 | `result-track:d5f7c9eeb93b88fc0d39be5cc86dc425cbbe3bbc7111540ea19a9f423f6fdd77` |
| 30 | `lemma` | [pow_scaleRoots'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/pow-scaleroots.md) | 228 | `result-track:2b3f30c462cf94b06a9fa3be72d3ed46713ec46990328496b8fe1d2e8ef1c1a1` |
| 31 | `lemma` | [pow_scaleRoots_of_isReduced](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/pow-scaleroots-of-isreduced.md) | 238 | `result-track:5d928efe6d210464e0d8ec4191af34162987c8b624a8a840a6433f489081736d` |
| 32 | `lemma` | [add_scaleRoots_of_natDegree_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/add-scaleroots-of-natdegree-eq.md) | 246 | `result-track:a35b8d6194de7a9550cde2d5c412e4a4ea9a799b87972e4bd8a756922b9fc5c5` |
| 33 | `lemma` | [scaleRoots_dvd'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-dvd-source-edition-2.md) | 260 | `result-track:7cdb9d65572211fdcfc7f355ca04c37081635cc0bdbe35ae38dde35d4b5b6eaa` |
| 34 | `lemma` | [scaleRoots_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-dvd.md) | 267 | `result-track:0a3b5e200e3a6f2223d3746869c03fb9f93b05b139d21807f1f563bdde30fdd0` |
| 35 | `lemma` | [scaleRoots_dvd_iff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/scaleroots-dvd-iff.md) | 274 | `result-track:a457771a8507af2ecf7f768f6e865e23a7f1e81fb04c54aa23b4325560a03e24` |
| 36 | `lemma` | [isCoprime_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/iscoprime-scaleroots.md) | 280 | `result-track:6cbe88badaa57044e88fd6c1c110e9831496ebf00d41eb24fc38be56af29c2f7` |
| 37 | `lemma` | [Splits.scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/splits-scaleroots.md) | 295 | `result-track:65f660323c4137a7ed9ccda678c33f7b55d52248869a56cba7153058e0f20134` |
| 38 | `lemma` | [X_sub_C_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/x-sub-c-scaleroots.md) | 320 | `result-track:4339d685e0cfc0a0b56557166810f5dfc1fb8967e35e074451d8c096737c6b49` |
| 39 | `lemma` | [rootMultiplicity_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/rootmultiplicity-scaleroots.md) | 331 | `result-track:432f9e9fa3801622e2a83ec0d9dba94ef3653b43d6c4b3d2bd89809ca7896830` |
| 40 | `lemma` | [roots_scaleRoots](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ScaleRootsPublic.lean/declarations/roots-scaleroots.md) | 350 | `result-track:6263b2ce00b9b8e1156422b148bb73eca0fef7a9584eeec9921b10e6e0394c7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a69912792787982ee4a8721f30bb92dd15150d70b14b6b480ba110d72d1e489 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
