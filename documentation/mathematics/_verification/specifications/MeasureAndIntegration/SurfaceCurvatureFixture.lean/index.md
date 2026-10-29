# Verification target: Surface Curvature Fixture

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c29d2c509245e7ef991fce26dfee4e83c5ed7d64",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c29d2c509245e7ef991fce26dfee4e83c5ed7d64`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.InterfaceState` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Gradient.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coord](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/coord.md) | 25 | `declaration-track:0622df9ff35c59bf2a0d4a99e5d4b3abfe81ad28b68b1ad117c5da073195c135` |
| 2 | `def` | [radial](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/radial.md) | 28 | `declaration-track:53b15af184ba9f5bf3dc48f59f092fa24140c183ecca4b61d47ddf33d88cc241` |
| 3 | `theorem` | [radial_apply](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/radial-apply.md) | 32 | `result-track:67d7e15532079df62af627840c09112f76c33b6fc03fc1c9edad161bfd1a354d` |
| 4 | `theorem` | [radial_axis_zero](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/radial-axis-zero.md) | 35 | `result-track:86ba8672833c9eddaf1e7f69794fe95b040ce0144b2f5f7d319799a7c61770f1` |
| 5 | `def` | [planeLevel](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/planelevel.md) | 39 | `declaration-track:24ae9f552285f5f50ff40675899ef66ebb73c9850b32eb3955503e2d2bf14b72` |
| 6 | `def` | [cylinderLevel](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinderlevel.md) | 42 | `declaration-track:ced1e44fda618999a81ba669a346e907f9ba22242fb002c9344df84e093dd7c2` |
| 7 | `theorem` | [plane_gradient](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-gradient.md) | 45 | `result-track:fbc240ef20415663427500e52ee565ad5647bd69500a43f92a89c1effc1a6da6` |
| 8 | `theorem` | [cylinder_gradient](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-gradient.md) | 52 | `result-track:73c6fb0d97cc4fe0ea4f245db35bf10d41c1ea524a68ef57c979b03add5bd886` |
| 9 | `theorem` | [radial_norm_derivative](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/radial-norm-derivative.md) | 59 | `result-track:d165bfc7cfeadc6b11ea766ab53920103471bcc4c8b0e9c2185b77ad8aa19593` |
| 10 | `theorem` | [radial_normal_derivative](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/radial-normal-derivative.md) | 70 | `result-track:838be0bf724d492ae2be232f97c559fef58685c43035019823ba7c72e4981d92` |
| 11 | `theorem` | [plane_normal](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-normal.md) | 82 | `result-track:1b30bd9df08f53b73e26d09ad7a9d449ce7639d11cc6396d475f26a2840a67d4` |
| 12 | `theorem` | [cylinder_normal](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-normal.md) | 88 | `result-track:f0e2f458b9038394628c9f959e5d6b15ebc517eaebe06861c989a4994a7da8dd` |
| 13 | `theorem` | [plane_curvature](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-curvature.md) | 94 | `result-track:975ae8784b70dc9079a50db7b302cae13863264a0ee17a62badb07e1c9e9a072` |
| 14 | `theorem` | [cylinder_curvature](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-curvature.md) | 98 | `result-track:7e79b1239a163be074f439729870426b9dd63f9f7acc4d17e3e147bc4129c6b6` |
| 15 | `def` | [parameterCoord](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/parametercoord.md) | 105 | `declaration-track:b01d71871bd61bbdcb59ed1db908156ec93107e981884a26c53f8af8fb2cd0d1` |
| 16 | `def` | [planeChart](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/planechart.md) | 109 | `declaration-track:79f3ae61adf5e2ec80da6800e301189616c81849d9c60bb5f996d2899526a3a2` |
| 17 | `def` | [cylinderChart](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinderchart.md) | 113 | `declaration-track:d085c212ddc0bad13e50c4221b99fb1d23704b1d1c2cd9a8f82f749f9cb32371` |
| 18 | `def` | [planeDerivative](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/planederivative.md) | 117 | `declaration-track:021021cac44beb037ac86eace3cd268af69d61a90bd0b1c83a23bc73e85b1638` |
| 19 | `def` | [cylinderDerivative](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinderderivative.md) | 121 | `declaration-track:4f9ada97892778bd2cca7ba44eef311df3463131122fa4b2655eda317115c327` |
| 20 | `theorem` | [plane_chart_derivative](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-chart-derivative.md) | 127 | `result-track:63e0afdee158ba176da6542c588b1986b183400a2899981842d3637b43cfac0f` |
| 21 | `theorem` | [cylinder_chart_derivative](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-chart-derivative.md) | 133 | `result-track:48c75e9542e47469a90ae922ce46668ee23a32c85b8bf82e26d5f0aac4b10cf4` |
| 22 | `theorem` | [plane_patch_tangent_zero](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-patch-tangent-zero.md) | 140 | `result-track:eccfc5f5a6f09f6806e01d07b8526a968ffadcfc99f0ca29496ab60c7dfb2597` |
| 23 | `theorem` | [plane_patch_tangent_one](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-patch-tangent-one.md) | 145 | `result-track:f11b0a41eca9a574f1b4301ddbb8ca0415493fb6134eb4602490a55bff016cbc` |
| 24 | `theorem` | [cylinder_patch_tangent_zero](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-patch-tangent-zero.md) | 150 | `result-track:144ce452df49b4270de2a5071f5f02a931b30caaae8e582cdb034c5e0d689b9b` |
| 25 | `theorem` | [cylinder_patch_tangent_one](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-patch-tangent-one.md) | 156 | `result-track:9a086303b0947b995c0f00e45ef97d26c8d2c3b3ee4615a888a4cb2765d59f8a` |
| 26 | `theorem` | [cylinder_tangent_norm](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-tangent-norm.md) | 162 | `result-track:a6a01465a4e77026b7e0bddefd3408c46bd73ab4c4f7a9a03fe0a16b523aa2c7` |
| 27 | `theorem` | [cylinder_tangent_orthogonal](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-tangent-orthogonal.md) | 169 | `result-track:1956946ec19fba1199b75cb6d526b352eac365c8d2a30841cf3cc506c13db506` |
| 28 | `theorem` | [plane_density](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-density.md) | 174 | `result-track:df17299d1402bc6d681e74d21ffd2391b6ce71262698ad4270539014f7b6a8b9` |
| 29 | `theorem` | [cylinder_density](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-density.md) | 180 | `result-track:b85b0bdc7579f60c8fecc8ed1916a9569f182e460f0e48a6115e90005bd91e9f` |
| 30 | `def` | [parameterRectangle](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/parameterrectangle.md) | 189 | `declaration-track:6659fece26e1b3cb562176eaf02ccd5bf90e29da7496d53fe62eb8ed4986f2d4` |
| 31 | `def` | [parameterMeasure](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/parametermeasure.md) | 193 | `declaration-track:52235352510f115d9ac3e3c10fa3a1bb9123933fae0a08d432ae3135928d8e79` |
| 32 | `theorem` | [parameterRectangle_volume](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/parameterrectangle-volume.md) | 196 | `result-track:808c9414f589a832024e117d5ce1c0d2ab5e56e29a7f6cf1e14b98042abb9345` |
| 33 | `instance` | [parameterMeasure_finite](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/parametermeasure-finite.md) | 202 | `declaration-track:8f6f955aaca98dd0f9401a42d98971b175bc2d5f50b7a5913f81bbf92a5c4f96` |
| 34 | `theorem` | [parameterMeasure_univ](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/parametermeasure-univ.md) | 208 | `result-track:c768e3c641350096633ea2b6520adc1eb98bba1e3c1d5e140546df27ea88b22d` |
| 35 | `theorem` | [plane_area_integrable](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-area-integrable.md) | 212 | `result-track:0bb100b98977ff976a63b7dac6c8017e419a2e7303c96b711313f5a0aed4b671` |
| 36 | `theorem` | [cylinder_area_integrable](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-area-integrable.md) | 217 | `result-track:49f4e8585fa2c7c8b9973b02f2c81add15e4d5d9c203711352448f224089e498` |
| 37 | `theorem` | [plane_area](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-area.md) | 223 | `result-track:f49e5c2a72534c49bbcc40d8c2ebd5d884ba952868908dd1309cf17b6bc8ce53` |
| 38 | `theorem` | [cylinder_area](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-area.md) | 227 | `result-track:d1c49375c7a95b0e29f5040a7a812bccfc12a44781831753f2bcc41c00dfab6a` |
| 39 | `theorem` | [plane_chart_on_interface](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-chart-on-interface.md) | 231 | `result-track:93788f19502c202d03945751053e32abde1b40735a9df02140513043b230c38e` |
| 40 | `theorem` | [cylinder_chart_on_interface](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-chart-on-interface.md) | 235 | `result-track:c831961eae4228483506f922330266f12ae5485b647dd2a88d9a6e85f6af72e1` |
| 41 | `theorem` | [plane_chart_zero](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-chart-zero.md) | 243 | `result-track:173481a14de72482886b9fa0970f6b7fee3af74209fde81fd9bc144d5dc94d6d` |
| 42 | `theorem` | [cylinder_chart_zero](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-chart-zero.md) | 246 | `result-track:bac779c9fa2d45be00a5d1bf267dd9f58c26bf0dffe818dee145cd25bb705b06` |
| 43 | `def` | [chartFamily](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/chartfamily.md) | 249 | `declaration-track:6cf4f134e5981c4827ce788012de320dbfb31374c5e92ea415d8c2235707f712` |
| 44 | `def` | [levelFamily](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/levelfamily.md) | 253 | `declaration-track:98175284a33bbeede774b3cf6b9b38d7759e02e8a5d2dc67b97d2d5211c21395` |
| 45 | `def` | [areaCurvatureObstruction](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/areacurvatureobstruction.md) | 257 | `declaration-track:ebc2733cc926d00dd058342aa3e33e01e853a00c56b9637dbf2893e661b2cfff` |
| 46 | `theorem` | [curvature_not_determined_by_area](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/curvature-not-determined-by-area.md) | 266 | `result-track:a92f1dc78b47368cf9b746880a8cd1b87ebbbdbed3484e0d8c91cb18336729cb` |
| 47 | `theorem` | [plane_regular_patch](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-regular-patch.md) | 273 | `result-track:8d2aae6a14a85f307cd4228c4309b98015cc0b5cea543e7d0148811aa863f874` |
| 48 | `theorem` | [cylinder_regular_patch](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-regular-patch.md) | 283 | `result-track:9516d6554fbaf0f8895472ad3e6634852306eba82d22861cf17ac8c67fb78687` |
| 49 | `theorem` | [plane_chart_injective](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/plane-chart-injective.md) | 294 | `result-track:148c2c30934126a869c23c4235adce7d760329abc4a7eaf509dfafa3ce84f07c` |
| 50 | `theorem` | [cylinder_chart_injective_on_rectangle](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/cylinder-chart-injective-on-rectangle.md) | 305 | `result-track:4dc4df1fada49d24a17972a572bdd239244d12768a2e99daf1a802cf1265055e` |
| 51 | `theorem` | [common_point_regular](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/common-point-regular.md) | 325 | `result-track:e080711a0ea85e62f9444b782ff9a832914fd52c1fc2beff5243a64b9f810f24` |
| 52 | `def` | [requiredPressureDifference](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/requiredpressuredifference.md) | 347 | `declaration-track:ef500884bb20e42ec01cec8b9d1c3c586ba824af82ff9a3ed1eee41016919680` |
| 53 | `def` | [areaPressureObstruction](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/areapressureobstruction.md) | 351 | `declaration-track:6aa34d83fb87978f7683048ac259b218f7c1a7c472e4c5d35637f52f7b0404a7` |
| 54 | `theorem` | [required_pressure_not_determined_by_area](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/required-pressure-not-determined-by-area.md) | 362 | `result-track:82c16b55cb427b792937ba14e446b16e3c2c506a39559e1022613db6c2a40f79` |
| 55 | `theorem` | [no_area_pressure_decoder](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/no-area-pressure-decoder.md) | 368 | `result-track:b68a2208b54cd7ed651417b43a714d8163393394dfc36e73c0c16d2dba553eaf` |
| 56 | `theorem` | [zero_mem_parameterRectangle](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/zero-mem-parameterrectangle.md) | 376 | `result-track:adb6574d41972bf9fcb8711d4891f2b4516313838494a2a374bc8009b1eb66fa` |
| 57 | `theorem` | [common_normal](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/common-normal.md) | 380 | `result-track:117fb10ecf7a6bb09f0679f6003191f61421bf19cae8c308a0b6446d4aebd03b` |
| 58 | `theorem` | [pressure_jump_requires_fixture_pressure](../../../../MeasureAndIntegration/SurfaceCurvatureFixture.lean/declarations/pressure-jump-requires-fixture-pressure.md) | 386 | `result-track:e94d034019293fa5e25505c1053b3a2d0396dbfa8caf9b04b06b99fc3decb637` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2622ebc4aeff07f804a4b8357a457729409c92a7a021ab01aa48f563daab6f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
