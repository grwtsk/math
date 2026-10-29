# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Smoothing.Variant8ac389d9e6d1e777635cec8a5aecb7c9450fdf55de43fff231c2d493c8175199

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16dfef491af02117b49946004c3b62a03c5b0b4e` · SHA-256 `8ac389d9e6d1e777635cec8a5aecb7c9450fdf55de43fff231c2d493c8175199`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Heat.ModularDecomposition

namespace Surface

structure SmoothingCertificate where
  heat : HeatFlowDescriptor
  smoothingClaim : Prop
  certificateSound : Prop

/--
Accessor for the explicit smoothing-certificate soundness field.

This is not an analytic smoothing theorem and does not construct a heat-kernel
regularization argument.
-/
theorem SmoothingCertificate.certificateSound_id
    (cert : SmoothingCertificate) :
    cert.certificateSound -> cert.certificateSound := by
  intro h
  exact h

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12e1068d5d98f269049bf47a26898caa1295c37d8816d80e09ce88e23e362124 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Smoothing/Variant8ac389d9e6d1e777635cec8a5aecb7c9450fdf55de43fff231c2d493c8175199.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
