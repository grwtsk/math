# Lean Cert Imported Into Kernel — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee73358bc2a06671fa209767a7694949983565bb` · SHA-256 `557a1c86ec6cd8a589436dc4cef812f7b5ed84225b60ce5d0602bb13a6e87db8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
External LeanCert boundary root.

LeanCert references in blueprint files do not become local theorem authority
unless the dependency is declared and the imported theorem statements are bound
to checked kernel targets.
-/

namespace Formal.External.LeanCert

def importedIntoKernel : Bool := false

theorem not_imported_into_kernel : importedIntoKernel = false := by
  rfl

end Formal.External.LeanCert
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=faf28a2ef4bf5f1b725fa4c0a2c8367b8fb8237839463b985058200101b5a101 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant557a1c86ec6cd8a589436dc4cef812f7b5ed84225b60ce5d0602bb13a6e87db8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
