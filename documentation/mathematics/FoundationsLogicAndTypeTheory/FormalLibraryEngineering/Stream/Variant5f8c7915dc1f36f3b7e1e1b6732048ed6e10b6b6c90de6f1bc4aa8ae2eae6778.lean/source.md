# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stream.Variant5f8c7915dc1f36f3b7e1e1b6732048ed6e10b6b6c90de6f1bc4aa8ae2eae6778

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fbdc2eb6f69676bba20938a3f43b26eff7fed91` · SHA-256 `5f8c7915dc1f36f3b7e1e1b6732048ed6e10b6b6c90de6f1bc4aa8ae2eae6778`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Range.Polymorphic.Iterators
public import Init.Data.Stream

public section

open Std.Iterators

namespace Std.PRange

instance {α} [UpwardEnumerable α] : ToStream (Rcc α) (Iter (α := Rxc.Iterator α) α) where
  toStream r := Rcc.Internal.iter r

instance {α} [UpwardEnumerable α] : ToStream (Rco α) (Iter (α := Rxo.Iterator α) α) where
  toStream r := Rco.Internal.iter r

instance {α} [UpwardEnumerable α] : ToStream (Rci α) (Iter (α := Rxi.Iterator α) α) where
  toStream r := Rci.Internal.iter r

instance {α} [UpwardEnumerable α] : ToStream (Roc α) (Iter (α := Rxc.Iterator α) α) where
  toStream r := Roc.Internal.iter r

instance {α} [UpwardEnumerable α] : ToStream (Roo α) (Iter (α := Rxo.Iterator α) α) where
  toStream r := Roo.Internal.iter r

instance {α} [UpwardEnumerable α] [Least? α] : ToStream (Roi α) (Iter (α := Rxi.Iterator α) α) where
  toStream r := Roi.Internal.iter r

instance {α} [UpwardEnumerable α] [Least? α] : ToStream (Ric α) (Iter (α := Rxc.Iterator α) α) where
  toStream r := Ric.Internal.iter r

instance {α} [UpwardEnumerable α] [Least? α] : ToStream (Rio α) (Iter (α := Rxo.Iterator α) α) where
  toStream r := Rio.Internal.iter r

instance {α} [UpwardEnumerable α] [Least? α] : ToStream (Rii α) (Iter (α := Rxi.Iterator α) α) where
  toStream r := Rii.Internal.iter r

end Std.PRange
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1b7b5a89531584b8e4ff3f6f5cfa8d555455535df94fcbf5bdc6907df8499a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant5f8c7915dc1f36f3b7e1e1b6732048ed6e10b6b6c90de6f1bc4aa8ae2eae6778.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
