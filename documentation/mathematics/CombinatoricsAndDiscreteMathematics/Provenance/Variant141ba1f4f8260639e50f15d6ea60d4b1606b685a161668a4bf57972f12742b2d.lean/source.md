# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Provenance.Variant141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88440341b120a33f48c6f28a44de192cbf663761` · SHA-256 `141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Provenance wrapper for primitive cores

Metadata binds a mathematical core to an immutable implementation cut.  It
does not participate in completion or minimality proofs.
-/

namespace Mathematics.BinaryFrontier.Obstruction

open Mathematics.BinaryFrontier.Completion

universe uPartial uFull uConstraint
universe uSnapshot uRevision uChecker uVersion uEvidence

structure CertifiedPrimitiveCore
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (registry : Finset Constraint)
    (partial : Partial)
    (SnapshotId : Type uSnapshot)
    (RegistryRevision : Type uRevision)
    (CheckerId : Type uChecker)
    (CheckerVersion : Type uVersion)
    (EvidenceId : Type uEvidence)
    [DecidableEq EvidenceId] where
  mathematicalCore :
    PrimitiveCore semantics registry partial
  snapshot : SnapshotId
  constraintRegistryRevision :
    RegistryRevision
  checker : CheckerId
  checkerVersion : CheckerVersion
  evidenceRefs : Finset EvidenceId

theorem CertifiedPrimitiveCore.infeasible
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    {SnapshotId : Type uSnapshot}
    {RegistryRevision : Type uRevision}
    {CheckerId : Type uChecker}
    {CheckerVersion : Type uVersion}
    {EvidenceId : Type uEvidence}
    [DecidableEq EvidenceId]
    (certificate :
      CertifiedPrimitiveCore
        semantics registry partial
        SnapshotId RegistryRevision
        CheckerId CheckerVersion EvidenceId) :
    semantics.Infeasible
      certificate.mathematicalCore.constraints
      partial :=
  certificate.mathematicalCore.infeasible

end Mathematics.BinaryFrontier.Obstruction
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba2b0efe124b2f41b7bbbf714e4c0f639b3bbbd5292ba09a85cbbf61ed0e8cb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Provenance/Variant141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
