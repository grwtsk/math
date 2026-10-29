# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variantc9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfc7cc42fb70651a625fe7c8450c37413c64d52e` · SHA-256 `c9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.RecAppSyntax
public import Lean.Meta.WHNF

public section

namespace Lean.Elab.Structural
open Meta

private def shouldBetaReduce (e : Expr) (recFnNames : Array Name) : Bool :=
  if e.isHeadBetaTarget then
    e.getAppFn.find? (fun e => e.isConst && recFnNames.contains e.constName!) |>.isSome
  else
    false

/--
Preprocesses the expressions to improve the effectiveness of `elimRecursion`.

* Beta reduce terms where the recursive function occurs in the lambda term.
  Example:
  ```
  def f : Nat → Nat
    | 0 => 1
    | i+1 => (fun x => f x) i
  ```

* Floats out the RecApp markers.
  Example:
  ```
  def f : Nat → Nat
    | 0 => 1
    | i+1 => (f x) i
  ```

* Unfold auxiliary definitions abstracting over the function call
  (typically abstracted) proofs.

-/
def preprocess (e : Expr) (recFnNames : Array Name) (numFixedParams : Nat) : CoreM Expr := do
  let e ← unfoldIfArgIsAppOf recFnNames numFixedParams e
  Core.transform e
    (pre := fun e =>
      if shouldBetaReduce e recFnNames then
        return .visit e.headBeta
      else
        return .continue)
    (post := fun e => do
      if e.isApp && e.getAppFn.isMData then
        let .mdata m f := e.getAppFn | unreachable!
        if m.isRecApp then
          return .done (.mdata m (f.beta e.getAppArgs))
      return .continue)


end Lean.Elab.Structural
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a9e3fdac81668b2d199005b2e333660a887d0db8837364a8d9a15bc46623ca3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantc9925a6cbd11b464dcfcaf4561a628cbe3bab8862546cedbc7035c0b3bc1db0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
