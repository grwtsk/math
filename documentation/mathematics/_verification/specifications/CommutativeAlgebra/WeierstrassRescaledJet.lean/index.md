# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassRescaledJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dc39c341c3bad4cbb1c7ce549f4f98fc5e3046b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/index.md) · [Full source](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dc39c341c3bad4cbb1c7ce549f4f98fc5e3046b`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOriginJet`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Algebra.Polynomial.Eval.Degree` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iterate](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/iterate.md) | 24 | `declaration-track:80567307e97c6df6666f115a1c600ade5ae1a9b290026cdf3e8e01d167dae3b7` |
| 2 | `theorem` | [map_iterate](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/map-iterate.md) | 28 | `result-track:f84d49e400ef09fd81a0b3fb237164986357c183eece8c70fe1460e431682c6b` |
| 3 | `theorem` | [square_dvd](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/square-dvd.md) | 35 | `result-track:21fab40d654421983b9873bca8459039714f261c7978f56411ed28c65ff4e0d9` |
| 4 | `theorem` | [improvement](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/improvement.md) | 45 | `result-track:eec14c2ed4efcaca1194d6fb6ea0b958eaf8be8be09367a2f42cbf7419cd9d29` |
| 5 | `theorem` | [successive](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/successive.md) | 58 | `result-track:b3d70e4e30e2e4991027730626009b4fbcbaf99402c0bc78c73100bdcaca0d5b` |
| 6 | `theorem` | [stable](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/stable.md) | 70 | `result-track:29d8043cf8302ef070fff2dab69cd4db38ef062fa2242cfe666061d0bc451506` |
| 7 | `theorem` | [solves](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/solves.md) | 79 | `result-track:fac7683d9d1c8879f7ae65fb4c89c15da4f731d2d8dcc1089a9c6770f1576319` |
| 8 | `theorem` | [rescaled_equation](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/rescaled-equation.md) | 88 | `result-track:4a2dc412d2e564799c531aa9fd042a1f8aea217c071cbe2b600e3d4157d2cc0d` |
| 9 | `theorem` | [equals_old_lift](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/equals-old-lift.md) | 103 | `result-track:305889bae77419bad74c38668fe702cc58df9e85133a8be0266d1beb853d4c16` |
| 10 | `def` | [numeratorPolynomial](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/numeratorpolynomial.md) | 119 | `declaration-track:aefcbaeee0917ffbc137fc6dc811c59736536ad46eb36eb9996532a5ed646286` |
| 11 | `theorem` | [evaluate_numerator](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/evaluate-numerator.md) | 121 | `result-track:71da350dd7ddfedcdb1f1abc26eb21a70a3c1b5b66d50c3cdab2378818d62ec5` |
| 12 | `def` | [rationalPolynomial](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/rationalpolynomial.md) | 127 | `declaration-track:e2ad86a974ab05875acf5df635b38cb343e66cbdd2560d1a32ed23ed15eb411b` |
| 13 | `theorem` | [numerator_low](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/numerator-low.md) | 131 | `result-track:30155723c8f14f813a788521083631bf4c1ed72afd292fe70571353b42534568` |
| 14 | `theorem` | [numerator_stable](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/numerator-stable.md) | 135 | `result-track:3a32789498030d13f5b20875c751b80c0f705f0f0469b56e4a88f6e5e340320d` |
| 15 | `theorem` | [rational_coefficient](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/rational-coefficient.md) | 141 | `result-track:04329e093b54b8f689ca2aae8bca2fdf4dd6304121aa99aa14d20f203e71343e` |
| 16 | `theorem` | [rational_low](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/rational-low.md) | 152 | `result-track:8a8699b1bb191a7e82791036bb3a89126e99f256355e42ead7649682e27d1bda` |
| 17 | `theorem` | [represents_old_lift](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/represents-old-lift.md) | 157 | `result-track:45f209c513225295bb82220b2f85a85513ea3d7b7513343313aced262a737952` |
| 18 | `theorem` | [rational_stable](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/declarations/rational-stable.md) | 177 | `result-track:1f805f7be7693affc9241e0f2df2f57b4222ed986840cd6c85a64909c56d9d43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28a500f722b20c47939c86f0f41839815b4fec5d36e1eaff74affbd737deff85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
