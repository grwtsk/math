# Verification target: Composition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51faf2997e62b52fe9c63c88cba4d6e3a0dc6cd8",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Composition/Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/Composition.lean/index.md) · [Full source](../../../../Geometry/Composition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51faf2997e62b52fe9c63c88cba4d6e3a0dc6cd8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Composition/Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Composition/Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Properties` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Comparison.LogicalStatus` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Scope` — import line 3; external provider; requires a separately pinned dependency.
- `DAF.Causal` — import line 4; external provider; requires a separately pinned dependency.
- `DAF.Refinement` — import line 5; external provider; requires a separately pinned dependency.
- `DAF.Upgrade` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comp](../../../../Geometry/Composition.lean/declarations/comp-source-edition-3.md) | 28 | `declaration-track:8159402653c65fea5e33d880c47aa1492821c563ac645c733e8f7b6832c7707c` |
| 2 | `def` | [comp](../../../../Geometry/Composition.lean/declarations/comp.md) | 38 | `declaration-track:23f2d3e1757405dbb4dbc2ccde01b46b70f5190a2efb2e9046688d03ace17979` |
| 3 | `theorem` | [comp_Hypothesis](../../../../Geometry/Composition.lean/declarations/comp-hypothesis.md) | 48 | `result-track:1158fbb522d18dc1ace39a34c3d2b5cb0787c1fe68184ad6ed4e62aa7da7a1f4` |
| 4 | `def` | [comp](../../../../Geometry/Composition.lean/declarations/comp-source-edition-2.md) | 65 | `declaration-track:464488201ab808934e128e63f96bec187b909b88378060c818df96dd805fefb4` |
| 5 | `def` | [compWithCoefficientChange](../../../../Geometry/Composition.lean/declarations/compwithcoefficientchange.md) | 83 | `declaration-track:7d97f17cada292be44e86b79627848ce78035b89737913ab060b3f095ddd6dbd` |
| 6 | `theorem` | [comp_spec](../../../../Geometry/Composition.lean/declarations/comp-spec.md) | 97 | `result-track:95ae749ab0dc584d1f8171c73c62349b16cc11137decebcea1e0abc1cfdc88c2` |
| 7 | `theorem` | [comp_Assumptions](../../../../Geometry/Composition.lean/declarations/comp-assumptions.md) | 104 | `result-track:154d1f8b81811fc65399d3cfd4742d4c26726513e510c4010ae6138aaa479d26` |
| 8 | `theorem` | [comp_Property](../../../../Geometry/Composition.lean/declarations/comp-property.md) | 111 | `result-track:b8c511e9a0a63644f8790f846046e3ed6f825883510ce40f80360f547e4117c3` |
| 9 | `def` | [toComparisonSpec](../../../../Geometry/Composition.lean/declarations/tocomparisonspec-source-edition-2.md) | 132 | `declaration-track:646667b799a4b5efb0c5859be53b2f9fe84a01e8dc32a2b20130a17f4d0679e1` |
| 10 | `theorem` | [toComparisonSpec_apply](../../../../Geometry/Composition.lean/declarations/tocomparisonspec-apply-source-edition-2.md) | 137 | `result-track:9bc98d9baeb05744910ef6d798a282b5c2da4784dddf3fb031b04f9c4f62f01b` |
| 11 | `theorem` | [toComparisonSpec_comp](../../../../Geometry/Composition.lean/declarations/tocomparisonspec-comp.md) | 142 | `result-track:21389d457c988ffe56bfba23f8f90a778f1d3b29897ad442868b900d29e8b378` |
| 12 | `def` | [causalStateComparisonSpec](../../../../Geometry/Composition.lean/declarations/causalstatecomparisonspec-source-edition-3.md) | 148 | `declaration-track:67ecca71b2c63f026cb28fa5553fbf3e568acf3fb925207b0b61862014d6df47` |
| 13 | `def` | [toComparisonSpec](../../../../Geometry/Composition.lean/declarations/tocomparisonspec-source-edition-3.md) | 158 | `declaration-track:664abd3d09cf5264fb1646347ab3c56e86bd8733704b9e85d3f6bc53034e0bda` |
| 14 | `theorem` | [toComparison_surjective](../../../../Geometry/Composition.lean/declarations/tocomparison-surjective.md) | 162 | `result-track:a4303ac66eb148a10519edc6a076ecd57c75badc090d206d4fd2f135df0ef023` |
| 15 | `def` | [causalStateComparisonSpec](../../../../Geometry/Composition.lean/declarations/causalstatecomparisonspec.md) | 166 | `declaration-track:02c2a52a26465210afabe905652f5280fa533c3927200551d33487755820b60d` |
| 16 | `theorem` | [causalStateComparison_surjective](../../../../Geometry/Composition.lean/declarations/causalstatecomparison-surjective.md) | 172 | `result-track:04963f12ca9762fcf1119ce26328a4dcfb9cc1bcfc80b7bcca8f341ce02a4f6a` |
| 17 | `def` | [toComparisonSpec](../../../../Geometry/Composition.lean/declarations/tocomparisonspec.md) | 182 | `declaration-track:360d3addb55033c1f4deaa9c8f4dd159a0ac46097b2466a9a376609b178c1419` |
| 18 | `theorem` | [toComparison_bijective](../../../../Geometry/Composition.lean/declarations/tocomparison-bijective.md) | 186 | `result-track:6e325e2a872ce99add6818a4558e7cea5efccd0f197e853e1d7222362b969b7f` |
| 19 | `def` | [causalStateComparisonSpec](../../../../Geometry/Composition.lean/declarations/causalstatecomparisonspec-source-edition-2.md) | 190 | `declaration-track:5e27cd1402292f8ddf4f7b8ce9261fe7c701a60cf8638d4ef7f4f1e902e970f1` |
| 20 | `theorem` | [causalStateComparison_bijective](../../../../Geometry/Composition.lean/declarations/causalstatecomparison-bijective.md) | 194 | `result-track:25137577973befa1be0db0d949013c15d78155dd81f853adbcd108d1086695eb` |
| 21 | `def` | [toComparisonSpec](../../../../Geometry/Composition.lean/declarations/tocomparisonspec-source-edition-4.md) | 207 | `declaration-track:e79c0ae2e6b3d1d1b18394fac982fa90873462ab422a97c902f114309ba7ead2` |
| 22 | `theorem` | [toComparisonSpec_apply](../../../../Geometry/Composition.lean/declarations/tocomparisonspec-apply.md) | 212 | `result-track:2f111f387b611e57697c165043e13054aeb94e72cd11848e2b3f1981741a8182` |
| 23 | `def` | [abstractionComparisonSpec](../../../../Geometry/Composition.lean/declarations/abstractioncomparisonspec.md) | 222 | `declaration-track:7e5bc28bd14abb8446b72877963dca1c14071d235d26aa0c58e330f7b2b2dd74` |
| 24 | `def` | [representationComparisonSpec](../../../../Geometry/Composition.lean/declarations/representationcomparisonspec.md) | 226 | `declaration-track:4f2f74c1314b7043895e21301ce0500e14dac3cd5dbef2788a80712c81d11c32` |
| 25 | `theorem` | [representationComparison_injective](../../../../Geometry/Composition.lean/declarations/representationcomparison-injective.md) | 230 | `result-track:e1340676b2b8b710a03358554e83265cf8c4c69ecc4e6f565712683c203cec52` |
| 26 | `theorem` | [abstraction_leftInverse_representation](../../../../Geometry/Composition.lean/declarations/abstraction-leftinverse-representation.md) | 235 | `result-track:3b448cd8f653e8c619b7c0b18deaa5b0f47e83265a219223168035987113ae92` |
| 27 | `def` | [mapPublicComparisonSpec](../../../../Geometry/Composition.lean/declarations/mappubliccomparisonspec-source-edition-2.md) | 248 | `declaration-track:854df37eccce826bc48b41c84ecc77cb2ce2e776b23451684cc8baee37d889b7` |
| 28 | `def` | [comp](../../../../Geometry/Composition.lean/declarations/comp-source-edition-4.md) | 258 | `declaration-track:88f55f1e8751fb0c1c612b2960e0dbb58b1fbdac104ad99fe29c378026148a81` |
| 29 | `theorem` | [mapPublicComparisonSpec_comp](../../../../Geometry/Composition.lean/declarations/mappubliccomparisonspec-comp.md) | 270 | `result-track:0a2be9a749ad7312e19de152eeb09696555bd3c0228b09ddd5c4a8b7dd277925` |
| 30 | `def` | [tenantEnvironmentComparisonSpec](../../../../Geometry/Composition.lean/declarations/tenantenvironmentcomparisonspec.md) | 283 | `declaration-track:247fd0708f1a1a79276c7ec9cef954a24f5e64992bb992b45b25d6c008a14256` |
| 31 | `theorem` | [tenantEnvironmentComparisonSpec_comp](../../../../Geometry/Composition.lean/declarations/tenantenvironmentcomparisonspec-comp.md) | 295 | `result-track:4aa022e2f1ccb4cfeab404c948f9600a11188d3da894fdb1628c706c6fba9824` |
| 32 | `def` | [mapPublicComparisonSpec](../../../../Geometry/Composition.lean/declarations/mappubliccomparisonspec.md) | 312 | `declaration-track:470ffec95b364461fec66cc0042ac2b93c2ad2fe11cb012471d8e44bf611eed0` |
| 33 | `theorem` | [mapPublicComparison_surjective](../../../../Geometry/Composition.lean/declarations/mappubliccomparison-surjective.md) | 321 | `result-track:95d97f7baf97b569812fb92867eae0102202890e83214d134e7a242e5c7ca15b` |
| 34 | `def` | [mapPublicComparisonSpec](../../../../Geometry/Composition.lean/declarations/mappubliccomparisonspec-source-edition-3.md) | 334 | `declaration-track:ad80234f6533a2d8e712fcd4ab4e4f6896c0425eafe9e0a4197424ebb48ace15` |
| 35 | `theorem` | [mapPublicComparison_bijective](../../../../Geometry/Composition.lean/declarations/mappubliccomparison-bijective.md) | 343 | `result-track:7e2ec94370cfabccc1ad1a2a3d79107487a0591d83e4e3e62b053c19f1a7e44e` |
| 36 | `def` | [mapPublicComparisonSpec](../../../../Geometry/Composition.lean/declarations/mappubliccomparisonspec-source-edition-4.md) | 356 | `declaration-track:c5de8a2e4c66ec549431ab9f3e05f3ff6556ed0eda708145189eb332040b690c` |
| 37 | `theorem` | [mapPublicComparison_bijective](../../../../Geometry/Composition.lean/declarations/mappubliccomparison-bijective-source-edition-2.md) | 365 | `result-track:e584748e64596fd3a5dd457ea06ff570b889ff80280afe6194dbcb0c1baad5f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c17698e5a45a2bffc1750bb00dc62d7c93e83774e81450599d2557632164db2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Composition/Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Composition/Variant6240836468494abd198d5d53a6f45083186e856e65e58b2db93a08d80afc9890.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
