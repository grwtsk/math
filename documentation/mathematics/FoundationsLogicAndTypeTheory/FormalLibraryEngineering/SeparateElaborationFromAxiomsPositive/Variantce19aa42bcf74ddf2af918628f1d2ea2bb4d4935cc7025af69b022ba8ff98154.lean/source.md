# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeparateElaborationFromAxiomsPositive.Variantce19aa42bcf74ddf2af918628f1d2ea2bb4d4935cc7025af69b022ba8ff98154

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce323610cd061cf665519a9d7b275ac802819a8d` · SHA-256 `ce19aa42bcf74ddf2af918628f1d2ea2bb4d4935cc7025af69b022ba8ff98154`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
import Lean.Util.CollectAxioms
namespace GRWTSK.HostileAxiomPositive
theorem valid : True := True.intro
end GRWTSK.HostileAxiomPositive
open Lean Elab Command
run_cmd do
  for ax in (← collectAxioms ``GRWTSK.HostileAxiomPositive.valid) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
      throwError "CONTROL_UNAPPROVED_AXIOM: {ax}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b1f5aa447b42f306d3721a60dcf0d3c68d0bb458e4cc75d76e8c1fcba4d0168 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeparateElaborationFromAxiomsPositive/Variantce19aa42bcf74ddf2af918628f1d2ea2bb4d4935cc7025af69b022ba8ff98154.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
