# Verification target: GRWTSK.Analysis.Complex.RationalMellinNode

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc9ef9372a32c1859bf2404a6e637dd5c6f4ba7c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalMellinNode.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc9ef9372a32c1859bf2404a6e637dd5c6f4ba7c`.

Source path: `GRWTSK/Analysis/Complex/RationalMellinNode.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalMellinNode.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalLogEnclosure`](../../../../RealFunctions/ErrorBoundsRationalLogEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalExpTrace`](../../../../RealFunctions/RationalExpTrace.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Complex.IntervalMellinRangeReduction`](../../../../FunctionsOfAComplexVariable/IntervalMellinRangeReduction.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Resolution](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/resolution.md) | 30 | `declaration-track:0c4e347a8c31a4a5c5d89fff7b420086a84fca6a3a6efc21a4f5048ab8469560` |
| 2 | `def` | [magnitude](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/magnitude.md) | 39 | `declaration-track:a7129c4e05560a9aac9dd4d1457ea588957c91b5c6eff341ace4a4e493327ddf` |
| 3 | `def` | [logCenterQ](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/logcenterq.md) | 41 | `declaration-track:e7cd66beb760d0e0295861eb92ba97880cafbfc3e9ebb3043935ce287338654a` |
| 4 | `def` | [logRadiusQ](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/logradiusq.md) | 44 | `declaration-track:92dcf6b5ec40e40eddeed78b96191fb1fa4382708b193fd67f31266bdaaf87ed` |
| 5 | `def` | [exponent](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/exponent.md) | 48 | `declaration-track:30e8f37cab3948861585c3348b3a852b48b7be4e70e6e3fca273522a4e9ea6fa` |
| 6 | `def` | [exponentBound](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/exponentbound.md) | 51 | `declaration-track:acd3857d861288dfccf6307946b38a4dd9ea2f88e88397e11a900e0c6c90c787` |
| 7 | `def` | [error](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/error.md) | 55 | `declaration-track:a39a315d82906afb9b547072d8b3ffb1f26095311a8fcc5963dee28195160e7f` |
| 8 | `def` | [check](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/check.md) | 60 | `declaration-track:1bb003c0114ab0015f3c2ac0431a6fedc0de9065c5ef509b49579afa357b6bce` |
| 9 | `def` | [checkWithin](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/checkwithin.md) | 66 | `declaration-track:05dae96629f2418631988fa538d3f7b4a64e1415e102cf19fd58929898b11158` |
| 10 | `def` | [exactTrace](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/exacttrace.md) | 70 | `declaration-track:e6e66ad099618e88d0d4166aa77d040c9878df47bdc488949af64e12cd393030` |
| 11 | `theorem` | [cast_magnitude](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/cast-magnitude.md) | 73 | `result-track:db4627c8496df5bf8ea4afa52ebf9eb4f85647cc25859e46de1c1ded3f333ef0` |
| 12 | `theorem` | [magnitude_nonneg](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/magnitude-nonneg.md) | 77 | `result-track:e9baac282a21e5058aeaaa6a1fce2f2c3415ede59c3ea3b447d9e1ab93b44c70` |
| 13 | `theorem` | [toComplex_exponent](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/tocomplex-exponent.md) | 80 | `result-track:82c388118c4e12851dcb7254f58637f30a17dcdf70b6c0259e4d4f1af3533839` |
| 14 | `theorem` | [exponent_in_ball](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/exponent-in-ball.md) | 84 | `result-track:eae8e8e588131a44bd9cb2e64754fc6f3f661d61cdd121d4b23ba33a8b806813` |
| 15 | `theorem` | [exponent_re_nonpos](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/exponent-re-nonpos.md) | 92 | `result-track:0c30c253ef1842e579270aeda6d717503219af845bab5d4bb60318a9ffe2bede` |
| 16 | `theorem` | [check_components](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/check-components.md) | 99 | `result-track:4fbe0ab08d3c0a1f09a74427a1b7ab47c4109da5f5b91b4e4399ca4435ece144` |
| 17 | `theorem` | [logarithm_input_error](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/logarithm-input-error.md) | 106 | `result-track:ffc11433cafdffea22ef33934552652547057bc0643b544c346a76096feb7180` |
| 18 | `theorem` | [check_sound](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/check-sound.md) | 126 | `result-track:66ef0f847dd6ebc4149ebb3aec4eaa52a77d2680808096e38e3451d11748e560` |
| 19 | `theorem` | [checkWithin_sound](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/checkwithin-sound.md) | 143 | `result-track:7bad37150abaa221cd08afce030983a9c617dcc0a410391ff3b55435c200d2ff` |
| 20 | `theorem` | [exactTrace_checked](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/exacttrace-checked.md) | 151 | `result-track:d01d8981390000962e4bafc7f6570b5db74dc7aaf46adce946a30d6dc8612acc` |
| 21 | `theorem` | [checked_log_charge_le](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/checked-log-charge-le.md) | 161 | `result-track:97970c27eecd4a419e92d53c91865819ef2efe963e438e72d5522ad7339b4c2d` |
| 22 | `theorem` | [checked_lengths](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/checked-lengths.md) | 171 | `result-track:e5ed345823df870fbbf8d4a8464025e2377e48a506fe4671864a24ecd3cebf43` |
| 23 | `def` | [reciprocalResolution](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/reciprocalresolution.md) | 177 | `declaration-track:b2a2fadc7789d4789524830f96fd06f963eaac27abb69fece9bad9f66411ba9f` |
| 24 | `def` | [reciprocalTrace](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/reciprocaltrace.md) | 178 | `declaration-track:69a1ac1082d665ad4e8543360a84c5bce590fca9a1a5445b2e90718e58564170` |
| 25 | `theorem` | [reciprocal_node_checked](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/reciprocal-node-checked.md) | 180 | `result-track:e04283538e1b839cb07bc455e709aeb9a2be9e6c42b90164bf934396136ade54` |
| 26 | `theorem` | [reciprocal_node_enclosure](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/reciprocal-node-enclosure.md) | 183 | `result-track:2c084cbee61e6171613634a409c201d03a5379c9bf9edfa71c805606d348201c` |
| 27 | `theorem` | [exponential_only_is_insufficient](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/exponential-only-is-insufficient.md) | 189 | `result-track:b69ec04f7069539ea0cd28452a1b92254deb95ee83742b76c205c988552f06d7` |
| 28 | `theorem` | [stale_node_rejected](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/stale-node-rejected.md) | 194 | `result-track:2b9b523b152592ab76f2b17c424f8ffa17069694185846dc10abcf8210d02bca` |
| 29 | `theorem` | [source_parameter_rejected](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/source-parameter-rejected.md) | 197 | `result-track:de58b8daa6e94e8cb60930f9a1e4d5579333c999e7b1d800cde4561cae630161` |
| 30 | `theorem` | [constant_density_control](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/constant-density-control.md) | 201 | `result-track:6658170e318d208c7bfd27169d48b3c06c6440a02f9931e1dfc8efb7344e6301` |
| 31 | `theorem` | [domain_controls](../../../../FunctionsOfAComplexVariable/RationalMellinNode.lean/declarations/domain-controls.md) | 206 | `result-track:853997c409c3884c69c4f3e43c9b515c13035050cfe164f008462eb078d4bc23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1bdb83767af063f1c6bbcb972aaae7717964080d13c8be47b6b6e7874733dae7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/RationalMellinNode.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/RationalMellinNode.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
