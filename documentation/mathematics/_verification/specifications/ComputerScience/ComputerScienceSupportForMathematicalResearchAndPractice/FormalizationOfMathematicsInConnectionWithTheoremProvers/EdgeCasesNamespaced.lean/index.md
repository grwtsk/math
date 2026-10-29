# Verification target: Edge Cases Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "407c3d2ee14c71c2900707b02b9df003498c2d66",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant5e443d7251de762c21562b14aac4e26b8a0454058703925927b60156a98ec6d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `407c3d2ee14c71c2900707b02b9df003498c2d66`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant5e443d7251de762c21562b14aac4e26b8a0454058703925927b60156a98ec6d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant5e443d7251de762c21562b14aac4e26b8a0454058703925927b60156a98ec6d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Discovery` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I_cross_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/i-cross-zero.md) | 39 | `declaration-track:5b184c71d5d3b7f3b8b0ce09c617bcc063b9ae5ce3b59f2294ba9e9abc43dab3` |
| 2 | `theorem` | [inv_zero_safe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/inv-zero-safe.md) | 43 | `result-track:e9180c09012894b9729794b7f7234fd74387ee360efa078248d1078cc1497a3b` |
| 3 | `def` | [I_negative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/i-negative.md) | 55 | `declaration-track:4eec7ed9d81a87809d60ddc096c6a6645559326edf56c6baf1e883e661fa856f` |
| 4 | `def` | [exprSqrt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprsqrt.md) | 58 | `declaration-track:575e172e8d614f237011b7f4ada8c31d657d3622d0317fd630e226e7377ae15b` |
| 5 | `def` | [exprSqrt_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprsqrt-core.md) | 59 | `declaration-track:643e6bc89a0ca7695d044f1b306e84f153c376778c3c312afa028991130c6455` |
| 6 | `theorem` | [sqrt_neg_contains_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/sqrt-neg-contains-zero.md) | 63 | `result-track:3f42f0d907e50a9edac5e95f6c17bbe5b10d69df74ab68904d2a2b81d51b542a` |
| 7 | `def` | [I_mixed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/i-mixed.md) | 69 | `declaration-track:56829125a7714ac95d87aa4ca934e835c6f929ca8161d421d3f87c6ec33a800c` |
| 8 | `theorem` | [sqrt_mixed_contains_two](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/sqrt-mixed-contains-two.md) | 71 | `result-track:8b1f5edeb6d8c3873bd25f2a9e0b9f0b4b000e36420828f309f88ead306c1083` |
| 9 | `def` | [exprX2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprx2.md) | 88 | `declaration-track:21e744da9327e66c3355a2cdbf21582c60d4a55647a538278e982abd42b165e1` |
| 10 | `def` | [exprX2_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprx2-core.md) | 91 | `declaration-track:855162188de6811db558adb2e665554f3a0d7aa84be4662816f2a2eb3286c9cc` |
| 11 | `theorem` | [x_sq_bounded_above](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/x-sq-bounded-above.md) | 94 | `result-track:4c638c489a74836472668a07630ad25d05a5905e5ec2241df27ced2d768689c8` |
| 12 | `def` | [I_positive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/i-positive.md) | 98 | `declaration-track:96ac1dd2de665f22b09360027b31912e835e97b74cc0ef61b1b27dd4d3991ea3` |
| 13 | `theorem` | [x_sq_nonneg_on_positive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/x-sq-nonneg-on-positive.md) | 100 | `result-track:8c6d6fdd7908caa9d989fb2fc462d609e315558e162448eafce3350c349daeda` |
| 14 | `def` | [exprX3](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprx3.md) | 104 | `declaration-track:c7a88bfd0e86cb21c422bb3ba7338148626d7e091a80665bdd7b426cf7127a3f` |
| 15 | `def` | [exprX3_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprx3-core.md) | 105 | `declaration-track:1037754b4cb99df891b29201df1049ee95612b31e424abea88034468e455b69b` |
| 16 | `theorem` | [x_cube_spans_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/x-cube-spans-zero.md) | 110 | `result-track:33b968fb718be8c3573d20da9fc0899d39227829b71491cb0fb3831ffac10efe` |
| 17 | `def` | [exprSinDivX](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprsindivx.md) | 125 | `declaration-track:5f6853ef790e2e97a13380077201539924ba7cdb799ddb4e6bb158b63584a901` |
| 18 | `theorem` | [sin_div_x_wide_at_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/sin-div-x-wide-at-zero.md) | 127 | `result-track:6a56598e59786fb8d7fc0b4888f1b1286dd00a772278dd39b7ee6895dae90987` |
| 19 | `def` | [exprSinc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprsinc.md) | 134 | `declaration-track:85ad705df31ce62b1c43e08e9b6ad7a9c2ba1ca4b57ae9345ff500110aee1e7d` |
| 20 | `theorem` | [sinc_at_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/sinc-at-zero.md) | 137 | `result-track:735a46dbce37ecaf6532373987e08fd5fee5f3efc1c9282406bce7683c7db54f` |
| 21 | `theorem` | [sinc_bounded_check](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/sinc-bounded-check.md) | 141 | `result-track:7b1f38d87dfbcd4b0b6f2d3cafd4e65844472818b7f89e4f898edb2d06c3b1fc` |
| 22 | `def` | [exprDeepPoly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprdeeppoly.md) | 153 | `declaration-track:d3607159ecc902445799baa287423bdd4ab8266bda77bc60c7725c794d390b5e` |
| 23 | `def` | [exprDeepPoly_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprdeeppoly-core.md) | 160 | `declaration-track:7dd64d2b3d66c54eefe806784680619ea450a6db22d3fde3916a2a368e7770ee` |
| 24 | `def` | [I_half_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/i-half-one.md) | 167 | `declaration-track:988740d8e3942b754338cf2314ff1a0ddf413351c60fa0591de650b52f12d232` |
| 25 | `theorem` | [deep_poly_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/deep-poly-bounded.md) | 170 | `result-track:09beeab5029c26ee98fc8cf6dcd8543109b46d8e350bfb7d73a08ffac4d42735` |
| 26 | `theorem` | [deep_poly_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/deep-poly-nonneg.md) | 174 | `result-track:a09bebb7a0e172b33ae60c6eab7e4e060b15e6082262780a0454aed96d72a2f5` |
| 27 | `def` | [exprWiggle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprwiggle.md) | 183 | `declaration-track:3fff1fb25ae3834456103d21076e57f3ed9c3b068034536de12c7db15976e009` |
| 28 | `def` | [exprWiggle_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprwiggle-core.md) | 186 | `declaration-track:18b4be42e3dee18d31f099b52ef73dd27e82949f1ec65b5b15057d4774a21d54` |
| 29 | `def` | [I_wiggle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/i-wiggle.md) | 191 | `declaration-track:8b09fd644760da51d9a3377a9ff25de4ec06117d5bc8ca21e4b657d08fd54139` |
| 30 | `theorem` | [wiggle_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/wiggle-bounded.md) | 194 | `result-track:29bc6a26b9477a5ad32d912cbdbe2a55639da306a147f4eb34e98f4e31261a04` |
| 31 | `theorem` | [wiggle_bounded_below](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/wiggle-bounded-below.md) | 198 | `result-track:21022f3c8690dc0e96e940645778cf23ca228fab0473a7c40717adf70efdfbd0` |
| 32 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/example.md) | 209 | `declaration-track:c1d4053f6b0c8119c0626755163fed4467e5a414919949b01d1881b65c691c05` |
| 33 | `def` | [exprConst5](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprconst5.md) | 216 | `declaration-track:9987e9a14123045fd3228072e346860517575cf4b41ec54e542ec98d8671fd30` |
| 34 | `def` | [exprConst5_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/exprconst5-core.md) | 217 | `declaration-track:854705d7bf46f4df892fe246dc509d71767e6622164588d65f725ab2ae9bd6b6` |
| 35 | `theorem` | [const_eval_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/const-eval-correct.md) | 221 | `result-track:840507caf0d4cc9aa86f87cb9589ca1b2b8a7ca04a81ab1f5bef2f0590d0326f` |
| 36 | `def` | [I_any](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/i-any.md) | 226 | `declaration-track:0f79de4a1aa062a596d3738c52ec7950367e989f384c39ddface9372b15daeb5` |
| 37 | `theorem` | [const_interval_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/const-interval-correct.md) | 228 | `result-track:794facf2a6c7b0e411f7ac1c0cf3f748d168a7390ad8ee6c04baaf072fa4326e` |
| 38 | `def` | [I_unit_dyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/i-unit-dyadic.md) | 239 | `declaration-track:382e2a6e5bcbe3feab09f84cae286e856fdc1c9d4c35589e535fe9465dedf297` |
| 39 | `theorem` | [dyadic_x2_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/dyadic-x2-bounded.md) | 243 | `result-track:6e3dd8f3c2dfbf55a7cf08d0fbc87e82a963e163e2c4bcbabaac2c1318e486ea` |
| 40 | `def` | [box_sym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/box-sym.md) | 251 | `declaration-track:8383f145e22cb1154c6f292a193f0ad7ebfa2b4a1637b82433e17f48fa824360` |
| 41 | `theorem` | [x2_max_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/x2-max-correct.md) | 255 | `result-track:1e240a68f952de521c4dca0ba2f5d60eb62c06e2a877b33afa67a1c06b42f41e` |
| 42 | `def` | [box_positive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/box-positive.md) | 261 | `declaration-track:ec20a4b2d43265631dc74c3e82faab9f368466506ff52b8a911ae34247088320` |
| 43 | `theorem` | [x2_min_on_positive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/x2-min-on-positive.md) | 263 | `result-track:a752b0c467a1e2182255029100205ebc3ce6338478d0373e03af32c4731f2078` |
| 44 | `theorem` | [x3_min_at_neg_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCasesNamespaced.lean/declarations/x3-min-at-neg-one.md) | 269 | `result-track:13b8a330d16e2b82db2eae4d4412c0a43d87db153c9ee7311e3bbc507d947290` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25e539ed8bfe79904672ba8e9c1156adf5dbd2cb5d9793108b5e176c6234515c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant5e443d7251de762c21562b14aac4e26b8a0454058703925927b60156a98ec6d9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant5e443d7251de762c21562b14aac4e26b8a0454058703925927b60156a98ec6d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
