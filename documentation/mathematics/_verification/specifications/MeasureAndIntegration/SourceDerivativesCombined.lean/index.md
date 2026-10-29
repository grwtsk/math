# Verification target: Source Derivatives Combined

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d322c9779e5e2552b1183bad2c6a9f6340c90e2",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d322c9779e5e2552b1183bad2c6a9f6340c90e2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaModeA](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetamodea.md) | 17 | `declaration-track:44322ccd1a3b949905ceb3b6e83ed8cd30bb82325957c7d733dd8b740ff26464` |
| 2 | `def` | [thetaModeY](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetamodey.md) | 20 | `declaration-track:b3eb8aca9f6fd14af6e8cf0f888e5026b74cf266ffca702ba843aca1675b6c80` |
| 3 | `def` | [thetaModeScore](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetamodescore.md) | 24 | `declaration-track:9188d0f33615a75523eec23699fff9c45f92b98cd360893d75774ce23c6e2ee9` |
| 4 | `def` | [thetaModeCurvature](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetamodecurvature.md) | 28 | `declaration-track:b7924ec85113dfad2d96443c9f2cd3d22cd9d331eec9bf8d61bdacc9f0697175` |
| 5 | `def` | [thetaPhiTermDeriv](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermderiv.md) | 32 | `declaration-track:0e4dd322a40995b784ccf9bb68fe10dfd6cd26f85c5127796c018993ddf6801c` |
| 6 | `def` | [thetaPhiTermSecondDeriv](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermsecondderiv.md) | 37 | `declaration-track:bbe38dd16d3a5cecf3eb639bb5d231771bad0bbf045840a921bed3e7bf99be2b` |
| 7 | `theorem` | [thetaPhiTerm_eq_mode](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphiterm-eq-mode.md) | 43 | `result-track:26491a123efbb3b08113445f692caa1fa66674d0e5a261765231676cebd45868` |
| 8 | `theorem` | [hasDerivAt_thetaModeA](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/hasderivat-thetamodea.md) | 51 | `result-track:0bd6556669123dcf5a7a1f72b686a76991067c67c21d75f2aacd3badd01ecfb4` |
| 9 | `theorem` | [hasDerivAt_thetaModeY](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/hasderivat-thetamodey.md) | 59 | `result-track:185aa2382549c00c9da18b6f39de405d95fc844682acb9b2558457c0f4e8316c` |
| 10 | `theorem` | [hasDerivAt_modePrefactor](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/hasderivat-modeprefactor.md) | 65 | `result-track:62fd3dc964263c1011d4dc12107c22f8361699b10bd1be3f70ba73a49b9b7342` |
| 11 | `theorem` | [hasDerivAt_thetaPhiTerm_raw](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/hasderivat-thetaphiterm-raw.md) | 74 | `result-track:ee0f44e97fa0e5465926e2bca04143ed142802b7157b75398e85b46f34fd2a66` |
| 12 | `theorem` | [hasDerivAt_thetaPhiTermDeriv_raw](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/hasderivat-thetaphitermderiv-raw.md) | 88 | `result-track:623dfa74469635bb62ec464ec17953b9c75819dee21f60d2aa0c2c863fd8904b` |
| 13 | `theorem` | [thetaPhiTermDeriv_eq_score](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermderiv-eq-score.md) | 99 | `result-track:8b9184ef2dfc6f18ee82fdf67150e7c82308453359d1fe2aae944730421b2bbb` |
| 14 | `theorem` | [thetaPhiTermSecondDeriv_eq_score_curvature](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermsecondderiv-eq-score-curvature.md) | 108 | `result-track:ce5cedb7e01ec6d55dd162d1ff16cd560954d9bc87404f57ed32aad3478ec75c` |
| 15 | `theorem` | [hasDerivAt_thetaModeScore](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/hasderivat-thetamodescore.md) | 118 | `result-track:1cb5c6d5167c802238316128973bfc4ffaf0a6a9daf909151c5d52c3560af94f` |
| 16 | `def` | [thetaGaussianTerm](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussianterm.md) | 138 | `declaration-track:2bd7c9bf3994112aad5e957ae3aaf59ed516d58d90cc1b6a7445b00b6463590e` |
| 17 | `def` | [thetaGaussianSum](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussiansum.md) | 142 | `declaration-track:f17afb9c3c4aa9bd6bb13e86665288c687d79dfa65133d913dd31ef16ad3eb3f` |
| 18 | `theorem` | [thetaGaussianTerm_nonneg](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussianterm-nonneg.md) | 144 | `result-track:37af9284e749b8d70dc13d2f7c118fe92934c2243b12e25a190b26afb5a35c22` |
| 19 | `theorem` | [thetaGaussianTerm_summable](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussianterm-summable.md) | 149 | `result-track:2ff7b8d91f0e50b8b38816ad2b4948927fec4d71386d5c4d4c6c8aade5b2f602` |
| 20 | `def` | [thetaGaussianCompactBound](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussiancompactbound.md) | 154 | `declaration-track:aa14554e861f516a0bc299ab5f5e6565e1844c920f0927441ee5fd98de2f5237` |
| 21 | `theorem` | [thetaGaussianCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussiancompactbound-summable.md) | 157 | `result-track:8aad0168f858af8a586d7c09d972c0f1557778645dd3a30a1b0c65382f731087` |
| 22 | `theorem` | [thetaGaussianTerm_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussianterm-norm-le-compactbound.md) | 161 | `result-track:637718020b228c6efa196d95cf53fe4cd415ca8e90eb9ad8c046f6bd6dede4e4` |
| 23 | `theorem` | [continuous_thetaGaussianTerm](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/continuous-thetagaussianterm.md) | 174 | `result-track:d24f40800684c3c824ac4337da66e209008ce9e2fe0f4e5252565bbe176412a2` |
| 24 | `theorem` | [continuous_thetaGaussianSum](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/continuous-thetagaussiansum.md) | 178 | `result-track:d803e4e419deff8fcf5b1a29d9f3c57baaf92a9563c1ca74e520e449cdd8d344` |
| 25 | `theorem` | [thetaGaussianSum_nonneg](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussiansum-nonneg.md) | 189 | `result-track:e4e5d25031f088718f378c86f7c5f4867dc2c91fc4f430827c612373afdf315c` |
| 26 | `theorem` | [thetaGaussianSum_le_superexp](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussiansum-le-superexp.md) | 193 | `result-track:f54006510a91d3e0196a28d12d908da61111618022da88dc3586cfb9f92f37f4` |
| 27 | `theorem` | [thetaGaussianSum_poly_norm_le_tail](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussiansum-poly-norm-le-tail.md) | 227 | `result-track:d62ace2174c302848cf50ae5b1bb7c4a11aa91f15c5413be14c6c2418eb94be4` |
| 28 | `theorem` | [thetaGaussianSum_poly_integrableOn](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetagaussiansum-poly-integrableon.md) | 263 | `result-track:59f6b5860deb34271104d73f4493d4ba4cec04069604445870efcff5e613027a` |
| 29 | `theorem` | [thetaPhiTermDeriv_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermderiv-eq-gaussians.md) | 286 | `result-track:96a80ca7bc4b91f56abaf917c19f6e7098d38accae225efd860b9ad8b7b3e7fc` |
| 30 | `theorem` | [thetaPhiTermSecondDeriv_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermsecondderiv-eq-gaussians.md) | 300 | `result-track:8b569914f9c43246cf938aa0cad9a48b6b9c4c3745f511542121904649b4e4c3` |
| 31 | `theorem` | [thetaPhiTermDeriv_summable](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermderiv-summable.md) | 318 | `result-track:77ac780fc4cd637b78870a16d1c602be5b86d5824f74cadcc27a1dd3d9ef3512` |
| 32 | `theorem` | [thetaPhiTermSecondDeriv_summable](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermsecondderiv-summable.md) | 326 | `result-track:b96a641358166c29dd229381296263d4ed61a3c050f30eaa649aacf71879e78e` |
| 33 | `def` | [thetaPhiDerivCompactBound](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphiderivcompactbound.md) | 335 | `declaration-track:901a5c483c68214c4d924f747818071343d61cd6a2a16700c055c769025da286` |
| 34 | `def` | [thetaPhiSecondDerivCompactBound](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphisecondderivcompactbound.md) | 340 | `declaration-track:aef0f3240633c83b7e934f11b28ac42499d0c453c24a3226d2c512fb4a69b68e` |
| 35 | `theorem` | [thetaPhiDerivCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphiderivcompactbound-summable.md) | 346 | `result-track:4c246be413b3bf62bada855717ae6ba67881eed5e07506e7268a1792518a43c3` |
| 36 | `theorem` | [thetaPhiSecondDerivCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphisecondderivcompactbound-summable.md) | 352 | `result-track:f7f1dc89d180e01f2b3a56a05991d63754d4790e97299240c0d136577793d8b7` |
| 37 | `theorem` | [thetaPhiTermDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermderiv-norm-le-compactbound.md) | 359 | `result-track:8f601d53db30fade3959997abe41f484f87f1ea85d3b0b85aeb081bcd117c77a` |
| 38 | `theorem` | [thetaPhiTermSecondDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphitermsecondderiv-norm-le-compactbound.md) | 371 | `result-track:f9cccb0cb785a53431952769c238a63a33824f6ff11cbb8d50ddd69f7b74b051` |
| 39 | `def` | [thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphirawd1.md) | 387 | `declaration-track:ad2e1c5f1ddadc57a933e3a068742f6acf12d421271cfc7e5fb724630e579de3` |
| 40 | `def` | [thetaPhiRawD2](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphirawd2.md) | 390 | `declaration-track:8d6f902cca9f4f69629a865e0f809971f6af5bb485bcd354872fc16c85db23e0` |
| 41 | `theorem` | [hasDerivAt_thetaPhi_raw](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/hasderivat-thetaphi-raw.md) | 393 | `result-track:0d480f48b05cc5ea5594611c9793120f1fe4bcab3f60011557ca61d89d52c392` |
| 42 | `theorem` | [hasDerivAt_thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/hasderivat-thetaphirawd1.md) | 402 | `result-track:259ebad66c764f7b8a2f33a1affe4dc28926c8f696a3105ef467dae25de423c0` |
| 43 | `theorem` | [deriv_thetaPhi_eq_raw](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/deriv-thetaphi-eq-raw.md) | 412 | `result-track:d19270011206656a2e723397bd28f1ab01f6d038c9bb95a337ddbc324b403319` |
| 44 | `theorem` | [continuous_thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/continuous-thetaphirawd1.md) | 415 | `result-track:8f973b150f4af11684f3dfba6d15752a8b64e5a888c0cb8cc1173402a7cdec56` |
| 45 | `theorem` | [thetaPhiRawD1_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphirawd1-eq-gaussians.md) | 418 | `result-track:ba79527407ffb0b9216d6b102db72d67e2eb376f9f021b503fa14b01c0e0cb8c` |
| 46 | `theorem` | [deriv_thetaPhi_poly_integrableOn](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/deriv-thetaphi-poly-integrableon.md) | 434 | `result-track:e344204d507dc8d90197709d327255e747102e243a02f3aec7fa20cf5522cc33` |
| 47 | `theorem` | [thetaPhi_deriv_mul_sub_integrableOn](../../../../MeasureAndIntegration/SourceDerivativesCombined.lean/declarations/thetaphi-deriv-mul-sub-integrableon.md) | 445 | `result-track:6b3f2f289508fa59aa0dfac0458682222424e5d39c61eae2f38bf0835ff107b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5a19cef14595d3572708bbbd49e42730dcf5eaaf4ec1d72c0b398bcbeeaf1f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
