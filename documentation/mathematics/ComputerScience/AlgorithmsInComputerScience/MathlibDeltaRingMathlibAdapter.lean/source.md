# Mathlib Delta Ring Mathlib Adapter — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6155a3a786d3e84714e0e68f753385f2b5d68b9` · SHA-256 `caab2f02de605fdd6243a03a3921b45c22948e9d9a6f9187b525a318400369fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Prismatic.MathlibAdapters

namespace Surface.Prismatic

universe u

/-!
What is formalized:
An exact-file adapter contract from Surface `DeltaRing` data to a future Mathlib
commutative-ring-plus-delta backend.

What is certificate-gated:
The actual Mathlib ring hierarchy, the δ-map transfer, the Frobenius lift
transfer, and the ring-homomorphism transfer.

What is not claimed:
This file does not import Mathlib and does not construct a Mathlib δ-ring.

Primary mathematical source:
Bhatt--Scholze's δ-ring interface and Surface.Prismatic.DeltaRing.
-/

/-- Exact-file adapter for a Surface δ-ring into a future Mathlib backend. -/
structure DeltaRingMathlibAdapter
    {p : Nat}
    (A : DeltaRing.{u} p) where
  backend : MathlibAdapterBackend
  carrierTransferred : Prop
  carrierTransferredCertified :
    carrierTransferred
  ringOperationsTransferred : Prop
  ringOperationsTransferredCertified :
    ringOperationsTransferred
  deltaTransferred : Prop
  deltaTransferredCertified :
    deltaTransferred
  phiTransferred : Prop
  phiTransferredCertified :
    phiTransferred
  frobeniusLiftFormulaTransferred : Prop
  frobeniusLiftFormulaTransferredCertified :
    frobeniusLiftFormulaTransferred
  ringHomCertificateTransferred : Prop
  ringHomCertificateTransferredCertified :
    ringHomCertificateTransferred
  boundary : List String

def DeltaRingMathlibAdapter.usableForFinalTheorem
    {p : Nat}
    {A : DeltaRing.{u} p}
    (M : DeltaRingMathlibAdapter A) :
    Prop :=
  M.backend.usableForFinalTheorem

theorem DeltaRingMathlibAdapter.unavailable_not_usableForFinalTheorem
    {p : Nat}
    {A : DeltaRing.{u} p}
    (M : DeltaRingMathlibAdapter A)
    (h : M.backend = MathlibAdapterBackend.unavailable) :
    ¬ M.usableForFinalTheorem := by
  intro hUse
  rw [DeltaRingMathlibAdapter.usableForFinalTheorem, h] at hUse
  exact MathlibAdapterBackend.unavailable_not_usableForFinalTheorem hUse

theorem DeltaRingMathlibAdapter.finalTheorem_requires_importedMathlib
    {p : Nat}
    {A : DeltaRing.{u} p}
    (M : DeltaRingMathlibAdapter A)
    (h : M.usableForFinalTheorem) :
    M.backend = MathlibAdapterBackend.importedMathlib :=
  h

end Surface.Prismatic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ba73bf6866f8a6ff098cdcde353eba4f9d65317edf80efa7eeeda77fe073d5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variantcaab2f02de605fdd6243a03a3921b45c22948e9d9a6f9187b525a318400369fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
