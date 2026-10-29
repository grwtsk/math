# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.UnramifiedQp.Variant5a3b255d4a79f8b7f2b3250d328bf9fbe0ca10b4ea33232aeb82a87bb29af88d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf3fb7eb0646d273818ce42535d638c62d638893` · SHA-256 `5a3b255d4a79f8b7f2b3250d328bf9fbe0ca10b4ea33232aeb82a87bb29af88d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Think.Kakeya.Crystalline

structure UnramifiedQpExtensionReference where
  primeP : Nat
  degreeF : Nat
  fieldLabel : String
  residueFieldLabel : String

def FrobeniusLabel (degreeF : Nat) : String :=
  if degreeF = 1 then "φ" else "φ^f"

/-!
This is reference-layer metadata only. It records the unramified Q_p extension
used by the client visualization, without claiming a compiled p-adic Hodge
construction of D_cris.
-/
theorem unramified_qp_reference_layer : True := by
  trivial

end Think.Kakeya.Crystalline
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b9be40468a24c56f159f15cef67850f9602b51d90c0d2c7797210f0b77b74a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/UnramifiedQp/Variant5a3b255d4a79f8b7f2b3250d328bf9fbe0ca10b4ea33232aeb82a87bb29af88d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
