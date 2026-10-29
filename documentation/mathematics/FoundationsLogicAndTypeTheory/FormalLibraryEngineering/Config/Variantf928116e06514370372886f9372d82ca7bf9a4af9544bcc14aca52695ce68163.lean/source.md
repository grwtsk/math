# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantf928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `262ef55c9888b1aab82897271fa7303669306050` · SHA-256 `f928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Core

public section
namespace Lean.Compiler.LCNF
namespace Simp

/--
Configuration options for `Simp` that are not controlled using `set_option`.
Recall that we have multiple `Simp` passes and they use different configurations.
-/
structure Config where
  /--
  If `etaPoly` is true, we eta expand any global function application when
  the function takes local instances. The idea is that we do not generate code
  for this kind of application, and we want all of them to specialized or inlined.
  -/
  etaPoly : Bool := false
  /--
  If `inlinePartial` is `true`, we inline partial function applications tagged
  with `[inline]`. Note that this option is automatically disabled when processing
  declarations tagged with `[inline]`, marked to be specialized, or instances.
  -/
  inlinePartial := false
  /--
  If `implementedBy` is `true`, we apply the `implemented_by` replacements.
  Remark: we only apply `casesOn` replacements at phase 2 because `cases` constructor
  may not have enough information for reconstructing the original `casesOn` application at
  phase 1.
  -/
  implementedBy := false
  /--
  If `inlineDefs` is `true` then top-level definitions are inlined when they are small are
  annotated with inlining attributes.
  -/
  inlineDefs := true
  deriving Inhabited

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=147bdfb7e9e3cb17faff13b3005024d303f997926411ec8761fbdac625f2d76e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variantf928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
