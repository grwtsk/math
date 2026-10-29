# Complete source: GRWTSK.Algebra.GroupTheory.GroupTransportDiagnostic.Variant918b80f740bc60938ea1c760380e602cbd729562cd302ecd8bd12d5874978c60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40c52c412ecbf1dbc03e14dcfa82f47fea61148a` · SHA-256 `918b80f740bc60938ea1c760380e602cbd729562cd302ecd8bd12d5874978c60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Group.TransferInstance

noncomputable def transportDiagnostic {G : Type} [Group G] (e : G ≃ G) :
    @MulEquiv G G e.group.toMul inferInstance := e.mulEquiv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc13f2fc78f78590d3ec7c4e6937fd9846d8f106aebd7b3a3a90a229b09edb57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/GroupTransportDiagnostic/Variant918b80f740bc60938ea1c760380e602cbd729562cd302ecd8bd12d5874978c60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
