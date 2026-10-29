# Verification target: Complex Boundary Rate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e7681b2a0d26b51028dfdd514925a6a039bdd8f",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ComplexBoundaryRate.lean/index.md) · [Full source](../../../../GeneralTopology/ComplexBoundaryRate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e7681b2a0d26b51028dfdd514925a6a039bdd8f`.

Source path: `GRWTSK/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean.json)

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
| 1 | `def` | [errorPolynomial](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/errorpolynomial.md) | 16 | `declaration-track:7b6e21c7c6f20899a6f4f66a67ce565595fc5ca3af7dce3818dbd5c4636a2873` |
| 2 | `def` | [normalizationRatio](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/normalizationratio.md) | 20 | `declaration-track:501235ead7578885f7e583612de48958d5165689e273e899fe2010f9a5cab11b` |
| 3 | `def` | [positiveEndpoint](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/positiveendpoint.md) | 23 | `declaration-track:4b07952c63b24bd9639be808ebb4159632cd7001445c10ce5d9445f08195f472` |
| 4 | `def` | [reflectedEndpoint](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/reflectedendpoint.md) | 27 | `declaration-track:71d792b435e68a91d3c5b2c7d70f8ff1a7c87bab775daf25df0353cc6740f5d5` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/errorpolynomial-nonneg.md) | 31 | `result-track:54b107179327432a22b2271a136f7ad7ce3e3ba9074034899b5adda3f9e53933` |
| 6 | `theorem` | [normalization_bounds](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/normalization-bounds.md) | 34 | `result-track:dae46953fcf75d0799ef4ea6e7f6a2bc8354bc139c1042e67838bc18ce244230` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/normalizationratio-bounds.md) | 58 | `result-track:28b69541e1a0a7dbb502201e427dd2203180102edc22a5d92d7d6692be836362` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/normalizationratio-deficit.md) | 68 | `result-track:15f33231dcb2682bf2b85bcfb6831ec6cefc95382774630f0d64f2af630ac019` |
| 9 | `theorem` | [source_ratio_exact](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/source-ratio-exact.md) | 99 | `result-track:5f3b19b5fa1f0d4e02cfe485a40bcf8409a2dc69859683d9504bbbb07592217a` |
| 10 | `theorem` | [inverse_power_bound](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/inverse-power-bound.md) | 117 | `result-track:ee3c84f42887c412d883a7a23266795bc1d97bb103188b5ec9363ad838cde303` |
| 11 | `theorem` | [positiveEndpoint_error](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/positiveendpoint-error.md) | 133 | `result-track:926b2b4587e3c604191e516f5f6acbd05d15976273fff5926abecf77c7be040c` |
| 12 | `theorem` | [reflectedEndpoint_bound](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/reflectedendpoint-bound.md) | 165 | `result-track:55760011dbdb0e755f6e3d74599236ad2b7c1b23b5f7772b7eaef40e4314291b` |
| 13 | `theorem` | [negative_endpoint_rate](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/negative-endpoint-rate.md) | 204 | `result-track:0169776aafe6f3080c8eb1793b3361000d26469d4b7fe0a4823fe8317144b0ad` |
| 14 | `def` | [rateConstant](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/rateconstant.md) | 225 | `declaration-track:c25291865144e51e95448ea551035009817faf38776d0fee09808c938234893e` |
| 15 | `theorem` | [rateConstant_eq](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/rateconstant-eq.md) | 229 | `result-track:e4e2b2ed864a4e728fb85529acf926a331be591588958a76eb4d2d0fae88e496` |
| 16 | `theorem` | [rateConstant_nonneg](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/rateconstant-nonneg.md) | 234 | `result-track:abcbdfe7fb63e4eeb7afb28b0cc5c12c97f87387829794f6fceee51b11b4e3e1` |
| 17 | `theorem` | [normalizationRatio_norm_deficit](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/normalizationratio-norm-deficit.md) | 240 | `result-track:cd7904bc02c9259ce1fbea6b21f57505824a1716b1cc2bc4a6eeca43ed47890b` |
| 18 | `theorem` | [uniform_source_ratio_rate](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/uniform-source-ratio-rate.md) | 247 | `result-track:74fcf11b22af3898494321cd82c0eabae78a53dbca325a5d1ec78c30312b5109` |
| 19 | `theorem` | [uniform_source_amplitude_rate](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/uniform-source-amplitude-rate.md) | 296 | `result-track:a42d28a015913f1c0cee67ce630a3473d879d8ed4d7f5939f46c827b9328c780` |
| 20 | `theorem` | [filter_zero_amplitude](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/filter-zero-amplitude.md) | 311 | `result-track:065683d1201b6e8f76092325bc630208d293974a3f0f49d5776e172fa164603f` |
| 21 | `theorem` | [uniform_source_amplitude_rate_all](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/uniform-source-amplitude-rate-all.md) | 322 | `result-track:16c4900bbc8fe1e89bcafae4de827b55ac94a114a23e6d728ba1586f40633861` |
| 22 | `def` | [coefficientBound](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/coefficientbound.md) | 333 | `declaration-track:cc0a9a8823aa4dba9ce978dd76ccbc381c2dfadf1bfd933037d41e1ac6879e62` |
| 23 | `theorem` | [leadingCoefficient_bound](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/leadingcoefficient-bound.md) | 336 | `result-track:3822ad9bedb3f87bd7a2012a53184f9f9127bfff69580b466b4172409fb9913f` |
| 24 | `theorem` | [compact_source_amplitude_rate](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/compact-source-amplitude-rate.md) | 352 | `result-track:c6d3876aa407e72a0536df2fbaa28ca80b29a675385f420e37c1894bb8a58374` |
| 25 | `theorem` | [uniform_source_square_rate](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/uniform-source-square-rate.md) | 365 | `result-track:4df78d20aa221a245f9b0f958f7385e4e00e4147d8e2e2f32e32b75842450ff9` |
| 26 | `theorem` | [uniform_source_square_rate_all](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/uniform-source-square-rate-all.md) | 395 | `result-track:4896f073ed884c48b558617807970e227228600c4134b25075800d83cae42f88` |
| 27 | `theorem` | [boundary_transform_rate](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/boundary-transform-rate.md) | 405 | `result-track:d0d5b0a786b45a75e470d548fd1e7424b664c60a0efbed8b75e9c2c3b4b5ba8e` |
| 28 | `theorem` | [actual_complex_amplitude_rate](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/actual-complex-amplitude-rate.md) | 423 | `result-track:2e7c823e5e998384c33f705709e30d6d50c176746de675ecb7e6c0c3c1882e37` |
| 29 | `theorem` | [compact_boundary_transform_rate](../../../../GeneralTopology/ComplexBoundaryRate.lean/declarations/compact-boundary-transform-rate.md) | 431 | `result-track:fdb516621bf6988a30115be0c58a0b3d814629fc288c7b55934544f31dbdfd8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5bf1e06961970819ceedf55aceb55fd5f2cfd6c4e5c3647b2279c651ced0e61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
