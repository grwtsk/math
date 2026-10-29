# Assert No Sorry — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f320192712f472ddc6a0bd070c2b9b887220907` · SHA-256 `186bbb6aa0d0421683639815cbfdfde149b275f84be2d101f173fb97252fc30f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 David Renshaw. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Renshaw
-/

import Mathlib.Init
import Lean.Util.CollectAxioms
import Lean.Elab.Command

/-!
# Defines the `assert_no_sorry` command.

Throws an error if the given identifier uses sorryAx.
-/

open Lean Meta Elab Command

/-- Throws an error if the given identifier uses sorryAx. -/
elab "assert_no_sorry " n:ident : command => do
  let name ← liftCoreM <| Lean.Elab.realizeGlobalConstNoOverloadWithInfo n
  let axioms ← Lean.collectAxioms name
  if axioms.contains ``sorryAx
  then throwError "{n} contains sorry"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aebd20025964988b06af54202fd97442eff3c2b5073d29c739dce5c608be2bf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertNoSorry/Variant186bbb6aa0d0421683639815cbfdfde149b275f84be2d101f173fb97252fc30f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
