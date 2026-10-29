# Status Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `028ca532417483c4ee54c07f351278ca35587db5` · SHA-256 `55fbf51df4f218701769930b2c508d90c921debaef66f35ba80778de888bf354`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Taxonomy.Role
import Mathlib.Tactic.DeriveFintype

/-! # Mathematical status independent of role and domain. -/

namespace MathDiscovery.Taxonomy

inductive MathematicalStatus
  | definition
  | axiom
  | derivedDefinition
  | provedTheorem
  | importedTheorem
  | conditionalTheorem
  | classificationTheorem
  | existenceTheorem
  | uniquenessTheorem
  | equivalenceTheorem
  | bound
  | algorithm
  | verifiedAlgorithm
  | numericalObservation
  | heuristic
  | conjecture
  | openProblem
  | disprovedClaim
  | counterexample
  | historicalFormulation
  deriving DecidableEq, Inhabited, Fintype

def MathematicalStatus.RequiresTheoremAuthority : MathematicalStatus → Prop
  | .provedTheorem | .importedTheorem | .conditionalTheorem
  | .classificationTheorem | .existenceTheorem | .uniquenessTheorem
  | .equivalenceTheorem | .bound => True
  | _ => False

instance (status : MathematicalStatus) :
    Decidable status.RequiresTheoremAuthority := by
  cases status <;>
    simp only [MathematicalStatus.RequiresTheoremAuthority] <;>
    infer_instance

/-- Statuses that denote an admitted proved statement rather than an open claim. -/
def MathematicalStatus.IsProved : MathematicalStatus → Prop
  | .provedTheorem | .importedTheorem | .conditionalTheorem
  | .classificationTheorem | .existenceTheorem | .uniquenessTheorem
  | .equivalenceTheorem | .bound => True
  | _ => False

instance (status : MathematicalStatus) :
    Decidable status.IsProved := by
  cases status <;>
    simp only [MathematicalStatus.IsProved] <;>
    infer_instance

end MathDiscovery.Taxonomy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d83d91a6d0a8e267fdcd665950124382368c78090c633785e9785c02d82d6d7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant55fbf51df4f218701769930b2c508d90c921debaef66f35ba80778de888bf354.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
