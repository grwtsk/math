# Error Public Monad Error — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `721696ba1418074f2399a31672110d9716564788` · SHA-256 `d7ef7277f0881f2c9da082be21713bf46a4607542e3ba1f0117b18f160cca0ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.System.IO

namespace Lake

public class MonadError (m : Type u → Type v) where
  error {α : Type u} : String → m α

export MonadError (error)

public instance [MonadLift m n] [MonadError m] : MonadError n where
  error msg := liftM (m := m) <| error msg

public instance : MonadError IO where
  error msg := throw <| IO.userError msg

public instance : MonadError (EIO String) where
  error msg := throw msg

public instance : MonadError (Except String) where
  error msg := throw msg

/--
Perform an EIO action.
If it throws an error, invoke `error` with its string representation.
-/
@[inline] public def MonadError.runEIO
  [Monad m] [MonadError m] [MonadLiftT BaseIO m] [ToString ε] (x : EIO ε α)
: m α := do
  match (← x.toBaseIO) with
  | .ok a => pure a
  | .error e => error (toString e)

/--
Perform an IO action.
If it throws an error, invoke `error` with its string representation.
-/
@[inline] public def MonadError.runIO
  [Monad m] [MonadError m] [MonadLiftT BaseIO m] (x : IO α)
: m α := MonadError.runEIO x
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c997b632bffdba5fc65891dfcb6fbc6a0222e153dd7757c61ac08d5bd1c6f03b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Error/Variantd7ef7277f0881f2c9da082be21713bf46a4607542e3ba1f0117b18f160cca0ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
