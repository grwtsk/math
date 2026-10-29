# Axioms — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8da75bf80b27f2a71ad2312653b105442c5f5992` · SHA-256 `863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import Comparator.Util
import Export.Parse

namespace Comparator

namespace Axioms

structure Context where
  solution : Export.ExportedEnv
  legalAxioms : Std.HashSet Lean.Name

structure State where
  worklist : Array Lean.Name
  checked : Std.HashSet Lean.Name

abbrev AxiomsM := ReaderT Context <| StateT State <| Except String

partial def loop : AxiomsM Unit := do
  if (← get).worklist.isEmpty then
    return ()

  let target ← modifyGet fun s => (s.worklist.back!, { s with worklist := s.worklist.pop })
  if (← get).checked.contains target then
    loop
  else
    let some info := (← read).solution.constMap[target]?
      | throw s!"Constant not found in solution '{target}'"

    runForUsedConsts info validateConst

    modify fun s => { s with checked := s.checked.insert target }
    loop
where
  validateConst (n : Lean.Name) : AxiomsM Unit := do
    let some info := (← read).solution.constMap[n]?
      | throw s!"Constant not found in solution '{n}'"

    if let .axiomInfo info := info then
      if !(← read).legalAxioms.contains info.name then
        throw s!"Illegal axiom detected: '{n}'"

    if !(← get).checked.contains n then
      modify fun s => { s with worklist := s.worklist.push n }

end Axioms

def checkAxioms (solution : Export.ExportedEnv) (theoremTargets : Array Lean.Name)
    (definitionTargets : Array Lean.Name) (legalAxioms : Array Lean.Name) : Except String Unit := do
  let mut worklist := #[]
  for target in theoremTargets do
    let some solutionConst := solution.constMap[target]?
      | throw s!"Const not found in solution: '{target}'"
    let .thmInfo solutionConst := solutionConst
      | throw s!"Solution constant is not a theorem: '{target}'"
    worklist := worklist.push solutionConst.name

  for target in definitionTargets do
    let some solutionConst := solution.constMap[target]?
      | throw s!"Const not found in solution: '{target}'"
    let .defnInfo solutionConst := solutionConst
      | throw s!"Solution constant is not a definition: '{target}'"
    worklist := worklist.push solutionConst.name

  let legalAxioms := Std.HashSet.ofArray legalAxioms
  Axioms.loop.run { solution, legalAxioms } |>.run' { worklist, checked := {} }

end Comparator
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adaaae702344edf36449f8962457c537363797469d26eb504c264327d2451c2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Axioms/Variant863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
