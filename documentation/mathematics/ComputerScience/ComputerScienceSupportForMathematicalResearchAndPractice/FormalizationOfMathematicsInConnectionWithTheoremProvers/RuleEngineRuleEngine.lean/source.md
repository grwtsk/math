# Rule Engine Rule Engine — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8be7e3de51a2df24dabbf0cb28b4e2cab038c791` · SHA-256 `e7ec86e7ce256934223b09f98a1a8953e52b9778e27f1034bad7c821d6c96d95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.Rule

/-!
# Folder.Presentation.RuleEngine

Radiation role: presentation-rule-engine
BinaryMatrix spine: This module resolves named presentation rules over materialized carriers.
Ontology: presentation.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure RuleEngine where
  RuleId : Type
  decEqRuleId : DecidableEq RuleId
  Input : Type
  Output : Type
  resolve : RuleId → Option (PresentationRule Input Output)

attribute [instance] RuleEngine.decEqRuleId

structure RuleApplication (E : RuleEngine) where
  rule : E.RuleId
  input : E.Input

def RuleApplication.run?
    (A : RuleApplication E) :
    Option E.Output :=
  match E.resolve A.rule with
  | some R => some (R.apply A.input)
  | none => none

theorem run?_resolved
    (E : RuleEngine)
    (A : RuleApplication E)
    (R : PresentationRule E.Input E.Output)
    (h : E.resolve A.rule = some R) :
    A.run? = some (R.apply A.input) := by
  simp [RuleApplication.run?, h]

end Presentation
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=287f672929f340810f6eedda0c189d36c78b6a5a169780b31cbfad8b2d801fbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleEngine/Variante7ec86e7ce256934223b09f98a1a8953e52b9778e27f1034bad7c821d6c96d95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
