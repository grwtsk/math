# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantd664d30764d31bb4cb6a0b58ab35e038b9e98e1b8b62233b60ce9c75c1229a1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `119ed082898c5e67a8ece6f61ea1fcb751d0075d` · SHA-256 `d664d30764d31bb4cb6a0b58ab35e038b9e98e1b8b62233b60ce9c75c1229a1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Match.MatcherInfo

public section

namespace Lean.Meta

structure MatcherApp extends Match.MatcherInfo where
  matcherName   : Name
  matcherLevels : Array Level
  params        : Array Expr
  motive        : Expr
  discrs        : Array Expr
  alts          : Array Expr
  remaining     : Array Expr

/--
Recognizes if `e` is a matcher application, and destructs it into the `MatcherApp` data structure.

This can optionally also treat `casesOn` recursor applications as a special case
of matcher applications.
-/
def matchMatcherApp? [Monad m] [MonadEnv m] [MonadError m] (e : Expr) (alsoCasesOn := false) :
    m (Option MatcherApp) := do
  unless e.isApp do return none
  if let .const declName declLevels := e.getAppFn then
    if let some info ← getMatcherInfo? declName then
      let args := e.getAppArgs
      if args.size < info.arity then
        return none
      return some {
        info with
        matcherName   := declName
        matcherLevels := declLevels.toArray
        params        := args.extract 0 info.numParams
        motive        := args[info.getMotivePos]!
        discrs        := args[(info.numParams + 1)...(info.numParams + 1 + info.numDiscrs)]
        alts          := args[(info.numParams + 1 + info.numDiscrs)...(info.numParams + 1 + info.numDiscrs + info.numAlts)]
        remaining     := args[(info.numParams + 1 + info.numDiscrs + info.numAlts)...args.size]
      }

    if alsoCasesOn && isCasesOnRecursor (← getEnv) declName then
      let indName := declName.getPrefix
      let .inductInfo info ← getConstInfo indName | return none
      let args := e.getAppArgs
      unless args.size >= info.numParams + 1 /- motive -/ + info.numIndices + 1 /- major -/ + info.numCtors do return none
      let params     := args[*...info.numParams]
      let motive     := args[info.numParams]!
      let discrs     := args[(info.numParams + 1)...(info.numParams + 1 + info.numIndices + 1)]
      let discrInfos := .replicate (info.numIndices + 1) {}
      let alts       := args[(info.numParams + 1 + info.numIndices + 1)...(info.numParams + 1 + info.numIndices + 1 + info.numCtors)]
      let remaining  := args[(info.numParams + 1 + info.numIndices + 1 + info.numCtors)...*]
      let uElimPos?  := if info.levelParams.length == declLevels.length then none else some 0
      let altInfos   ← info.ctors.toArray.mapM fun ctor => do
        let .ctorInfo ctorInfo ← getConstInfo ctor | panic! "expected constructor"
        return { numFields := ctorInfo.numFields, numOverlaps := 0, hasUnitThunk := false  : Match.AltParamInfo}
      return some {
        numParams := params.size
        numDiscrs := discrs.size
        matcherName   := declName
        matcherLevels := declLevels.toArray
        uElimPos?, discrInfos, params, motive, discrs, alts, remaining, altInfos
        overlaps := {} -- CasesOn constructor have no overlaps
      }

  return none

def MatcherApp.altNumParams (matcherApp : MatcherApp) := matcherApp.toMatcherInfo.altNumParams

def MatcherApp.toExpr (matcherApp : MatcherApp) : Expr :=
  let result := mkAppN (mkConst matcherApp.matcherName matcherApp.matcherLevels.toList) matcherApp.params
  let result := mkApp result matcherApp.motive
  let result := mkAppN result matcherApp.discrs
  let result := mkAppN result matcherApp.alts
  mkAppN result matcherApp.remaining

end Lean.Meta
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cef5da5cbcb9b4d52c42eddaa43bf7801b16a887685a2510622ea3a90ded1715 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd664d30764d31bb4cb6a0b58ab35e038b9e98e1b8b62233b60ce9c75c1229a1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
