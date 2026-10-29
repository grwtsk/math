# Var Public Mk Var — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93bb1def39ebf39ec2de7c568bb52ff015f33fc9` · SHA-256 `9abedbcc058f24776fd930bc381875ab9970d9b98c6cc427c989171c4deda17b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.LinearM
import Lean.Meta.Tactic.Grind.Arith.Linear.Util
public section
namespace Lean.Meta.Grind.Arith.Linear

def mkVar (e : Expr) (mark := true) : LinearM Var := do
  let s ← getStruct
  if let some var := s.varMap.find? { expr := e } then
    return var
  let var : Var := s.vars.size
  modifyStruct fun s => { s with
    vars       := s.vars.push e
    varMap     := s.varMap.insert { expr := e } var
    lowers     := s.lowers.push {}
    uppers     := s.uppers.push {}
    diseqs     := s.diseqs.push {}
    occurs     := s.occurs.push {}
    elimEqs    := s.elimEqs.push none
  }
  setTermStructId e
  if mark then
    linearExt.markTerm e
  return var

end Lean.Meta.Grind.Arith.Linear
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7543671b188f0f593cad299b708437047496486fa0a39e516c4b3a9c4f9a68a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant9abedbcc058f24776fd930bc381875ab9970d9b98c6cc427c989171c4deda17b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
