# Verification target: Inner Product Space Continuous Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbe7060a21da04dc71dc375015576b81367eddc1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant7909ccf9355a2f05faefddbb5ba96f7f8c1c4131c45db4d1aff78792a0ff4f1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/InnerProductSpaceContinuousNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/InnerProductSpaceContinuousNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbe7060a21da04dc71dc375015576b81367eddc1`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuous/Variant7909ccf9355a2f05faefddbb5ba96f7f8c1c4131c45db4d1aff78792a0ff4f1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuous/Variant7909ccf9355a2f05faefddbb5ba96f7f8c1c4131c45db4d1aff78792a0ff4f1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.BoundedLinearMaps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Inner Product Space Continuous Namespaced](../../../../FunctionalAnalysis/InnerProductSpaceContinuousNamespaced.lean/declarations/root-grwtsk-topology-generaltopology-rootisboundedbilinearmapinner-varia.md) | 55 | `result-track:fff32fb85745ee1a6abe23222873f93ab9f90e297eb8dbf79be77bc51ede0e09` |
| 2 | `theorem` | [continuous_inner](../../../../FunctionalAnalysis/InnerProductSpaceContinuousNamespaced.lean/declarations/continuous-inner-source-edition-2.md) | 68 | `result-track:ff4773db94e340c47d42d9f8fde912e8271bc27fc24ae2d368a7f365c13623ec` |
| 3 | `theorem` | [Filter.Tendsto.inner](../../../../FunctionalAnalysis/InnerProductSpaceContinuousNamespaced.lean/declarations/filter-tendsto-inner.md) | 75 | `result-track:f6d0a2857aa98caffc3f7b8cb72540f0c9ee28b02671879a3429c103ba4d184e` |
| 4 | `theorem` | [ContinuousWithinAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceContinuousNamespaced.lean/declarations/continuouswithinat-inner.md) | 81 | `result-track:27f622de09cef793dd3629719026d656ec81a9230c96b674182a2f324fa11e90` |
| 5 | `theorem` | [ContinuousAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceContinuousNamespaced.lean/declarations/continuousat-inner.md) | 86 | `result-track:9e3effcc11f50b52e98969d3016faf95b1a0023188e3dba6ffbf1a1581a325d4` |
| 6 | `theorem` | [ContinuousOn.inner](../../../../FunctionalAnalysis/InnerProductSpaceContinuousNamespaced.lean/declarations/continuouson-inner.md) | 91 | `result-track:6e3312135caa91c3a59e71eab434bdef2d6b941102b3c3580f9fcbaf486c9ed0` |
| 7 | `theorem` | [Continuous.inner](../../../../FunctionalAnalysis/InnerProductSpaceContinuousNamespaced.lean/declarations/continuous-inner.md) | 95 | `result-track:2004d6a2bf8b6cf9ff85088b16f069f29131bdf4605e43c46c14637a6833c25d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0368f3b32ae310fe548c3f251db663c2837d1ecfcd0ebb4e53d56ebdc52a234d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Continuous/Variant7909ccf9355a2f05faefddbb5ba96f7f8c1c4131c45db4d1aff78792a0ff4f1e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Continuous/Variant7909ccf9355a2f05faefddbb5ba96f7f8c1c4131c45db4d1aff78792a0ff4f1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
