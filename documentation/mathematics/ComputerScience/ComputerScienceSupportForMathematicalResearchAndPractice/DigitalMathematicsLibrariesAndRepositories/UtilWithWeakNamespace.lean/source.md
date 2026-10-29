# Util With Weak Namespace — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04e3e2f8362059da3348e78f014133a5f8e9b4ef` · SHA-256 `665f9c14c2b3745ad5158e7b442e1f81d4e1fde4a1069793d85664990fdc7f86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Daniel Selsam, Gabriel Ebner
-/

import Mathlib.Init

/-!
# Defines `with_weak_namespace` command.

Changes the current namespace without causing scoped things to go out of scope.
-/

namespace Lean.Elab.Command

/-- Adds the name to the namespace, `_root_`-aware.
```
resolveNamespace `A `B.b == `A.B.b
resolveNamespace `A `_root_.B.c == `B.c
```
-/
def resolveNamespace (ns : Name) : Name → Name
  | `_root_ => Name.anonymous
  | Name.str n s .. => Name.mkStr (resolveNamespace ns n) s
  | Name.num n i .. => Name.mkNum (resolveNamespace ns n) i
  | Name.anonymous => ns

/-- Changes the current namespace without causing scoped things to go out of scope -/
def withWeakNamespace {α : Type} (ns : Name) (m : CommandElabM α) : CommandElabM α := do
  let old ← getCurrNamespace
  let ns := resolveNamespace old ns
  modify fun s ↦ { s with env := s.env.registerNamespace ns }
  modifyScope ({ · with currNamespace := ns })
  try m finally modifyScope ({ · with currNamespace := old })

/-- Changes the current namespace without causing scoped things to go out of scope -/
elab "with_weak_namespace " ns:ident cmd:command : command =>
  withWeakNamespace ns.getId (elabCommand cmd)

end Lean.Elab.Command
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33406a5951fafa3a3ef76bb1f87ea4af0bda03604260075a644b8d6203fe6bcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithWeakNamespace/Variant665f9c14c2b3745ad5158e7b442e1f81d4e1fde4a1069793d85664990fdc7f86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
