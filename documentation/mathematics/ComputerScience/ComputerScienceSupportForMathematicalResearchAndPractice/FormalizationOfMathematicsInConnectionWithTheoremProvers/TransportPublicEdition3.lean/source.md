# Transport Public Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c989d5cb177633d42601b135408ee7157c58ae45` · SHA-256 `94c81132a52bfdfa7eba4db4702c57efd048729e514e5426ba1a0e740db8436d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Hash
public import Surface.Core.Transport.Bytes
public import Surface.Core.Transport.Revision
public import Surface.Core.Transport.Route
public import Surface.Core.Transport.Payload
public import Surface.Core.Transport.Contract
public import Surface.Core.Transport.Proposal
public import Surface.Core.Transport.Verifier
public import Surface.Core.Transport.Register
public import Surface.Core.Transport.Convergence
public import Surface.Core.Transport.Certificate
public import Surface.Core.Transport.Authority

/-!
# Surface finite transport substrate

Payload-neutral, deterministic finite transport. This aggregate exports pure
framing, routing, admission, register, convergence, certificate, and authority
boundaries without granting transported metadata theorem authority.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8518145ceec9e60c18fac554720ea74c1072f01656a14f22f8efcf22bddced74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Variant94c81132a52bfdfa7eba4db4702c57efd048729e514e5426ba1a0e740db8436d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
