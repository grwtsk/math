# Verification target: Source Primitive Envelope Attempt02 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35a35f0813aa3b40f26129f47b9c198d83c48881",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35a35f0813aa3b40f26129f47b9c198d83c48881`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ReflectedPositivePrimitive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [overlapFactor0](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlapfactor0.md) | 23 | `declaration-track:41995dade14a2ce67d93e8666a290565138caf379067e5909c278033aa517b86` |
| 2 | `def` | [overlapFactor1](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlapfactor1.md) | 26 | `declaration-track:37efbcfa2f06265bdf43f844bcfcbb3106d803079aaf757d90a10fc61991c151` |
| 3 | `def` | [overlapFactor1Prime](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlapfactor1prime.md) | 29 | `declaration-track:b05ecf3e72259c5b16168d02271e81bc5dc1ef302b4b2872ca4ab033502ed4d2` |
| 4 | `theorem` | [overlapFactor0_bound](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlapfactor0-bound.md) | 32 | `result-track:e0ad00920c2562dca40d2a77549de69e3aaf7fcea1f8b8b5694e4de376685b40` |
| 5 | `theorem` | [overlapFactor1_bound](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlapfactor1-bound.md) | 42 | `result-track:8c35be626633794edf4b824b03e54cd9d02b97c731dc78f3333d96c91d165861` |
| 6 | `theorem` | [overlapFactor1_nonneg](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlapfactor1-nonneg.md) | 52 | `result-track:34142359a5816112bbdfc8645d74c46a5d80aa2e150b76d670b5be0042db675c` |
| 7 | `theorem` | [overlapPolynomial2_factor](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlappolynomial2-factor.md) | 61 | `result-track:b64cd8f4d1c0ef1caea6940ac73af4a38ec2466245f82cfe35caf83c6f7163b2` |
| 8 | `theorem` | [overlapPolynomial0_upper](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlappolynomial0-upper.md) | 67 | `result-track:849613e6d22ebd2f426120ed96901dd4aa3336ef4dfd16d8e87275615814bafe` |
| 9 | `theorem` | [overlapPolynomial1_upper](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlappolynomial1-upper.md) | 78 | `result-track:85ea6420dc81ac4b641e3c1e6f3d9d76458191dcf270f4eb1a440c647ef69831` |
| 10 | `theorem` | [overlapPolynomial2_upper](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/overlappolynomial2-upper.md) | 93 | `result-track:75690c07c37ed81957f4b4f76253426cd027d19a950545fd2bb8c9892ea77cfb` |
| 11 | `theorem` | [source_normalization_lower](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/source-normalization-lower.md) | 111 | `result-track:6d601d67031af7f9d3f1cffb6abda1c5600cfe93c4ba1aad85c59dc927d494f8` |
| 12 | `def` | [reflectedEnvelope](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/reflectedenvelope.md) | 119 | `declaration-track:c9c4829ed3c08c6b55067fbf200f331d657acce85be3dc0486b3445d83a1e531` |
| 13 | `theorem` | [reflectedEnvelope_nonneg](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/reflectedenvelope-nonneg.md) | 122 | `result-track:634f8558844a91dbd2569ad4210a1e5f85491cfbfb66713a4de29c466c1d37b1` |
| 14 | `theorem` | [reflectedPrimitive_polynomial](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/reflectedprimitive-polynomial.md) | 127 | `result-track:d2a4771add143d4b04a79c682349127d1c765054fa69aab7895bacb25469837f` |
| 15 | `theorem` | [reflectedPrimitive_le_envelope](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/reflectedprimitive-le-envelope.md) | 151 | `result-track:e1943133211a18968a58b87ec38e1fccb5448f7be24b5c430b6926d2fcc77edc` |
| 16 | `theorem` | [reflectedPrimitive_source_envelope](../../../../CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02Namespaced.lean/declarations/reflectedprimitive-source-envelope.md) | 188 | `result-track:2f5526d986ddaae763849bd945d3d9b5a248575881656f92ad6a7f3bf4e45143` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3941ad54ef6212d17d8ff654a90c32502a61fd46ddfefd9cfe02edcd59dadb6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt02/Variant403bff8cc5670d2a67603dbeb7677d04d8f168e049bd9a09205636c117f71246.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
