# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecAppSyntax.Variant93dda52748fa4b0feac97c71c8ae0eb37f2285f1c282df7a71bf918dfdac3aa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8beffc36d406aba7a272ddd8f77e2495a52f9b3` · SHA-256 `93dda52748fa4b0feac97c71c8ae0eb37f2285f1c282df7a71bf918dfdac3aa0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr

public section

namespace Lean

private def recAppKey := `_recApp
private def recAppPosKey := `_recAppPos

/--
We store the syntax at recursive applications to be able to generate better error messages
when performing well-founded and structural recursion.

We additionally store the source position as an extra key, so that two recursive applications
that are structurally identical as `Syntax` but originate from different source positions
still produce distinct `MData`. Otherwise hashconsing or simplification can merge them and
attribute an error to the wrong call site (issue #13444).
-/
def mkRecAppWithSyntax (e : Expr) (stx : Syntax) : Expr :=
  let m := KVMap.empty.insert recAppKey (.ofSyntax stx)
  let m := match stx.getPos? with
    | some p => m.insert recAppPosKey (.ofNat p.byteIdx)
    | none   => m
  mkMData m e

/--
Retrieve (if available) the syntax object attached to a recursive application.
-/
def getRecAppSyntax? (e : Expr) : Option Syntax :=
  match e with
  | .mdata d _ =>
    match d.find recAppKey with
    | some (DataValue.ofSyntax stx) => some stx
    | _ => none
  | _                => none

/--
Checks if the `MData` is for a recursive application.
-/
def MData.isRecApp (d : MData) : Bool :=
  d.contains recAppKey

/--
Return `true` if `getRecAppSyntax? e` is a `some`.
-/
def hasRecAppSyntax (e : Expr) : Bool :=
  match e with
  | .mdata d _ => d.isRecApp
  | _ => false

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c722681862db27d4250dff3d088c1d47a48ca256461cf09112d04c9d67bf8a6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecAppSyntax/Variant93dda52748fa4b0feac97c71c8ae0eb37f2285f1c282df7a71bf918dfdac3aa0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
