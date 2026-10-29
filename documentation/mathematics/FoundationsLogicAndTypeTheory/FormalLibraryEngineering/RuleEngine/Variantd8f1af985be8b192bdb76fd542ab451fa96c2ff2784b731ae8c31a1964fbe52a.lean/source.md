# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleEngine.Variantd8f1af985be8b192bdb76fd542ab451fa96c2ff2784b731ae8c31a1964fbe52a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f1afbbe71953ae120d832a1ec478a123d751ae8` · SHA-256 `d8f1af985be8b192bdb76fd542ab451fa96c2ff2784b731ae8c31a1964fbe52a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.RuleEngine

/-!
# Folder.Theorem.Presentation.RuleEngine

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes presentation rule engine correctness facts.
Ontology: proof.presentation.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem copyRule_fixed
    (x : α) :
    Folder.Presentation.IsFixedBy (Folder.Presentation.copyRule α) x :=
  Folder.Presentation.copyRule_fixed x

theorem run?_resolved
    (E : Folder.Presentation.RuleEngine)
    (A : Folder.Presentation.RuleApplication E)
    (R : Folder.Presentation.PresentationRule E.Input E.Output)
    (h : E.resolve A.rule = some R) :
    A.run? = some (R.apply A.input) :=
  Folder.Presentation.run?_resolved E A R h

end Presentation
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=680fc615e1d9855a9161d182f6131449d5d0f49943a43a2e4e2c9d8f13fb9b2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleEngine/Variantd8f1af985be8b192bdb76fd542ab451fa96c2ff2784b731ae8c31a1964fbe52a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
