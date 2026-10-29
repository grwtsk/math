# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.SeparatedHeightControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dd73e94cdee9d504616366dafb064f1c140942b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/index.md) · [Full source](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dd73e94cdee9d504616366dafb064f1c140942b`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours`](../../../../../../NumberTheory/Chebyshev/SeparatedTentContours.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [empty_clearance](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/declarations/empty-clearance--cc131f18daf0e08ca8223ddc.md) | 22 | `result-track:cc131f18daf0e08ca8223ddc0067e04898dc02bf9db4c5b795e23751e1c8d808` |
| 2 | `theorem` | [empty_grid_midpoint](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/declarations/empty-grid-midpoint--600676522d4d1288bb275ef1.md) | 24 | `result-track:600676522d4d1288bb275ef1bfa284cee16354ea5405cefd81f9c9c674c1d698` |
| 3 | `theorem` | [one_blocker_other_candidate](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/declarations/one-blocker-other-candidate--4445b3539f51b88ea6220b54.md) | 28 | `result-track:4445b3539f51b88ea6220b54f1f62024647e9eb2e57a0b184bb33e8d50476033` |
| 4 | `theorem` | [local_band_endpoints](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/declarations/local-band-endpoints--fc55280cc521a13c72ebc383.md) | 34 | `result-track:fc55280cc521a13c72ebc383492dedcae910678ffc7c3692641c6072cd6c6ee6` |
| 5 | `theorem` | [whole_gap_rounding_can_hit](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/declarations/whole-gap-rounding-can-hit--003ef5de79bf110a3da53b37.md) | 39 | `result-track:003ef5de79bf110a3da53b3775ced1636ccd0fd6d15ce4957f5253d80123c372` |
| 6 | `theorem` | [equal_height_distinct_points](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/declarations/equal-height-distinct-points--986f063b434c9215e5380930.md) | 44 | `result-track:986f063b434c9215e538093036cb1056c0528bf4600476b0a7e2e0791a70a80c` |
| 7 | `theorem` | [multiplicity_mass_is_not_cardinality](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/declarations/multiplicity-mass-is-not-cardinality--e12dffbe244951641633f861.md) | 54 | `result-track:e12dffbe244951641633f86181a2f4710bcf328e828b73c9d55a2aa3238aea3b` |
| 8 | `theorem` | [omitted_record_breaks_gap](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/declarations/omitted-record-breaks-gap--d9c5b8aea857c3f97efd7b9d.md) | 57 | `result-track:d9c5b8aea857c3f97efd7b9d8449db6b4aa4ed0a9fbac34679650cf20a0513d3` |
| 9 | `theorem` | [regular_part_not_controlled](../../../../../../NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean/declarations/regular-part-not-controlled--0044ae2afda4e78d4ddb8350.md) | 61 | `result-track:0044ae2afda4e78d4ddb83506e5d34f6bd168cea26b2c29435bc5847565cc05d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36ddae1da21ef7d0c720d33db274a50be58e605f245cd53133c9be2c67fc4ab1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/SeparatedHeightControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
