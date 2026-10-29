# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalVerificationPolicy.Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20becf4cef534fbf0f95a6e1021d0ff6f949ff9c` · SHA-256 `76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.GrandChallenge.FormalVerificationPolicy

Radiation role: research-boundary
BinaryMatrix spine: This module records theorem-status verification policy.
Ontology: formal_verification_policy
Pivot role: verification
Zero typology: none
Contract boundary: policy
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge

structure FormalVerificationPolicy where
  requiresLeanKernelCheck : Prop
  forbidsAxiom : Prop
  forbidsSorry : Prop
  forbidsAdmit : Prop
  forbidsSorryAx : Prop
  informalReasoningAllowedAsHeuristic : Prop
  theoremStatusRequiresCompilation : Prop
  sourceLabel : String

def defaultFormalVerificationPolicy : FormalVerificationPolicy := {
  requiresLeanKernelCheck := True
  forbidsAxiom := True
  forbidsSorry := True
  forbidsAdmit := True
  forbidsSorryAx := True
  informalReasoningAllowedAsHeuristic := True
  theoremStatusRequiresCompilation := True
  sourceLabel :=
    "Lean kernel verification policy inspired by Aristotle-style formal proof discipline"
}

theorem formal_policy_requires_kernel_check :
    defaultFormalVerificationPolicy.requiresLeanKernelCheck :=
  trivial

theorem formal_policy_forbids_sorry :
    defaultFormalVerificationPolicy.forbidsSorry :=
  trivial

theorem formal_policy_forbids_axiom :
    defaultFormalVerificationPolicy.forbidsAxiom :=
  trivial

theorem formal_policy_allows_informal_heuristics :
    defaultFormalVerificationPolicy.informalReasoningAllowedAsHeuristic :=
  trivial

end GrandChallenge
end Folder

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfc58df5214bd7ed70c9cf401077be1e9acf27a7154cbc6de184b2fbef985b4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
