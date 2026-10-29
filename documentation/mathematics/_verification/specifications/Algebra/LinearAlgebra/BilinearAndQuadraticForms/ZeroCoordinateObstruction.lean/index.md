# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.ZeroCoordinateObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b15f90ffa0f87f05d8c34fc037739611eac2bdc3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b15f90ffa0f87f05d8c34fc037739611eac2bdc3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateWeight](../../../../../../Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/declarations/coordinateweight--b868c58c154ceb717a0657ba.md) | 29 | `declaration-track:b868c58c154ceb717a0657ba59476edf96672757c50e0df15aad776b6a989c50` |
| 2 | `def` | [orderedQuadratic](../../../../../../Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/declarations/orderedquadratic--29f4e320a00b9effc1345375.md) | 33 | `declaration-track:29f4e320a00b9effc1345375c75195165f266e13a41ccc2831021ec45cfff545` |
| 3 | `theorem` | [coordinate_quadratic_eq](../../../../../../Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/declarations/coordinate-quadratic-eq--187bc883c459bcab6dd1fe5c.md) | 37 | `result-track:187bc883c459bcab6dd1fe5c527476608d717f268c29b2c46dba52fa8bc69195` |
| 4 | `theorem` | [no_uniform_domination](../../../../../../Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/declarations/no-uniform-domination--6bb444a3b678f41aa59918fe.md) | 56 | `result-track:6bb444a3b678f41aa59918fef360d8235f5a2285b8dbea991cf23d221b4441cf` |
| 5 | `def` | [diagonalScale](../../../../../../Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/declarations/diagonalscale--39bbc4338357e491e6e1ba46.md) | 67 | `declaration-track:39bbc4338357e491e6e1ba46387d454f1c94df90f6213bb0b7d6e2a671878fae` |
| 6 | `theorem` | [diagonal_scale_ne_positive](../../../../../../Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/declarations/diagonal-scale-ne-positive--4055c2ce0597d62b0c44a725.md) | 70 | `result-track:4055c2ce0597d62b0c44a725c70804fd374289e6a1741376a3fec17fbe8a556f` |
| 7 | `theorem` | [zero_preserving_map_ne_target](../../../../../../Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean/declarations/zero-preserving-map-ne-target--0c90244c6067a3800ec9441d.md) | 77 | `result-track:0c90244c6067a3800ec9441daab9e7b06585407eb724119b52b897ee585bb287` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e0982541f6d3b534cfd66f274a7444bf669c3bcaa028cef76b3432a15cfb45a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BilinearAndQuadraticForms/ZeroCoordinateObstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
