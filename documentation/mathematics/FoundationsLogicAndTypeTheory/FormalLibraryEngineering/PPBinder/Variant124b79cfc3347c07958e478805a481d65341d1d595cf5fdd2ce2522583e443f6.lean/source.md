# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPBinder.Variant124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f82a75fb98aa055711043b2b440007a409ebe8e` · SHA-256 `124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Moritz Roos. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Roos
-/
module

prelude
public import Lean.Meta.Basic

public section

namespace Lean

/--
Pretty-prints a local declaration and its type as a binder,
using the appropriate brackets given its `BinderInfo`. Example output: `{α : Type}`.

Returns `none` for let decls.
-/
protected def LocalDecl.ppAsBinder : LocalDecl → Option MessageData
  | .ldecl .. => none
  | .cdecl _ fvarId _ type binderInfo _ =>
    let (lBracket, rBracket) : String × String := match binderInfo with
      | .implicit       => ("{", "}")
      | .strictImplicit => ("⦃", "⦄")
      | .instImplicit   => ("[", "]")
      | .default        => ("(", ")")
    some <| .bracket lBracket m!"{mkFVar fvarId} : {type}" rBracket

/--
Pretty-prints a free variable and its type as a binder,
using the appropriate brackets given its `BinderInfo`. Example output: `{α : Type}`.

Returns `none` for let decls.
-/
@[inline]
protected def FVarId.ppAsBinder (fvarId : FVarId) : MetaM (Option MessageData) :=
  return (← fvarId.getDecl).ppAsBinder

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd080300be39c4e557ff8b1bc53a2a5f6cb1ed07585a0055f6efb7c05e15442d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPBinder/Variant124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
