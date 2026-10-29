# Verification target: Attempt09 Error Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20d324b42fd397a242c873d41ff001bc61731ac9",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt09/Variantcd9694fb3bfafdf0aea3a6c509a1c9f75f375206813f36a92905fca1f62404de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/index.md) · [Full source](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20d324b42fd397a242c873d41ff001bc61731ac9`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt09/Variantcd9694fb3bfafdf0aea3a6c509a1c9f75f375206813f36a92905fca1f62404de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt09/Variantcd9694fb3bfafdf0aea3a6c509a1c9f75f375206813f36a92905fca1f62404de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryAsymptotic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorPolynomial](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/errorpolynomial.md) | 16 | `declaration-track:49a66291af1339bf802ab009f0a34832b0053633f1270854bb81212949ee5cbf` |
| 2 | `def` | [normalizationRatio](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/normalizationratio.md) | 20 | `declaration-track:752c29429a05777e9bf4d63259342fa89b1fb5e8959020943295ebd8512d83fe` |
| 3 | `def` | [positiveEndpoint](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/positiveendpoint.md) | 23 | `declaration-track:58bdd32a6ae270a00931373d9506cf65e68ccf62f7586dcf0e321209071b6aa3` |
| 4 | `def` | [reflectedEndpoint](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/reflectedendpoint.md) | 27 | `declaration-track:72e1d56df18a61a3bb0f54ad0e8190d21d18d0e62cac8c0a808ab18bd5dcbeb0` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/errorpolynomial-nonneg.md) | 31 | `result-track:9cf071a0177015163c79e38470d70b5fba80524b92aadaf9f72cffcddc3ef23b` |
| 6 | `theorem` | [normalization_bounds](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/normalization-bounds.md) | 34 | `result-track:3557a8830ca92b867412586c8d90b1871675f1e5ae9000de6fa25bbe867ef657` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/normalizationratio-bounds.md) | 58 | `result-track:c1b0a7d9dae54845c13a7983ff624a8b4ca49eb9c703287c6bd3239cc80988e8` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/normalizationratio-deficit.md) | 68 | `result-track:1209954a9b1cbde14f98c78346e8c58274b736a9e08f3496d8a5e8e597bc9e07` |
| 9 | `theorem` | [source_ratio_exact](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/source-ratio-exact.md) | 99 | `result-track:d727e861d842ab26a695721f9e5581dec79b02f0650b1e4358665ec0950e68b9` |
| 10 | `theorem` | [inverse_power_bound](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/inverse-power-bound.md) | 117 | `result-track:35fb0e79b78a3ed805dc845f094bbfa3cea43181ef91b1232029721eab998fd9` |
| 11 | `theorem` | [positiveEndpoint_error](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/positiveendpoint-error.md) | 133 | `result-track:ee8819e9b7a258271fb2bb760f744d52a461485e02155ee45ab3bb296ca1f493` |
| 12 | `theorem` | [reflectedEndpoint_bound](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/reflectedendpoint-bound.md) | 165 | `result-track:53baf91abcadade2f251d7c6e7d8df93d919a809b94cb0b6ca7d9a49139e9f9e` |
| 13 | `theorem` | [negative_endpoint_rate](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/negative-endpoint-rate.md) | 204 | `result-track:d1ee1d6edcd65c252b317a6853ea42fc3793b316bd10d8e78cf99d410331531e` |
| 14 | `def` | [rateConstant](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/rateconstant.md) | 225 | `declaration-track:487c9496889c787abacd42e269786720a5f3614b20b88e12db72eb99a775dd6b` |
| 15 | `theorem` | [rateConstant_nonneg](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/rateconstant-nonneg.md) | 229 | `result-track:52bf67361f5f9cdb540d4fba5e0ef1f686ae696ca206c5708715a6a51cb5316e` |
| 16 | `theorem` | [normalizationRatio_norm_deficit](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/normalizationratio-norm-deficit.md) | 235 | `result-track:b2f05565d1cf9410246033d62c90d1343e410424147125edecbc2321d58ec965` |
| 17 | `theorem` | [uniform_source_ratio_rate](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/uniform-source-ratio-rate.md) | 242 | `result-track:b4fa3becc55f73bd9b33488546b2f5fc7502b875fc52487f76a8bd1621f12845` |
| 18 | `theorem` | [uniform_source_amplitude_rate](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/uniform-source-amplitude-rate.md) | 291 | `result-track:5e809cd849578c64576d25fd3137910ab4cc1afa51d7e5e94f529356c506396c` |
| 19 | `theorem` | [filter_zero_amplitude](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/filter-zero-amplitude.md) | 306 | `result-track:489cc140c90e4d23ab2cf5ee1a2be67fd1016cb1ec0e92d7fd7deb48d4e0828e` |
| 20 | `theorem` | [uniform_source_amplitude_rate_all](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/uniform-source-amplitude-rate-all.md) | 317 | `result-track:a67abcfa93f5a3394777f506411045a96435b997ac3587aeb16860071b4640ba` |
| 21 | `def` | [coefficientBound](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/coefficientbound.md) | 328 | `declaration-track:54bcddf83a50dd4760dc23865fc82afb1552516015903f50cb9bc75ab270a523` |
| 22 | `theorem` | [leadingCoefficient_bound](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/leadingcoefficient-bound.md) | 331 | `result-track:5b0b6b03417c4d904f6c288666e6e12302b34e92e565becc027e536eafcf8eb6` |
| 23 | `theorem` | [compact_source_amplitude_rate](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/compact-source-amplitude-rate.md) | 347 | `result-track:211364d0f64141d8e271771903e1a91b9a93223bd985dcd710281bc28e30860a` |
| 24 | `theorem` | [uniform_source_square_rate](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/uniform-source-square-rate.md) | 360 | `result-track:5dae42d195b2c023df43c48189ad79209a7681360e19d83b9a629cf57ce9bfb5` |
| 25 | `theorem` | [uniform_source_square_rate_all](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/uniform-source-square-rate-all.md) | 390 | `result-track:b35e7d270935c0d39c5893cea0a068d2699b8955b3d770fd28b12ea6e90a8b4a` |
| 26 | `theorem` | [boundary_transform_rate](../../../../GeneralTopology/Attempt09ErrorPolynomial.lean/declarations/boundary-transform-rate.md) | 400 | `result-track:2ba9ccb49edf72973ae7d001dc75b74bf5ec0763900a8519fb3da073c296bd0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01dd8db55b09949e9414efeaf7c7ad06d16fae2ff54ac9079b8d5c32e10f39d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Attempt09/Variantcd9694fb3bfafdf0aea3a6c509a1c9f75f375206813f36a92905fca1f62404de.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Attempt09/Variantcd9694fb3bfafdf0aea3a6c509a1c9f75f375206813f36a92905fca1f62404de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
