# Verification target: GRWTSK.NumberTheory.LSeries.Checks.Positive.GaussianDyadic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abe79259b50c0ace229e418c944e5fdbe32d6ab4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LSeries/Checks/Positive/GaussianDyadic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PositiveGaussianDyadic.lean/index.md) · [Full source](../../../../NumberTheory/PositiveGaussianDyadic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abe79259b50c0ace229e418c944e5fdbe32d6ab4`.

Source path: `GRWTSK/NumberTheory/LSeries/Checks/Positive/GaussianDyadic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LSeries/Checks/Positive/GaussianDyadic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.LSeries.GaussianDyadic`](../../../../NumberTheory/LSeriesGaussianDyadic.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dyadic_partition_generic](../../../../NumberTheory/PositiveGaussianDyadic.lean/declarations/dyadic-partition-generic.md) | 12 | `result-track:53eaf72975bfd4c1b289610eff666962f836dee3c1ef8cd0314347fceff77b18` |
| 2 | `theorem` | [gaussianDyadic_generic](../../../../NumberTheory/PositiveGaussianDyadic.lean/declarations/gaussiandyadic-generic.md) | 16 | `result-track:4cd47fa345278bc983c301d4a42664249dd911590b974d61bc5c23a019725e92` |
| 3 | `theorem` | [gaussianDyadic_two_one](../../../../NumberTheory/PositiveGaussianDyadic.lean/declarations/gaussiandyadic-two-one.md) | 21 | `result-track:10f4d7274165b7791e8865aec7be1c1bb800a4254643232f76e9b6523fae4c63` |
| 4 | `theorem` | [gaussianDyadic_first_scale](../../../../NumberTheory/PositiveGaussianDyadic.lean/declarations/gaussiandyadic-first-scale.md) | 26 | `result-track:2e8b9b26d7122dd5d8d8a83cf8a4427f2812837a76b248bde1f3a61f0de31a56` |
| 5 | `theorem` | [dyadic_quarter_all_zero](../../../../NumberTheory/PositiveGaussianDyadic.lean/declarations/dyadic-quarter-all-zero.md) | 33 | `result-track:29f854a78aaf6a35002f02bf38220387ea5ef787175d51b0566839e09151110e` |
| 6 | `theorem` | [dyadic_quarter_tsum_zero](../../../../NumberTheory/PositiveGaussianDyadic.lean/declarations/dyadic-quarter-tsum-zero.md) | 40 | `result-track:32e990c568fedb1b5bbc5c04502d004f0d48b740c7c859360fca8679cfcb0a55` |
| 7 | `theorem` | [dyadic_quarter_not_partition](../../../../NumberTheory/PositiveGaussianDyadic.lean/declarations/dyadic-quarter-not-partition.md) | 44 | `result-track:9b48193f2e428b306898ff9d2164513e0a617af14dd3d3897094a884a96de494` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb64703ce538c5430d23f77ae1ec640637910bc048c160154133d9510fb9e587 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/LSeries/Checks/Positive/GaussianDyadic.lean","GRWTSK/_verification/specifications/NumberTheory/LSeries/Checks/Positive/GaussianDyadic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
