# Interface — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bc282eeecf7e81a115eb371fd3b280a2ada2bcc` · SHA-256 `9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Fabric.Core
import Mathlib.AlgebraicTopology.SimplicialObject.Basic

/-!
# Abstract prismatic realization data

This module is an interface boundary, not a construction of prisms, derived
`p`-completion, or prismatic cohomology.  `DerivedAlg` is the user's supplied
category of arithmetic source models, and `value` is explicitly
contravariant.  An arithmetic realization is extra, representation-dependent
data attached to a fabric; a simplicial fabric does not acquire one
automatically.

The descriptor `BasePrismDatum` is likewise not a genuine prism.  A later
implementation may provide a constructed object and a certificate relating it
to the descriptor.  Presentation syntax and metadata are never proof
certificates.
-/

namespace DAF.Prismatic

open CategoryTheory

universe uSmooth uDerived uTarget vSmooth vDerived vTarget

/--
An abstract contravariant arithmetic theory with a separately supplied smooth
model and a natural agreement isomorphism on smooth objects.
-/
structure Theory where
  SmoothAlg : Type uSmooth
  DerivedAlg : Type uDerived
  Target : Type uTarget

  [instCategorySmoothAlg : Category.{vSmooth} SmoothAlg]
  [instCategoryDerivedAlg : Category.{vDerived} DerivedAlg]
  [instCategoryTarget : Category.{vTarget} Target]

  includeSmooth : SmoothAlg ⥤ DerivedAlg
  value : DerivedAlgᵒᵖ ⥤ Target
  smoothValue : SmoothAlgᵒᵖ ⥤ Target

  smoothAgreement :
    includeSmooth.op ⋙ value ≅ smoothValue

attribute [instance] Theory.instCategorySmoothAlg
  Theory.instCategoryDerivedAlg Theory.instCategoryTarget

/--
Descriptive base-prism data.  The fields do not by themselves prove the prism
axioms or construct a derived-completion theory.
-/
structure BasePrismDatum where
  Base : Type uSmooth
  IdealCarrier : Type uDerived
  prime : Nat
  bounded : Prop

/-- A separately supplied candidate realization of a prism descriptor. -/
structure ConstructedBasePrism (D : BasePrismDatum) where
  PrismObject : Type uTarget
  realizesDescriptor : Prop

/-- Proof authority relating a descriptor to a supplied constructed object. -/
structure BasePrismCertificate
    (D : BasePrismDatum)
    (P : ConstructedBasePrism D) : Prop where
  certified : P.realizesDescriptor

/--
A chosen arithmetic interpretation of a fabric.  `cellAlgebra` records the
representation assigned to each hosted cell, while `algebra` records the
coherent simplicial source used by the prismatic theory.  No independence from
these choices is asserted.
-/
structure SourceRealization
    (F : DAF.Fabric.Fabric)
    (P : Theory) where
  algebra : SimplicialObject P.DerivedAlg
  cellCorrespondence : ∀ {n : Nat}, F.Cell n → P.DerivedAlg

end DAF.Prismatic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cc6de857bf3ad9fa39965392fe4beef61757c561580e5ed59e9e817139361e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Interface/Variant9b468e263b1b4e32ceb12f54b6da86e0be64e2ca3742904c8a22bc8093f2be53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
