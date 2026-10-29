# Hash Set Public Any M — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0aaff7244b764c270357c4b2b549f15e0424082f` · SHA-256 `d78be8b7f563b38ad827a55676d27ef5b05636ad18b20a9015e531c2e58d423e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Std.Data.HashSet.Basic

@[expose] public section

namespace Std.HashSet

variable [BEq α] [Hashable α]

/--
`O(n)`. Returns `true` if `f` returns `true` for any element of the set.
-/
@[specialize]
def anyM [Monad m] (s : HashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if ← f a then
      return true
  return false

/--
`O(n)`. Returns `true` if `f` returns `true` for all elements of the set.
-/
@[specialize]
def allM [Monad m] (s : HashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if !(← f a) then
      return false
  return true

instance : BEq (HashSet α) where
  beq s t := s.all (t.contains ·) && t.all (s.contains ·)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e83acff727e7f14b704e33be75f9e80216fdddcbae19e322eeda3c9bef73addd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashSet/Variantd78be8b7f563b38ad827a55676d27ef5b05636ad18b20a9015e531c2e58d423e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
