# Verification target: Raster Refinement Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfc527aeb424fa3a46caec22f13ed942cdb19dc6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RasterRefinement/Variant14604d820f74757bb0e5eecf4957a727125b03db98f59bf8ec523f90561d0aa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/RasterRefinementNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/RasterRefinementNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfc527aeb424fa3a46caec22f13ed942cdb19dc6`.

Source path: `GRWTSK/Topology/GeneralTopology/RasterRefinement/Variant14604d820f74757bb0e5eecf4957a727125b03db98f59bf8ec523f90561d0aa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RasterRefinement/Variant14604d820f74757bb0e5eecf4957a727125b03db98f59bf8ec523f90561d0aa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.ContinuousRaster` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MeshRefinement](../../../../GeneralTopology/RasterRefinementNamespaced.lean/declarations/meshrefinement.md) | 27 | `declaration-track:6c03c8f0ee9f9c81680a9d0ce0c22e3e9285536b9fc35682b10ddf377fd03b2d` |
| 2 | `structure` | [RasterRefinement](../../../../GeneralTopology/RasterRefinementNamespaced.lean/declarations/rasterrefinement.md) | 54 | `declaration-track:2cca4c7ce50a670fdcfe187842b553ce57c522c59066176d2dc3a869eee3b3da` |
| 3 | `theorem` | [restrict_field](../../../../GeneralTopology/RasterRefinementNamespaced.lean/declarations/restrict-field.md) | 87 | `result-track:571d4135695761ff98d1b7863b47f914085fb9461c1e6e67a72eb5c3b2aad43c` |
| 4 | `theorem` | [vertex_value_commutes](../../../../GeneralTopology/RasterRefinementNamespaced.lean/declarations/vertex-value-commutes.md) | 95 | `result-track:753dc3410b0cd697fad34f4b4864bea13a412fc68c0e07fb5dbb6315059c4a26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a6a82534d8091519bc45f94ca61ed889cca7a832dab2ddb829ba46000392b69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/RasterRefinement/Variant14604d820f74757bb0e5eecf4957a727125b03db98f59bf8ec523f90561d0aa9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/RasterRefinement/Variant14604d820f74757bb0e5eecf4957a727125b03db98f59bf8ec523f90561d0aa9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
