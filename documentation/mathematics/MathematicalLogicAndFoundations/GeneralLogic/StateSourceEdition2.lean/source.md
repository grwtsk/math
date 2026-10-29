# State Source Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c11836f205703a972793a087ac9a155d8a022e4d` · SHA-256 `fe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.Index
import Mathlib.Data.Complex.Basic

/-!
# Profile-bound semantic tensor states

Enumeration alone does not turn a semantic object into a tensor state.  An
encoding certificate names the decoder, observation transport, identity law,
and its quantitative error boundary.
-/

namespace Mathematics.TensorNetwork

universe u v w x

/-- A finite tensor state in coordinate form. -/
abbrev TensorState (N D : Nat) :=
  PhysicalConfiguration N D → ℂ

/--
Certified semantic realization into one selected tensor profile.  The partial
decoder is defined only on its admitted image.
-/
structure SemanticTensorEncodingCertificate
    (SemanticState : Type u)
    (SemanticContext : Type v)
    (HilbertState : Type w)
    (Observation : Type x) where
  encode : SemanticState → HilbertState
  decode : HilbertState → Option SemanticContext
  semanticContext : SemanticState → SemanticContext
  decodeEncode :
    ∀ state, decode (encode state) = some (semanticContext state)
  observeSemantic : Observation → SemanticState → ℂ
  observeHilbert : Observation → HilbertState → ℂ
  observationNaturality :
    ∀ observation state,
      observeHilbert observation (encode state) =
        observeSemantic observation state
  identityPreserved :
    Function.Injective semanticContext
  errorBound : ℝ
  errorBound_nonnegative : 0 ≤ errorBound

/-- Exact recovery is available only from the supplied decoder theorem. -/
theorem SemanticTensorEncodingCertificate.recovers
    (certificate :
      SemanticTensorEncodingCertificate
        SemanticState SemanticContext HilbertState Observation)
    (state : SemanticState) :
    certificate.decode (certificate.encode state) =
      some (certificate.semanticContext state) :=
  certificate.decodeEncode state

/--
An explicitly injective tensor encoding is a stronger certificate; it is not
derived from positive semidefiniteness or from an upper norm estimate.
-/
structure InjectiveSemanticTensorEncodingCertificate
    (SemanticState : Type u)
    (SemanticContext : Type v)
    (HilbertState : Type w)
    (Observation : Type x) where
  base :
    SemanticTensorEncodingCertificate
      SemanticState SemanticContext HilbertState Observation
  encodeInjective : Function.Injective base.encode

end Mathematics.TensorNetwork
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90a2fe7fc5a377bf30a1245fe807ba33ae17af955dc7c31a0098df98be3fa04f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/State/Variantfe0db7085d632380fbe6b236bb4d1efec4e58143a28507d3ba3a94ad060d9734.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
