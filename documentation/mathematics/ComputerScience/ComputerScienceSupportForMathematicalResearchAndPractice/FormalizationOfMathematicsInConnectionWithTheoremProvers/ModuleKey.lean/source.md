# Module Key — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `759be596d67fde5412a166d3c1d9198808b8d744` · SHA-256 `25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace Incremental

structure ModuleKey where
  moduleName : String
  file : String
deriving Repr, DecidableEq

def ModuleKey.lexicalKey
    (M : ModuleKey) : String :=
  M.moduleName ++ "\n" ++ M.file

theorem moduleKey_lexicalKey_deterministic
    (M : ModuleKey) :
    M.lexicalKey = M.lexicalKey :=
  rfl

end Incremental
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd7fb7e5edb008a624bf8f78483cc75f81ec9c3148e127712441b871df767774 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleKey/Variant25401ae486f954d1c647c5b5e5cd7f6e0738d58992b67cd920a7b2efabf98257.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
