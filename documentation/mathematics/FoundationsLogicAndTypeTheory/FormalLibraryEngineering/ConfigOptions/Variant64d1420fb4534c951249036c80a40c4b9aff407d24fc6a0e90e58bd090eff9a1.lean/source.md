# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConfigOptions.Variant64d1420fb4534c951249036c80a40c4b9aff407d24fc6a0e90e58bd090eff9a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6c5dfc4c19cdc933274314e3b0a06f00b95e155` · SHA-256 `64d1420fb4534c951249036c80a40c4b9aff407d24fc6a0e90e58bd090eff9a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Data.Options

public section

namespace Lean.Compiler.LCNF

/--
User controlled configuration options for the code generator.
-/
structure ConfigOptions where
  /--
  Any function declaration or join point with size `≤ smallThreshold` is inlined
  even if there are multiple occurrences.
  -/
  smallThreshold : Nat := 1
  /--
  Maximum number of times a recursive definition tagged with `[inline]` can be recursively inlined before generating an
  error during compilation.
  -/
  maxRecInline : Nat := 1
  /--
  Maximum number of times a recursive definition tagged with `[inline_if_reduce]` can be recursively inlined
  before generating an error during compilation.
  -/
  maxRecInlineIfReduce : Nat := 16
  /--
  Perform type compatibility checking after each compiler pass.
  -/
  checkTypes : Bool := false
  /--
  Cache closed terms and evaluate them at initialization time.
  -/
  extractClosed : Bool := true
  /--
  Maximum number of times a definition tagged with `@[specialize]` can be recursively specialized
  before generating an error during compilation.
  -/
  maxRecSpecialize : Nat := 64
  /--
  Insert reset-reuse instructions.
  -/
  resetReuse : Bool := true
  deriving Inhabited

register_builtin_option compiler.small : Nat := {
  defValue := 1
  descr    := "(compiler) function declarations with size `≤ small` is inlined even if there are multiple occurrences."
}

register_builtin_option compiler.maxRecInline : Nat := {
  defValue := 1
  descr    := "(compiler) maximum number of times a recursive definition tagged with `[inline]` can be recursively inlined before generating an error during compilation."
}

register_builtin_option compiler.maxRecInlineIfReduce : Nat := {
  defValue := 16
  descr    := "(compiler) maximum number of times a recursive definition tagged with `[inline_if_reduce]` can be recursively inlined before generating an error during compilation."
}

register_builtin_option compiler.checkTypes : Bool := {
  defValue := false
  descr    := "(compiler) perform type compatibility checking after each compiler pass. Note this is not a complete check, and it is used only for debugging purposes. It fails in code that makes heavy use of dependent types."
}

register_builtin_option compiler.extract_closed : Bool := {
  defValue := true
  descr    := "(compiler) enable/disable closed term caching"
}

register_builtin_option compiler.maxRecSpecialize : Nat := {
  defValue := 64
  descr    := "(compiler) maximum number of times a definition tagged with `@[specialize]` can be recursively specialized before generating an error during compilation."
}

register_builtin_option compiler.reuse : Bool := {
  defValue := true
  descr    := "heuristically insert reset/reuse instruction pairs"
}

def toConfigOptions (opts : Options) : ConfigOptions := {
  smallThreshold := compiler.small.get opts
  maxRecInline   := compiler.maxRecInline.get opts
  maxRecInlineIfReduce := compiler.maxRecInlineIfReduce.get opts
  checkTypes := compiler.checkTypes.get opts
  extractClosed := compiler.extract_closed.get opts
  maxRecSpecialize := compiler.maxRecSpecialize.get opts
  resetReuse := compiler.reuse.get opts
}

end Lean.Compiler.LCNF
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=216bf9182a6fb62e5a9e6f830c3f886eaae0b18c486382960ab0e2195b0024b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConfigOptions/Variant64d1420fb4534c951249036c80a40c4b9aff407d24fc6a0e90e58bd090eff9a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
