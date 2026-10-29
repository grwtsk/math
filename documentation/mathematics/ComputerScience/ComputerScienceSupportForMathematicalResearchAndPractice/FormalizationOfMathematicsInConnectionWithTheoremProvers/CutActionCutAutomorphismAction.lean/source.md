# Cut Action Cut Automorphism Action — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20fb73d858b7c31260eff31aecdb05a7eb2756d6` · SHA-256 `1e446579412cafe2f2d6c1edd873cf275f912d74c53b468b90c404ec9c13a5d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite-cut symmetry action
-/

namespace Mathematics.StratifiedBoundary

structure CutAutomorphismAction
    (GroupElement State : Type u) where
  identityElement : GroupElement
  act : GroupElement → State → State
  identityAction :
    ∀ state,
      act identityElement state = state
  actionCompositionRef : String

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f9731a718addb6bc1f3d62878013d6bfcc9834c8966147cecd1690b57ee3cb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CutAction/Variant1e446579412cafe2f2d6c1edd873cf275f912d74c53b468b90c404ec9c13a5d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
