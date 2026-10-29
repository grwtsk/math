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
