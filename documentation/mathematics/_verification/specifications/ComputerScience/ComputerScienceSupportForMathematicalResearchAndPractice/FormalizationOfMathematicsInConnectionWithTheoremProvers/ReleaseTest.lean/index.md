# Verification target: Release Test

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32795e34e3b81cee663c84e644086d6bfbe6db96",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32795e34e3b81cee663c84e644086d6bfbe6db96`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [poly_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/poly-upper.md) | 13 | `result-track:baaa2c547815c89578fd01e545b4ca655145aaf3e5702b5be66d597feb2c539c` |
| 2 | `theorem` | [poly_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/poly-lower.md) | 17 | `result-track:5a26ffc47a8cc9134805a7c40f55149eed1b28d7c252614eaa9563bee230ae0f` |
| 3 | `theorem` | [poly_strict](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/poly-strict.md) | 21 | `result-track:b21482c989612715ed5552d7b42c088fa87c4f08d636931d1597be4f32822e28` |
| 4 | `theorem` | [exp_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/exp-bounded.md) | 27 | `result-track:2d10f1fe366a85f02518e97f0d3f434f837ab11fc1c33d0da4d5c330f742e076` |
| 5 | `theorem` | [sin_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/sin-bounded.md) | 31 | `result-track:e198cba3569dddf5df3c96f420a1e43eba1f7e41e8bc82105a87384b8ddcfe12` |
| 6 | `theorem` | [cos_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/cos-bounded.md) | 35 | `result-track:561b56a04e404fa332be2d33dc86fa0543e02247f4059ad73c5341bf0df7c8c7` |
| 7 | `theorem` | [sqrt_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/sqrt-bounded.md) | 39 | `result-track:4fd948d18850d836821594beb9d4344dce453b7bfbd2c22bdd9309fc11dd0027` |
| 8 | `theorem` | [mv_sum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/mv-sum.md) | 45 | `result-track:90b641e3349448df7813ec78169959e997e89c44d7efae3b4f4efcbdf796f633` |
| 9 | `theorem` | [mv_product](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/mv-product.md) | 50 | `result-track:ca23077aaa3900f62639b8f47239703e04541818b1a9e80ee7679cd92e7ad62f` |
| 10 | `theorem` | [mv_three](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/mv-three.md) | 55 | `result-track:22868381aeee187e5ca598133662e5f3c476dc4fb61aceba3fe22ae16c36d378` |
| 11 | `theorem` | [root_poly_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/root-poly-zero.md) | 62 | `result-track:f4b9f2f06c402794178f36372a72eda4f7795922f27a1a1165fb567fd477fbab` |
| 12 | `theorem` | [root_poly_const](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/root-poly-const.md) | 66 | `result-track:83d64975dca97515c098eb1f9ddb3eb12499d04d8bd955449fe06458e4517665` |
| 13 | `theorem` | [root_exp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/root-exp.md) | 70 | `result-track:f90862f4e9d2a12b4e1ed46c27c12af7b58265042bab0dc795d6b63fa6b6b06e` |
| 14 | `theorem` | [root_cos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/root-cos.md) | 74 | `result-track:9be64bc80e4cc12698bf1a45eb9096f3adb02c6b822d9972ae958eb3eb76f7c5` |
| 15 | `theorem` | [symmetric_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/symmetric-bound.md) | 80 | `result-track:8447e760456f9f2777715dbdf014495dc97e9582691b4fa77f09e8cb39818f70` |
| 16 | `theorem` | [negative_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/negative-bound.md) | 84 | `result-track:18ef3e9d46e4b76dd7482a6b1e533777b20a9ca73454c4bdf0363d4857e4dfa8` |
| 17 | `theorem` | [exp_poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/exp-poly.md) | 90 | `result-track:a91b0d356657047ba55fc1d6c5d5cc52e9d77e3f6b85ea2b094cae1af6b1675a` |
| 18 | `theorem` | [sin_poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/sin-poly.md) | 94 | `result-track:6295c8453479f7afad826af4a5fc8d82cff3008cc41eeaedca49087d2e1413ed` |
| 19 | `theorem` | [point_interval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/point-interval.md) | 100 | `result-track:f750a6a9e0c6cff55753c73cfe627fe373602a207a1b62d87f9b3571417190e5` |
| 20 | `theorem` | [tiny_interval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/tiny-interval.md) | 106 | `result-track:f9f4a19bbcb7994391e76602befa5f12d6c6bd706aa379e87e997f472c98d897` |
| 21 | `theorem` | [large_coeff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/large-coeff.md) | 110 | `result-track:7f43a72a6a6d8330f96244a91cb4050d4b67748918ff5e555be7fec58ff68524` |
| 22 | `theorem` | [combined_ops](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/combined-ops.md) | 116 | `result-track:90accdfd4dcf60296659f9dd13baf27cdb9cc0a3f302740cb507c327ce822789` |
| 23 | `theorem` | [sinh_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/sinh-bound.md) | 122 | `result-track:c6f80d5eb32c07dde9a7e2bbcb2feb2c496a6b8053c5a027cabab41242fcba50` |
| 24 | `theorem` | [cosh_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/cosh-bound.md) | 126 | `result-track:1daf40eb13cc99b98d7ad0c912928c47828500fb1603d8ef4c161b0847a8b0fd` |
| 25 | `theorem` | [tanh_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/tanh-bound.md) | 130 | `result-track:782a128b3620794ce72d3b20a37e351e13297dc40d1794f94f63966c775d3f3b` |
| 26 | `theorem` | [find_min](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/find-min.md) | 136 | `result-track:dece5226fd755b99b6b205101591bda85f20a0cdc67e8b0c27071e1be1cf1813` |
| 27 | `theorem` | [find_max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/find-max.md) | 140 | `result-track:84cee6d258c15601c8d118dae786303456cdf27b85e2258499b166f1e4c7b918` |
| 28 | `theorem` | [find_min_mv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/find-min-mv.md) | 144 | `result-track:2779049e36dac986fc83787abdc988c80173b512f2e3f7cd7befbab287200555` |
| 29 | `theorem` | [find_max_mv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/find-max-mv.md) | 147 | `result-track:6876744d7df5e9158952b476eecbc73546d44c309aa05f84021034e488856567` |
| 30 | `def` | [I01r](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/i01r.md) | 157 | `declaration-track:2775fbbfe77fbb0e5ec9dd2785cf9d88913b3c473805290a86bd85978db680bb` |
| 31 | `def` | [I_neg1_1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/i-neg1-1.md) | 158 | `declaration-track:00a2ba94bfe9ceb328bf3e42b62b19f136ac11296ef32e298556bc9cb0d97ba1` |
| 32 | `def` | [B01](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/b01.md) | 159 | `declaration-track:75838f018a591e59040589f201acb2383c5fa6f0be6fefa882794370124f1edb` |
| 33 | `def` | [B01_2D](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/b01-2d.md) | 160 | `declaration-track:5a03f2072459cee7e339933288a8aba1521eef631315ba7de417b0de303c1e40` |
| 34 | `theorem` | [test_discover_min](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-discover-min.md) | 165 | `result-track:1a4cab31ea7d38c4a63a71df4c6d89972052f2b6f95a413a75c980428339361f` |
| 35 | `theorem` | [test_discover_max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-discover-max.md) | 170 | `result-track:e41a8c8698b0bbdf340a4066336015942d2d94032052738e48d83c8376edb2e1` |
| 36 | `theorem` | [test_argmax_xsq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-argmax-xsq.md) | 186 | `result-track:af82a2b7ebe686147ad79b3c48d37891fcbdabd9a6312bf053867c958a444f51` |
| 37 | `theorem` | [test_argmax_native](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-argmax-native.md) | 192 | `result-track:cfc8d077ba26645d15df1a96bd59d25a9a45427157b5aa28ed5c636eee47ebc3` |
| 38 | `theorem` | [test_argmax_native_linear](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-argmax-native-linear.md) | 197 | `result-track:0daeb9b477fae538f2d3687da5db40ac5707416a9d239ec0f411acb9e0b6be02` |
| 39 | `theorem` | [test_argmin_simple](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-argmin-simple.md) | 216 | `result-track:5346fc6d9528be55401e8c24be5ebc4f3d5a421dc4985ecad7c2dfed8b5dd9e9` |
| 40 | `theorem` | [test_argmin_native](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-argmin-native.md) | 222 | `result-track:2992d31667ea558c7e1fce3ce055d27edb5e7c431af8f39f7444f5aadd7999ea` |
| 41 | `theorem` | [test_opt_verify_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-opt-verify-upper.md) | 235 | `result-track:680c986c11ff317c1eac0ed4c7cb49c480acb3e7ac1dd7b94dcc12f0b03f3a48` |
| 42 | `theorem` | [test_opt_verify_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-opt-verify-lower.md) | 244 | `result-track:5803b1c6a1cbca3d9c1fc3de30075db8bab19809ee51747100430d7b39b0f165` |
| 43 | `theorem` | [test_opt_verify_2d](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-opt-verify-2d.md) | 253 | `result-track:07426310d9f2a524ab03e36f0b14735adfb5ac74539ffea0b83cc208ad67c61a` |
| 44 | `theorem` | [test_root_bound_positive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-root-bound-positive.md) | 267 | `result-track:d4cbbbf3912e1237c14039a2d44543057ea0efe0ca3ef2662d03985e05d1590c` |
| 45 | `theorem` | [test_root_bound_exp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-root-bound-exp.md) | 272 | `result-track:63e049fbbce04b2fb40566eb7bf8caebfd9441e344716dfd80676ae71f1e564e` |
| 46 | `theorem` | [test_root_bound_sqrt2_outside](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-root-bound-sqrt2-outside.md) | 277 | `result-track:fa830cd862c3c6f43c598ac596864a864c2e70af9802b8b76c37521fe81783d0` |
| 47 | `theorem` | [test_root_bound_native](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-root-bound-native.md) | 282 | `result-track:f273525f8d6334b403cf914e3a7ae679553d2af10d7ff8ce82e6f7f5a33a6a61` |
| 48 | `theorem` | [test_subdiv_tight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-subdiv-tight.md) | 288 | `result-track:8988cf84a39d0fef8c65f8f50ef66fa4cec83f687babfd0fd4cb0434c7a1fdb3` |
| 49 | `def` | [xSq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/xsq.md) | 293 | `declaration-track:ee329bd9950ff66ced989ddc50f3fd486b2761072a9084d65888e34331c446fd` |
| 50 | `def` | [xSq_supp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/xsq-supp.md) | 294 | `declaration-track:a2ac4d8ac18646d87415c445eaec66b64cb0ea86d77957b09c9e5af3fc112c64` |
| 51 | `theorem` | [test_manual_interval_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-manual-interval-le.md) | 297 | `result-track:6a8f090b1eb6ecdb2a2001e06855cecc74c90aeffb3d8b046a701b36490ae82c` |
| 52 | `theorem` | [test_manual_interval_ge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReleaseTest.lean/declarations/test-manual-interval-ge.md) | 301 | `result-track:d878872defdc5ba0597c3c087ebdfb64684bb79a99be3162f24cba0e654dbb3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c2c74d3dee52c893a91add006f2fabce97b2966c02793d9850caa7ac2266751 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
