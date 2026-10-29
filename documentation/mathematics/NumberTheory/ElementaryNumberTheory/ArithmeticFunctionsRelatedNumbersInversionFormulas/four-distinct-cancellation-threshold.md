# Four-distinct cancellation exponent threshold

Issue: #920  
Parent: draft PR #919 at `4d17ab1c1a3d349d519f8f4dc25b985d9c9a7398`.

The deterministic support analysis gives endpoint raw scale approximately
```text
b^4 * sum_d 1/d^2,
```
and the reciprocal-square modulus mass is bounded independently of b.

Therefore, in the deliberately conservative model
```text
correlation size <= rawSupport^theta,
```
the endpoint b-exponent is
```text
4*theta.
```

To reach the natural endpoint exponent 1 one needs
```text
4*theta <= 1,
```
hence
```text
theta <= 1/4.
```

Consequences:
- theta=1/2 (generic square-root cancellation against the full raw configuration count) gives exponent 2 and is insufficient;
- theta=1/4 hits natural scale in this model.

The source scripts only this exponent algebra. The analytic premise that a theta-power estimate actually holds is explicit and unproved:
```lean
StructuredFourDistinctSupportPowerScaling.
```

This indicates that the next productive move should seek additional structure or dimensional reduction rather than simply postulate generic square-root cancellation over all (c,h,g) configurations.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=988ac7bebb013e0ecfd4549bb143706fc1dd1923738062ba8c66b8f74c571304 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
