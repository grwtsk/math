# Verification target: GRWTSK.Interfaces.PortFiberEvaluationTopology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2353ab0444a94bdea36927f72306c538ddfd0b9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberEvaluationTopology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/index.md) · [Full source](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2353ab0444a94bdea36927f72306c538ddfd0b9`.

Source path: `GRWTSK/Interfaces/PortFiberEvaluationTopology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberEvaluationTopology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.AnalyticAffineTopology`](../../../../GeneralTopology/AnalyticAffineTopology.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio`](../../../../AssociativeRingsAndAlgebras/PortFiberTheoremPortfolio.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ClaimIndex](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/declarations/claimindex.md) | 14 | `declaration-track:03e26301e4485a3247c2e9adcab20546520752ed19672baf14da7da0b7e8b554` |
| 2 | `def` | [Claim](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/declarations/claim.md) | 23 | `declaration-track:ecb0f5b59305d1ebbae9cbc675c2e039009f3ea2a93073d637dd1926b072b219` |
| 3 | `theorem` | [claim_proof](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/declarations/claim-proof.md) | 40 | `result-track:fd09c0fb288c86cead1286931ab52f6af1492cb50b010e904440bdbd71ebda29` |
| 4 | `def` | [portfolio](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/declarations/portfolio.md) | 53 | `declaration-track:fde8fcf705859e3532c9fac0bb5bdd0b78930ffd8be1250c881f6e9f08cb5090` |
| 5 | `def` | [architecture](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/declarations/architecture.md) | 57 | `declaration-track:966c238483c79c8f0036835665f053a190544e26efd6c7473b559cbf44307a36` |
| 6 | `theorem` | [original_branch_unchanged](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/declarations/original-branch-unchanged.md) | 63 | `result-track:d841a60c6c93efe27c1d94955407dbc21faff8be03399192791e9387d2c4fa73` |
| 7 | `theorem` | [new_branch_proved](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/declarations/new-branch-proved.md) | 71 | `result-track:8160be56abf8634638c823d5a43308243f4023975609d9eeda93b6eebacfa871` |
| 8 | `theorem` | [target_unchanged](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/declarations/target-unchanged.md) | 78 | `result-track:975d5d5068028565ff08c402cbe252020d1e63155a98dc80ad724f24bf0a45b9` |
| 9 | `theorem` | [retarget_preserves_new](../../../../GeneralTopology/PortFiberEvaluationTopology.lean/declarations/retarget-preserves-new.md) | 85 | `result-track:1e6681aa4bda51567a42a398b91c174d8c2a988ba28788b222bae371802ab2fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=277af058a0b9f8d9f1ba0120604af2bcf85e667ffc7dbd0393e732e9836bfe84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Interfaces/PortFiberEvaluationTopology.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/PortFiberEvaluationTopology.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
