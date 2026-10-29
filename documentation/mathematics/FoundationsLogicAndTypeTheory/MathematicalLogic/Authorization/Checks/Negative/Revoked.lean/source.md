# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.Checks.Negative.Revoked

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4e6fd6ab9737b1765e4f06a02af504d2955a8e4` · SHA-256 `3f3e2834c4f9425f326b802de272580cef4e23269b79fb246c4b95e7bcecde89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Genesis

-- Independently specified bad grant: the compiler must reject this assertion.
example : GRWTSK.Genesis.MayAct True False (fun (_ : Unit) => True) () := by
  decide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbc9b63d12ee1c2e121b8b9d46ada3f7d60cde95615d4e40784be486f2bfc074 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Authorization/Checks/Negative/Revoked.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
