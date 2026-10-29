# Borrowed Annotation Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb7ec7e2f36aa961dfe0573104cd17736a3fd35d` · SHA-256 `a19b36dc5df7e75b0a777937a62dc22ea5e055553ee00c2eb36166fee6a7fa4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr

public section
namespace Lean

def markBorrowed (e : Expr) : Expr :=
  mkAnnotation `borrowed e

def isMarkedBorrowed (e : Expr) : Bool :=
  annotation? `borrowed e |>.isSome

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=448b40778b7ddfbd99f57d7b3ef361c875a4d644913052fd69b9d799649e2e42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BorrowedAnnotation/Varianta19b36dc5df7e75b0a777937a62dc22ea5e055553ee00c2eb36166fee6a7fa4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
