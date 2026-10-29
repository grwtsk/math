# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleEngine.Variant27c643705dc41a7f8e9aa4834a7fb00303b5badfc1fb60fb7f2a1029782c34c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4f74f210e676f5878aaf82660d339735d92ebe2` · SHA-256 `27c643705dc41a7f8e9aa4834a7fb00303b5badfc1fb60fb7f2a1029782c34c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.RuleEngine

/-!
# Folder.Theorem.Archive.RuleEngine

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes copy rule-engine materialization.
Ontology: proof.archive.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Archive

theorem copyRuleEngine_realize
    (D : Folder.Archive.MatrixAtomDictionary)
    (r : Folder.Archive.IndexSpinRef Folder.Archive.copyAction)
    (M : Folder.Carrier.BinaryMatrix)
    (hget :
      Folder.Archive.realizeIndexSpin?
        Folder.Archive.copyAction D r = some M) :
    Folder.Archive.realizeLayerRecipe?
        Folder.Archive.copyAction Folder.Archive.copyRuleEngine D
        { ref := r, rule := Folder.Archive.copyRuleEngine.copyId } =
      some M :=
  Folder.Archive.copyRuleEngine_realize D r M hget

end Archive
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5ce2e56a0c9ee71471ecd298ffa15d6616a04ed6b9d8d59f17bf86ea46c272c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleEngine/Variant27c643705dc41a7f8e9aa4834a7fb00303b5badfc1fb60fb7f2a1029782c34c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
