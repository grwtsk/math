# Verification target: Complex Euler Product Index

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5d30098ad68b836c710369620bd02bdd3467909",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexEulerProductIndex/Variant7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ComplexEulerProductIndex.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ComplexEulerProductIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5d30098ad68b836c710369620bd02bdd3467909`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexEulerProductIndex/Variant7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexEulerProductIndex/Variant7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ComplexEulerProductConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.Exposition.RealEulerProductIndex` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexWeightNormAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ComplexEulerProductIndex.lean/declarations/complexweightnormanchor.md) | 14 | `declaration-track:25349e63c7c6fc327658182433ddc7e5a886834c198b4a5c1b3a714669385570` |
| 2 | `def` | [complexZetaHalfPlaneConvergenceAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ComplexEulerProductIndex.lean/declarations/complexzetahalfplaneconvergenceanchor.md) | 24 | `declaration-track:5692795000e3ab1820b86f18f04fa67902ecde26cf103c91b546c8efcd7d7a1f` |
| 3 | `def` | [complexEulerProductConvergenceAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ComplexEulerProductIndex.lean/declarations/complexeulerproductconvergenceanchor.md) | 34 | `declaration-track:2ed9496782724adfa166dc5d2e6b98baf4cd4706e29377992d3aa5c854da7388` |
| 4 | `def` | [complexZetaNonzeroHalfPlaneTargetAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ComplexEulerProductIndex.lean/declarations/complexzetanonzerohalfplanetargetanchor.md) | 44 | `declaration-track:644a36f23f284a5dfa767c0bd9511fb6476a99bfbc64b8872f442d0a912c7c91` |
| 5 | `def` | [zetaAnalyticContinuationStillTargetAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ComplexEulerProductIndex.lean/declarations/zetaanalyticcontinuationstilltargetanchor.md) | 54 | `declaration-track:cf6dcd0aa5025481b6db778f684d761bdc9664c978af7c73742bb030bc1a333a` |
| 6 | `def` | [pntRouteStillTargetAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ComplexEulerProductIndex.lean/declarations/pntroutestilltargetanchor.md) | 64 | `declaration-track:b96adc8a0bb6637a75aa156e19408e30cf9869078bde70719a43ce6dec0ab698` |
| 7 | `def` | [complexEulerProductAnchors](../../../../../ComputerScience/AlgorithmsInComputerScience/ComplexEulerProductIndex.lean/declarations/complexeulerproductanchors.md) | 74 | `declaration-track:b13e3e7630446ff0fd53d760b6b7a682bc7b2dcf5757537af310003b24871bfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b52729e70913904f704f862f4d212b785e7cbcbe6503f08385490bb1821382ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexEulerProductIndex/Variant7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexEulerProductIndex/Variant7463c34623f989f42885e8e1062f2bc7555a89d0a64138c93cb28475d1fc656a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
