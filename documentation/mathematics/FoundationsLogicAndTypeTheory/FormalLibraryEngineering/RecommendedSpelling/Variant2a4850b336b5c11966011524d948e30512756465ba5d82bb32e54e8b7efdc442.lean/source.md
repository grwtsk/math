# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecommendedSpelling.Variant2a4850b336b5c11966011524d948e30512756465ba5d82bb32e54e8b7efdc442

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `081e45519c3f7987cb2eb745406a75e768a8328c` · SHA-256 `2a4850b336b5c11966011524d948e30512756465ba5d82bb32e54e8b7efdc442`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Lean.Elab.Command

public section

namespace Lean.Elab.Term.Doc
open Lean.Parser.Term.Doc
open Lean.Elab.Command
open Lean.Parser.Command

@[builtin_command_elab «recommended_spelling»] def elabRecommendedSpelling : CommandElab
  | `(«recommended_spelling»|$[$docs:docComment]? recommended_spelling $spelling:str for $«notation»:str in [$[$decls:ident],*]) => do
    let declNames ← liftTermElabM <| decls.mapM (fun decl => realizeGlobalConstNoOverloadWithInfo decl)
    declNames.forM (recordExtraModUseFromDecl (isMeta := false))
    let recommendedSpelling : RecommendedSpelling := {
      «notation» := «notation».getString
      recommendedSpelling := spelling.getString
      additionalInformation? := docs.map (·.getDocString)
    }
    modifyEnv (addRecommendedSpelling · recommendedSpelling declNames)
  | _ => throwError "Malformed recommended spelling command"

/-- Returns an array containing all recommended spellings. -/
def allRecommendedSpellings : MetaM (Array RecommendedSpelling) := do
  let all := recommendedSpellingExt.toEnvExtension.getState (← getEnv)
      |>.importedEntries
      |>.push ((recommendedSpellingExt.exportEntriesFn (← getEnv) (recommendedSpellingExt.getState (← getEnv))).exported)
  return all.flatMap id

end Lean.Elab.Term.Doc
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de16a46cc4aeff4f9bf5eba0d4569d204de9c1606b1cd4c9117484977769c165 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecommendedSpelling/Variant2a4850b336b5c11966011524d948e30512756465ba5d82bb32e54e8b7efdc442.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
