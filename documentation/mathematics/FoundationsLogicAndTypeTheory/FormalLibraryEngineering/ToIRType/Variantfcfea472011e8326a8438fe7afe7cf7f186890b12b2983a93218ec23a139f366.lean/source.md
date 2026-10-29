# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIRType.Variantfcfea472011e8326a8438fe7afe7cf7f186890b12b2983a93218ec23a139f366

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73238b1c6cc006b26a4b0ad7e2415249e4784951` · SHA-256 `fcfea472011e8326a8438fe7afe7cf7f186890b12b2983a93218ec23a139f366`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.IR.Format
public import Lean.Compiler.LCNF.MonoTypes

public section

namespace Lean
namespace IR

open Lean.Compiler

def nameToIRType (n : Name) : IRType :=
  match n with
  | ``Float => .float
  | ``Float32 => .float32
  | ``UInt8 => .uint8
  | ``UInt16 => .uint16
  | ``UInt32 => .uint32
  | ``UInt64 => .uint64
  | ``lcErased => .erased
  | `obj => .object
  | `tobj => .tobject
  | `tagged => .tagged
  | ``lcVoid => .void
  | _ => unreachable!


def toIRType (type : Lean.Expr) : IRType :=
  match type with
  | LCNF.ImpureType.float => .float
  | LCNF.ImpureType.float32 => .float32
  | LCNF.ImpureType.uint8 => .uint8
  | LCNF.ImpureType.uint16 => .uint16
  | LCNF.ImpureType.uint32 => .uint32
  | LCNF.ImpureType.uint64 => .uint64
  | LCNF.ImpureType.usize => .usize
  | LCNF.ImpureType.erased => .erased
  | LCNF.ImpureType.object => .object
  | LCNF.ImpureType.tobject => .tobject
  | LCNF.ImpureType.tagged => .tagged
  | LCNF.ImpureType.void => .void
  | _ => unreachable!

end IR
end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8216df4cb47247647d7968d569b7e0eab9ed9095afe02d0a279f6895ab2e355b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIRType/Variantfcfea472011e8326a8438fe7afe7cf7f186890b12b2983a93218ec23a139f366.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
