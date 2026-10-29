# Verification target: Actual Mellin Filter Attempt05 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c664003b67cd540158cf621d825ff9721e8ea6c6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c664003b67cd540158cf621d825ff9721e8ea6c6`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 6; external provider; requires a separately pinned dependency.
- `SourceBoundaryOrder` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticBumpLaplace](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/quarticbumplaplace.md) | 27 | `declaration-track:b010080420bc356ebcb969a7a07132063e84e3892ae6a49676fab54c42bc5811` |
| 2 | `theorem` | [quarticBumpLaplace_integrable](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/quarticbumplaplace-integrable.md) | 30 | `result-track:bcd9951b5a640a5d78dcb811d313bdfa20cf200de1dc219e7ffa3baac1150cd7` |
| 3 | `theorem` | [primitiveTransform_eq_interval](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/primitivetransform-eq-interval.md) | 36 | `result-track:e8f638204c27960971eceff25990ede517f5b8442616d2812771dccf62899eba` |
| 4 | `theorem` | [primitiveTransform_eq_quartic](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/primitivetransform-eq-quartic.md) | 49 | `result-track:a3c6fb7acd18d1331cb4fb360e88260e9a76db5d51655c01b96e32cb7f16de4b` |
| 5 | `theorem` | [actual_mellin_eq_normalizedTransform](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/actual-mellin-eq-normalizedtransform.md) | 73 | `result-track:10721ea114aea161097f23b93621f24c4c7327612b609b85c4c1c3832c48d9b1` |
| 6 | `theorem` | [actual_mellin_pole_filter](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/actual-mellin-pole-filter.md) | 78 | `result-track:25a98617a65f181f22707eb51e262ff116456b519c7778c867e821009e88943a` |
| 7 | `theorem` | [actual_mellin_pole_filter_unnormalized](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/actual-mellin-pole-filter-unnormalized.md) | 85 | `result-track:e2265bbb4893608d9f3bef2ed2851504dd4da6cc39d1f09bbc3b1139efd2041b` |
| 8 | `theorem` | [actual_mellin_nonzero_iff_bump](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/actual-mellin-nonzero-iff-bump.md) | 91 | `result-track:28d71d69be8bd96eb73116b09af7755556e7753a4839a517ee81988034c3e26e` |
| 9 | `theorem` | [actual_mellin_halfstrip_nonzero_iff_bump](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/actual-mellin-halfstrip-nonzero-iff-bump.md) | 101 | `result-track:b1b674ba40034312008bcccadeec9063b417299d78323774c8de65c1a46a7d29` |
| 10 | `theorem` | [actual_mellin_eq_quartic](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/actual-mellin-eq-quartic.md) | 109 | `result-track:6bd4edb125a64a4f53ab077ca93cee2c6a41ed038877083feb24a988955b10eb` |
| 11 | `theorem` | [actual_mellin_halfstrip_nonzero_iff_quartic](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/actual-mellin-halfstrip-nonzero-iff-quartic.md) | 117 | `result-track:6c83b23bedeaa60591bac8c024f08face5c8a1819e583396ecb1062cfcab36ee` |
| 12 | `theorem` | [actual_halfstrip_quartic_argument_pos](../../../../MeasureAndIntegration/ActualMellinFilterAttempt05Namespaced.lean/declarations/actual-halfstrip-quartic-argument-pos.md) | 126 | `result-track:3890214e30c41c4d1564ef9aa7b71c94ed60ea3ccbc211dcd8fe4bb6af321c96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8f180cd7abe5cdee1f4b8572719e7f5d221fc31575fa7d29f661492754ee9e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
