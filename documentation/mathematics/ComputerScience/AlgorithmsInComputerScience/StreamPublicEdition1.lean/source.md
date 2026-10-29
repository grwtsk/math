# Stream Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b1c5ed345640378998c0a28f4a13ae2226e61ed` · SHA-256 `22787a534c392caaeb774ff9b3263142d37476515b1a85eb3b340bd5205f0c79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Andrew Kent, Leonardo de Moura
-/
module

prelude
public import Init.Data.String.Basic
public import Init.Data.Stream

public instance : Std.Stream Substring.Raw Char where
  next? s :=
    if s.startPos < s.stopPos then
      some (s.startPos.get s.str, { s with startPos := s.startPos.next s.str })
    else
      none
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a511eb82726c781a53fd2ae8894f37a759e5e7af5a4ac07af727682bf755e09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stream/Variant22787a534c392caaeb774ff9b3263142d37476515b1a85eb3b340bd5205f0c79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
