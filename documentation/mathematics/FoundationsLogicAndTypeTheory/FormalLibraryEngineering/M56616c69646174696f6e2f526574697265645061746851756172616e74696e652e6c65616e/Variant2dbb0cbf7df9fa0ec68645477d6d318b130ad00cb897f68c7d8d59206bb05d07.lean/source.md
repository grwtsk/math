# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M56616c69646174696f6e2f526574697265645061746851756172616e74696e652e6c65616e.Variant2dbb0cbf7df9fa0ec68645477d6d318b130ad00cb897f68c7d8d59206bb05d07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15877006aca615a82914bb814771b73c1e0364e8` · SHA-256 `2dbb0cbf7df9fa0ec68645477d6d318b130ad00cb897f68c7d8d59206bb05d07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=01111010|role=proof_code_atom|slug=validation-retiredpathquarantine|owner=canonical_owner|core=Validation/RetiredPathQuarantine.lean|leaf=M56616c69646174696f6e2f526574697265645061746851756172616e74696e652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

structure RetiredPathQuarantine where
  historicalVocabularyOnly : Bool
  noExternalAuthority : Bool
  compactFacadeRequired : Bool
deriving Repr

def defaultRetiredPathQuarantine : RetiredPathQuarantine :=
  { historicalVocabularyOnly := true
    noExternalAuthority := true
    compactFacadeRequired := true }

theorem retiredPathQuarantine_noExternalAuthority :
    defaultRetiredPathQuarantine.noExternalAuthority = true := by
  rfl

theorem retiredPathQuarantine_facadeRequired :
    defaultRetiredPathQuarantine.compactFacadeRequired = true := by
  rfl

end Think.Compact
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71b814cc2308ee54d40105b6954dada517c28fff659504d7c2072e3802401abd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526574697265645061746851756172616e74696e652e6c65616e/Variant2dbb0cbf7df9fa0ec68645477d6d318b130ad00cb897f68c7d8d59206bb05d07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
