# Verification target: GRWTSK.Analysis.Operator.HolomorphicMultiplierArea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f6b98dd105a5d8265111243d4d66188ef5fbd72",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierArea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f6b98dd105a5d8265111243d4d66188ef5fbd72`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicMultiplierArea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicMultiplierArea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicAreaMean`](../../../../MeasureAndIntegration/HolomorphicAreaMean.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture`](../../../../GeneralTopology/HolomorphicMultiplierCircleMixture.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Map` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Restrict` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [areaMeasure](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/areameasure.md) | 47 | `declaration-track:f5aa79caeeb887a6e6d8fc781f94632ff95b75e45effb36de257779025a45cb7` |
| 2 | `theorem` | [areaMeasure_map](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/areameasure-map.md) | 51 | `result-track:aac1124b7f2c7edddc4dd083a8001886d5561e645dd6a4c6ac48aa3d7f5e63c0` |
| 3 | `theorem` | [areaMeasure_univ](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/areameasure-univ.md) | 56 | `result-track:065de2b0413c86ef6671a1186392e70bceaa2588f8cff9ecacdbea8ed5408796` |
| 4 | `theorem` | [areaMeasure_singleton](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/areameasure-singleton.md) | 61 | `result-track:2b529e1d0fac165f5164db04b328e8410232921dc1c69ec9d2ecf3f10dbfca25` |
| 5 | `theorem` | [lintegral_areaMeasure](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/lintegral-areameasure.md) | 67 | `result-track:f30eb381f013b57c0ce514e311d55f5d167547f71a3dcb287d49eca9d1d6fdd3` |
| 6 | `theorem` | [energy_area_eq](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/energy-area-eq.md) | 75 | `result-track:857d7ae83c4173df23ea82c6d73d6cbd1a57a07048eb18bc3e9b1d72545a94b6` |
| 7 | `theorem` | [window_integral_le_energy](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/window-integral-le-energy.md) | 87 | `result-track:691b6ef25ef6bb07bae233d72e77eb940e476dd2990a0b6abf0eafc118f60032` |
| 8 | `theorem` | [window_energy_bound](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/window-energy-bound.md) | 101 | `result-track:a3f5b7986e3e1e1a139862532386ff0d1d4b6d0b74380aa7e649a1e77eae6288` |
| 9 | `theorem` | [value_zero_of_energy_zero](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/value-zero-of-energy-zero.md) | 109 | `result-track:90500ca7cad734eb3fc6f7c57c89100b0fbd2d07798f8cf704d97c5d0994ed41` |
| 10 | `theorem` | [ae_value_eq](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/ae-value-eq.md) | 123 | `result-track:30d07474de92ea5ce8628a24cf02125a1e79d7f0382fcfccb27fcab1da82d2fc` |
| 11 | `theorem` | [aeEqual_area_iff](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/aeequal-area-iff.md) | 139 | `result-track:88a9d9b5ffa062d4f4ae5d6ee3cf7010f4d9eb27151315543d60db3f360ee8d2` |
| 12 | `def` | [value](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/value.md) | 149 | `declaration-track:9d1a38348694a5300b5e3dd29c82b8906d21e240beea0555a1806f9f10c3c5c0` |
| 13 | `theorem` | [value_classOf](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/value-classof.md) | 154 | `result-track:dd2da5b9851acc108c6e4475e56dc8c2252303d2ad5d302a27da0a29c71017a6` |
| 14 | `theorem` | [value_sq_bound](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/value-sq-bound.md) | 160 | `result-track:e86fa724ffbf3bb90dd5fe8be3760f0dec89d20f991900b7ea1ca2a7fe6e7b9e` |
| 15 | `theorem` | [value_norm_bound](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/value-norm-bound.md) | 170 | `result-track:a15ee6ba93e94f089cb733e28a56ced806453b02b894f87cdec400ba13ebe10d` |
| 16 | `def` | [functional](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/functional.md) | 186 | `declaration-track:aa7306e94d366d4ed68b8acf2e24bd2181c56a0f165ba4cbc63bcf0f2d51df6f` |
| 17 | `theorem` | [functional_classOf](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/functional-classof.md) | 201 | `result-track:c9b4b42d6abaeb4d0287001d12b98f9fb93c6b53462d6e962cb52b24cac9d8f6` |
| 18 | `theorem` | [functional_norm_le](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/functional-norm-le.md) | 206 | `result-track:cbb53faae8ddce4edc4ee6a3824b2aa93a7ee85b83591bcd0ecbd4fcbda263d3` |
| 19 | `theorem` | [functional_congr](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/functional-congr.md) | 212 | `result-track:af15f05952c73c79935de91c7907a838f75eaf9a0da6ab46df1d57b28638660c` |
| 20 | `def` | [pointPort](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/pointport.md) | 220 | `declaration-track:9daccdd3b808d88af317528b7ea3a356ceee52b11e7924de19e1385e80476d05` |
| 21 | `def` | [finiteAreaPointPort](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/finiteareapointport.md) | 233 | `declaration-track:d3fe234fa86657a4b821c1cc0497e0947bddeb9d529d5ef3338821f3725620e3` |
| 22 | `def` | [finiteAreaPointPortAt](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/finiteareapointportat.md) | 241 | `declaration-track:5a5a180ccea622d9529ec7d12bb912ddd9a618915c46f554d983a3ed363ec06e` |
| 23 | `theorem` | [area_representation_norm](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/area-representation-norm.md) | 248 | `result-track:fb6a6de799cd247114a5f85ff6105261baf800d366d5b6c9bff99dd92e909666` |
| 24 | `def` | [areaRepresentation](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/arearepresentation.md) | 255 | `declaration-track:a31ecacebe1716a9ac983e6addfe8e0224275c3dee3f9eab078294a32eaafa79` |
| 25 | `theorem` | [areaRepresentation_apply](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/arearepresentation-apply.md) | 263 | `result-track:c4bdc63393aad4cac0f136dd84f73c0ca7b82bb8e1af254544a63628b32ce0d5` |
| 26 | `theorem` | [area_representation_closed](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/area-representation-closed.md) | 269 | `result-track:e9ce2f970b14561159668ad4941595b0ba07f651c8bfd2f1cce789d5f47426de` |
| 27 | `theorem` | [no_positiveAtom](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/no-positiveatom.md) | 276 | `result-track:d27498d69de9bc0cda9dcc3786eaaaefc5be379546d4a3899631bdb6d7b41450` |
| 28 | `theorem` | [unit_not_finite_of_infinite_area](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/unit-not-finite-of-infinite-area.md) | 286 | `result-track:4876d14ed2cf5577912f713b880b8db88971495838268bc7d8c1ebdd7cfd8872` |
| 29 | `theorem` | [disk_finite_area](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/disk-finite-area.md) | 298 | `result-track:20fbfaeb5354bb616676c126c250d9b638802bf79bcc4fe8a3962ecd0d65bd60` |
| 30 | `theorem` | [disk_area_norming](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/disk-area-norming.md) | 305 | `result-track:dfda0f518120c0d4906a33afdf468162b05cb095728219aa639402a98585627c` |
| 31 | `def` | [spike](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/spike.md) | 315 | `declaration-track:89529c203764450b40691ee29672d8868bf1b7c2baf7de1c4bdeb014112ef035` |
| 32 | `theorem` | [spike_center](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/spike-center.md) | 319 | `result-track:13b893bf79cb4fe671212cb6bc6c5fbb7b4665327e9f3f969de39a06d896280a` |
| 33 | `theorem` | [spike_ae_zero](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/spike-ae-zero.md) | 321 | `result-track:d0205872cd2190b12ed2c1d35e8a5be57264b061bb0bf9fe8c8643b77c1240cb` |
| 34 | `theorem` | [spike_not_holomorphic](../../../../MeasureAndIntegration/HolomorphicMultiplierArea.lean/declarations/spike-not-holomorphic.md) | 329 | `result-track:1db56aba65f3b32381d0128b0690160fa39b4a3d1a498084813abb1a96aa20cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46d425949d8a7f0bcc4fa5d5461d3117b3a0ce41ac8d5f40a137665c0cd0f272 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/HolomorphicMultiplierArea.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
