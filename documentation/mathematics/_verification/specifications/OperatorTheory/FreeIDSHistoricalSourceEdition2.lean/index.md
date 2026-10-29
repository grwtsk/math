# Verification target: GRWTSK.Spectral.FreeIDS

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef9c09e6131d353405f0d7577e54d1577d6f7ba5",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/FreeIDS.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef9c09e6131d353405f0d7577e54d1577d6f7ba5`.

Source path: `GRWTSK/Spectral/FreeIDS.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/FreeIDS.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Spectral.FreeDirichletSpectrum`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeDirichletSpectrumHistoricalSourceEdition2.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angleFraction](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/anglefraction.md) | 15 | `declaration-track:f9343ab4134951c54e2fad0566d0c4575260e75fd11b97e98c936f9a9b4796ae` |
| 2 | `def` | [freeIDS](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freeids.md) | 16 | `declaration-track:e909974b16d9a9457b576fc49f11222f39abf419196af34802066d162439d64d` |
| 3 | `def` | [cutoff](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/cutoff.md) | 17 | `declaration-track:48d8cd40836e19a087c213b4e98e2a84b17c46b2bd0746a35ccdd9863e394adc` |
| 4 | `def` | [freeEnergy](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freeenergy.md) | 18 | `declaration-track:225227581febdd6801fa1fbd7b9efa28f0e9a2ed063e038de8534d47ac4a27e0` |
| 5 | `theorem` | [angleFraction_bounds](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/anglefraction-bounds.md) | 20 | `result-track:228d4d6c9ccb2981e7162f7f6faad37a35d4234ac097a235357e0aa4c412057a` |
| 6 | `theorem` | [eigenvalue_le_iff_angle](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/eigenvalue-le-iff-angle.md) | 25 | `result-track:4a6e2ce65819f5762ce96c2cb2b1f69c091929a38217d3909a937384666cf24a` |
| 7 | `theorem` | [eigenvalue_le_iff_cutoff](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/eigenvalue-le-iff-cutoff.md) | 53 | `result-track:2dc2ba37cf399ba025623d0207094616add8837eb49011a2ce778ac7f1c4d74b` |
| 8 | `theorem` | [card_small_indices](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/card-small-indices.md) | 62 | `result-track:def0b0864071f05ac7cb196e1d39ecc4d7f6aeb5e6747e8a261595f7e5703ad1` |
| 9 | `theorem` | [cutoff_bounds](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/cutoff-bounds.md) | 71 | `result-track:1300adefa27340a85ac2d6d20f64ca51ce3aab94d41f344ffe3610a6f3fe6491` |
| 10 | `theorem` | [cutoff_ceil_le](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/cutoff-ceil-le.md) | 78 | `result-track:2e3bcf6f4f5a8e43ab941ab477d4e6568338c5860fd977df11785a8727bbec86` |
| 11 | `theorem` | [freeCount_eq_ceil](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freecount-eq-ceil.md) | 83 | `result-track:a9b7415a14bff5f700790d6a41914ccb451d776ccea9bb8b56b1cfdde6d20e8a` |
| 12 | `theorem` | [cutoff_rounding_bounds](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/cutoff-rounding-bounds.md) | 104 | `result-track:632ffd52f2661de245421ea535c5448303c81aa875fb51bb4d4ebf335bc231e3` |
| 13 | `theorem` | [normalized_count_bounds](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/normalized-count-bounds.md) | 117 | `result-track:2f5b27a800e2dfaafbbf1c233fa7ad468cb132963b3d842f34759c69924428d3` |
| 14 | `theorem` | [freeNormalizedCount_tendsto](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freenormalizedcount-tendsto.md) | 138 | `result-track:5b2818c64d05035ed27a598919a2c21be85da4c98f68804e1001e2a6b9b63fe0` |
| 15 | `theorem` | [freeIDS_of_le_neg_two](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freeids-of-le-neg-two.md) | 152 | `result-track:52aa221ecef49d79f4f88874fecb0a58ce9990b0554d73801ed0798c2252777e` |
| 16 | `theorem` | [freeIDS_of_two_le](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freeids-of-two-le.md) | 156 | `result-track:0dd18449b5c352b72fd16499a31dcd29490e1f731f6611bcde1a8cb39274cb4e` |
| 17 | `theorem` | [freeIDS_strictMonoOn](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freeids-strictmonoon.md) | 160 | `result-track:fd6b35e048b2a5da9f906401694f05ebdfdbf1b60068dfffdd3c9232859bf75b` |
| 18 | `theorem` | [freeEnergy_mem_Ioo](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freeenergy-mem-ioo.md) | 168 | `result-track:2abef88217214504f971e32791a3aaa6bfa867bfd63e85a585c1ce96e0d6f1a4` |
| 19 | `theorem` | [freeIDS_freeEnergy](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freeids-freeenergy.md) | 178 | `result-track:309aa68ede82fc1b9964ba83805eefa098dd62f9a9053095ee4f4d69e900643e` |
| 20 | `theorem` | [freeIDS_inverse_left](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freeids-inverse-left.md) | 188 | `result-track:0bfbdaf3ecb491cb49c7b685a968475c094ae0aab19dd54c6edd05b4e6ede8cc` |
| 21 | `theorem` | [freeIDS_inverse_right](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/freeids-inverse-right.md) | 201 | `result-track:05b99e06b8403e875dd5e644d6ad39cb36562fda312ac1193dd55f226a7cd999` |
| 22 | `theorem` | [gap_width_le_abs_coupling](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/gap-width-le-abs-coupling.md) | 216 | `result-track:e0372f9a7285100a45449cc9a6863c639437fb59d111c6a86e38e33282188036` |
| 23 | `theorem` | [sturmianNormalizedCount_zero](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/sturmiannormalizedcount-zero.md) | 225 | `result-track:24668d16a365faae6c51f87deaa58ff89ff8f050551f7397b9adab77e0ee8491` |
| 24 | `theorem` | [sturmianNormalizedCount_zero_tendsto](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/sturmiannormalizedcount-zero-tendsto.md) | 230 | `result-track:3d39f8065c6e599b2129f2bb6a25c044ee72910d1ce1b38443714c4f3e1b2223` |
| 25 | `theorem` | [no_internal_free_gap](../../../../OperatorTheory/FreeIDSHistoricalSourceEdition2.lean/declarations/no-internal-free-gap.md) | 236 | `result-track:66ab32e978124748188e5179fca15350e6132c47e79252fc701247213149658e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b25ac68cbbb2d473f5a8ceb75017213bc971998dae140c9eb7799c0b7a01fac7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Spectral/FreeIDS.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/SpectralTheory/FreeIDS__SourceOccurrencee53e67e18cd12134119aa05c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
