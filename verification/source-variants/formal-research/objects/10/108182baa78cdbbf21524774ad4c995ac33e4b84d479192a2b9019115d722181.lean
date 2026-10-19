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
