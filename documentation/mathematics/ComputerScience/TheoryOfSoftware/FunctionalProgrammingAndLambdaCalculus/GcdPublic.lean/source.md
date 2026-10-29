# Gcd Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c95ccd70f3670b138e5a752eda40795efa2b9fe2` · SHA-256 `b608e85250dc42eacadab6c4d613a4f0383ff770ddf57439c17dfbe75a8e02cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro
-/
module

public import Batteries.Tactic.Alias

@[expose] public section

/-!
# Definitions and properties of `coprime`
-/

namespace Nat

@[deprecated (since := "2025-08-04")]
alias Coprime.mul := Coprime.mul_left
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c1c8f5d5130732c2841f1109177a2fb423b7cfa26b78cb55ec40690d06da5c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantb608e85250dc42eacadab6c4d613a4f0383ff770ddf57439c17dfbe75a8e02cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
