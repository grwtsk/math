# Verification target: GRWTSK.Topology.GeneralTopology.Ultrafilter.Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4d74d7155a58a285be721314f7c1024c2f81186",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4d74d7155a58a285be721314f7c1024c2f81186`.

Source path: `GRWTSK/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Ultrafilter.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Continuous` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ultrafilter.clusterPt_iff](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/declarations/ultrafilter-clusterpt-iff--b56ead6aa9ff56151810e95c.md) | 18 | `result-track:b56ead6aa9ff56151810e95c034e420733d4adf7f858ac6c930c61576664658e` |
| 2 | `theorem` | [clusterPt_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/declarations/clusterpt-iff-ultrafilter--cc2306a05d88c2585106a22d.md) | 21 | `result-track:cc2306a05d88c2585106a22da65950781c7547162ee5def9abe106f939dcb874` |
| 3 | `theorem` | [mapClusterPt_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/declarations/mapclusterpt-iff-ultrafilter--f97c0c8e5e413964c36ccd22.md) | 25 | `result-track:f97c0c8e5e413964c36ccd220960cbf7b20e1bf9987015dd3895b648a83f4ec1` |
| 4 | `theorem` | [isOpen_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/declarations/isopen-iff-ultrafilter--86a2c762f0e16210c010965c.md) | 30 | `result-track:86a2c762f0e16210c010965c6feae6f48db5b3ae4ca58d570fc26a682181fe21` |
| 5 | `theorem` | [mem_closure_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/declarations/mem-closure-iff-ultrafilter--1ef02f5b4cfcdf2b08bcffb2.md) | 36 | `result-track:1ef02f5b4cfcdf2b08bcffb29cc3e3059a4c41897bdc2540a247a0b1abd36d17` |
| 6 | `theorem` | [isClosed_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/declarations/isclosed-iff-ultrafilter--9fa72e42de94dff89f481253.md) | 40 | `result-track:9fa72e42de94dff89f4812534900c0a25d63550b79e27d9dd26c18d061dedf50` |
| 7 | `theorem` | [continuousAt_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/declarations/continuousat-iff-ultrafilter--ceb7d460e53ebd504fcded23.md) | 46 | `result-track:ceb7d460e53ebd504fcded23d083f58cc07c46e820a10b1b1fb275b4169cfab3` |
| 8 | `theorem` | [continuous_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Ultrafilter/Variante711829f90e78502088240c9c9b7a41421f05b7bcc0af8821a05e92ce231cb55.lean/declarations/continuous-iff-ultrafilter--a83c9d0d9bceecaed438b607.md) | 50 | `result-track:a83c9d0d9bceecaed438b60741185adfb0f70708e4610cf0a36fa61b13cefc2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
