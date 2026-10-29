# Decl With Sig Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cbb42667581e56d886e95ce1935008f22619ce9` · SHA-256 `b5c22f4ded2cf0bb70b75f9c2af14508596118715b79829f99d7f96613c34b36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Leonardo de Moura, Gabriel Ebner, Mario Carneiro
-/
module

prelude
public import Lean.Parser.Types
import Lean.Parser.Command

namespace Lean.PrettyPrinter.Delaborator

open Parser Command Term

@[run_builtin_parser_attribute_hooks]
-- use `termParser` instead of `declId` so we can reuse `delabConst`
public def declSigWithId : Parser := leading_parser termParser maxPrec >> declSig
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19d1b701d2b8edd164509fa00db82c23f1b15dab93a22bfe44e1cd29fe087dd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclWithSig/Variantb5c22f4ded2cf0bb70b75f9c2af14508596118715b79829f99d7f96613c34b36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
