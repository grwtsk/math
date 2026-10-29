# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f5265706f7274732f5265736561726368526566657265655061636b65742e6.Variantca177b411a155824744431f390d10c5e7a2689e980cb735780e772762cd053e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad19aad5a36326c62a4f33de849ed82199be0729` · SHA-256 `ca177b411a155824744431f390d10c5e7a2689e980cb735780e772762cd053e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f56616c69646174696f6e2f526573656172636853756273756d7074696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=101001|role=proof_code_atom|slug=pipeline-reports-researchrefereepacket|owner=canonical_owner|core=Pipeline/Reports/ResearchRefereePacket.lean|leaf=M506970656c696e652f5265706f7274732f5265736561726368526566657265655061636b65742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports

structure ResearchRefereePacket where
  verdict : String
  requiredValidatorCount : Nat
  residueLedgerPresent : Bool
  nonClaimsPreserved : Bool
  deriving Repr, DecidableEq

def researchRefereePacket : ResearchRefereePacket := {
  verdict := "accepted_with_residue"
  requiredValidatorCount := Think.Pipeline.Validation.requiredResearchSubsumptionValidators.length
  residueLedgerPresent := true
  nonClaimsPreserved := true
}

theorem research_referee_verdict_is_residue_bounded :
    researchRefereePacket.verdict = "accepted_with_residue" := by
  rfl

theorem research_referee_validator_count_is_sixteen :
    researchRefereePacket.requiredValidatorCount = 16 := by
  rfl

end Think.Pipeline.Reports
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b4119392798e928ee793caf1e409f385b578f9515a16a04f01c8ea169c1e118 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f5265706f7274732f5265736561726368526566657265655061636b65742e6/Variantca177b411a155824744431f390d10c5e7a2689e980cb735780e772762cd053e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
