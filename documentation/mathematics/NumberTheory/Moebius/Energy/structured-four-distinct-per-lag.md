# Structured four-distinct per-lag cost interface

Issue: #907  
Parent: draft PR #906 at `a8ad9522d54f369fceae4338c5a2eabc156b4f32`.

No cancellation exponent is assumed in this increment.

The source introduces a general per-lag cost
```lean
StructuredFourDistinctLagCost
```
and the exact premise
```lean
RegularCenteredStructuredFourDistinctPerLagBound.
```

A future analytic theorem may provide any bound
```text
|fourDistinctLagCorrelation(b,d,z,r,H)| <= L(b,d,z,r,H).
```

The source then pays only:
- the existing factor 8;
- the exact winding range `1 <= z <= floor(b/d^2)`;
- four endpoint-parity/shift families;
- the effective square-modulus set.

The deterministic resulting cost is
```lean
regularCenteredStructuredFourDistinctLagCostEndpoint
```
and the adapter is
```lean
regularCenteredStructuredFourDistinctEnvelope_of_perLag.
```

This prevents an unjustified exponent from being baked into the dependency path before admissible shift-pair multiplicities and analytic cancellation are understood.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc165c64beab6b6ad987b32d257bfb8570883f8beb027187a30eafe8549de5dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
