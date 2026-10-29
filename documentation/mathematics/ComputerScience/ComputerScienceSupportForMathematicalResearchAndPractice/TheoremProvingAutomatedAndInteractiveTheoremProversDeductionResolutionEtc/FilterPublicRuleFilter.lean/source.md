# Filter Public Rule Filter — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67ceed38d704f0b638cbd52cc4ef293df5379b85` · SHA-256 `38436d296949f99c983f9a2653095282d0e261f4757e4173f2a27b6e242da146`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021-2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleSet.Name
public import Aesop.Rule.Name

public section

open Lean

namespace Aesop

structure RuleFilter where
  name : Name
  scope : ScopeName
  /--
  `#[]` means 'match any builder'
  -/
  builders : Array BuilderName
  /--
  `#[]` means 'match any phase'
  -/
  phases : Array PhaseName

namespace RuleFilter

def matchesPhase (f : RuleFilter) (p : PhaseName) : Bool :=
  f.phases.isEmpty || f.phases.contains p

def matchesBuilder (f : RuleFilter) (b : BuilderName) : Bool :=
  f.builders.isEmpty || f.builders.contains b

def «matches» (f : RuleFilter) (n : RuleName) : Bool :=
  f.name == n.name &&
  f.scope == n.scope &&
  f.matchesPhase n.phase &&
  f.matchesBuilder n.builder

def matchesSimpTheorem? (f : RuleFilter) : Option Name :=
  if f.scope == .global && f.matchesBuilder .simp then
    some f.name
  else
    none

/--
Returns the identifier of the local norm simp rule matched by `f`, if any.
-/
def matchesLocalNormSimpRule? (f : RuleFilter) : Option Name := Id.run do
  if f.scope == .local && f.matchesBuilder .simp then
    return some f.name
  return none

end RuleFilter


structure RuleSetNameFilter where
  ns : Array RuleSetName -- #[] means 'match any rule set'

namespace RuleSetNameFilter

protected def all : RuleSetNameFilter :=
  ⟨#[]⟩

def matchesAll (f : RuleSetNameFilter) : Bool :=
  f.ns.isEmpty

def «matches» (f : RuleSetNameFilter) (n : RuleSetName) : Bool :=
  f.matchesAll || f.ns.contains n

def matchedRuleSetNames (f : RuleSetNameFilter) : Option (Array RuleSetName) :=
  if f.matchesAll then none else some f.ns

end Aesop.RuleSetNameFilter
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c9eabd87ad3e21cbe1b96112145e98786da8069499995742de5635f8a2df2ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant38436d296949f99c983f9a2653095282d0e261f4757e4173f2a27b6e242da146.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
