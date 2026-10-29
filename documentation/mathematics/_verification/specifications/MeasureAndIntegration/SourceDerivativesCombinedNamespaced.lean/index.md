# Verification target: Source Derivatives Combined Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcd3345549ccbf7b3b0e498cffd03710cc81afe9",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant1f4b9e0b3ecadfe015465cbdc8ad034fb8f51b630a3e41c396a474df19779609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcd3345549ccbf7b3b0e498cffd03710cc81afe9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant1f4b9e0b3ecadfe015465cbdc8ad034fb8f51b630a3e41c396a474df19779609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant1f4b9e0b3ecadfe015465cbdc8ad034fb8f51b630a3e41c396a474df19779609.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaModeA](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetamodea.md) | 25 | `declaration-track:4e6233016da55158aa26648c14664a951568be8e874a565588c150b4bdabfd72` |
| 2 | `def` | [thetaModeY](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetamodey.md) | 28 | `declaration-track:5883f580d08f6025c4373d42f87bf212f8d7680ba274eeba68ea52985910ace1` |
| 3 | `def` | [thetaModeScore](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetamodescore.md) | 32 | `declaration-track:bc67a9e616e843f6ff38ec448faa633e78a18c9f8976e1faea11a8b8658ca6c0` |
| 4 | `def` | [thetaModeCurvature](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetamodecurvature.md) | 36 | `declaration-track:c97bbe0a4dfba35dd7295444eeda4755d74fa9313c1b2b82810613d2e8a948fa` |
| 5 | `def` | [thetaPhiTermDeriv](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermderiv.md) | 40 | `declaration-track:df537a9d8f9952f4179587a77575c24019bd199869e3c9d22942dfd25c947311` |
| 6 | `def` | [thetaPhiTermSecondDeriv](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermsecondderiv.md) | 45 | `declaration-track:53f037bed90308cf6ed09805eea077de80fe2aa6dd4ce27a420e05c15c171696` |
| 7 | `theorem` | [thetaPhiTerm_eq_mode](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphiterm-eq-mode.md) | 51 | `result-track:0bb7e02dcb58584ee95ea2270a78fd05b51410d4fc01f3466aa7414db9b3faf2` |
| 8 | `theorem` | [hasDerivAt_thetaModeA](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/hasderivat-thetamodea.md) | 59 | `result-track:7b15aafab2194cb29c221ab7530e429ce5fa7b400e385a34b7664fea6873a724` |
| 9 | `theorem` | [hasDerivAt_thetaModeY](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/hasderivat-thetamodey.md) | 67 | `result-track:22b3be013fcf828a98809bbd177490e7967f419950fd6c6b9292d0fbc517f272` |
| 10 | `theorem` | [hasDerivAt_modePrefactor](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/hasderivat-modeprefactor.md) | 73 | `result-track:6611792ec5457fc5be7b6b55fccf1198c27ba97a242bf9429fae99a7fd09462d` |
| 11 | `theorem` | [hasDerivAt_thetaPhiTerm_raw](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/hasderivat-thetaphiterm-raw.md) | 82 | `result-track:c2fb05c6783900167e05522d8aae9fe7eee403b1027323249fc3c1707a2efde2` |
| 12 | `theorem` | [hasDerivAt_thetaPhiTermDeriv_raw](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/hasderivat-thetaphitermderiv-raw.md) | 96 | `result-track:48f835802d9ba7c55612c88f1271af9aad557268e83d21ce23895e5a18a1c8a2` |
| 13 | `theorem` | [thetaPhiTermDeriv_eq_score](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermderiv-eq-score.md) | 107 | `result-track:f7ed36cb4b621a9b1f2d35af977097d7fdca621ec735b52822faefd635e1859d` |
| 14 | `theorem` | [thetaPhiTermSecondDeriv_eq_score_curvature](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermsecondderiv-eq-score-curvature.md) | 116 | `result-track:d54f1f1c347fb4317786cde691b03a3300ef98aaaceae9899aa2347e40383598` |
| 15 | `theorem` | [hasDerivAt_thetaModeScore](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/hasderivat-thetamodescore.md) | 126 | `result-track:a25a61725b00ae8047c4efd58330e45f9021707a483cc0b60f5801fbeb52b8e2` |
| 16 | `def` | [thetaGaussianTerm](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussianterm.md) | 146 | `declaration-track:d7119c0398f8031288a94ad8276e4d3bf9588155a365396115f524c7381d3a01` |
| 17 | `def` | [thetaGaussianSum](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussiansum.md) | 150 | `declaration-track:b1ef1499bcbba9e4131034cdeb825090d27ce4c28ae8fab5e74a710f9649db12` |
| 18 | `theorem` | [thetaGaussianTerm_nonneg](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussianterm-nonneg.md) | 152 | `result-track:afc49b04efba9bf814933d28761303b8a85772754a28e5384374f9ec34f09e4b` |
| 19 | `theorem` | [thetaGaussianTerm_summable](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussianterm-summable.md) | 157 | `result-track:b380ec0adaa73d39002131218f2287f751cb4ccdcdad90eb751e0ce032dce861` |
| 20 | `def` | [thetaGaussianCompactBound](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussiancompactbound.md) | 162 | `declaration-track:0288c6bb69c8189784f3937895f9b909af853acac012a6c0cea22100af0d450a` |
| 21 | `theorem` | [thetaGaussianCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussiancompactbound-summable.md) | 165 | `result-track:2fd2130f44aea5d52d24d5131d6812bfe11172fc52445df5bd0e9e6ac8da4d33` |
| 22 | `theorem` | [thetaGaussianTerm_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussianterm-norm-le-compactbound.md) | 169 | `result-track:0744f7ddaa2b7305688591429442c7aff144e43e75c0ab114ea3510dde806eb3` |
| 23 | `theorem` | [continuous_thetaGaussianTerm](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/continuous-thetagaussianterm.md) | 182 | `result-track:851ea84b451c76ebe552c1833e137dc22d197e2b3b67bf3145307a8cdd8a30ed` |
| 24 | `theorem` | [continuous_thetaGaussianSum](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/continuous-thetagaussiansum.md) | 186 | `result-track:f90f6fce09868a8d745bec14405e651a074dec0e4214e38f55c79a07317a4730` |
| 25 | `theorem` | [thetaGaussianSum_nonneg](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussiansum-nonneg.md) | 197 | `result-track:0e186bf8fbfcac33d433900d33569505d4ddc8df2b6d27421960ddf8e34559e5` |
| 26 | `theorem` | [thetaGaussianSum_le_superexp](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussiansum-le-superexp.md) | 201 | `result-track:faa7449fac3ee0ff708278bc532ab003067b07862c518236cba94459621f3697` |
| 27 | `theorem` | [thetaGaussianSum_poly_norm_le_tail](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussiansum-poly-norm-le-tail.md) | 235 | `result-track:9922717e2936deaa244d35da10e2944cbb4d7fed5644c9a1cbb8be407cfcc564` |
| 28 | `theorem` | [thetaGaussianSum_poly_integrableOn](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetagaussiansum-poly-integrableon.md) | 271 | `result-track:31bacf7698bb4aa21195780f69678dff5dba3e6fe5c37b378213d909a40f83aa` |
| 29 | `theorem` | [thetaPhiTermDeriv_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermderiv-eq-gaussians.md) | 294 | `result-track:13d01b8f9f9a4c74caf2e79e8e563e6d5a4bb60364635d0b21e501d85ca456ba` |
| 30 | `theorem` | [thetaPhiTermSecondDeriv_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermsecondderiv-eq-gaussians.md) | 308 | `result-track:2d4cfed343bd8a06dc5fa0e16699b4b0d55b1f37a615cde668dc1eb3e8c37bb8` |
| 31 | `theorem` | [thetaPhiTermDeriv_summable](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermderiv-summable.md) | 326 | `result-track:7cc767372a9a15b7f7be78db6ff6366445e7174b3feded114909146359a72f45` |
| 32 | `theorem` | [thetaPhiTermSecondDeriv_summable](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermsecondderiv-summable.md) | 334 | `result-track:f717322d26c61e8957bdd0aeeeb22a1333fb5c9d4795747a96209e52c451101c` |
| 33 | `def` | [thetaPhiDerivCompactBound](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphiderivcompactbound.md) | 343 | `declaration-track:3bbacbe74f66d0ac8f4ab1749b260ee224eadf1cab2133f519b80134c6576182` |
| 34 | `def` | [thetaPhiSecondDerivCompactBound](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphisecondderivcompactbound.md) | 348 | `declaration-track:a31ad81b64c35f646eb1b598c6fca584cc4680d797199cfd97b84f0ec6d78a8a` |
| 35 | `theorem` | [thetaPhiDerivCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphiderivcompactbound-summable.md) | 354 | `result-track:543dea6d163d26b101d77c8520dff1d7a4bb09bb182abe9d0d331ab2b5d1fe22` |
| 36 | `theorem` | [thetaPhiSecondDerivCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphisecondderivcompactbound-summable.md) | 360 | `result-track:bb06dda25106d653d6311e7d121e8277710ef78ddd8e8946a68a9c3dcc7e6fd8` |
| 37 | `theorem` | [thetaPhiTermDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermderiv-norm-le-compactbound.md) | 367 | `result-track:2cd75b6be0fe80fe0affc88544d6e9a509b662900c0c47f845df35d6fdd50ee2` |
| 38 | `theorem` | [thetaPhiTermSecondDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphitermsecondderiv-norm-le-compactbound.md) | 379 | `result-track:157e8c48030676c6ab391e411dd1930a82f623b1f1c4fca224e0d04a1098878c` |
| 39 | `def` | [thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphirawd1.md) | 395 | `declaration-track:81e1a657debde7cd3d2b6f0347a0df17b09f569b2a06ffda7d7b3d947ea02fda` |
| 40 | `def` | [thetaPhiRawD2](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphirawd2.md) | 398 | `declaration-track:3b8079dda3600820f1e6342b1e140cf5182cf3d1ac8aed3a7e3f1a7d65bff429` |
| 41 | `theorem` | [hasDerivAt_thetaPhi_raw](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/hasderivat-thetaphi-raw.md) | 401 | `result-track:51b9177f032271401d5df9720186ff39c8b061abfcb739c4c870943d1b3c8f50` |
| 42 | `theorem` | [hasDerivAt_thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/hasderivat-thetaphirawd1.md) | 410 | `result-track:a9607a64a00ef0b5ec8c842464f6aa8ab1d214a89f3c928fd4567aec2c09d1e6` |
| 43 | `theorem` | [deriv_thetaPhi_eq_raw](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/deriv-thetaphi-eq-raw.md) | 420 | `result-track:73f1429df9d53a6b7cd0f31f98c8c09422f8bcf963a211626d27e118f987955d` |
| 44 | `theorem` | [continuous_thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/continuous-thetaphirawd1.md) | 423 | `result-track:a2bb3ae9b30f6035dcda67d18af111bbae7b70d08061500167a7aee1651a2f41` |
| 45 | `theorem` | [thetaPhiRawD1_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphirawd1-eq-gaussians.md) | 426 | `result-track:e3449bf53567c40f4827a362e308105b4981d5ce108a5a74610780d2478231a8` |
| 46 | `theorem` | [deriv_thetaPhi_poly_integrableOn](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/deriv-thetaphi-poly-integrableon.md) | 442 | `result-track:7e6e5b7e0bf6dacedcf097921dc2cdd278756d5ca2254216cd495d77ab654838` |
| 47 | `theorem` | [thetaPhi_deriv_mul_sub_integrableOn](../../../../MeasureAndIntegration/SourceDerivativesCombinedNamespaced.lean/declarations/thetaphi-deriv-mul-sub-integrableon.md) | 453 | `result-track:a03dffa2bc1b787f884186d6cde386dc21bb5bab4742c907d1319f20066c4a45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c90036236930e364b730b4d9c895bd4a75ed992cce177ef4addb9ca90bfb33c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant1f4b9e0b3ecadfe015465cbdc8ad034fb8f51b630a3e41c396a474df19779609.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant1f4b9e0b3ecadfe015465cbdc8ad034fb8f51b630a3e41c396a474df19779609.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
