# Match Alt View Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0430bbb20682ee927e656fc0bddba6e96602f53e` · SHA-256 `fdf301b87ac2e470698345f1e00a29bf2be08bc1582e50413ecce6128656956d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Term

public section

namespace Lean.Elab.Term

/-! This module assumes `match`-expressions use the following syntax.

```lean
def matchDiscr := leading_parser optional (try (ident >> checkNoWsBefore "no space before ':'" >> ":")) >> termParser

def «match» := leading_parser:leadPrec "match " >> sepBy1 matchDiscr ", " >> optType >> " with " >> matchAlts
```
-/

structure MatchAltView (k : SyntaxNodeKinds) where
  ref      : Syntax
  patterns : Array Syntax
  lhs      : Syntax
  rhs      : TSyntax k
  deriving Inhabited

end Lean.Elab.Term
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25d5749369a287824230ab966b641918bc5dc922c30aacdd8fa032f1659bc2d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchAltView/Variantfdf301b87ac2e470698345f1e00a29bf2be08bc1582e50413ecce6128656956d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
