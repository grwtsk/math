# Saturated openness of strict polygon edges

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

Issue #1043 is a direct child of draft PR #1042 at exact parent head `753a46203fd2a45c199d5403898b3d1e46e03e85`.

The source works with the authentic strict subtype

```lean
StrictUnitInterior = {t : unitInterval // ¬ IsEndpoint t}
```

and the inherited continuous injective characteristic

```lean
positiveOpenEdge k h i :
  StrictUnitInterior → PolygonBoundaryOneSkeleton k.
```

For an arbitrary open `U : Set StrictUnitInterior`, the source defines its exact pre-quotient saturation as two interval-copy subsets:

1. `U` on the selected positive source side `(h,i)`;
2. the `unitInterval.symm` image of `U` on the paired negative side `(h,i+2)`.

The four endpoint-only seam generators cannot occur because every point of `U` is a nonendpoint. The full inherited two-point EqvGen orbit theorem supplies the exact identity

```lean
boundaryProjection k ⁻¹' (positiveOpenEdge k h i '' U)
  = positiveOpenEdgeSaturation k h i U.
```

The strict carrier is open in the real unit interval, the finite original side-index source is discrete, and `unitInterval.symmHomeomorph` preserves openness. Hence the saturation is open in the genuine finite disjoint union of interval copies. The actual quotient-map criterion

```lean
(boundaryProjection_isQuotientMap k).isOpen_preimage
```

then makes every open subset of the strict source have open image. Together with the inherited continuity and injectivity, the source packages candidates

```lean
positiveOpenEdge_isOpenEmbedding
positiveOpenEdge_isEmbedding.
```

The exact subtype-image openness API, local reinstatement of the original discrete source topology, `Fin 2 → Fin 4` arithmetic, source-saturation membership proof, and `IsOpenEmbedding.of_continuous_injective_isOpenMap` application remain elaboration-sensitive. No Lean execution or kernel audit has occurred.

This result does not prove closure-finiteness, weak topology, a CW-complex instance, a surface manifold, cellular/singular comparison, H1, fundamental group, van Kampen, Hurewicz, hyperbolic geometry, trace formula, GUE, sofic, Chowla, zeta-divisor, or RH.
<!-- DOCUMENTATION RELOCATION /1 original-sha256=91351038d476442d7a094ba1768bd220a0ef7b9614ee5ca045ad83e3019465c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
