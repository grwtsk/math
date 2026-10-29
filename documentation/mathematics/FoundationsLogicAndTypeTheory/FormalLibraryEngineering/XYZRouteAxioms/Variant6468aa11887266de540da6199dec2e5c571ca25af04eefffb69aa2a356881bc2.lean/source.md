# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.XYZRouteAxioms.Variant6468aa11887266de540da6199dec2e5c571ca25af04eefffb69aa2a356881bc2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d14cbd0a0c76001f55bf138a709eaa52dc157cd9` · SHA-256 `6468aa11887266de540da6199dec2e5c571ca25af04eefffb69aa2a356881bc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.XYZ
import Generated.XYZRouteFixture

/-!
# XYZ transport axiom audit

This file prints the dependency closure of the required canonical transport,
conformance-certificate, and Riemann-sphere theorems.  Presentation modules are
intentionally absent: finite presentation data is not an authority source for
the canonical transport results below.
-/

#print axioms Surface.Core.XYZ.orderedRoute_deterministic
#print axioms Surface.Core.XYZ.orderedRoute_edges_declared
#print axioms Surface.Core.XYZ.expectedUpdate_preserves_channelBounds
#print axioms Surface.Core.XYZ.expectedUpdate_preserves_revision
#print axioms Surface.Core.XYZ.expectedUpdate_preserves_colorInvariant
#print axioms Surface.Core.XYZ.verifyProposal_sound
#print axioms Surface.Core.XYZ.verifyProposal_rejects_undeclared_edge
#print axioms Surface.Core.XYZ.verifyProposal_rejects_wrong_endpoint
#print axioms Surface.Core.XYZ.verifyProposal_rejects_out_of_range_channel
#print axioms Surface.Core.XYZ.verifyProposal_rejects_wrong_expected_output
#print axioms Surface.Core.XYZ.staleRevision_rejected
#print axioms Surface.Core.XYZ.equalRevision_conflict_rejected
#print axioms Surface.Core.XYZ.eventual_convergence_to_latestAdmitted
#print axioms Surface.Core.XYZ.finiteXYZTransport_has_no_analytic_authority
#print axioms Generated.XYZRouteFixture.rustExpectedUpdate_eq_leanExpectedUpdate
#print axioms Surface.Core.XYZ.xyzToAxisSphere_mem_sphere
#print axioms Surface.Core.XYZ.xyzToAxisSphere_components
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73b91380b6b43b8adead9c51ba1cf864e2f89c370b00d695e7d3f086c273ddd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/XYZRouteAxioms/Variant6468aa11887266de540da6199dec2e5c571ca25af04eefffb69aa2a356881bc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
