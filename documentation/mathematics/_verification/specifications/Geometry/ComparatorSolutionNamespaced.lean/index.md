# Verification target: Comparator Solution Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cdc3476aac40a9a65e402d941eda96e597912dc",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ComparatorSolution/Variante7d05b759d374033a61296eddd2080b634b735a0bbc73126659854ee4abd5104.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/ComparatorSolutionNamespaced.lean/index.md) · [Full source](../../../../Geometry/ComparatorSolutionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cdc3476aac40a9a65e402d941eda96e597912dc`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ComparatorSolution/Variante7d05b759d374033a61296eddd2080b634b735a0bbc73126659854ee4abd5104.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/ComparatorSolution/Variante7d05b759d374033a61296eddd2080b634b735a0bbc73126659854ee4abd5104.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NavierStokes.ComparatorR3Theorem` — import line 6; external provider; requires a separately pinned dependency.
- `NavierStokes.ComparatorTheorem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [navier_stokes_breakdown_R3](../../../../Geometry/ComparatorSolutionNamespaced.lean/declarations/navier-stokes-breakdown-r3.md) | 24 | `result-track:8a7369b96c79c30565b4b76eefdb12ef4aeae6770e6f73c00b769c027c2d3579` |
| 2 | `theorem` | [navier_stokes_breakdown_periodic](../../../../Geometry/ComparatorSolutionNamespaced.lean/declarations/navier-stokes-breakdown-periodic.md) | 31 | `result-track:6f88bf405e8dbc9405a7bd60351e0422a28ec65517839845657dbc5419745799` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4296e473c48a4db1db152dcdb5a3da261b8ffaebe13d6a44e758fa46708d0ac2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ComparatorSolution/Variante7d05b759d374033a61296eddd2080b634b735a0bbc73126659854ee4abd5104.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/ComparatorSolution/Variante7d05b759d374033a61296eddd2080b634b735a0bbc73126659854ee4abd5104.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
