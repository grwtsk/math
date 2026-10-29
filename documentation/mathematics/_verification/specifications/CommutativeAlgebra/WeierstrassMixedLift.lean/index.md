# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassMixedLift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eccdce322f9011544c39df1331a1e90ad7bcb957",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/index.md) · [Full source](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eccdce322f9011544c39df1331a1e90ad7bcb957`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood`](../../../../CommutativeAlgebra/FreyFormalNeighborhood.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet`](../../../../CommutativeAlgebra/WeierstrassSecondJet.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolvent](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/resolvent.md) | 25 | `declaration-track:ca41758c6bf1ac1385149cb17102468b2b3297ff4a9063704ce0c01c006cd9cd` |
| 2 | `theorem` | [resolvent_balance](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/resolvent-balance.md) | 29 | `result-track:6b8a4dbbefa2e6422aee08318cccf05116e05e136352e8dc9f51b19eed12ac2e` |
| 3 | `theorem` | [resolvent_inverse](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/resolvent-inverse.md) | 40 | `result-track:ca957494fc938d3ea18184153491cf64014598901f1cda40d4a7cfeae082b332` |
| 4 | `theorem` | [map_resolvent](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/map-resolvent.md) | 44 | `result-track:596e580522ada847cbc4eb4672a9f0cdabd64c0fce9fe94ee3188170e6845c58` |
| 5 | `def` | [lift](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/lift.md) | 51 | `declaration-track:ea26c9344f51ecdb55bd84f410acaa30b99e0c60afc185c5ff14ae3f61faee76` |
| 6 | `theorem` | [map_lift](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/map-lift.md) | 54 | `result-track:1bddafdfaf9b58de4e2258a63dbb30e146044a0b908bd2c8fae15d1df41351da` |
| 7 | `theorem` | [lift_mem](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/lift-mem.md) | 58 | `result-track:00c612f7265a5be93c3ebf226661da20f8de0729bea2475f589f87e080f7fa3a` |
| 8 | `theorem` | [lift_square_dvd](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/lift-square-dvd.md) | 62 | `result-track:80d0d916b049f89932654c807e91b2779beb90dc01710ec8c576427be3baddbc` |
| 9 | `theorem` | [equation_iff_shift](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/equation-iff-shift.md) | 66 | `result-track:33c3413a0f133f24bba835aad65ada0a09a5269e130c9422ac38801163262172` |
| 10 | `theorem` | [lift_equation](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/lift-equation.md) | 73 | `result-track:ffb1baa500e482fefd851ca66581748ce4f06af473e936b6dd3debfb1cd0a233` |
| 11 | `theorem` | [solution_eq_lift](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/solution-eq-lift.md) | 82 | `result-track:7431f68ffe276996bd3f69743883dcb227bf299a90a5a5bc221739dd5d6a12cb` |
| 12 | `theorem` | [lift_natural](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/lift-natural.md) | 91 | `result-track:3029b7a12fc07284627a97192d0cfdef90d5c641cda9470e63621d3e87f02966` |
| 13 | `def` | [cubicResidual](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/cubicresidual.md) | 105 | `declaration-track:ecf745b68abe6fec2bde16285c6380248d9219118656cf05ff9bd8ff7985f739` |
| 14 | `theorem` | [cubic_residual_expansion](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/cubic-residual-expansion.md) | 109 | `result-track:6ea2e61e4614b20ae179c977c1976db18ed39f24753e5f94056edcc9f9ad393f` |
| 15 | `theorem` | [cubic_equation_iff](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/cubic-equation-iff.md) | 119 | `result-track:e9532da5aac08062485d631bb2900009976957d645c11fa96e89f1551e965982` |
| 16 | `theorem` | [cubic_field_coefficients](../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/declarations/cubic-field-coefficients.md) | 133 | `result-track:ddf0f1a8b26a21091a52f87814561a3c5452b30603854d0b6b06b9cd1598639e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03dd3d6bc5060ca547cf6e5cfe9ece7a8b16f03e84cc155a80c4d4584f2bf1d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
