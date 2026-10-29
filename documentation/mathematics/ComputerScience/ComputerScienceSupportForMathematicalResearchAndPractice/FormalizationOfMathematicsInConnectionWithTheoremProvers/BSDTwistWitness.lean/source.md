# BSDTwist Witness — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `202cea399fb9b391dd9b34c03982a1b4c332a2e6` · SHA-256 `f21259414440a57141c79c5e2112dd8d4415703d41636685ff409b4bde7127ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.BSDTwistWitness

/-!
# Folder.Theorem.Arithmetic.BSDTwistWitness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.arithmetic.bsdtwist_witness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Arithmetic

theorem certified_twist_family_all_certified
    (W : Folder.Arithmetic.CertifiedQuadraticTwistFamily) :
    Folder.Arithmetic.AllTwistsCertified W.witness :=
  Folder.Arithmetic.certified_twist_family_all_certified W

theorem certified_twist_family_infinite
    (W : Folder.Arithmetic.CertifiedQuadraticTwistFamily) :
    W.witness.isInfiniteFamily :=
  Folder.Arithmetic.certified_twist_family_infinite W

end Arithmetic
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b1fe03ae91780f9246a9a6e4641d71da1963c4b4c62d1e683dbd7ed82018311 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSDTwistWitness/Variantf21259414440a57141c79c5e2112dd8d4415703d41636685ff409b4bde7127ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
