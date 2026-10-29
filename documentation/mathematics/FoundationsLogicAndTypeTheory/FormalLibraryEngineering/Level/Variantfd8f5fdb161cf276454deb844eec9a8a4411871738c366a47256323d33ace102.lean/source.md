# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Level.Variantfd8f5fdb161cf276454deb844eec9a8a4411871738c366a47256323d33ace102

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f3e1d1224f704d9039f3581a0e51b8f356cfbbd` · SHA-256 `fd8f5fdb161cf276454deb844eec9a8a4411871738c366a47256323d33ace102`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Parser.Extra

public section

namespace Lean
namespace Parser

builtin_initialize
  registerBuiltinParserAttribute `builtin_level_parser ``Category.level

@[inline] def levelParser (rbp : Nat := 0) : Parser :=
  categoryParser `level rbp

namespace Level

@[builtin_level_parser] def paren  := leading_parser
  "(" >> withoutPosition levelParser >> ")"
@[builtin_level_parser] def max    := leading_parser
  nonReservedSymbol "max" true  >> many1 (ppSpace >> levelParser maxPrec)
@[builtin_level_parser] def imax   := leading_parser
  nonReservedSymbol "imax" true >> many1 (ppSpace >> levelParser maxPrec)
@[builtin_level_parser] def hole   := leading_parser
  "_"
@[builtin_level_parser] def num    :=
  checkPrec maxPrec >> numLit
@[builtin_level_parser] def ident  :=
  checkPrec maxPrec >> Parser.ident
@[builtin_level_parser] def addLit := trailing_parser:65
  " + " >> numLit

end Level

end Parser
end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88d68c6d37960776def25cb0efa7487910a25f3850a9445bca4def064c9ff330 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Level/Variantfd8f5fdb161cf276454deb844eec9a8a4411871738c366a47256323d33ace102.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
