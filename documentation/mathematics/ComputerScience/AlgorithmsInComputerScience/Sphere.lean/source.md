# Sphere — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c57eb13530c90cf441a92660466913f8d459c3f6` · SHA-256 `627c9d16b7d59a6cf99c3704dfecb5888d547d3679c9185330289f59e4b445f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.PrismaticGeometry.Prism

/-!
# n-sphere shadows around a null point

n-sphere shadows are finite geometric shadows: a direction frame, a finite
cell complex, a closed sphere chain, and angle-ratio charts. Coverage and
ratio compatibility are supplied proof fields. Analytic completion requires
`PrismaticGeometryAnalyticLimit`, and δ-ring/prismatic realization requires
`PrismaticGeometryRealization` (both in the Realization module); nothing
analytic or prismatic is asserted here.

Object index: `NullCenteredSphereShadow`, `AngularChart`, `RatioSphere`,
`ratioSphere_sound`.
-/

universe u

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-- A finite n-sphere shadow around a null point. -/
structure NullCenteredSphereShadow where
  dim : Nat
  directionFrame : DirectionFrame
  complex : FiniteCellComplex
  sphereChain : Chain complex dim
  sphereClosed : ClosedChain complex dim sphereChain
  radiusLabel : String
  angularCoordinateHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- An angular chart over a sphere shadow: angle coordinates for a finite
list of directions. -/
structure AngularChart
    (S : NullCenteredSphereShadow) where
  chartLabel : String
  chartDirections : List S.directionFrame.Direction
  angleCoordinate :
    S.directionFrame.Direction → AngleRatio
  chartSound : Prop
  chartSoundProof : chartSound

/-- A sphere presented as ratios around the null point: charts, angular
coverage, and ratio compatibility, all proof-carrying. -/
structure RatioSphere
    (S : NullCenteredSphereShadow) where
  charts : List (AngularChart S)
  coversAngularDirections : Prop
  coversProof : coversAngularDirections
  ratioCompatibility : Prop
  ratioCompatibilityProof : ratioCompatibility

theorem ratioSphere_sound
    {S : NullCenteredSphereShadow}
    (R : RatioSphere S) :
    R.coversAngularDirections ∧ R.ratioCompatibility :=
  ⟨R.coversProof, R.ratioCompatibilityProof⟩

end PrismaticGeometry
end Cube
end Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a91688a8768ba6e9609c2845eb15a8c3813f097ad54c40d605593b747b7c00c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sphere/Variant627c9d16b7d59a6cf99c3704dfecb5888d547d3679c9185330289f59e4b445f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
