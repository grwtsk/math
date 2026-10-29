# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ExpansionIndex.Variant32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d66f10ce24e2ddf10c37cfdd461931674553165` · SHA-256 `32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Catalan.ExpansionIndex

/-!
# Folder.Theorem.Catalan.ExpansionIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.expansion_index
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

theorem expandAt_internal
    {T : CTree}
    {a : Address}
    {U : CTree}
    (h : T.expandAt? a = some U) :
    U.internal = T.internal + 1 :=
  CTree.expandAt?_internal h

theorem expandAt_leaves
    {T : CTree}
    {a : Address}
    {U : CTree}
    (h : T.expandAt? a = some U) :
    U.leaves = T.leaves + 1 :=
  CTree.expandAt?_leaves h

end Catalan
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=505992d51f265b239e766ef730bd5d7b51bcd2f1ec4c1dbad710561e2a5d0e96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ExpansionIndex/Variant32bb09065caf57c3b9f6faf5229270b716cfd04289f5c334928b8c546179987c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
