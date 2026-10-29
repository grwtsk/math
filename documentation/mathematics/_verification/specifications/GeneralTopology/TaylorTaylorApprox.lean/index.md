# Verification target: Taylor Taylor Approx

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TaylorTaylorApprox.lean/index.md) · [Full source](../../../../GeneralTopology/TaylorTaylorApprox.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feca7dade96cdc55e024c788dd77b2c78a3eec8d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Taylor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Core.DerivativeIntervals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TaylorApprox](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/taylorapprox.md) | 49 | `declaration-track:b71a3b2493fb0a0c4d34d5eadd82bff8f1ac93bbf87231176ffa307778460c24` |
| 2 | `def` | [evalPoly](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/evalpoly.md) | 62 | `declaration-track:a26d1a47fd5bb667e1ce43a5416ebce521ef9d26ddc22141f334b5af6f90a7d3` |
| 3 | `structure` | [DerivBound](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/derivbound.md) | 70 | `declaration-track:bf4d52a57613f70f4e74c1e2bcdbc1dec94b2390f85a18c0a01a0975eb3f0b7b` |
| 4 | `lemma` | [uniqueDiffWithinAt_Icc_left](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/uniquediffwithinat-icc-left.md) | 83 | `result-track:736cde02e20c4cabf6653b70906928940e09c7f3df1033cdcf2094b1a1362b14` |
| 5 | `lemma` | [uniqueDiffWithinAt_Icc_right](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/uniquediffwithinat-icc-right.md) | 90 | `result-track:0c26d3471f8ba55e65902b890bc2632c58617765742756653ea794ba96758462` |
| 6 | `lemma` | [derivWithin_Icc_left_eq_deriv](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/derivwithin-icc-left-eq-deriv.md) | 97 | `result-track:853d6ed111f7bf5b859bdc8396bc4202d62d5e5648b9a6b0e899e40382592247` |
| 7 | `lemma` | [derivWithin_Icc_right_eq_deriv](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/derivwithin-icc-right-eq-deriv.md) | 105 | `result-track:d68b0f4c944551a5fccf6ca5d3b6817d7c9786967220883afbe8fff212b34dda` |
| 8 | `lemma` | [iteratedDerivWithin_Icc_interior_eq](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/iteratedderivwithin-icc-interior-eq.md) | 115 | `result-track:c100e1e86e837f3fdb10db9ab80e3ad2b2e76dcd5ce250dd9017cf7b5dc9d7a3` |
| 9 | `lemma` | [iteratedDerivWithin_Icc_left_eq_iteratedDeriv](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/iteratedderivwithin-icc-left-eq-iteratedderiv.md) | 128 | `result-track:8f07aa1a6fa77c4fa54ed6897ed8e846e6747599de91a3a14e42c1ea779c3676` |
| 10 | `lemma` | [iteratedDerivWithin_Icc_left_eq_iteratedDeriv_of_isOpen](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/iteratedderivwithin-icc-left-eq-iteratedderiv-of-isopen.md) | 165 | `result-track:53c3c9959a8427ef7b8ad52d35640027575ac7942f2f413623fcbe8270caea6a` |
| 11 | `theorem` | [taylor_remainder_bound_on_c_lt_x](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/taylor-remainder-bound-on-c-lt-x.md) | 204 | `result-track:b39eb5ce493cb4d808ceb0a941e16252201654bb9466b7830eb49217012edeb5` |
| 12 | `lemma` | [iteratedDeriv_translate_of_contDiffOn](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/iteratedderiv-translate-of-contdiffon.md) | 265 | `result-track:f9654f70acd48f52cc05b981703cca635838e8a775b580b4ec09542283a4356c` |
| 13 | `lemma` | [iteratedDeriv_reflect_of_contDiffOn](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/iteratedderiv-reflect-of-contdiffon.md) | 300 | `result-track:27a733f420dbad894130b79d9e46a70796027f081217bc293134588e07ef2101` |
| 14 | `theorem` | [taylor_remainder_bound_on_x_lt_c](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/taylor-remainder-bound-on-x-lt-c.md) | 323 | `result-track:9af28b411d4a0c0a8cdf8ca0cd954e825076f617459a7fceb2036890a4778403` |
| 15 | `theorem` | [taylor_remainder_bound_on](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/taylor-remainder-bound-on.md) | 441 | `result-track:488cd77f978e715a459300f7cb3fb2db200ba5628ae9bc4d00423713a2fb2d30` |
| 16 | `lemma` | [iteratedDeriv_reflect](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/iteratedderiv-reflect.md) | 485 | `result-track:137306100a0a2b89a0fac8c92abab2adc2ea2dd98dbc6533099a698a84640759` |
| 17 | `lemma` | [neg_one_pow_mul_self](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/neg-one-pow-mul-self.md) | 516 | `result-track:021ae5d3eac332d102a5194165a09204828cba14b61fba2af849930ba8cb3ace` |
| 18 | `theorem` | [taylor_remainder_bound_c_lt_x](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/taylor-remainder-bound-c-lt-x.md) | 524 | `result-track:ba4016952a4c2231597af673764275f82594e570809f2b89b0fbf0facda4d345` |
| 19 | `theorem` | [taylor_remainder_bound_x_lt_c](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/taylor-remainder-bound-x-lt-c.md) | 586 | `result-track:3cc088393efc8d704884e5ac444f1ace652dc5c0f48d5a8311eea1df503f004d` |
| 20 | `theorem` | [taylor_remainder_bound](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/taylor-remainder-bound.md) | 717 | `result-track:eda4473a82649b8f493fd29ee5dc160c60bafcb8087096b29f55ee9949f8bec8` |
| 21 | `def` | [expTaylorCoeff](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/exptaylorcoeff.md) | 762 | `declaration-track:8eeeae14dbdb2eed86b0f8635cda8cf4f1eef5bffc941a49ebbba6b223459475` |
| 22 | `def` | [sinTaylorCoeff](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/sintaylorcoeff.md) | 765 | `declaration-track:22e8d1028454714e84164ee12d521ea8ed87438fcd9347b2b35774aba8b37b3d` |
| 23 | `def` | [cosTaylorCoeff](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/costaylorcoeff.md) | 771 | `declaration-track:a5d8ff229c3a2eac981ded2b5009ba1a4318f8afab0303e83636fb2d958cfb9c` |
| 24 | `theorem` | [exp_deriv_bound](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/exp-deriv-bound.md) | 779 | `result-track:ddb83a6409b41d28fe17f32541f4870c902ff23b588b4ec18aa2e4e62f159805` |
| 25 | `theorem` | [sin_cos_deriv_bound](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/sin-cos-deriv-bound.md) | 789 | `result-track:3cc79cba7016acce12aa0dbf92957c4d2195bf91a791c594091b0a19c9a05ec3` |
| 26 | `theorem` | [cosh_le_exp_abs](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/cosh-le-exp-abs.md) | 812 | `result-track:6e5cb8bd639522bae98c994f1fc47a18d418defda0d779bd1cd11d6a1804da62` |
| 27 | `theorem` | [abs_sinh_le_cosh](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/abs-sinh-le-cosh.md) | 820 | `result-track:901ca39e9b06987ea165cc8630c8fec2667e498ba17aff64b8fd84700719cd5d` |
| 28 | `theorem` | [sinh_cosh_deriv_bound](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/sinh-cosh-deriv-bound.md) | 835 | `result-track:8757d2b7fad0c74d4ed0b4569151c545308c25b06f56a9533de6bc1ac5113fce` |
| 29 | `theorem` | [iteratedDeriv_log](../../../../GeneralTopology/TaylorTaylorApprox.lean/declarations/iteratedderiv-log.md) | 876 | `result-track:99b0a4069079e2309decc46c985a811d86832be4407be20bd7a885dac204324d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ca1f2bd688e2c15279dfcdcd7150d0b91d2a3b803a7ef466f5e98dc2c7d1ec4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
