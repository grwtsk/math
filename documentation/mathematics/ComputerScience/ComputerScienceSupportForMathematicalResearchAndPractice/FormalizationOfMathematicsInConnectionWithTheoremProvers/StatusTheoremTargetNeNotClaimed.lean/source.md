# Status Theorem Target Ne Not Claimed — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e816dd1d427829f4bf860ab1fc057f238c8b865` · SHA-256 `7c05c19816ae1924524fa6d674d39b2aa61a06e4fb1c818fbe3c1d423c6cd6e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.Status

/-!
# Folder.Theorem.GrandChallenge.Status

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports grand-challenge status facts.
Ontology: proof.grand_challenge_status
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem theoremTarget_ne_notClaimed :
    Folder.GrandChallenge.ChallengeStatus.theoremTarget ≠
      Folder.GrandChallenge.ChallengeStatus.notClaimed :=
  Folder.GrandChallenge.theoremTarget_ne_notClaimed

theorem contract_ne_knownCase :
    Folder.GrandChallenge.ChallengeStatus.contract ≠
      Folder.GrandChallenge.ChallengeStatus.knownCase :=
  Folder.GrandChallenge.contract_ne_knownCase

theorem analogy_ne_theoremTarget :
    Folder.GrandChallenge.ChallengeStatus.analogy ≠
      Folder.GrandChallenge.ChallengeStatus.theoremTarget :=
  Folder.GrandChallenge.analogy_ne_theoremTarget

theorem speculativeScaffold_ne_solution :
    Folder.GrandChallenge.ChallengeStatus.speculativeScaffold ≠
      Folder.GrandChallenge.ChallengeStatus.knownCase :=
  Folder.GrandChallenge.speculativeScaffold_ne_solution

end GrandChallenge
end Theorem
end Folder

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4660533fd7f35eb69c4573a8eea54dd6c3916d39cd54e9c76ee8f519b1290812 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variant7c05c19816ae1924524fa6d674d39b2aa61a06e4fb1c818fbe3c1d423c6cd6e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
