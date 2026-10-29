# Verification target: Inspect Copied Directional

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25201fdd0601fa751b7561ebe8d502147575cca8",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variantd851324f360d50dfa0e4615ff57bf57a8384627cabc73f0e58161ce995d25512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25201fdd0601fa751b7561ebe8d502147575cca8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variantd851324f360d50dfa0e4615ff57bf57a8384627cabc73f0e58161ce995d25512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variantd851324f360d50dfa0e4615ff57bf57a8384627cabc73f0e58161ce995d25512.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceProjectionReadout` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/directionalprice.md) | 44 | `declaration-track:58a1816dc52ee51a5a3779b15aed43dc0484e7d251935a73ca5aa5b212150a81` |
| 2 | `theorem` | [directionalPrice_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/directionalprice-zero.md) | 49 | `result-track:edaacca9fdcc290e62f0c1233ec16d52b698aad15f5f6ab40bdb704ae4938d47` |
| 3 | `theorem` | [directionalPrice_nonneg](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/directionalprice-nonneg.md) | 53 | `result-track:17b40705a0f77965ad532eb5517fa1494042b2bd4378d41031f90c1cb1860cfa` |
| 4 | `theorem` | [norm_mul_directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/norm-mul-directionalprice.md) | 60 | `result-track:3dcbb1a886e01cfb1edd3c45199c22a692e15b4d8d9333dfc721968d07b41bda` |
| 5 | `theorem` | [real_inner_le_norm_mul_directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/real-inner-le-norm-mul-directionalprice.md) | 69 | `result-track:335326c05163e80e450509ed0a023a6803076c49c4178ac7395b3df6aae2364c` |
| 6 | `theorem` | [directionalPrice_le_norm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/directionalprice-le-norm.md) | 75 | `result-track:45f560bb5d4ccf6313207303dfe8d9dc8ecfa7a84eb46cc70339a1a3d7188e32` |
| 7 | `theorem` | [directionalPrice_eq_zero_of_real_inner_nonpos](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/directionalprice-eq-zero-of-real-inner-nonpos.md) | 85 | `result-track:f92d1bb7052c06cb0d4b47110cac7b7a5c5ee9df75e2698c71c193bccf23b804` |
| 8 | `theorem` | [finite_real_inner_sum_le_directional](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/finite-real-inner-sum-le-directional.md) | 92 | `result-track:9a7d179a4abaa053148c120127cd845ce5d291a14723320fc7ea10c6c3240df9` |
| 9 | `theorem` | [finite_real_inner_sum_le_of_directional_square_bounds](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/finite-real-inner-sum-le-of-directional-square-bounds.md) | 105 | `result-track:2f0e642badd5940892a1d8cf29a31bcb8837a36040fed9bc0b314bf14b342f03` |
| 10 | `theorem` | [directional_square_sum_le_row_square_sum](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/directional-square-sum-le-row-square-sum.md) | 115 | `result-track:cb8c354f5e3c438cdd9872561c37641f1bc20898bc30187e7e1ac77984bbef3f` |
| 11 | `def` | [combinedDirectionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/combineddirectionalprice.md) | 131 | `declaration-track:aaa007b3e175142195a95e4c484b268e75c685e635d1f14ce1fab872202ecdef` |
| 12 | `theorem` | [norm_increment_mul_price_eq_positive_readout_increment](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/norm-increment-mul-price-eq-positive-readout-increment.md) | 135 | `result-track:2d21bc9989d612bcdd0bbf8ea300b649a1c6fbe687c292733c024af47b8c1ea6` |
| 13 | `theorem` | [projected_readout_le_of_directional_square](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/projected-readout-le-of-directional-square.md) | 146 | `result-track:9e214af017f9a50246a4cc77dfd2159b888d52607b055543126f3a57342e5c82` |
| 14 | `theorem` | [full_readout_le_of_directional_projection_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/full-readout-le-of-directional-projection-rows.md) | 158 | `result-track:59aafa15b0dd7d45c29f51f567a7a5031eed27cbac785e0ff4291493db4e2d6a` |
| 15 | `theorem` | [single_block_directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/single-block-directionalprice.md) | 170 | `result-track:90473b729b7e1823e5cadaefac091404a3ea1071be2027a02fa4d981bfceb4d8` |
| 16 | `theorem` | [mertensResidual_le_sqrt_of_directional_projection_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/mertensresidual-le-sqrt-of-directional-projection-rows.md) | 193 | `result-track:62bddb92b05f56732f2121b3c42a1d99870c9a0cec1597534f6960fe8e7fd406` |
| 17 | `theorem` | [mertensResidual_le_moment_add_sqrt_of_scalar_directional_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/mertensresidual-le-moment-add-sqrt-of-scalar-directional-rows.md) | 205 | `result-track:34d70d8e92cd2497854c761afc503fcc2945caecab83547a8f95f21cd560949d` |
| 18 | `theorem` | [single_block_originalSource_directionalPrice](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/single-block-originalsource-directionalprice.md) | 220 | `result-track:aaff0321ce7e23dffde22679e395f5d55732b388273b73bf47f0c71d9eed9db7` |
| 19 | `theorem` | [mertensResidualTail_of_adaptive_directional_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/mertensresidualtail-of-adaptive-directional-rows.md) | 239 | `result-track:35035a4607b76c6cfbb55ac1577509af1306eac749e803a7b995e8b540fd965d` |
| 20 | `theorem` | [estimate_of_adaptive_directional_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/estimate-of-adaptive-directional-rows.md) | 254 | `result-track:07320f5813219adf3032a462ce5b51699419c139888ba35beba35eb67ec41d0f` |
| 21 | `def` | [fixtureDirection](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/fixturedirection.md) | 271 | `declaration-track:b758ea08666c672594e43c3e3c239727e0778ca997998b3c9c7f7c9b9951dfca` |
| 22 | `def` | [fixtureOrthogonalRow](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/fixtureorthogonalrow.md) | 274 | `declaration-track:dc95d886eaea95ffdfdac49fbd5a7c0d1422285375256b8013f8fc5dd892a594` |
| 23 | `theorem` | [fixture_direction_norm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/fixture-direction-norm.md) | 277 | `result-track:5c753e1fbb7703aa701c3cb0788b9dca5a6b43a1c377666340c41238d3482171` |
| 24 | `theorem` | [fixture_inner_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/fixture-inner-zero.md) | 281 | `result-track:e460d7146652139889f893be661555ebe26181061c035244e4a0caa5a32f4f4f` |
| 25 | `theorem` | [fixture_directionalPrice_zero](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/fixture-directionalprice-zero.md) | 285 | `result-track:e1db062ac7479b26a26a041c7486c602f2608fb86c5f1fe40a403638a2f59530` |
| 26 | `theorem` | [fixture_orthogonalRow_norm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/fixture-orthogonalrow-norm.md) | 292 | `result-track:f5daa4e25b6b2d5f2b348eadf001a96bb66ebcd43c679706a226ba3970a0316e` |
| 27 | `theorem` | [fixture_unbounded_row_at_zero_price](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/fixture-unbounded-row-at-zero-price.md) | 296 | `result-track:7b6f63b0715b346b1486b1daf60de433e19adc6186fb38718b295dc831f0a2e1` |
| 28 | `theorem` | [fixture_row_norm_unbounded](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InspectCopiedDirectional.lean/declarations/fixture-row-norm-unbounded.md) | 302 | `result-track:b103a9f93a99d04ae50bfd7336b43566d415d26ebbc2f678d8ad180e5bd43d93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ce2501ce60ae5583b66730a0ba570a370feaf3c13c3b25eb22831fecc4071af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variantd851324f360d50dfa0e4615ff57bf57a8384627cabc73f0e58161ce995d25512.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variantd851324f360d50dfa0e4615ff57bf57a8384627cabc73f0e58161ce995d25512.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
