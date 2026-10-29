# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantc8cec955c847a067a1a051d887e3a8d502136d66dbd218759326f7359ab26ecb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ef17811e4a9dca967e508014d38a6021358568e` · SHA-256 `c8cec955c847a067a1a051d887e3a8d502136d66dbd218759326f7359ab26ecb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.FloatArray.Basic
public import Lean.CoreM
public import Lean.Util.Recognizers

public section

namespace Lean.Compiler.LCNF
/--
Return `true` if `mdata` should be preserved.
Right now, we don't preserve any `MData`, but this may
change in the future when we add support for debugging information
-/
def isCompilerRelevantMData (_mdata : MData) : Bool :=
  false

/--
Return `true` if `e` is a `lcCast` application.
-/
def isLcCast? (e : Expr) : Option Expr :=
  if e.isAppOfArity ``lcCast 3 then
    some e.appArg!
  else
    none

def getCtorArity? (declName : Name) : CoreM (Option Nat) := do
  let .ctorInfo val ← getConstInfo declName | return none
  return val.numParams + val.numFields

/--
List of types that have builtin runtime support
-/
def builtinRuntimeTypes : Array Name := #[
  ``String,
  ``UInt8, ``UInt16, ``UInt32, ``UInt64, ``USize,
  ``Float, ``Float32,
  ``Thunk, ``Task,
  ``Array, ``ByteArray, ``FloatArray,
  ``Nat, ``Int
]

/--
Return `true` iff `declName` is the name of a type with builtin support in the runtime.
-/
def isRuntimeBuiltinType (declName : Name) : Bool :=
  builtinRuntimeTypes.contains declName

end Lean.Compiler.LCNF
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bceba0d57654ca9d5f2b0e8b2b7feb5d07b71a7b56b4e921c3ad951cc3991687 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc8cec955c847a067a1a051d887e3a8d502136d66dbd218759326f7359ab26ecb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
