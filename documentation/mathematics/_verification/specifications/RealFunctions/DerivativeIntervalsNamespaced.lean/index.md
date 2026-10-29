# Verification target: Derivative Intervals Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c29951284969c83a89047cd0abdbd871421d181",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variant043dc11a986940e8a36bfeb1e4405f8ae903762edc79dc403bbcb489491e9084.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c29951284969c83a89047cd0abdbd871421d181`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variant043dc11a986940e8a36bfeb1e4405f8ae903762edc79dc403bbcb489491e9084.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variant043dc11a986940e8a36bfeb1e4405f8ae903762edc79dc403bbcb489491e9084.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_deriv_pos](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/exp-deriv-pos.md) | 72 | `result-track:3a26837b91d327cd9bd97829710c97466a6a003d496ffdaec2ff17526ba80ff4` |
| 2 | `theorem` | [exp_strictMono](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/exp-strictmono.md) | 77 | `result-track:2fb840eb2c14a69fae84b2005038d39de732d0f664a2e0f8854fb77dd9611352` |
| 3 | `theorem` | [exp_deriv_interval](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/exp-deriv-interval.md) | 80 | `result-track:15d93e629ce8be7ea132eace2897d8b9c66f78a1eb741fee4d1d972ab6ea52f5` |
| 4 | `theorem` | [log_deriv_eq_inv](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/log-deriv-eq-inv.md) | 88 | `result-track:258a4bbf24c3c9d169ba6f9e7ece384ac9b6ffb63d874e810f6ddd8d9ff09ad3` |
| 5 | `theorem` | [log_deriv_interval](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/log-deriv-interval.md) | 92 | `result-track:eaba31fcd9aab433506f6a40520fc15cf239c34b2247b9fbec9fa33c2461b973` |
| 6 | `theorem` | [log_strictMonoOn](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/log-strictmonoon.md) | 102 | `result-track:371f18267b4bee4fffe5d10e44c1837cc4cb89015ae56cc5990d56582bf34eb5` |
| 7 | `theorem` | [arctan_deriv_eq](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arctan-deriv-eq.md) | 107 | `result-track:e342bf63f2203eb18ad483f348ba0578afd5c9f36a120944f62a85ccef74a3e3` |
| 8 | `theorem` | [arctan_deriv_pos](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arctan-deriv-pos.md) | 111 | `result-track:0c979007751b5f2b1a5623e60e4fcdb0626640c2e9ed228e550b7f903180b5f4` |
| 9 | `theorem` | [arctan_deriv_le_one](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arctan-deriv-le-one.md) | 116 | `result-track:44d1c933cbd8966034dd5df85fca1d007ff2fb87266c0fd83bae6f17f468bf2f` |
| 10 | `theorem` | [arctan_deriv_interval](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arctan-deriv-interval.md) | 122 | `result-track:78cba6c0372770469c0a0b2be894b3224104660698d5815352334f9f5b7e26f5` |
| 11 | `theorem` | [arctan_deriv_mem_Icc](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arctan-deriv-mem-icc.md) | 126 | `result-track:1ddb463a063195994505cb3facfb7c8e34cc47d0672c54affae7b77fae01dab8` |
| 12 | `theorem` | [arctan_strictMono](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arctan-strictmono.md) | 130 | `result-track:5e6836a7d21b5a3f43827473e2d09e20f738bc42accfa50aa1f5630f41eb3196` |
| 13 | `theorem` | [arsinh_deriv_eq](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arsinh-deriv-eq.md) | 135 | `result-track:608ea5b2ebb520040b9c58982cc6d8f68ac1bf73d32694fe317139276f0f16c7` |
| 14 | `theorem` | [sqrt_one_add_sq_ge_one](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/sqrt-one-add-sq-ge-one.md) | 140 | `result-track:d9ff6f674bc952755f9d9284fe3d3dde3ffa8449c57bf902996eb00a0cfd6042` |
| 15 | `theorem` | [sqrt_one_add_sq_pos](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/sqrt-one-add-sq-pos.md) | 146 | `result-track:51f5a4103d07dcfc6ffd92ef8919010be20e7c9b01759afb79b8316e8ce458b1` |
| 16 | `theorem` | [arsinh_deriv_pos](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arsinh-deriv-pos.md) | 151 | `result-track:01698787fa2528decb72ac061bbfc245980e16e71b66848f3b2796c7a1d1557e` |
| 17 | `theorem` | [arsinh_deriv_le_one](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arsinh-deriv-le-one.md) | 156 | `result-track:9aece9ea160052657356976bc931cec17134bd71794d87883a76ec15aec1b75f` |
| 18 | `theorem` | [arsinh_deriv_interval](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arsinh-deriv-interval.md) | 161 | `result-track:1b56ab17a9eacb65a103f81d2058c0e938e8a0a61a22e607cdcad0cb5c946412` |
| 19 | `theorem` | [arsinh_deriv_mem_Icc](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arsinh-deriv-mem-icc.md) | 165 | `result-track:d7b38c634ef93e62402cedcf1ad8c4d1bd5480487ce84fb95087b5f65e94fd71` |
| 20 | `theorem` | [arsinh_strictMono](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/arsinh-strictmono.md) | 169 | `result-track:e413fb987edde71ef6e55306e969821053131a6e77327feea8b269c91be8dff0` |
| 21 | `theorem` | [sin_deriv_eq](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/sin-deriv-eq.md) | 174 | `result-track:a2fb60a18d8279d3cfe7df52d1d57455bdf5090081346e54721bbda281484905` |
| 22 | `theorem` | [sin_deriv_abs_le_one](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/sin-deriv-abs-le-one.md) | 179 | `result-track:c828ce54fd2f06a850c1b70d7081a30280912cbac0b290605bfadf3676e02044` |
| 23 | `theorem` | [sin_deriv_mem_Icc](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/sin-deriv-mem-icc.md) | 184 | `result-track:06d36f5265bdb6528240a8860f6614cc8c1f4d5313c97b4bf14aee6a44bbbdd3` |
| 24 | `theorem` | [cos_deriv_eq](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/cos-deriv-eq.md) | 191 | `result-track:afa67927ea5b0cf0b97cb092933e5832e23b5492dd5a0d8f33f3f4086fb52a51` |
| 25 | `theorem` | [cos_deriv_abs_le_one](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/cos-deriv-abs-le-one.md) | 196 | `result-track:303dce1a76e993f8fa56e66185de96531a2e4f03c3641bf1cacd7905a1d26db7` |
| 26 | `theorem` | [cos_deriv_mem_Icc](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/cos-deriv-mem-icc.md) | 201 | `result-track:93adc4bf147e13706d7bd7b08f03952f0c67fa16ead40894cfdc5eb83a9669ce` |
| 27 | `theorem` | [sinh_deriv_eq](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/sinh-deriv-eq.md) | 210 | `result-track:47937eaf87079178203444ced7e7f5db35e4969814e4585637b41770b89d3528` |
| 28 | `theorem` | [sinh_deriv_ge_one](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/sinh-deriv-ge-one.md) | 215 | `result-track:b721e669b4d0c591fbc8b95f99d7242f4c2b725b3baa408428f148d78f8e39e6` |
| 29 | `theorem` | [sinh_deriv_pos](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/sinh-deriv-pos.md) | 220 | `result-track:f4210f656c0ed2a8f97783fe63c03497209301fb6d695260c762af0853fd3564` |
| 30 | `theorem` | [sinh_strictMono](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/sinh-strictmono.md) | 225 | `result-track:be9e304e3e80d1af4cc5761c3db27706a9d9d2824b8d0580ab57f4a0a22ac99e` |
| 31 | `theorem` | [cosh_deriv_eq](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/cosh-deriv-eq.md) | 230 | `result-track:ef4cc84b55a6fccc8b45f292c5319c37e58116cd117e1eef263fef8c79573ed0` |
| 32 | `theorem` | [cosh_deriv_zero](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/cosh-deriv-zero.md) | 235 | `result-track:bb5abc34aef7bab737855934480d356f61df5c416253e26a3c17d8eca56edfc7` |
| 33 | `theorem` | [cosh_deriv_pos_of_pos](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/cosh-deriv-pos-of-pos.md) | 239 | `result-track:9332f85cff9d096ee735a7d011ce7e92b9b95f8a73782b5bed9c66ebe1ed64d7` |
| 34 | `theorem` | [cosh_deriv_neg_of_neg](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/cosh-deriv-neg-of-neg.md) | 244 | `result-track:62f84dbe120d138da22fe9208b4055a2069ace8df5938a043a8fbbcdf3f0bb2d` |
| 35 | `theorem` | [cosh_strictAntiOn_nonpos](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/cosh-strictantion-nonpos.md) | 249 | `result-track:78f904b3b6e8ec245bec8e1c16e1808fe4853a4513b54e801147d3a7478270eb` |
| 36 | `theorem` | [cosh_strictMonoOn_nonneg](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/cosh-strictmonoon-nonneg.md) | 263 | `result-track:34fc29bef87ef82683884360e3edd4a548735e4684e2020179693f80a4b95777` |
| 37 | `theorem` | [one_le_exp_of_nonneg](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/one-le-exp-of-nonneg.md) | 285 | `result-track:45e91d61b6478cf97747f0025bd12302534d76cb326d6d18980c601a682a8e94` |
| 38 | `theorem` | [one_add_le_exp](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/one-add-le-exp.md) | 289 | `result-track:fd7a12fb9b7bcfbf8ab2c418474a2e87a3ffa4ae549b42337109607865ba6c40` |
| 39 | `theorem` | [add_one_le_exp'](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/add-one-le-exp.md) | 294 | `result-track:8132cbd0d91f385c9323c477fa5b14e356e5f5024f790022674ca85a9eb3433a` |
| 40 | `theorem` | [monotoneOn_of_deriv_nonneg](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/monotoneon-of-deriv-nonneg.md) | 302 | `result-track:8462e2f2c89d5267ce1cfecc3328087a9e892dcca4354407f527a8898312eee3` |
| 41 | `theorem` | [strictMonoOn_of_deriv_pos](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/strictmonoon-of-deriv-pos.md) | 312 | `result-track:f175f4e4dfa3e6268a5eb899e7ea45757f393a18d8dd5479b38eeb9795f548a3` |
| 42 | `theorem` | [antitoneOn_of_deriv_nonpos](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/antitoneon-of-deriv-nonpos.md) | 321 | `result-track:1670e477530ceaadbe11cd8622114929bf1f8baf1016338b3934aa47c55cf812` |
| 43 | `theorem` | [strictAntiOn_of_deriv_neg](../../../../RealFunctions/DerivativeIntervalsNamespaced.lean/declarations/strictantion-of-deriv-neg.md) | 331 | `result-track:30448942c06e3b398c569a313c6a0a097e39e76e924a8f6ae8021ea952677a7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86330c966dce5624e09c089407daba58303fafb88c7ee21fc8fb4790ddeed3e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variant043dc11a986940e8a36bfeb1e4405f8ae903762edc79dc403bbcb489491e9084.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variant043dc11a986940e8a36bfeb1e4405f8ae903762edc79dc403bbcb489491e9084.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
