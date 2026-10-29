# Modules Count B62c437365ca — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00d38f8e06004596a69c8a668d3106305335a319` · SHA-256 `15367089ca54827b74a053d3156bae829f3918419248419822362a2db23366a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.finite_bit_boundary.authority_pipeline_is_input_forward_9723b2e58406
import Formal.Ast.Checked.finite_bit_boundary.checked_kernel_module_c4a89b6533c9
import Formal.Ast.Checked.finite_bit_boundary.decision_compactifies_below_center_b5c57ccddd06
import Formal.Ast.Checked.projection_operators.localoverwriteflatten_replace_a3f6230869bc

/-!
Checked source band.

This is the first-party checked band root. It is the only source band allowed
to flow into `Formal.Kernel` as theorem-bearing local authority.
-/

namespace Formal.Checked

def modules : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem modules_count : modules.length = 4 := by
  rfl

end Formal.Checked
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae3712937fc8305bfb4b1af96d42a06a7485a269a108cc260a7b4643d0bdb3be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModulesCountB62c437365ca/Variant15367089ca54827b74a053d3156bae829f3918419248419822362a2db23366a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
