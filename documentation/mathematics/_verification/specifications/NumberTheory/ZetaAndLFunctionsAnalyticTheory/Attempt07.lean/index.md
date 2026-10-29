# Verification target: Attempt07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da04d9e07b2a7fc23e132bea54fbbdd2bfd67ab2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt07/Variant2bf15805d72d629e3edae506e865732ef5c220e8937746fda8363f4755d16803.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da04d9e07b2a7fc23e132bea54fbbdd2bfd67ab2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt07/Variant2bf15805d72d629e3edae506e865732ef5c220e8937746fda8363f4755d16803.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt07/Variant2bf15805d72d629e3edae506e865732ef5c220e8937746fda8363f4755d16803.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryAsymptotic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/errorpolynomial.md) | 16 | `declaration-track:a2ec8a047494fefde85c634d68373ecdb649484254b3165374c0b1379758aef3` |
| 2 | `def` | [normalizationRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/normalizationratio.md) | 20 | `declaration-track:d6ffb8719338c244f4c3c2fc229e882f255b3047b7519a8fceefb2eb6ca868c2` |
| 3 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/positiveendpoint.md) | 23 | `declaration-track:7cf74b4cbd9baab9a6e51e6ea438bfe17d9f1799fc3b74a271ace73d16a14dac` |
| 4 | `def` | [reflectedEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/reflectedendpoint.md) | 27 | `declaration-track:3803cdf9ba5e0f20ecc06e398f2969051c76b7b571dc9bb6e44a6e2b9cf998e8` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/errorpolynomial-nonneg.md) | 31 | `result-track:573103cadf09f2b4e2e79bedbe440e051abbc75e69c59764bab1088eeb588be9` |
| 6 | `theorem` | [normalization_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/normalization-bounds.md) | 34 | `result-track:086cff0a7a1d239d19a88f1e44a1216e48e680788389fe350d64adfceb094e33` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/normalizationratio-bounds.md) | 58 | `result-track:f58713e776f627bffb7d5184456e7aed0ee8d39486f7d051d2360f505c8e52ab` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/normalizationratio-deficit.md) | 68 | `result-track:f28feb24e1e3ff23aedd5b6efd5ad7be7015cbbcd2f02095efeab8ae12258bf7` |
| 9 | `theorem` | [source_ratio_exact](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/source-ratio-exact.md) | 99 | `result-track:27b12368e598d75a6b1d241ada23b489bcad3fd4475571de2e702273469bd54b` |
| 10 | `theorem` | [inverse_power_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/inverse-power-bound.md) | 117 | `result-track:1ea9fb125e653ba8c19a455e157bd72950610f226b13cf2a657f641f727241a9` |
| 11 | `theorem` | [positiveEndpoint_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/positiveendpoint-error.md) | 133 | `result-track:2a813b6ebf5d95b3f154d733f41cb6d9e3aa299d8ef6716f7b45646767253ea8` |
| 12 | `theorem` | [reflectedEndpoint_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/reflectedendpoint-bound.md) | 165 | `result-track:cb18a2ff8ff3f97bcfccf1049eb8a8639f01b6ac8bdda0d62894cac17c96b2ae` |
| 13 | `theorem` | [negative_endpoint_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/negative-endpoint-rate.md) | 204 | `result-track:e20f4fb6e96b0234603878182e839b87255595f559db2bd5be176ae137eb3b42` |
| 14 | `def` | [rateConstant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/rateconstant.md) | 225 | `declaration-track:840abfb5684b8f7667a68a610acd7dfbc326bda8296d193d2be44fd63410660e` |
| 15 | `theorem` | [rateConstant_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/rateconstant-nonneg.md) | 229 | `result-track:6d50578abdad9f88fa759a4f855d8c56203ff07c44612ee0128092942599d8ea` |
| 16 | `theorem` | [normalizationRatio_norm_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/normalizationratio-norm-deficit.md) | 235 | `result-track:1a8f7dcb9cd86e03d080588178c31393b00f823e14b1170a0539b3e66283b246` |
| 17 | `theorem` | [uniform_source_ratio_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/uniform-source-ratio-rate.md) | 242 | `result-track:e4d7192b5151bec71a577b6c57212abdd837e2bdb8abb5e94fe5981dcdd2fdc4` |
| 18 | `theorem` | [uniform_source_amplitude_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/uniform-source-amplitude-rate.md) | 291 | `result-track:71ff61853bc99ee2b2590fb16e733b101fda681b931cdd3a9154b92d34133da5` |
| 19 | `def` | [coefficientBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/coefficientbound.md) | 307 | `declaration-track:8639bac2ce8fd1b879b09f101dcdbab8fd907f9de8d49a4c8b622a8f6faa3cf4` |
| 20 | `theorem` | [leadingCoefficient_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/leadingcoefficient-bound.md) | 310 | `result-track:e0652fc948cc6b0b48ceb88bb3e87ba37b3c8b2c1b37338fa35ad1c1898dca50` |
| 21 | `theorem` | [compact_source_amplitude_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/compact-source-amplitude-rate.md) | 326 | `result-track:2e7fbf6b5b59f40bca62db75a0b1f9b6226ab10d25035bb8e842c61d1e87ef8b` |
| 22 | `theorem` | [uniform_source_square_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/uniform-source-square-rate.md) | 339 | `result-track:e69a33b4640de0941fcd06647dc04ef4137f86434618c8784ad33e68b9bea6b3` |
| 23 | `theorem` | [boundary_transform_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt07.lean/declarations/boundary-transform-rate.md) | 369 | `result-track:ebf262a29f377d803ede0792ae381b0796b6982b879245f802af8413dca6c716` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c3e4f9cbfa12d79a12b78e8eecc96660987613bdffb9b5d59706925bcd914ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt07/Variant2bf15805d72d629e3edae506e865732ef5c220e8937746fda8363f4755d16803.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt07/Variant2bf15805d72d629e3edae506e865732ef5c220e8937746fda8363f4755d16803.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
