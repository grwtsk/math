# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Stratum.Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe33409f2b91e7647dd2377152ff6aa63c82c238` · SHA-256 `f88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic.DeriveFintype
import Mathematics.Core.SemanticIdentity

/-! # Typed whole-system strata and boundaries -/

namespace Mathematics.Mutation

inductive Stratum
  | human
  | jurisCapability
  | semantic
  | globalPlanner
  | localElement
  | formal
  | runtime
  | client
  | world
  deriving DecidableEq, Repr, Fintype

abbrev StratumSet := Finset Stratum

inductive SystemEdgeKind
  | dependsOn
  | authorizes
  | restricts
  | calls
  | reads
  | writes
  | renders
  | validates
  | derives
  | transmits
  | retains
  | delegates
  | supersedes
  | revokes
  | implements
  | projects
  deriving DecidableEq, Repr, Fintype

inductive BoundaryKind
  | humanToSystem
  | jurisdictionChange
  | operatingSystemPermission
  | localToRemote
  | modelToTool
  | leanToRust
  | rustToClient
  | clientToWorld
  | deviceHandoff
  | corpusVisibility
  deriving DecidableEq, Repr, Fintype

abbrev BoundarySet := Finset BoundaryKind

end Mathematics.Mutation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cab12fd6baf6062d71a3f66d90d7a19e6cdb5caac592acb1d1397e87a416f20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
