# Whole Maintained Signatures — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c1cc4563ef74d17e919bd7fcfa08c9e7a6208ad` · SHA-256 `39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch
import Lean.Elab.Print

open Lean Elab Command

elab "audit_maintained_signatures" : command => do
  let env := (← getEnv).setExporting false
  let modules := env.allImportedModuleNames
  let candidates := (env.constants.toList.filter fun entry =>
    match env.getModuleIdxFor? entry.1 with
    | some index =>
        let owner := modules[index]!.toString
        owner == "FormalResearch" || owner.startsWith "FormalResearch."
    | none => false).toArray.qsort (fun a b => Name.quickLt a.1 b.1)
  for (name, _) in candidates do
    logInfo m!"STRUCTURE_DECLARATION_BEGIN {name.toString}"
    let ident := mkIdent name
    elabCommand (← `(command| #print sig $ident:ident))
    logInfo m!"STRUCTURE_DECLARATION_END {name.toString}"
  logInfo m!"Whole maintained signature count: {candidates.size}."

audit_maintained_signatures
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad09319fdea006764475f2bab0cd1432b1c63fd171aa0dbbd8946e02951b9fb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336WholeMaintainedS/Variant39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
