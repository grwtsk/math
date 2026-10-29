# Rpc — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6e9b53957569fd12eb664f83c98aec3887e85f8` · SHA-256 `096759278c13b72bf9e3a5dcf12ddcfcd527187df26a43138faf92d07c9975a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-! Open-file, session-scoped goal-observation provider surface. -/

import IndiscreteTerminalTopos.Audit
import Lean.Server.InfoUtils

namespace IndiscreteTerminalTopos.Rpc

/-- Persistent open-file session identity; it never stores an `RpcRef`. -/
structure SessionIdentity where
  /-- Open document URI. -/
  documentUri : String
  /-- Host-controlled session generation. -/
  generation : Nat
  deriving Repr

/-- Position-indexed goal query. -/
structure GoalsAtParams where
  /-- Associated open-file session. -/
  session : SessionIdentity
  /-- Zero-based line. -/
  line : Nat
  /-- Zero-based UTF-16 character offset. -/
  character : Nat
  deriving Repr

/-- Goal observation backed by elaboration `InfoTree`, not tactic-text scanning. -/
def goalsAtProvider := Lean.Elab.InfoTree.goalsAt?

/-- Opaque server references are not persistent identities. -/
def rpcRefsAreSessionScoped : Bool := true

end IndiscreteTerminalTopos.Rpc
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff242a74ae5847441c57e510e1ef908466b4d59dfe1eb3059e0a370d2dde551d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rpc/Variant096759278c13b72bf9e3a5dcf12ddcfcd527187df26a43138faf92d07c9975a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
