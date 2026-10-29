# Shallow-long remainder payment

Issue: #551. Parent shallow-depth split: #547 / draft PR #550.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / DEEP_LONG_SHORT_INTERVAL_SUPPLIER_OPEN**.

## Exact shallow-long identity

The shallow part of the long harmonic remainder is exactly

```text
ShallowLongRemainder
  = ShallowDepthPacket - ShallowShortSignedPacket.
```

The source proves this by finite sum distribution only.

## Deterministic bounds

Two already-paid ingredients are reused:

1. `|ShallowDepthPacket(j)|` is subpolynomial from #547.
2. The shallow portion of the normalized short-length budget is bounded by the complete normalized short packet budget from #538.

The source proves

[
|ShallowLongRemainder(j)|
le
|ShallowDepthPacket(j)|
+
ShallowNormalizedShortBudget(j).
]

Hence the shallow-long remainder is source-level subpolynomial.

## Deep-to-full reduction

The parent long remainder is exactly

```text
LongRemainder
  = ShallowLongRemainder + DeepLongRemainder.
```

Therefore a subpolynomial bound on the deep-long remainder alone supplies the complete long remainder, and hence the existing harmonic packet and conditional RH endpoint.

The source authors

```lean
subpolynomialLongHarmonicRemainderPacket_of_deep
riemannHypothesis_of_subpolynomialDeepLongHarmonicRemainderPacket
```

with no new arithmetic estimate.

## Remaining analytic source

The sole analytic premise is now

```lean
SubpolynomialDeepLongHarmonicRemainderPacket
```

on the regime already typed by #547:
- deep depth;
- cumulative interval length at least `j+2`;
- exact active upper length;
- all inherited endpoints retained.

## Nonclaims

No short-interval theorem is applied. No Lean/Lake execution, kernel acceptance, merge, or RH proof is claimed.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=058c5e3f28647761136841c7b030b3f3707e5547f0294e1973158c4b426049b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
