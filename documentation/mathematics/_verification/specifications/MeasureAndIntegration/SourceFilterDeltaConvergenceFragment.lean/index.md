# Verification target: Source Filter Delta Convergence Fragment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43c7392d9f6396987db9d63fb7c0c7116b282ce8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant50f140a68968d8c7861340084e7bae6c1c57361a08704aeccf82149251e66f4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43c7392d9f6396987db9d63fb7c0c7116b282ce8`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant50f140a68968d8c7861340084e7bae6c1c57361a08704aeccf82149251e66f4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant50f140a68968d8c7861340084e7bae6c1c57361a08704aeccf82149251e66f4a.lean.json)

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
| 1 | `theorem` | [W_continuous](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/w-continuous.md) | 11 | `result-track:623062586606696483067a9d88217ef5ee7d319699675aba86abc70489bf0bbc` |
| 2 | `theorem` | [boundary_denominator_ne_zero](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/boundary-denominator-ne-zero.md) | 14 | `result-track:f080f75eeeebe2b67a81731590e228d735eaee643e0581a729d8cb9e5c409a8b` |
| 3 | `theorem` | [boundary_denominator_norm_sq](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/boundary-denominator-norm-sq.md) | 19 | `result-track:5972d4bdca9235d08bebb4d25995f48f372eaa147875c487ff415ec12adcd853` |
| 4 | `theorem` | [boundaryFilter_norm_le](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/boundaryfilter-norm-le.md) | 25 | `result-track:6d37d1ec81bfb992f1e304833241c1e94f952c7ee8f2c49dfd1a0b89defb036b` |
| 5 | `theorem` | [boundaryFilter_error_sq_le](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/boundaryfilter-error-sq-le.md) | 65 | `result-track:891ebdcbc974b2d5ff23443bf9f80ad2d3269817d45dbaa18f4f3284d3885837` |
| 6 | `theorem` | [boundaryFilter_error_integrable](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/boundaryfilter-error-integrable.md) | 85 | `result-track:8202a8a46e2c527d1513fd79c55d40fef0440ca4279db2769036c869525ecd3d` |
| 7 | `def` | [deltaSq](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/deltasq.md) | 101 | `declaration-track:79d02e3b23ab62f5a6c9fdcece384485ddc1d59fc5c72d86482707fcadd344f6` |
| 8 | `def` | [delta](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/delta.md) | 106 | `declaration-track:c93d0359ce92fa097f36dcc1780e1bcbf39aedefc9a9199f7bb11cb098719195` |
| 9 | `theorem` | [boundaryFilter_tendsto](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/boundaryfilter-tendsto.md) | 110 | `result-track:293f9475817a000cc8d2ebc71ef577ed5f1789afaa3651f7959e9f38e351e266` |
| 10 | `theorem` | [deltaSq_tendsto_zero](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/deltasq-tendsto-zero.md) | 140 | `result-track:eae5b69e1a623628482a523142bf0afa1a724e07228dc80a2965284be08dfbaa` |
| 11 | `theorem` | [delta_tendsto_zero](../../../../MeasureAndIntegration/SourceFilterDeltaConvergenceFragment.lean/declarations/delta-tendsto-zero.md) | 166 | `result-track:a414d1770eed1619aa277e656118e23b4503a53cb5ce7c41206de0fbd7e32d57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97e20fd587d33df6cdfed30fc9946d6108e3f1547433a52ed2f1db7d9e09d46b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant50f140a68968d8c7861340084e7bae6c1c57361a08704aeccf82149251e66f4a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant50f140a68968d8c7861340084e7bae6c1c57361a08704aeccf82149251e66f4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
