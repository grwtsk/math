# Planning Surface Report — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a4fe6ee5378043da68dfb1f5b1a5fbc809b5dee` · SHA-256 `e505809f4396e01b791fb5b3853eea49db9b389fa99c8bec289ccb433f5c1eb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f56616c69646174696f6e2f506c616e6e696e67537572666163652e6c65616e


/- source-tree-label: STL1|L|addr=010000011|role=proof_code_atom|slug=pipeline-reports-planningsurfacereport|owner=canonical_owner|core=Pipeline/Reports/PlanningSurfaceReport.lean|leaf=M506970656c696e652f5265706f7274732f506c616e6e696e67537572666163655265706f72742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports

def planningSurfaceEvidenceSchema : String :=
  "think.pipeline.planning_surface.v1"

def planningSurfaceRustCommand : String :=
  "cargo run --bin xtask -- pipeline-planning-surface --write-evidence"

def planningSurfaceCarrierAction : String :=
  "carrier_pipeline_planning_surface"

def planningSurfaceReportClass : String :=
  "planning_surface_residue_interface_not_proof_authority"

theorem planning_surface_report_names_finite_witness :
    Think.Pipeline.Validation.PlanningSurfaceFiniteWitness := by
  exact Think.Pipeline.Validation.planning_surface_finite_witness

theorem planning_surface_report_classifies_finite_witness :
    planningSurfaceReportClass =
      "planning_surface_residue_interface_not_proof_authority" := by
  rfl

end Think.Pipeline.Reports
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b95cd3a6975e3fdb3a7b48a7f776fba024f90d11730ac7ce8b3c9d8e8fdc3a8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f5265706f7274732f506c616e6e696e67537572666163655265706f72742e6/Variante505809f4396e01b791fb5b3853eea49db9b389fa99c8bec289ccb433f5c1eb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
