# Four-distinct admissible shift-pair multiplicity

Issue: #911  
Parent: draft PR #910 at `c5b42c8fefa8e817888f33530f9590cb1f050130`.

The existing admissibility predicate forces every half-shift at center `c` to satisfy `h<=c`. Therefore
```text
# admissible shifts at c <= c+1 <= b+1
```
for endpoint-valid centers.

Hence the admissible product at centers `c` and `c+ell` has cardinality at most
```text
(b+1)^2.
```
Filtering to the genuinely four-distinct stratum cannot increase this count.

Summing over at most `b+1` centers gives the safe one-lag configuration bound
```text
(b+1)^3.
```

This is intentionally coarse. It is a combinatorial ceiling, not an analytic estimate. Any proposed per-lag cancellation exponent can now be compared against an explicit raw configuration count rather than an unspecified multiplicity.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80afe585caf834db487de2719327b524cceecdf9256e7a42c0eef0da555e43fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
