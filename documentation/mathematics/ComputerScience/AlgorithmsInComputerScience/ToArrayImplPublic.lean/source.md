# To Array Impl Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d357476552be34a4499fd394a8fa92cf6e9331ad` · SHA-256 `71a124bc0f6d7e76694a57f4998d14b2a969eb7628e3c0f87c67a530e35defa7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.Prelude
import Init.Data.List.Basic

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

/--
Auxiliary definition for `List.toArray`.
`List.toArrayAux as r = r ++ as.toArray`
-/
@[inline_if_reduce]
def List.toArrayAux : List α → Array α → Array α
  | nil,       xs => xs
  | cons a as, xs => toArrayAux as (xs.push a)

/--
Converts a `List α` into an `Array α` by repeatedly pushing elements from the list onto an empty
array. `O(|xs|)`.

Use `List.toArray` instead of calling this function directly. At runtime, this operation implements
both `List.toArray` and `Array.mk`.
-/
-- This function is exported to C, where it is called by `Array.mk`
-- (the constructor) to implement this functionality.
@[inline, expose, match_pattern, pp_nodot, export lean_list_to_array]
def List.toArrayImpl (xs : List α) : Array α :=
  xs.toArrayAux (Array.mkEmpty xs.length)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a300ffbf23afdc48104e104e01c896a60e33acbb75c1c0278ebcb2e30f14efe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArrayImpl/Variant71a124bc0f6d7e76694a57f4998d14b2a969eb7628e3c0f87c67a530e35defa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
