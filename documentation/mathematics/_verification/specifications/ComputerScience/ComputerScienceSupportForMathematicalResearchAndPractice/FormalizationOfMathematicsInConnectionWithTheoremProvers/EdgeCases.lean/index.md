# Verification target: Edge Cases

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7d8641349b62a7d624313c43a990daa54fa872b",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7d8641349b62a7d624313c43a990daa54fa872b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Discovery` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I_cross_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/i-cross-zero.md) | 31 | `declaration-track:253f3a064dd9710d363eac8d578e34139a12edc73e49dc1205661d087b4e3cba` |
| 2 | `theorem` | [inv_zero_safe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/inv-zero-safe.md) | 35 | `result-track:47244be0f782f2d332bec36dc412c3737676a1af9d071b8b361c20db2dcd02c2` |
| 3 | `def` | [I_negative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/i-negative.md) | 47 | `declaration-track:73f694bc5f705f0d99818f363a126eb4417498982568a0b82956887fe227f7ac` |
| 4 | `def` | [exprSqrt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprsqrt.md) | 50 | `declaration-track:b7363631f9c7e1c38cd586f3f12491e132c1db78019c66f499ae1702c73b1ae3` |
| 5 | `def` | [exprSqrt_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprsqrt-core.md) | 51 | `declaration-track:5b3d2d579bf34109d7d7af313907c09b07e32ef64684d9412adb1d844796f8f2` |
| 6 | `theorem` | [sqrt_neg_contains_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/sqrt-neg-contains-zero.md) | 55 | `result-track:6f8564584a6dd6230ac59a23e2b9b160ffc6c851cc1b2731aae0df61665732d4` |
| 7 | `def` | [I_mixed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/i-mixed.md) | 61 | `declaration-track:bda49bca794398aefbcabc28897b36298e6b210d7ddebeb46ac25ccf8c83fca9` |
| 8 | `theorem` | [sqrt_mixed_contains_two](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/sqrt-mixed-contains-two.md) | 63 | `result-track:4105d6546540b8ffb7c6b68929cbbbe72654aa1daa517e37b159dcfa227b56d6` |
| 9 | `def` | [exprX2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprx2.md) | 80 | `declaration-track:6875b0cf4928f5216d0bfbe344555d1bf715fb2c9f699dee0957b9af802f6b63` |
| 10 | `def` | [exprX2_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprx2-core.md) | 83 | `declaration-track:37321415cf57860d2f766dd04be6bae375d5768a6e93984b5a607835a4f05286` |
| 11 | `theorem` | [x_sq_bounded_above](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/x-sq-bounded-above.md) | 86 | `result-track:cd385679207d823fde00ac3515f954c6cb8bd773ef3b5550262657ce2ea34d8c` |
| 12 | `def` | [I_positive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/i-positive.md) | 90 | `declaration-track:d12baaad9e8f875b9091aa267f5a793451ab94cec13b983660aba79ee0aa9768` |
| 13 | `theorem` | [x_sq_nonneg_on_positive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/x-sq-nonneg-on-positive.md) | 92 | `result-track:75caa8934cfc8b5e9e605ed37888ba7b8397f2143e02814da7d3d88f57b2f5ea` |
| 14 | `def` | [exprX3](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprx3.md) | 96 | `declaration-track:667b4ad04ce24dd27d9b594289cf2956fdef5f13b14bbda3f5b6ede25db3684c` |
| 15 | `def` | [exprX3_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprx3-core.md) | 97 | `declaration-track:992a5f1b266433fbd7fbdf134a4ce26bfbf6d48e95d440c2e63476dec6d44535` |
| 16 | `theorem` | [x_cube_spans_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/x-cube-spans-zero.md) | 102 | `result-track:49935e0ad1fb66b7e74e71dfc2604bcd0e854aa9340f7c78fea6ec963454f766` |
| 17 | `def` | [exprSinDivX](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprsindivx.md) | 117 | `declaration-track:c89adca04d44ce6efd8686a21996e7282ecf659e9b6e899c76f9230af7e973e9` |
| 18 | `theorem` | [sin_div_x_wide_at_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/sin-div-x-wide-at-zero.md) | 119 | `result-track:b85e56953893030dbfc06e62c043114192cd5507a91ed5e65814b117e3ff7b02` |
| 19 | `def` | [exprSinc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprsinc.md) | 126 | `declaration-track:5295b38049f823f52fe983f14703a1917077975759f8ab50fcef374195379472` |
| 20 | `theorem` | [sinc_at_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/sinc-at-zero.md) | 129 | `result-track:adf09c10b0ca3fbd94111533d49c9a9e5988287bb483ff4a6ccca324fb08ee2b` |
| 21 | `theorem` | [sinc_bounded_check](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/sinc-bounded-check.md) | 133 | `result-track:e78ffaae9992e4dd9b0d834f4c3757032769182a26c9f04647b2637926752b7a` |
| 22 | `def` | [exprDeepPoly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprdeeppoly.md) | 145 | `declaration-track:b3e2fce5cfe7c517de92888c6deacbe27e645901a9463f1f8334a7b483e6929c` |
| 23 | `def` | [exprDeepPoly_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprdeeppoly-core.md) | 152 | `declaration-track:b9051150138bc12ca8736701e4b04c1235a7ab553f9f6b985e458084176fda1f` |
| 24 | `def` | [I_half_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/i-half-one.md) | 159 | `declaration-track:959d723292245adabbc840ada622db4dd1607caa0b2561bf39bbfee19e6263c0` |
| 25 | `theorem` | [deep_poly_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/deep-poly-bounded.md) | 162 | `result-track:e76284acc105818f15d7ffc9993be6fe6c6092fb568de452cfd266f2077a349f` |
| 26 | `theorem` | [deep_poly_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/deep-poly-nonneg.md) | 166 | `result-track:57336013595a37e4f65d52077c29f7d1ea21147352b18e251193ee8410731752` |
| 27 | `def` | [exprWiggle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprwiggle.md) | 175 | `declaration-track:883d6ffe6748f19e196084281904e70e4ae707072f1828f2c54c870b59f82425` |
| 28 | `def` | [exprWiggle_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprwiggle-core.md) | 178 | `declaration-track:6e6ac0115d4d2c7942efb7880a6dc69a41f684d65c32bb72d71dd1216d8df2f6` |
| 29 | `def` | [I_wiggle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/i-wiggle.md) | 183 | `declaration-track:254c1125934db1c4065b03a5682831491b9c09b3b725a74965e0be3cb17175fa` |
| 30 | `theorem` | [wiggle_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/wiggle-bounded.md) | 186 | `result-track:20de51bf48ee4939f90d6cc7550a46fdcafc69513c4dcd0e55c785dd32a29d52` |
| 31 | `theorem` | [wiggle_bounded_below](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/wiggle-bounded-below.md) | 190 | `result-track:0ba42c96cfff365d727d5c84b1851e58b8b80d3912deb35399695220d9e8d9d3` |
| 32 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/example.md) | 201 | `declaration-track:9b02c8ab055706d3bd78e2776c9d6d716181db88a4e3d7ec2d642d964394b4af` |
| 33 | `def` | [exprConst5](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprconst5.md) | 208 | `declaration-track:b2b1b7aba07f28a8780a6852c16a4ec4b536ecd5b5b2e9422696a4eb373d91c8` |
| 34 | `def` | [exprConst5_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/exprconst5-core.md) | 209 | `declaration-track:8f9dea96f0139be4be5bdcbcbee74d02fbc094ef39b5f121aafb8631b8638874` |
| 35 | `theorem` | [const_eval_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/const-eval-correct.md) | 213 | `result-track:765aab79e61258a5b9bcea17c777f5c230462874537f4a3e192d1fdca8759bfd` |
| 36 | `def` | [I_any](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/i-any.md) | 218 | `declaration-track:61da523636ffef873dbff2d3cedf09119d3b1408d68e0a0b2a4fce1b0218465f` |
| 37 | `theorem` | [const_interval_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/const-interval-correct.md) | 220 | `result-track:250d3619e5c18cd0d6ea9c3a79489487bd48a065843c5edc8329e35bf24f422e` |
| 38 | `def` | [I_unit_dyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/i-unit-dyadic.md) | 231 | `declaration-track:2be8e2204018693c809a5787594a7b5a47a632323f7878000f95d1b8bef14c0f` |
| 39 | `theorem` | [dyadic_x2_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/dyadic-x2-bounded.md) | 235 | `result-track:1be16cb0d0591138817f8b24811c8e17fa3f948ea1dbae666f637eb336a1e550` |
| 40 | `def` | [box_sym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/box-sym.md) | 243 | `declaration-track:1df39c52cdea812e8403bb83a6be56fce9f604d873a84e3ddea2c74e57523145` |
| 41 | `theorem` | [x2_max_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/x2-max-correct.md) | 247 | `result-track:8cd21e428c0b66e0dcf3442f9eb14d806adaea171320a427132a299b3e8daa7f` |
| 42 | `def` | [box_positive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/box-positive.md) | 253 | `declaration-track:e94c0714c039798c2ebac66827aea518808cd06ae3471c9329199b52877a1373` |
| 43 | `theorem` | [x2_min_on_positive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/x2-min-on-positive.md) | 255 | `result-track:ab4e35a3270339622feba4539f03aa8169e6cf848c9c51392d365e105829b509` |
| 44 | `theorem` | [x3_min_at_neg_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EdgeCases.lean/declarations/x3-min-at-neg-one.md) | 261 | `result-track:a7b82bae1262a116626cab1629e11501d853468792a69ada188c78bbe7363377` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c330647aecbd380882ec72364fbf55d0e9c38079ebe2580cea36b1153dcd6891 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EdgeCases/Variant3279f14ceca7c61a7170bdf0c7e42d4afa2e12fb53c3e8e2db60e40a3ba85bfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
