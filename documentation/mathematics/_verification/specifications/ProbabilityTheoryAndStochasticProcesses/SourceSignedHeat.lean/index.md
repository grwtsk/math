# Verification target: Source Signed Heat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8411695f30cbf8b66b8854b856c711e1b254b2ae",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8411695f30cbf8b66b8854b856c711e1b254b2ae`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCompensatedFourier` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedHeat](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/signedheat.md) | 31 | `declaration-track:1288f4f5d4b84526ee5c418ab6e87363d7c6cb305e741662916dbfe18adc27fc` |
| 2 | `def` | [cubicHeat](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/cubicheat.md) | 35 | `declaration-track:2081b8e5842d0aeefa5d3d785e6511afcb632fe2688338ff472cb682a88c9cb7` |
| 3 | `def` | [signedHeatRemainder](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/signedheatremainder.md) | 39 | `declaration-track:00b8c799b7e45f2dfc6b907718acf0e2f1c147f15f5854ae848cf71fb6bd8c3a` |
| 4 | `theorem` | [heatPower_bound](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/heatpower-bound.md) | 42 | `result-track:0852cd916a0be155bb238d94aa8c30527cd8610b804d5f6a7642c3c959ef2a85` |
| 5 | `theorem` | [heatPower_integrable](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/heatpower-integrable.md) | 59 | `result-track:0e5659adfc8921d3a3777d2a71492ef6ab97957b479b197e07cce841b4af03bf` |
| 6 | `theorem` | [signedHeat_integrable](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/signedheat-integrable.md) | 67 | `result-track:fdc708cd800bf67e6bf44667d4804274d661b67eee4f14a07ffff05285608073` |
| 7 | `theorem` | [cubicHeat_integrable](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/cubicheat-integrable.md) | 72 | `result-track:520af80a66fe7f9beb492dbdcaac23904c3f802d8281c40313d92dd81823b15b` |
| 8 | `theorem` | [abs_time_local](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/abs-time-local.md) | 77 | `result-track:dd8de7ca60f047c15b119062ca1ddc72713dda0ff9cb66861bbd89f62eed93a7` |
| 9 | `theorem` | [signedHeat_hasDerivAt](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/signedheat-hasderivat.md) | 83 | `result-track:0a1bf59f90b22ea7d9ec0a141af34b682065e6fecb5103720d35d49499848b58` |
| 10 | `theorem` | [cubicHeat_continuousOn](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/cubicheat-continuouson.md) | 104 | `result-track:c6f99efe9ce6da6ff939292eece85262d0c65561258159816dd0b1a1b3d838a2` |
| 11 | `theorem` | [signedHeat_decomposition](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/signedheat-decomposition.md) | 117 | `result-track:e7626d21fdd341f358705e9021245693a6bbf715d807925028fe0d57ef2f2561` |
| 12 | `def` | [terminalCap](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/terminalcap.md) | 132 | `declaration-track:a30fc5bc6aa8655ef0767bbdcaa90dbce4aca3ebf0d12b6f7b5e7d936de4eb99` |
| 13 | `theorem` | [gaussian_abs_bound](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/gaussian-abs-bound.md) | 134 | `result-track:e3b0cdd422be4349dc1a4922c9da38f3b6fa22b263789fba0b99e6101710f8ac` |
| 14 | `theorem` | [signedHeat_terminal_bound](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/signedheat-terminal-bound.md) | 157 | `result-track:d895a216f2c25181083e3afbf5434055aab4b1547d9bc9e25daff087a97389df` |
| 15 | `theorem` | [signedHeat_neg](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/signedheat-neg.md) | 167 | `result-track:23173388ad7d244c39af75e9caba02ce8f6343a545bc660551d177c47e3bcf7d` |
| 16 | `theorem` | [evenHeat_neg_eq](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/evenheat-neg-eq.md) | 172 | `result-track:205b7c32e2c48ba884aab513a58b907062137ad4c500c2438c1e5da9e2d01d1a` |
| 17 | `def` | [sourceProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourceprobabilitymeasure.md) | 183 | `declaration-track:d3473f0871f4d3326b503ef8dc1b106389290415efe9d21c108c93c58f3bf77f` |
| 18 | `theorem` | [sourceProbabilityMeasure_isProbability](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourceprobabilitymeasure-isprobability.md) | 186 | `result-track:1502b2a472a46a15772dd6433b0e9b2de1d6267ef7a7734196789634403a5286` |
| 19 | `theorem` | [sourceProbabilityMeasure_integral](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourceprobabilitymeasure-integral.md) | 201 | `result-track:3d3be5280476c12d4c404123022beac4b0ae9e1f2bbea2a8de9e993f500de0f1` |
| 20 | `def` | [sourceSymbolBound](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourcesymbolbound.md) | 213 | `declaration-track:c3cf5069bf2d0f4f7a8462bf2e081f0c914b7262565bbe262e038c32d2f84b66` |
| 21 | `theorem` | [sourceSymbolBound_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourcesymbolbound-nonneg.md) | 216 | `result-track:c909b3b8d2d7519cb87b64ee2bb48602f8835701b77ae58593666083e3a81b33` |
| 22 | `theorem` | [compensatedFourierSymbol_abs_le](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/compensatedfouriersymbol-abs-le.md) | 219 | `result-track:9b91df1143be71a0765ca89f1226e2bae025923d955015b2f5502bfdf762f161` |
| 23 | `theorem` | [compensatedFourierSymbol_measurable](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/compensatedfouriersymbol-measurable.md) | 228 | `result-track:30b0c1608f306e0e1b5e3e457af93bc51491c0f07228f5288a6839d70f09d0af` |
| 24 | `def` | [sourceSignedHeat](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourcesignedheat.md) | 234 | `declaration-track:a6d792119005db1ef04e0c110a17bee0729305a53fce364402494b95fbafb579` |
| 25 | `def` | [sourceCubicHeat](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourcecubicheat.md) | 238 | `declaration-track:3835f9cdcee8ff16f1260dcf54c6c482eb3d6e58adda498b530a037de1b2fa5c` |
| 26 | `def` | [sourceHeatRemainder](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourceheatremainder.md) | 242 | `declaration-track:1a8266691b335f4ce3f4d79634d4119a506ead6328852a985bf1d1e35b03262f` |
| 27 | `theorem` | [sourceSignedHeat_zero](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourcesignedheat-zero.md) | 246 | `result-track:a18679b9a98cea87a4b7d0695384638c071b41ee8329ab0a1e56169b77526f35` |
| 28 | `theorem` | [sourceSignedHeat_hasDerivAt](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourcesignedheat-hasderivat.md) | 253 | `result-track:17bba6f01cea05992c59bbac29e2f9fadc4d9be547b6ccbad50dd345b3b81a97` |
| 29 | `theorem` | [compensatedSourceSum_eq_signedHeat_add_remainder](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/compensatedsourcesum-eq-signedheat-add-remainder.md) | 260 | `result-track:adcea30eafeb462c74d540fc59a9c62cb74d034566a259152577526c6032b4a7` |
| 30 | `theorem` | [sourceSignedHeat_terminal_bound](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/sourcesignedheat-terminal-bound.md) | 269 | `result-track:cf0369966d35734d743fe00660a6f1a1c1236e673b6d81da1fbf4b788e0576b1` |
| 31 | `def` | [UniformSignedHeatRemainderUpperBound](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/uniformsignedheatremainderupperbound.md) | 275 | `declaration-track:fc7927e85b2909074d301b55a8c6c47290f55098e525dc360f8775beb87ed0f4` |
| 32 | `theorem` | [compensated_tail_of_uniform_signedHeat](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/compensated-tail-of-uniform-signedheat.md) | 280 | `result-track:7289234057dbd6286fb62d5acd75c62e022ae7b3f090a63f49a047c6a308ee5b` |
| 33 | `theorem` | [uniform_signedHeat_of_compensated_tail](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/uniform-signedheat-of-compensated-tail.md) | 292 | `result-track:d9bea35ea7e5773c8b95f91b0c6bbc01bf56895c61fe3a1d8bd3f390715004da` |
| 34 | `theorem` | [uniform_signedHeat_iff_compensated_tail](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/uniform-signedheat-iff-compensated-tail.md) | 303 | `result-track:4c8e2594bcc5a7cc3f95dc6ca1676f48255e5a96b9b984e236165e2bacee030e` |
| 35 | `theorem` | [estimate_of_uniform_signedHeat](../../../../ProbabilityTheoryAndStochasticProcesses/SourceSignedHeat.lean/declarations/estimate-of-uniform-signedheat.md) | 309 | `result-track:f31791e6e28699d7282c152e2ee471313be42f6b611ea1626061d0e1f249d5b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7735a5ce30d019777e641d442ccd913741fc601fd67a467fa5fa8bde082d585 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
