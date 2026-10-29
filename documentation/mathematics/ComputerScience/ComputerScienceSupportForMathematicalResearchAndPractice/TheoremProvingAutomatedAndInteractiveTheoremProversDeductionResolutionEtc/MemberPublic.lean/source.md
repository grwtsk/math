# Member Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a393bbad02c8ed3ec65af8bce8749fa219c8aa2f` · SHA-256 `0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021-2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Rule

public section

namespace Aesop

inductive BaseRuleSetMember
  | normRule (r : NormRule)
  | unsafeRule (r : UnsafeRule)
  | safeRule (r : SafeRule)
  | unfoldRule (r : UnfoldRule)
  | normForwardRule (r₁ : ForwardRule) (r₂ : NormRule)
  | unsafeForwardRule (r₁ : ForwardRule) (r₂ : UnsafeRule)
  | safeForwardRule (r₁ : ForwardRule) (r₂ : SafeRule)
  deriving Inhabited

def BaseRuleSetMember.name : BaseRuleSetMember → RuleName
  | normRule r => r.name
  | unsafeRule r => r.name
  | safeRule r => r.name
  | unfoldRule r => r.name
  | normForwardRule r _ => r.name
  | unsafeForwardRule r _ => r.name
  | safeForwardRule r _ => r.name

inductive GlobalRuleSetMember
  | base (m : BaseRuleSetMember)
  | normSimpRule (e : NormSimpRule)
  deriving Inhabited

def GlobalRuleSetMember.name : GlobalRuleSetMember → RuleName
  | base m => m.name
  | normSimpRule r => r.name

inductive LocalRuleSetMember
  | global (m : GlobalRuleSetMember)
  | localNormSimpRule (r : LocalNormSimpRule)
  deriving Inhabited

def LocalRuleSetMember.name : LocalRuleSetMember → RuleName
  | global m => m.name
  | localNormSimpRule r => r.name

def LocalRuleSetMember.toGlobalRuleSetMember? :
    LocalRuleSetMember → Option GlobalRuleSetMember
  | global m => some m
  | _ => none

end Aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e138587a191a6d0ff44be215ed17fee24cb9b8cf1be9e020811a3cd99db4b9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Member/Variant0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
