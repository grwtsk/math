# Archive Imported By Kernel — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91471342c63d3c09d7c9b219ae9507384cf5912c` · SHA-256 `fb3cc347239e11a00020914aa909f916382aeed794b756f113fb525c385bef5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Archive boundary root.

Archived formal material is retained for inspection only. It is not part of the
checked kernel and must not be imported by `Formal.Kernel`.
-/

namespace Formal.Archive

def importedByKernel : Bool := false

theorem archive_not_imported_by_kernel : importedByKernel = false := by
  rfl

end Formal.Archive
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=779cf74ffa5b4fb28a1df6c94b6b584ee47833f6aad6f818c00801aa5be92664 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Archive/Variantfb3cc347239e11a00020914aa909f916382aeed794b756f113fb525c385bef5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
