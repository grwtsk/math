# Verification target: Source Kapitza Directional One Sided Source Direction Prices For Complete Projection Increments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4625862c1b4f2e8415f15ecbd4ebde8191c1c2a2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDirectional/Variant7fa089ce291d74375532395dca2364ecc043bad192d9eabc5d8eccc1a03f4de6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4625862c1b4f2e8415f15ecbd4ebde8191c1c2a2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDirectional/Variant7fa089ce291d74375532395dca2364ecc043bad192d9eabc5d8eccc1a03f4de6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDirectional/Variant7fa089ce291d74375532395dca2364ecc043bad192d9eabc5d8eccc1a03f4de6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceProjectionReadout` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/directionalprice.md) | 36 | `declaration-track:e20f71b48b4cf6db353ecf92a07ba6a720a634840c95f811be697ae1670503a9` |
| 2 | `theorem` | [directionalPrice_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/directionalprice-zero.md) | 41 | `result-track:f79d9864f1e02aa03537d0523e55504a62e7c3c62927f05954e07b6e5bb46a44` |
| 3 | `theorem` | [directionalPrice_nonneg](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/directionalprice-nonneg.md) | 45 | `result-track:75b1b216f1e301c36ad89a6e647d5dc80746ecc40146ff56e02cba2000961e84` |
| 4 | `theorem` | [norm_mul_directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/norm-mul-directionalprice.md) | 52 | `result-track:fb89e363ee591c378cfaca3b32e2a0f5f0e723322dc631b8ffa925c27942f29c` |
| 5 | `theorem` | [real_inner_le_norm_mul_directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/real-inner-le-norm-mul-directionalprice.md) | 61 | `result-track:0b365d45f5b963c14e89b6804596513a0ca654a602a092b61aa6fe4642d05346` |
| 6 | `theorem` | [directionalPrice_le_norm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/directionalprice-le-norm.md) | 67 | `result-track:abedc3c4de6d667376ec6958763b6926efece840a2b97dd44ab8ef3ac5398c77` |
| 7 | `theorem` | [directionalPrice_eq_zero_of_real_inner_nonpos](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/directionalprice-eq-zero-of-real-inner-nonpos.md) | 77 | `result-track:c73e3da35ec248618afac71cb608bbd0c634859fe9b567b36b7603b49fa9a220` |
| 8 | `theorem` | [finite_real_inner_sum_le_directional](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/finite-real-inner-sum-le-directional.md) | 84 | `result-track:b2cb3651235875b68e5373cf0ad3c6519acd749971e709b52405bb3b3e6e9ebd` |
| 9 | `theorem` | [finite_real_inner_sum_le_of_directional_square_bounds](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/finite-real-inner-sum-le-of-directional-square-bounds.md) | 97 | `result-track:67ec61a612ffec5875bd894313b2f369a5beee9d1de94c173160e9b3e7a9a1b8` |
| 10 | `theorem` | [directional_square_sum_le_row_square_sum](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/directional-square-sum-le-row-square-sum.md) | 107 | `result-track:e0ce98c5a75347f33a2ee7b00f7caf6308932eb605563c44ce7252b386c59de3` |
| 11 | `def` | [combinedDirectionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/combineddirectionalprice.md) | 123 | `declaration-track:2182b4d63b871066108d915e3dc6055b94c01d7d161bbcd96192e84b3abdfdce` |
| 12 | `theorem` | [norm_increment_mul_price_eq_positive_readout_increment](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/norm-increment-mul-price-eq-positive-readout-increment.md) | 127 | `result-track:cbf30db0b3964ae3d65953e32b6d1aec8679b6218f30114bb98bc6b000b5fac0` |
| 13 | `theorem` | [projected_readout_le_of_directional_square](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/projected-readout-le-of-directional-square.md) | 138 | `result-track:5dac9e2bccbdcdc03b7f5758f206544c01de1072fe9a72cf5675ef394d6bd833` |
| 14 | `theorem` | [full_readout_le_of_directional_projection_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/full-readout-le-of-directional-projection-rows.md) | 150 | `result-track:c25a6e51af01e6fa7a933f773cc2b91ac5caa21624b13e898c97cae81a1226a0` |
| 15 | `theorem` | [single_block_directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/single-block-directionalprice.md) | 162 | `result-track:26baf37ac7a922dcd0b523b5d2415867ae081f905b3b7e140d7f54ee7f4309f5` |
| 16 | `theorem` | [mertensResidual_le_sqrt_of_directional_projection_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/mertensresidual-le-sqrt-of-directional-projection-rows.md) | 185 | `result-track:6d8ddb71c7089bcb633831b17567d97ee5102acd6a7925954e9ea53a6e79e34e` |
| 17 | `theorem` | [mertensResidual_le_moment_add_sqrt_of_scalar_directional_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/mertensresidual-le-moment-add-sqrt-of-scalar-directional-rows.md) | 197 | `result-track:30631e378e6a4f5a77c03b36d0866ca46a44f76380f7b5408370953fe146729c` |
| 18 | `theorem` | [single_block_originalSource_directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/single-block-originalsource-directionalprice.md) | 212 | `result-track:5a00c098787be102aeca1ad39e1abf510a707687c4969755ea91bbfb57c26b1a` |
| 19 | `theorem` | [mertensResidualTail_of_adaptive_directional_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/mertensresidualtail-of-adaptive-directional-rows.md) | 231 | `result-track:b9c971fe3f9b3849f15b9e411fce333052dd943320b605741cbaaf45d63bb41f` |
| 20 | `theorem` | [estimate_of_adaptive_directional_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/estimate-of-adaptive-directional-rows.md) | 246 | `result-track:c234c5d5a6a95638e3c5820430cedfb93e186b2ce349e60dbebbb235354a0756` |
| 21 | `def` | [fixtureDirection](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/fixturedirection.md) | 263 | `declaration-track:72a72210825bbb2255a1d763e2e8a5e5464478815d47072e5ad2861944ea89b4` |
| 22 | `def` | [fixtureOrthogonalRow](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/fixtureorthogonalrow.md) | 266 | `declaration-track:598b03ead7d9607ef6c4f312e398469e5cfb15f33c735251a857cbe9fbad5a67` |
| 23 | `theorem` | [fixture_direction_norm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/fixture-direction-norm.md) | 269 | `result-track:f9c940d0409a02196ec324a249af23380a7723d7e8db27c363499d8c7e132fd2` |
| 24 | `theorem` | [fixture_inner_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/fixture-inner-zero.md) | 273 | `result-track:bfe8d6331b9a105b8386303ade3d258bfce3b8eb7bc7e7799c14108d618dd0ef` |
| 25 | `theorem` | [fixture_directionalPrice_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/fixture-directionalprice-zero.md) | 277 | `result-track:1756963e7bf1bf169053759f144e0ceb6526bbbceb1a09f09bf7da89cc01cbc3` |
| 26 | `theorem` | [fixture_orthogonalRow_norm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/fixture-orthogonalrow-norm.md) | 284 | `result-track:c2a16160a92523174ade4a97b392ca4fa9bd92efc2334031dcf1e0354ab2881f` |
| 27 | `theorem` | [fixture_unbounded_row_at_zero_price](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/fixture-unbounded-row-at-zero-price.md) | 288 | `result-track:f806b0a04b44dc330a574205c884d54311899e6b3cfcf10c60b221f67fdf96b5` |
| 28 | `theorem` | [fixture_row_norm_unbounded](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceKapitzaDirectionalOneSidedSourceDirectionPricesForCompleteProjectionIncrements.lean/declarations/fixture-row-norm-unbounded.md) | 294 | `result-track:3c65337e739cf074095889b1b268bdc740272a38a5d6cb225ff3af7cb235d66e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6de73050d82a4c01bc65b6633bac00e4aa9879a433d48f293762a915374ee68d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDirectional/Variant7fa089ce291d74375532395dca2364ecc043bad192d9eabc5d8eccc1a03f4de6.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDirectional/Variant7fa089ce291d74375532395dca2364ecc043bad192d9eabc5d8eccc1a03f4de6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
