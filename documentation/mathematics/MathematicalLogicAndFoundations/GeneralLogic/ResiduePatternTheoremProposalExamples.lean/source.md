# Residue Pattern Theorem Proposal Examples — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b44e9905c7245a1a1bd861dbb213b14cc78179b7` · SHA-256 `1d929b53695b2e1a8abc4086fac70fcecce9cc102d83b206b1d28656991d7131`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.ResiduePatternTheoremProposal

/-!
# Residue pattern theorem proposal examples

These examples keep generated pattern features and theorem candidates inside
the finite proposal boundary.
-/

namespace AnalyticNumber
namespace ResiduePatternTheoremProposal

def toyResiduePatternFeature : ResiduePatternFeature where
  featureId := 1
  method := PatternRecognitionMethod.motifExtraction
  supportCellCount := 4
  scoreHash := 101
  finiteEvidenceOnly := True
  finiteEvidenceOnlyProof := trivial

def toyResidueCandidate : ResidueReductionTheoremCandidate where
  candidateId := 2
  feature := toyResiduePatternFeature
  statementHash := 202
  status := CandidateStatus.residueTodo
  proofAuthorityRequired := "Lean or approved theorem authority"
  patternRecognitionNotProof := True
  patternRecognitionNotProofProof := trivial
  leanOrApprovedAuthorityRequired := True
  leanOrApprovedAuthorityProof := trivial

example :
    toyResidueCandidate.patternRecognitionNotProof ∧
    toyResidueCandidate.leanOrApprovedAuthorityRequired :=
  pattern_recognition_firewall toyResidueCandidate

example (route : Prop) (routeProof : route) :
    toyResidueCandidate.leanOrApprovedAuthorityRequired ∧ route :=
  theorem_candidate_requires_authority toyResidueCandidate route routeProof

end ResiduePatternTheoremProposal
end AnalyticNumber
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ee03e04568b3835fcaf938c1e8aeb499be9627c6c0b19ec76521ce7f3b76981 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposalExamples/Variant1d929b53695b2e1a8abc4086fac70fcecce9cc102d83b206b1d28656991d7131.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
