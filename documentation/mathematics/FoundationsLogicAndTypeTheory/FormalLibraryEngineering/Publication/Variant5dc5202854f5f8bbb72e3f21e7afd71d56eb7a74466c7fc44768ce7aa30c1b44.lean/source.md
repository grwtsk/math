# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Publication.Variant5dc5202854f5f8bbb72e3f21e7afd71d56eb7a74466c7fc44768ce7aa30c1b44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b447d60d8f1b791f464dbe87e0393c8c36a246fb` · SHA-256 `5dc5202854f5f8bbb72e3f21e7afd71d56eb7a74466c7fc44768ce7aa30c1b44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core
public meta import Lean.Elab.Command
public meta import Surface.Core.Classification

/-!
# Publication classification audit

Only declarations explicitly tagged `surface_published` enter this audit.
Compiler-generated recursors and helper theorems therefore cannot create false
publication failures.
-/

public meta section

open Lean Elab Command

namespace Surface.Audit

def publicationFailure?
    (env : Environment)
    (info : ConstantInfo) : Option String :=
  let name := info.name
  if !Surface.Core.surfacePublishedAttr.hasTag env name then
    none
  else
    let adapter := Surface.Core.surfaceAdapterAttr.hasTag env name
    let novel := Surface.Core.surfaceNovelAttr.hasTag env name
    let candidate := Surface.Core.surfaceCandidateAttr.hasTag env name
    if adapter == novel then
      some <| name.toString ++
        ": published theorem must have exactly one of surface_adapter/surface_novel"
    else if candidate then
      some <| name.toString ++ ": published theorem is tagged surface_candidate"
    else
      none

def publicationFailures (env : Environment) : List String :=
  env.constants.toList.filterMap fun pair =>
    publicationFailure? env pair.snd

elab "surface_publication_audit" : command => do
  let failures := publicationFailures (← getEnv)
  unless failures.isEmpty do
    throwError "Surface publication audit failed:\n{String.intercalate "\n" failures}"

surface_publication_audit

end Surface.Audit
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27834078ab4a2c1f2b1b50fb2a0fe3e7b89922214e04582d329f962ad7675476 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Publication/Variant5dc5202854f5f8bbb72e3f21e7afd71d56eb7a74466c7fc44768ce7aa30c1b44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
