# Verification target: GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffd510a1dcaaf44453e63ea2cee7fff47a77de08",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierCircle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffd510a1dcaaf44453e63ea2cee7fff47a77de08`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicMultiplierCircle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicMultiplierCircle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic`](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.Complex.MeanValue` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CircleWindow](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/circlewindow.md) | 41 | `declaration-track:f2c625cbc1a45312f56273651a95c1a5339ee0a96d10c1b3138b11ede7cabdfa` |
| 2 | `def` | [centerPoint](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/centerpoint.md) | 52 | `declaration-track:69fe460e7d031cfc960e29fc87c50b89bd397a10449c076f2cbfed176a9cb251` |
| 3 | `def` | [parameter](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/parameter.md) | 56 | `declaration-track:669c01e4ff1f9db336127773865ce2ea13bb5ea50ef65a45a268ee235276710b` |
| 4 | `theorem` | [parameter_continuous](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/parameter-continuous.md) | 60 | `result-track:11d94cab17b8e8f72d03efca09426de3dbb05c72a4fe0c0a0f20474ef02a3f05` |
| 5 | `def` | [measure](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/measure.md) | 65 | `declaration-track:e43e0e58b0969558eb4ce53b787a8a40643b090e7fd8867ccb2378888461d002` |
| 6 | `theorem` | [measure_univ](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/measure-univ.md) | 69 | `result-track:4d5825ce2c55e4fafc788139463ca59c0892327a0d044c6f9eb4842f6b27b298` |
| 7 | `theorem` | [measure_probability](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/measure-probability.md) | 78 | `result-track:ba55b2ca01786ebc58ee9ecaeaadbb53e3cbe6d93e2f64f9d4721b0f5db24733` |
| 8 | `theorem` | [measure_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/measure-singleton.md) | 82 | `result-track:e47259e1f382017e0f542c1085dfdd8b65d9b16c0755b6ede504ae0ad6bebab9` |
| 9 | `theorem` | [integral_eq_circleAverage](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/integral-eq-circleaverage.md) | 99 | `result-track:e897830612ceedc5030a3df3b460430c1280d871d56687e15d67793c6759f136` |
| 10 | `theorem` | [integral_holomorphic](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/integral-holomorphic.md) | 113 | `result-track:2483bec2de6dea8575a72c02b920fd1b0284107f9c38a131a5b3d7fb0339abfe` |
| 11 | `def` | [identitySymbol](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/identitysymbol.md) | 134 | `declaration-track:81fa2baa05cc82ee5655740392a1d4d12ce7c4778b230d54a5263144a241800d` |
| 12 | `theorem` | [identitySymbol_value](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/identitysymbol-value.md) | 149 | `result-track:b58ae193c9d9eb13a0155c71b38662c6f27bbde236c1f8c5403becb278f16d85` |
| 13 | `theorem` | [section_mean](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/section-mean.md) | 158 | `result-track:3e57c3585bf1b765c3d2ba8234fff989f5161b1bd649205ab6c1a97f86a31dab` |
| 14 | `theorem` | [section_square_mean](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/section-square-mean.md) | 163 | `result-track:a785781b4bba9239480770d33b62dc2eb89fc09527371e0472b8949dee55cbf8` |
| 15 | `def` | [value](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/value.md) | 169 | `declaration-track:4e1f101735c62d48de1897bf993389a2855a1e8e2018cd2742c51f830609decb` |
| 16 | `theorem` | [value_classOf](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/value-classof.md) | 175 | `result-track:ccd2fa152c0483e77cac0002d24764bd482f112a43c05dfc855da3ed93a5f888` |
| 17 | `theorem` | [square_norm_eq_realSquare](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/square-norm-eq-realsquare.md) | 181 | `result-track:bb7839d1b5353ecc50ca6bd381632ce8a22dfbbdcc4c1a2b369c46780ad6eaca` |
| 18 | `theorem` | [section_square_integrable](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/section-square-integrable.md) | 188 | `result-track:3a962439a3982b70bfc9fe16b3a7a0578107da905043ed560097660d84c41c38` |
| 19 | `theorem` | [value_sq_bound](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/value-sq-bound.md) | 197 | `result-track:c3c2ec498cce1b36169e9fc3e4fc54b01d8ff51b24db4b2fb2d042c9f0d4c02c` |
| 20 | `theorem` | [value_norm_bound](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/value-norm-bound.md) | 215 | `result-track:d150cce43afcaa4ef13df39853b3422d32f5c22ea355d5df6ac0f789f4357202` |
| 21 | `def` | [functional](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/functional.md) | 220 | `declaration-track:87b47ae93b1fbcceb02df71ec5f79358b4dd565e7cc6fdedd4c7600b782b6474` |
| 22 | `theorem` | [functional_classOf](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/functional-classof.md) | 234 | `result-track:59e277250ac34dfb959873c0f414607564bba6a06bfd078e7350d83a4bb9f5a4` |
| 23 | `theorem` | [functional_norm](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/functional-norm.md) | 240 | `result-track:63e463e27f92353f9ce91adecfc8353e8e1a353af5a628f13a1a69506b6a3889` |
| 24 | `def` | [pointPort](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/pointport.md) | 253 | `declaration-track:c756645a488e892bfca6aa6f37bd06d625fbb031f15e9f3d568f9da68b3beb7e` |
| 25 | `theorem` | [center_norm_le_operator](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/center-norm-le-operator.md) | 263 | `result-track:8093f485f9e59af305203abf89dc26f5f24ea8c32bce544c2f443b8c3cf85822` |
| 26 | `theorem` | [no_positiveAtom](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/no-positiveatom.md) | 269 | `result-track:b7f8139fa05c4611819342a1186b7a65ba1fd6cdc4b20c850a83f80f1f816294` |
| 27 | `def` | [halfCircle](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/halfcircle.md) | 284 | `declaration-track:b8192cd69ec496ee20a8f07af57014fc76f950a5e44c82e8ba48316be172bef9` |
| 28 | `theorem` | [nonatomic_evaluation](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/nonatomic-evaluation.md) | 294 | `result-track:dfe3f52b18a0f871afcd820c2df6437c86b5eb79a50fb9e84d28e196d3944a4b` |
| 29 | `def` | [spike](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/spike.md) | 303 | `declaration-track:237597a35f32afc485b583cf34e67b4d7fb66c9848e2d0f74712468243cab9b4` |
| 30 | `theorem` | [spike_ae_zero](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/spike-ae-zero.md) | 305 | `result-track:9f07b30fa6b14d80c8b0c13021c7e167a5b8fa70a5a67ff65a031c45bce91c37` |
| 31 | `theorem` | [spike_center](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/spike-center.md) | 313 | `result-track:14c9ab9d4b43ec4ad7cb77c31513c435fb382ce2b7f2526cdefaeb100290fec5` |
| 32 | `theorem` | [spike_not_holomorphic](../../../../ProbabilityTheoryAndStochasticProcesses/HolomorphicMultiplierCircle.lean/declarations/spike-not-holomorphic.md) | 316 | `result-track:ae24611310af967e97ef7165fa04c84445ddf03dacece7bfd55fac478387686b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e804e22f227e7ff397c5127f1f1c31cc8cd4c813a2d2e20c6b53769c88941f17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/HolomorphicMultiplierCircle.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/HolomorphicMultiplierCircle.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
