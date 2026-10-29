# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d47a042a2b9a3ce060df80c7b19193fc46774b8` · SHA-256 `806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import NoeoueueFormalGate.Model

set_option autoImplicit false

namespace NoeoueueFormalGate

structure CertifiedTransition where
  before : State
  intent : Intent
  after : State
  checked : ValidTransition before intent after

structure CertificateLedger where
  genesis : State
  genesisInvariant : Invariant genesis
  transitions : List CertifiedTransition

namespace CertificateLedger

def appendCertified
    (ledger : CertificateLedger)
    (certificate : CertifiedTransition) : CertificateLedger :=
  { ledger with transitions := ledger.transitions ++ [certificate] }

end CertificateLedger

end NoeoueueFormalGate
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b38fed5a844bc151736033d0dc75f560c709cf5643a886fe2cab298a786b9848 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Variant806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
