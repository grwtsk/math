# Exit Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0f8ee493dcbaf9ceda293b51504148496d46946` · SHA-256 `eff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Notation
import Init.Data.UInt.BasicAux

namespace Lake

/-- A process exit / return code. -/
public abbrev ExitCode := UInt32

public class MonadExit (m : Type u → Type v) where
  exit {α : Type u} : ExitCode → m α

export MonadExit (exit)

public instance [MonadLift m n] [MonadExit m] : MonadExit n where
  exit rc := liftM (m := m) <| exit rc

/-- Exit with `ExitCode` if it is not 0. Otherwise, continue. -/
@[inline] public def exitIfErrorCode [Pure m] [MonadExit m]  (rc : ExitCode) : m Unit :=
  if rc != 0 then exit rc else pure ()
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36ee10fa5812c1f4b7f499c49de35b485d8a5c317d2d61548810412dec34ee1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exit/Varianteff6724d59e82b5e73f560be58b45ea647e15e2a69015b280f4071386fef4b6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
