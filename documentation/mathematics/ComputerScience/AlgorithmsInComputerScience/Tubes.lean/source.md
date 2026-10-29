# Tubes — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af35ff6e70ac5e56a3653840bf66c12bb91a7971` · SHA-256 `9fa4fcf9a52115d5a947af008ca7978a0b0f5d30f639834e9a0e1928a633a587`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface.Geometry.Kakeya

universe u

/-!
What is formalized:
Scale data and finite tube configurations for theorem-facing Kakeya geometry.

What is certificate-gated:
Quantitative estimates live in downstream theorem-input modules.  A finite tube
list, finite homology cover, or dashboard readiness flag is not a Kakeya
estimate.

What is not claimed:
No Wang-Zahl theorem, sticky Kakeya theorem, Kakeya maximal estimate, Hausdorff
dimension theorem, or volume lower bound is proved here.

Primary mathematical source:
This is a Surface ownership boundary for future quantitative Kakeya geometry.
The homological `KakeyaTubeCover` module remains finite structural vocabulary.
-/

/-- Scale data for a tube configuration. -/
structure ScaleData where
  delta : Nat
  rho : Nat
  delta_le_rho : delta ≤ rho
  boundary : List String
deriving Repr

/-- A tube descriptor in the theorem-facing geometry namespace. -/
structure Tube where
  id : Nat
  directionLabel : String
  scale : ScaleData
  ambientDimension : Nat
  boundary : List String
deriving Repr

/--
Finite tube configuration.

Finiteness of the list is a combinatorial input only; quantitative Kakeya
claims require the theorem input records below.
-/
structure TubeConfiguration where
  ambientDimension : Nat
  tubes : List Tube
  finiteConfiguration : Prop
  finiteConfigurationCertified : finiteConfiguration
  boundary : List String
deriving Repr

end Surface.Geometry.Kakeya
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=706bb4a83d3e2854c41f35a44c017844b5868c8af35148b7a9914c5bc1e2221d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tubes/Variant9fa4fcf9a52115d5a947af008ca7978a0b0f5d30f639834e9a0e1928a633a587.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
