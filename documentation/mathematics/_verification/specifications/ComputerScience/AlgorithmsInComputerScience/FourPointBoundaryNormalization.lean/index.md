# Verification target: Four Point Boundary Normalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d527ebb0637963a638fc5decf45f89a37a63b2fa",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantc60d29d626ae469c5d3b6693ce8185412a6214de74664852241cfe2d77d77735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d527ebb0637963a638fc5decf45f89a37a63b2fa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantc60d29d626ae469c5d3b6693ce8185412a6214de74664852241cfe2d77d77735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantc60d29d626ae469c5d3b6693ce8185412a6214de74664852241cfe2d77d77735.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.SpinDivisibilityCover` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundaryPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/boundarypoint.md) | 7 | `declaration-track:11b3befe9c68941dc17412d890cdb83bf5a3e9269528a60fd97c40ea9f592a2a` |
| 2 | `inductive` | [BoundaryRole](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/boundaryrole.md) | 14 | `declaration-track:e03cf1c4d2be4ad4c6b4116e2359db9b38c6810efe507eb5df2bc0699ad1884d` |
| 3 | `structure` | [MarkedBoundaryRole](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/markedboundaryrole.md) | 21 | `declaration-track:9ef009f0755ca928b07ebcfe4345d9afb49c49a3592c74a932babcea4b7625d7` |
| 4 | `structure` | [DirectedBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/directedboundary.md) | 26 | `declaration-track:e806d8e7dce47ee434dcc7fa2f6530336aa43f882af13edf2fb013b532b9187f` |
| 5 | `def` | [allBoundaryPoints](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/allboundarypoints.md) | 32 | `declaration-track:e51dc0577b7143493c4d4a087446c16542723690e713f7a9b10b068d1aa55a00` |
| 6 | `def` | [visibleBoundaryRoles](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/visibleboundaryroles.md) | 35 | `declaration-track:e8e821bc8036be376c8c276d275f738687cf302d00edd35ebd8df83b8c3a85d8` |
| 7 | `def` | [directedAdditiveBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/directedadditiveboundary.md) | 42 | `declaration-track:75e69170d23c8e505f9054f1abbf98d61cc682b21fb45c4f3a0aee99f75364c4` |
| 8 | `def` | [directedMultiplicativeBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/directedmultiplicativeboundary.md) | 47 | `declaration-track:f2b76bde9652cc66e46f98651681faf3f25a962beca0d86935d3061afdad2368` |
| 9 | `structure` | [FourPointBoundarySurface](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/fourpointboundarysurface.md) | 52 | `declaration-track:03961fb24de9b39971a493325f03cdd05c30288247eaa1ab7b10a7067d8d3a31` |
| 10 | `def` | [canonicalSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/canonicalsurface.md) | 62 | `declaration-track:a6e5ead1c503e60f67af83d243b86f8f3f9ed01bb0a6fdbac62a2e3d6d3ea526` |
| 11 | `inductive` | [ZeroLikeEventKind](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/zerolikeeventkind.md) | 71 | `declaration-track:bee59ee8d64299a9ddb8ae5207f6663a7c2e498750deba2a815c91f7f0e3a2e5` |
| 12 | `inductive` | [ZeroLikeRouting](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/zerolikerouting.md) | 79 | `declaration-track:059d602b61488cdb14671e5c59b2693351a699c9edb9c4e40158cd61ab370306` |
| 13 | `def` | [residualComplexPairedObstruction](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/residualcomplexpairedobstruction.md) | 84 | `declaration-track:afad501435c6d58616287dc322c229fb1dede29ad2b125cead14831602241146` |
| 14 | `def` | [routeZeroLikeEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/routezerolikeevent.md) | 87 | `declaration-track:2940e0c832a290cb10bb4d5d1499431e380bb9e082349991cedc3a5ab201a694` |
| 15 | `theorem` | [allBoundaryPoints_distinct](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/allboundarypoints-distinct.md) | 99 | `result-track:5d6b3fa542b818b1c1158e1cff79585ca50753043011b0717911da9e99aedc07` |
| 16 | `theorem` | [canonical_surface_has_four_points](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/canonical-surface-has-four-points.md) | 103 | `result-track:68223517b9b08c2e88e4e7b3ffc5a9a43948d2c690f3833e4345df8693e00b7a` |
| 17 | `theorem` | [canonical_surface_additive_boundary_directed](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/canonical-surface-additive-boundary-directed.md) | 107 | `result-track:47a5f814c50ccf61beee69c9411b81b889452cedae0285244b3c4994bf64ccdc` |
| 18 | `theorem` | [canonical_surface_multiplicative_boundary_directed](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/canonical-surface-multiplicative-boundary-directed.md) | 112 | `result-track:f5c142f275b5b4019906ca9712fcd8ebb4983b8a15a9e49831ca1399467836f0` |
| 19 | `theorem` | [canonical_surface_midpoint_is_half](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/canonical-surface-midpoint-is-half.md) | 117 | `result-track:15b00498add21c75b03c40a688c4fc9c6ff29c8b7a6974ec736add1cc2f86a8d` |
| 20 | `theorem` | [canonical_surface_is_not_theorem_claim](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/canonical-surface-is-not-theorem-claim.md) | 121 | `result-track:0a85db70d91a5edc403eedc2fb594ca0f8bf776e6e137d41dd23142c75f1d573` |
| 21 | `theorem` | [route_unclassified_zero_like_to_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/route-unclassified-zero-like-to-residue.md) | 125 | `result-track:9f6bd2a6014b49d117dab5dd155cb0d11ea3a3862f9b78826069ca9a697d6151` |
| 22 | `theorem` | [unclassified_zero_like_is_not_zero_location_evidence](../../../../../ComputerScience/AlgorithmsInComputerScience/FourPointBoundaryNormalization.lean/declarations/unclassified-zero-like-is-not-zero-location-evidence.md) | 130 | `result-track:17683e0d9ed6f25d46a7a10f0556478cfebbc08fea9b72f64977c76193237b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1543a83c004992b00787e7818b30ceb0446f5a88f55a0d8d75ff9ef9acac5d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantc60d29d626ae469c5d3b6693ce8185412a6214de74664852241cfe2d77d77735.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantc60d29d626ae469c5d3b6693ce8185412a6214de74664852241cfe2d77d77735.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
