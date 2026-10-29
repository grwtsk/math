# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReverseImportGraph.Variantf49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c1f38fcff71a96642edd3a6be8eacc42f2a0a55` · SHA-256 `f49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.ImportGraph

namespace Surface
namespace Incremental

def reverseImports
    (G : ImportGraph)
    (I M : ModuleKey) : Prop :=
  imports G M I

theorem reverseImports_iff_imports
    (G : ImportGraph)
    (I M : ModuleKey) :
    reverseImports G I M ↔ imports G M I := by
  rfl

end Incremental
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92bdf8b0b8550359d78bd198824a98c0113e438a8a2c2dd9f24a4647c2c86b9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReverseImportGraph/Variantf49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
