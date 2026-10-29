# Verification target: Point And Finite List Reflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2e6a434a8b9802639d71fa9ddbc64880b33d728",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ExactRationalPlaneReflections/Variant03d73452c99c6fd3/PointAndFiniteListReflection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/PointAndFiniteListReflection.lean/index.md) · [Full source](../../../../Geometry/PointAndFiniteListReflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2e6a434a8b9802639d71fa9ddbc64880b33d728`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ExactRationalPlaneReflections/Variant03d73452c99c6fd3/PointAndFiniteListReflection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/ExactRationalPlaneReflections/Variant03d73452c99c6fd3/PointAndFiniteListReflection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 22; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Stroke` — import line 23; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RasterPoint](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/rasterpoint.md) | 43 | `declaration-track:ee369ece04d049fd3eaa3f25c1475c8bf0143c2ffe9f7259515f28b5cd04ca17` |
| 2 | `def` | [RasterPoint.reflectDiagonal](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/rasterpoint-reflectdiagonal.md) | 49 | `declaration-track:08684c51c0b3f2351caf02304105d94559f48ec5b95d0f23bb363f55ba175d5a` |
| 3 | `theorem` | [RasterPoint.reflectDiagonal_involutive](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/rasterpoint-reflectdiagonal-involutive.md) | 52 | `result-track:2fa8b197989e9c541796d9bfc91f156c42a3dd91465228c0f72c61791f0f7c47` |
| 4 | `inductive` | [ReflectionDescriptor](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/reflectiondescriptor.md) | 58 | `declaration-track:c72d738712b60fd613594bb23e12a971aa719b670e092483a814452f834b3efa` |
| 5 | `def` | [reflectPoint](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/reflectpoint.md) | 69 | `declaration-track:486cdfde4e2bbd4bf0f9a43fa84f6c9d9493419d841dc738a836f4419ce9db70` |
| 6 | `def` | [reflectCarrierSpace](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/reflectcarrierspace.md) | 84 | `declaration-track:8e71d4fc6b3ae17d9feb7ae169fd2e28d8dae71131e6bd3c69679d75ef070b46` |
| 7 | `def` | [reflectCarrierDiagonal](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/reflectcarrierdiagonal.md) | 89 | `declaration-track:9a34198e7148438172ffec5384898aa81eb86e495d2bc93f349439f06aa7bf59` |
| 8 | `theorem` | [reflectCarrierSpace_length](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/reflectcarrierspace-length.md) | 92 | `result-track:593ca12c7a8d9d598f8955b43df8f6bac5bf8f94de1063680a315088263f77e3` |
| 9 | `theorem` | [reflectPoint_diagonal_zero](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/reflectpoint-diagonal-zero.md) | 97 | `result-track:73ba119802e1d4ad97a1570a37b3ebd51bd4cbdb0cdedb1582286848d9872213` |
| 10 | `theorem` | [reflectCarrierDiagonal_involutive](../../../../Geometry/PointAndFiniteListReflection.lean/declarations/reflectcarrierdiagonal-involutive.md) | 102 | `result-track:4819bbc5ed9e5b96d5687afa8f1ef7bd7a711fa8fd89fa2b9f9652850c7e22d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12bedb2365099410531650693b7e819e0eccf8d61d836a824f475c36da914efd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ExactRationalPlaneReflections/Variant03d73452c99c6fd3/PointAndFiniteListReflection.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/ExactRationalPlaneReflections/Variant03d73452c99c6fd3/PointAndFiniteListReflection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
