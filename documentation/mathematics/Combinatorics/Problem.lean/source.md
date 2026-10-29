# Problem — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1721779735a8f4d58436296f96602fb3c7d1c5ae` · SHA-256 `8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Mutation.Ranking

/-! # Canonical problem intermediate representation -/

namespace Mathematics.Mutation

open Mathematics.Juris

inductive ProblemSourceKind
  | controlledInjection
  | observedFailure
  | hybrid
  deriving DecidableEq, Repr

inductive ProblemDisposition
  | knownObstruction
  | matchedObstruction
  | ambiguousObstruction
  | unclassifiedResidue
  | jurisBlocked
  | trustBlocked
  | authorityBlocked
  | diagnosticExperimentRequired
  | repairReady
  | verificationPending
  | discharged
  | quarantined
  | successorSnapshotRequired
  deriving DecidableEq, Repr

structure ProblemIR where
  problemId : StableId
  snapshotDigest : Digest
  sourceKind : ProblemSourceKind
  diagnosisAntichain : ExplanationFamily
  signature : MutationSignature
  violatedInvariants : Finset StableId
  affectedStrata : StratumSet
  jurisDisposition : JurisDisposition
  requiredTrust : Finset StableId
  availableRespectEvidence : Finset StableId
  authorityClass : Authority.EvidenceKind
  disposition : ProblemDisposition
  admissibleDischarges : Finset StableId
  requiredCertificates : Finset StableId
  nonclaims : List Nonclaim

def compileProblemIR
    (problem : ProblemIR) :
    ProblemIR :=
  problem

end Mathematics.Mutation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b96c14b485756babb304ee472cfb172c1fcf7e51ccd3a4859f114cccd7d1f02f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Problem/Variant8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
