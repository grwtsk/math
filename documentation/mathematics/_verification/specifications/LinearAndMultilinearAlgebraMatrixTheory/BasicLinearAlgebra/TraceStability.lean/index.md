# Verification target: Trace Stability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b8173c5d0eab6bdb7d042b3a6fb34c51f649cd0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TraceStability/Variantddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceStability.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceStability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b8173c5d0eab6bdb7d042b3a6fb34c51f649cd0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TraceStability/Variantddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TraceStability/Variantddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ConnesBitfield.InvariantLawPerturbation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.Trace` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invariantLawReducedTrace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceStability.lean/declarations/invariantlawreducedtrace.md) | 15 | `declaration-track:08805f8fa110b9e961ee5d92ea8be2f4a579a7b9a8625503f02ca7725a596136` |
| 2 | `structure` | [BoundaryTraceStabilityCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceStability.lean/declarations/boundarytracestabilitycertificate.md) | 34 | `declaration-track:6071925d323604a0a0c403fa7bd20da3738dce35988faa4d6cdbcb851c8d0a5a` |
| 3 | `def` | [BoundaryTraceStabilityCertificate.globalBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceStability.lean/declarations/boundarytracestabilitycertificate-globalbound.md) | 152 | `declaration-track:c3c07f8d5dc0886c20261ff1fc794ac66c0a0bb9a9361bb31d5486098e6c1338` |
| 4 | `theorem` | [boundary_trace_stability](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceStability.lean/declarations/boundary-trace-stability.md) | 179 | `result-track:aba15934a4f44e70935b3fe70e7e55c05202ef7068cbba14b2f886a93e12ed05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7298e5ea673761c28105efb7afc5ea3d31b5ccb1cf62e84ba6d1915d9b5e3fdf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TraceStability/Variantddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TraceStability/Variantddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
