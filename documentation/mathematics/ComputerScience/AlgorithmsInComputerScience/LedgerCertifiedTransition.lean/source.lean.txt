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
