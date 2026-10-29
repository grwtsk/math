# Adapter — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b82f8eb65200b4732866e98fece8e7485fce64e5` · SHA-256 `531a807e56a9bf01145e43f888ba65f89e23021b0443bffd8357c9f871d9ce6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=00001010|role=proof_code_atom|slug=transfers-adapter|owner=canonical_owner|core=Transfers/Adapter.lean|leaf=M5472616e73666572732f416461707465722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Transfers

structure TransferAdapter (localProp importedProp : Prop) where
  bridge : importedProp -> localProp

namespace TransferAdapter

def adapt {localProp importedProp : Prop}
    (adapter : TransferAdapter localProp importedProp)
    (proof : importedProp) :
    localProp :=
  adapter.bridge proof

theorem bridge_applies {localProp importedProp : Prop}
    (adapter : TransferAdapter localProp importedProp)
    (proof : importedProp) :
    localProp :=
  adapter.adapt proof

end TransferAdapter

end Think.Transfers
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9f824758e801b7410593b99e97af922ce564a4e1b250714f1b3097d4113ff38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f416461707465722e6c65616e/Variant531a807e56a9bf01145e43f888ba65f89e23021b0443bffd8357c9f871d9ce6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
