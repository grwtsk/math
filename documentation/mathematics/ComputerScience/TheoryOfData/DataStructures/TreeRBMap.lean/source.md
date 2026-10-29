# Tree RBMap — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `945f83c4478abf4e140a1ebb19ee9f3e169f4ba9` · SHA-256 `d247d22003c636878a5b4a24f55fefd5075965ff4afd830be9a57ee738995c7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 mathlib community. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Wojciech Nawrocki
-/
import Batteries.Data.RBMap.Basic
import Mathlib.Data.Tree.Basic

/-!
# Binary tree and RBMaps

In this file we define `Tree.ofRBNode`.
This definition was moved from the main file to avoid a dependency on `RBMap`.

## TODO

Implement a `Traversable` instance for `Tree`.

## References

<https://leanprover-community.github.io/archive/stream/113488-general/topic/tactic.20question.html>
-/

namespace Tree

universe u

variable {α : Type u}

open Batteries (RBNode)

/-- Makes a `Tree α` out of a red-black tree. -/
@[deprecated "Deprecated without replacement." (since := "2025-04-02")]
def ofRBNode : RBNode α → Tree α
  | RBNode.nil => nil
  | RBNode.node _color l key r => node key (ofRBNode l) (ofRBNode r)

end Tree
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34cfe25eab41755a572470432351b46c5343070f5bf0b7f74c45da8a7108c6f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBMap/Variantd247d22003c636878a5b4a24f55fefd5075965ff4afd830be9a57ee738995c7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
