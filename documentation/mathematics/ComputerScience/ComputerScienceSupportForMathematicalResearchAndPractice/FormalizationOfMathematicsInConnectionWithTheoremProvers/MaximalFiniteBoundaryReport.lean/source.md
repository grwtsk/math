# Maximal Finite Boundary Report — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee4196cadff58ab2a5bf36ba4984f3d9daa09a7b` · SHA-256 `adde73bee29f185f1af0516ab6f647712f1966dbb4b196a31c30f1ebb2b225fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f4d6178696d616c46696e697465426f756e646172792e6c65616e


/- source-tree-label: STL1|L|addr=1101111|role=proof_code_atom|slug=pipeline-reports-maximalfiniteboundaryreport|owner=canonical_owner|core=Pipeline/Reports/MaximalFiniteBoundaryReport.lean|leaf=M506970656c696e652f5265706f7274732f4d6178696d616c46696e697465426f756e646172795265706f72742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports

def maximalFiniteBoundaryEvidenceSchema : String :=
  "think.pipeline.carrier_maximal_finite_boundary.v1"

def maximalFiniteBoundaryRustCommand : String :=
  "cargo run --bin xtask -- pipeline-maximal-boundary --write-evidence"

def maximalFiniteBoundaryCarrierAction : String :=
  "carrier_pipeline_maximal_boundary"

def maximalFiniteBoundaryReportClass : String :=
  "finite_witness_evidence_not_theorem_authority"

theorem maximal_boundary_report_names_checked_lean_theorem :
    Think.Pipeline.Validation.PipelineCarrierMaximalFiniteBoundaryTheorem := by
  exact Think.Pipeline.Validation.pipeline_carrier_maximal_finite_boundary

theorem maximal_boundary_report_classifies_as_finite_witness :
    maximalFiniteBoundaryReportClass =
      "finite_witness_evidence_not_theorem_authority" := by
  rfl

end Think.Pipeline.Reports
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b9c2b3197f42d5ee07f6bcf2702d016dca7ef436f3be7dab5a55608df9dafc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f5265706f7274732f4d6178696d616c46696e697465426f756e64617279526/Variantadde73bee29f185f1af0516ab6f647712f1966dbb4b196a31c30f1ebb2b225fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
