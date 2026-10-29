# Separate Elaboration From Axioms Negative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cb8dc9952d7aed971270fc41f135e5cb12320e4` · SHA-256 `cb525ea2da832b5f9325ffe2f71d79c4ab843f11a5a07c1bbd9aee8292b60a87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
import Lean.Util.CollectAxioms
namespace GRWTSK.HostileAxiomNegative
axiom injected : False
theorem exploit : False := injected
end GRWTSK.HostileAxiomNegative
open Lean Elab Command
run_cmd do
  for ax in (← collectAxioms ``GRWTSK.HostileAxiomNegative.exploit) do
    unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
      throwError "CONTROL_UNAPPROVED_AXIOM: {ax}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05455aa738936d8a2d19fb82b5c24ca9ae10944d5b00e23b4c0d456a10beca09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeparateElaborationFromAxiomsNegative/Variantcb525ea2da832b5f9325ffe2f71d79c4ab843f11a5a07c1bbd9aee8292b60a87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
