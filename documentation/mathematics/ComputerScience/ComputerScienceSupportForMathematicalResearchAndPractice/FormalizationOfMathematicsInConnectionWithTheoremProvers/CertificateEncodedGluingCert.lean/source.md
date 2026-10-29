# Certificate Encoded Gluing Cert — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4d31e5752b6e9e3486b71c655a57e9df58a4e4d` · SHA-256 `d8e4739043d38a08a44444c7d04ec63be0c07fc7c73efad5fe971ba823346b7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Think.Knowledge.Sheaf

/-!
Encoded bridge certificate schema for Rust-generated Knowledge sheaf receipts.

The formal sheaf gluing certificate lives in `Think.Knowledge.Sheaf.Gluing`.
This file only provides the compact encoded boundary consumed by the runtime
artifact generator.
-/

structure EncodedGluingCert where
  certHash : String
  noBypass : Bool
deriving Repr, DecidableEq

def checkGluingCertificate (cert : EncodedGluingCert) : Bool :=
  cert.noBypass && !cert.certHash.isEmpty

end Think.Knowledge.Sheaf
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8dd03307988343f3c5ccf1a2fd19048920f0678c33785f2d95771686100d780f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certificate/Variantd8e4739043d38a08a44444c7d04ec63be0c07fc7c73efad5fe971ba823346b7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
