# Verification target: Source Filter Delta Convergence Fragment Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d927a799c033d6faf561bd319756d58de2d6a695",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant42ad0d706b193d6c927a7aae78b2ffdb07a45944c1dbfc80738a89287745c993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d927a799c033d6faf561bd319756d58de2d6a695`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant42ad0d706b193d6c927a7aae78b2ffdb07a45944c1dbfc80738a89287745c993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant42ad0d706b193d6c927a7aae78b2ffdb07a45944c1dbfc80738a89287745c993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [W_continuous](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/w-continuous.md) | 19 | `result-track:cce11b4a01b55c3c5a8f064bf57436b99abf6750bfbff28cf53501a867b3fbde` |
| 2 | `theorem` | [boundary_denominator_ne_zero](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/boundary-denominator-ne-zero.md) | 22 | `result-track:dc9911793f0b97bf081ebe78b28425e52af517bc6a95e3e3d038362dee1f0c71` |
| 3 | `theorem` | [boundary_denominator_norm_sq](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/boundary-denominator-norm-sq.md) | 27 | `result-track:eda3337658f7d8163bbdbd75989b0e5fd81332dcb46e563ee82b950d992339c3` |
| 4 | `theorem` | [boundaryFilter_norm_le](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/boundaryfilter-norm-le.md) | 33 | `result-track:03b3e761bdcb8ccd5c65cfcc081ce52a9d1a340509c544946beba8c93187bd5b` |
| 5 | `theorem` | [boundaryFilter_error_sq_le](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/boundaryfilter-error-sq-le.md) | 73 | `result-track:c06862fabc91cf083c663d387fbdfa2f97c033b707047fafc24e69cd09784f81` |
| 6 | `theorem` | [boundaryFilter_error_integrable](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/boundaryfilter-error-integrable.md) | 93 | `result-track:21f0f3d212508bf385a29dbb7e2f9f8b55c3d124113945f6a6fe62800cffc437` |
| 7 | `def` | [deltaSq](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/deltasq.md) | 109 | `declaration-track:a504262de458b59f8e625c71122899dc881beb80042934a1072559499a2a93b2` |
| 8 | `def` | [delta](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/delta.md) | 114 | `declaration-track:7e380e694e9a1cf330be81ea7e31acfd453b324cc381fa0a2dbf8e8afc12b936` |
| 9 | `theorem` | [boundaryFilter_tendsto](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/boundaryfilter-tendsto.md) | 118 | `result-track:15aabdc845f343fc75dacad8bd50ef619567a72c01f25ac2aece30fba652017e` |
| 10 | `theorem` | [deltaSq_tendsto_zero](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/deltasq-tendsto-zero.md) | 148 | `result-track:3694d525de8691d01791cebe42e2dd3b9e4796febdc6621aeee5431cb92cf848` |
| 11 | `theorem` | [delta_tendsto_zero](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragmentNamespaced.lean/declarations/delta-tendsto-zero.md) | 174 | `result-track:e1af9f738d828788750465b2340216cb673edc8a9307b8814f35f3f5dc2a799f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fde29b39a2e15287a610fa96076bd711fd725a609d831f7acc90e99af0a9fefa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant42ad0d706b193d6c927a7aae78b2ffdb07a45944c1dbfc80738a89287745c993.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant42ad0d706b193d6c927a7aae78b2ffdb07a45944c1dbfc80738a89287745c993.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
