# Verification target: Source Attempt7 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c7baac49c660df86f5658e84a7850474b547616",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variantedd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c7baac49c660df86f5658e84a7850474b547616`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variantedd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variantedd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/p.md) | 15 | `declaration-track:d8d40d82a209d93741a5e88bf26d5961cb52cb9c7c560854c4672d8e4db6bf93` |
| 2 | `abbrev` | [a](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/a.md) | 16 | `declaration-track:4545f56cea8d69c22b1e1e74e8b509d3b693f12fe421e723707cfb8f6dc59c8a` |
| 3 | `def` | [firstTerm](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/firstterm.md) | 18 | `declaration-track:44eda20054b7bdd92841f6046758c841d891bf8fdc71ea144891a75ff8587a57` |
| 4 | `def` | [secondTerm](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/secondterm.md) | 20 | `declaration-track:95c8442aec778f743a4bc49a985f5eed795d588fdd85f4ec6742e0937a4f9366` |
| 5 | `def` | [firstSeries](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/firstseries.md) | 22 | `declaration-track:7b82a34a8b05bfd0876a6deab13117cca529ebeba2b8db773830ac70b82e51a4` |
| 6 | `def` | [secondSeries](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/secondseries.md) | 24 | `declaration-track:5dcbd7a7c94c10ce9735a2de03f46745bad7b33e6160e4775aacd32543978b33` |
| 7 | `def` | [weight](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/weight.md) | 26 | `declaration-track:d02206fbe9a4e4bd443fcb04d4533f9165a8d091929eea29024fa42cb0c2605d` |
| 8 | `theorem` | [weight_eq](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/weight-eq.md) | 28 | `result-track:4f40c9420354c09b4c01f12b1fc5da5054d5d586604d231c8d566672fca34422` |
| 9 | `theorem` | [weight_summable](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/weight-summable.md) | 33 | `result-track:f25a36316ff3d1a9050ca6402165b0119d23a85801feecd72c4045ba63458d46` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/pairedterm-hasderivat.md) | 38 | `result-track:d8ae45fc5f4393766d7a4f9e071b585b6e91e065d13e5c5894fa181502e50a77` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/firstterm-hasderivat.md) | 55 | `result-track:a21141118a124c9105fedfd5253211d957a8a67c9001e3e99eb1a9b39d32542f` |
| 12 | `def` | [lowerCoefficient](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/lowercoefficient.md) | 73 | `declaration-track:27441588eca12a7d3af57cd7df63653ac3c12c48b566f229bc7469777b30fa7f` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/lowercoefficient-pos.md) | 75 | `result-track:780e792969085a40c6538d73ab5478051f0178c13b6543eea620481bcb725b64` |
| 14 | `theorem` | [rate_lower](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/rate-lower.md) | 78 | `result-track:e3f02cab866b7ebcf8475d51a29d0c3ca42cbc7c7eecda6b166df88361e52993` |
| 15 | `theorem` | [firstTerm_bound](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/firstterm-bound.md) | 87 | `result-track:f2922ade705ce91aa015cbcc486ef40f4067632ead00bc1bf1c3d86712f32a23` |
| 16 | `theorem` | [secondTerm_bound](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/secondterm-bound.md) | 116 | `result-track:b59d52ab529b5ae8b1b2a099eb0f18545af4352cddba9f4da7e54692a5e832cb` |
| 17 | `theorem` | [firstTerm_summable](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/firstterm-summable.md) | 133 | `result-track:9fea22bad1bd66a01a8c4a069c90c1dc3ec5aae71f2c85cad5d5d5f5b0c18036` |
| 18 | `theorem` | [secondTerm_summable](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/secondterm-summable.md) | 140 | `result-track:078d1e461c4903d53317419bcee351ad2f75040c7d57db92e2da42890ffb4915` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/actualprofile-hasderivat.md) | 146 | `result-track:e131decb2186fd5a57ebff553f86187cac302b3d1fe268bce6cf8246d45d3127` |
| 20 | `theorem` | [actualProfile_deriv](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/actualprofile-deriv.md) | 161 | `result-track:c25fee92c03747ff5b6d48c7e3e16f3a76f4fd68f0701a15df4019bdafcb6724` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/firstseries-hasderivat.md) | 164 | `result-track:de19dfa7743c857cc969f672df8981e24e8dd769a8c9e5b8c913d5a1f4e458ec` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/actualprofile-second-hasderivat.md) | 176 | `result-track:f059ebf0fccc6e03474c92c5949615a4429ae44d1b88ac265596ad5155c2afa1` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/actualprofile-second-deriv.md) | 182 | `result-track:df28238ea9f8554ff4ff0d7e52a8b9ac502c6c85fdd0ae4a6198e1ca5936a8f1` |
| 24 | `theorem` | [secondTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/secondterm-nonneg.md) | 186 | `result-track:18d9b6755e411d0dd1ca2bf70ac3f485ef023cae8fb6401c1377a2095fa13c93` |
| 25 | `theorem` | [exponential_firstMoment_integrable](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/exponential-firstmoment-integrable.md) | 190 | `result-track:9eef69f7b082fc82219205450837f1d146c20dc719c12344062b920f983f840c` |
| 26 | `theorem` | [exponential_firstMoment_integral](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/exponential-firstmoment-integral.md) | 203 | `result-track:d89bb4390d6384547e27c0a11bc07c14f493a61e7e1a378b07eb4ca9da9a1290` |
| 27 | `def` | [momentTerm](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/momentterm.md) | 211 | `declaration-track:5baec30a8103af91d8b2c677dac3947e09e525cf0d251e788a5facd06eedcb30` |
| 28 | `def` | [curvatureKernel](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/curvaturekernel.md) | 213 | `declaration-track:5092420b752ba3fbb3d555cdb8ee314075f5fea9eb0adc589174571117b99895` |
| 29 | `theorem` | [momentTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/momentterm-nonneg.md) | 215 | `result-track:96f36906f03e9f38dacddbb786b6ff6180921082044ce2c0539fe3873fccbbf1` |
| 30 | `theorem` | [momentTerm_integrable](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/momentterm-integrable.md) | 220 | `result-track:49d3dfd433adfde7aea252756b8d26a5af1d21f40ba2484bd49282c28bbcc9b8` |
| 31 | `theorem` | [momentTerm_integral](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/momentterm-integral.md) | 225 | `result-track:787fd91f86577ba2e87c591444ffb545d36131417099f7bbed3d011f6e620e57` |
| 32 | `theorem` | [momentTerm_hasSum](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/momentterm-hassum.md) | 230 | `result-track:a0526e29cde0c35b8482aad02d5437e25d620ddb3689d20391bda7f9a80dd8a4` |
| 33 | `theorem` | [curvatureKernel_continuousOn](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/curvaturekernel-continuouson.md) | 246 | `result-track:f3445ff38f45d3b10b045f9f2eda6bd657f4dcf30c236ec29d214ae44d68fea5` |
| 34 | `theorem` | [momentTerm_integral_norm](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/momentterm-integral-norm.md) | 253 | `result-track:190f66e893d346e1b5be177f054bed66a42aa0063580c5c60f547ce9a5b1a84f` |
| 35 | `theorem` | [momentTerm_integral_norm_summable](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/momentterm-integral-norm-summable.md) | 261 | `result-track:3fb0d6ed6e4536fc773195723b851165245b26e99f50601bb7a35cf4f5acc39f` |
| 36 | `theorem` | [momentTerm_lintegral_enorm_tsum_lt_top](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/momentterm-lintegral-enorm-tsum-lt-top.md) | 269 | `result-track:ea41d75a5e03063be4636a70047d11547a86ab8db29b4be3c11d538d98ac9031` |
| 37 | `theorem` | [curvatureKernel_integrable](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/curvaturekernel-integrable.md) | 281 | `result-track:ae086a13c1c4b2727bbdfcdb0b22bec51b7900a15e2737efa25e9bb24864835d` |
| 38 | `theorem` | [secondSeries_eq_curvatureIntegral](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/secondseries-eq-curvatureintegral.md) | 295 | `result-track:3c234a2e7c0bbb78f253ee53745fc0ac7cfa4ec08632db6cafb77c5d7012e72a` |
| 39 | `theorem` | [actualProfile_second_integral](../../../../MeasureAndIntegration/SourceAttempt7SourceEdition1.lean/declarations/actualprofile-second-integral.md) | 306 | `result-track:05b9a8b22215cbf477aa92ce6c090adb56437fe5ec8dca2767dd436ad1a8793d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28b6dcf20c41bd627c58d86dbd84905aa7f275c06bbebc441db58bffefdd7206 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variantedd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variantedd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
