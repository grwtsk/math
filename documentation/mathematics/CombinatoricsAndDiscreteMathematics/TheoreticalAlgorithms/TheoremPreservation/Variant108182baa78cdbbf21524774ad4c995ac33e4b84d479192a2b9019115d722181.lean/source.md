# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremPreservation.Variant108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c79da0775a7aca2eef76ac1552ef63849737c49` · SHA-256 `108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Proof
import Mathematics.Reflection.BuildCheck

/-! # Kernel-level theorem preservation -/

namespace Mathematics.Reflection

/-- One proposition certified before and after the target-native patch. -/
structure PreservedTheorem where
  statement : Prop
  sourceEnvironment : Authority.FrozenKernelEnvironment
  targetEnvironment : Authority.FrozenKernelEnvironment
  before :
    Authority.AcceptedKernelCertificate sourceEnvironment statement
  after :
    Authority.AcceptedKernelCertificate targetEnvironment statement

/-- Complete declared theorem cone preserved by a patch. -/
structure TheoremPreservationCheck (patch : Patch) where
  requiredBefore : List ObjectAddress
  preserved : List PreservedTheorem
  coverage :
    ∀ certificateAddress,
      certificateAddress ∈ requiredBefore ↔
        ∃ witness ∈ preserved,
          witness.before.certificateAddress = certificateAddress
  checkDigest : Digest

namespace PreservedTheorem

theorem target_statement
    (preserved : PreservedTheorem) :
    preserved.statement :=
  preserved.after.proves

theorem target_sorry_absent
    (preserved : PreservedTheorem) :
    "sorryAx" ∉ preserved.after.audit.axiomClosure.axioms :=
  preserved.after.audit.axiomClosure.sorryAxAbsent

end PreservedTheorem

end Mathematics.Reflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=733770c941dd35b914b347e554135c6f1178ebb6941b2ac3ed7556dbef0e48a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremPreservation/Variant108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
