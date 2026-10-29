# Verification target: Correspondence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e70fec4d74d874029ed2da02737e9833f4a8cc10",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Correspondence/Variant2f509f0a83c2f058a763b8df89c539926e6c4e46220fe8360a541d79d2ea6f73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e70fec4d74d874029ed2da02737e9833f4a8cc10`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Correspondence/Variant2f509f0a83c2f058a763b8df89c539926e6c4e46220fe8360a541d79d2ea6f73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Correspondence/Variant2f509f0a83c2f058a763b8df89c539926e6c4e46220fe8360a541d79d2ea6f73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Formal` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Codec.Profiles` — import line 2; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 3; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Correspondence` — import line 4; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityCantor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/identitycantor.md) | 12 | `declaration-track:5375e91742a445e09dc496de5d5c62f66c4623374890d8706e82106ad1570650` |
| 2 | `def` | [falseBaseline](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/falsebaseline.md) | 16 | `declaration-track:033ae38cfea3a9660fd01ac5fc5eb2a5a03241b9814d8139ea29a7a8516f23ed` |
| 3 | `def` | [natAddressEnumeration](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/nataddressenumeration.md) | 18 | `declaration-track:8852501ddacb755d107b675634263dbfb9616fea1c93f43b3bb16cac92a070c1` |
| 4 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-10.md) | 26 | `declaration-track:814fd4f4373ba5b96f5a678ae1f46ee28a254a4a4fb1488d291e51fc6e274f1a` |
| 5 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-14.md) | 34 | `declaration-track:9f8619bec670a640b01d40b4dcfa916bf09a8668a539f7485e3eac8ba50c992d` |
| 6 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-17.md) | 41 | `declaration-track:bb121961ac7692afde3796190113a29868365f795a19774aea4a3c42e2a13534` |
| 7 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-6.md) | 45 | `declaration-track:50d5df0d5644b434bca9ee6be78c04f06258c93d61882e44f73ec0da525b8a50` |
| 8 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-3.md) | 49 | `declaration-track:2865214441719866d6c3395297da1e06d1e7609d3eeaf7269bd3da2e67d408a6` |
| 9 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-4.md) | 55 | `declaration-track:3ef5e7c6e5f4b1dceb4caf6926d506299c0829995fc93bd4904a913792335da7` |
| 10 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-15.md) | 60 | `declaration-track:a3b1594ae3b63162ac58e3e5e1429f164bb38bfe3acfde90d8f9595cfaba6f6b` |
| 11 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-13.md) | 66 | `declaration-track:97889de3a615b61c66f5e65999e8cf93b7e255028350cf764694afd3849768ba` |
| 12 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-9.md) | 71 | `declaration-track:764ca6c87f1f09af16579c4784dd6740c7809c4dc0a64c8b47a5cdb90371b988` |
| 13 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-23.md) | 77 | `declaration-track:f07e40f1aa40654538b26247599b147edae879de993dbc7298814a3f48077967` |
| 14 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-5.md) | 84 | `declaration-track:4222e1dabf7a97fbd740e7f23928bb16d20879ba1e0666c6ce4c5f08778a5d59` |
| 15 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-21.md) | 91 | `declaration-track:c8694a014bacdcad6efb12b63c0ad65d8573c515f1caa2642d4e1419e77e40f2` |
| 16 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-26.md) | 98 | `declaration-track:fdb402cdb50709b0e16a5716ff1d3e9004636ff58bbe031be48c8e88627953d3` |
| 17 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-11.md) | 102 | `declaration-track:893332b3d29f4c6a619efa06712d7b32490a83d88b612402762b3f5d6beea501` |
| 18 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-25.md) | 107 | `declaration-track:fca0da126a84e88d5e77a41b526af43c926ac70922e39af8ff1f3a063bebf0a8` |
| 19 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-8.md) | 113 | `declaration-track:647c4df5322d76df9a5d1eabcadae8a6c42e7640e693974de85a47669a4cfc8b` |
| 20 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-16.md) | 120 | `declaration-track:b8445126b173740a6049090e9854287f2303cdd60c0df72f7d4de7b3399d3c53` |
| 21 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-2.md) | 125 | `declaration-track:1f58787a66b68c8963dd69a0057e469b0beeeb79eebdfe4d4b4d1c9f43bf0996` |
| 22 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-18.md) | 129 | `declaration-track:bec992c300b2f909d959ad2e8618933e96ab4e55c788b48ee01e52edee477123` |
| 23 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-22.md) | 138 | `declaration-track:cbd1b1a67f45298df03c2c215029117d8bb640c491fcb53c8df91862e5bc0288` |
| 24 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-20.md) | 145 | `declaration-track:c7afe042d4fe87f41b849c4db6f4a8216e1df6c73876c8752a345522bab0a3ee` |
| 25 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-7.md) | 151 | `declaration-track:62a1fed9c73e2f399d2016eac1bda448b758ce68669a79f48e8adbb689193678` |
| 26 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-12.md) | 159 | `declaration-track:91a5ecfec86757b1e83d6292b3aaca5e61f766e0e82a9b4ec7738100b7a7cf1a` |
| 27 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-24.md) | 171 | `declaration-track:f1a092aa5775e731d0990c3cfc5d391a16a2f8a8d09860cd27b96367da4575a3` |
| 28 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example.md) | 175 | `declaration-track:15fa6c603f2418e524c06499fb09b6be54b8fc3a993ef6fe2cc5573c49e30c0b` |
| 29 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Correspondence.lean/declarations/example-source-edition-19.md) | 183 | `declaration-track:bf5519f90c1874d0f8802d6944afb8e4faa171ef86265e522c33954a74d4016d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecc4fe6af80f2bf26824653bd57757244d8034a944ea65b9746da297f5b243c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Correspondence/Variant2f509f0a83c2f058a763b8df89c539926e6c4e46220fe8360a541d79d2ea6f73.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Correspondence/Variant2f509f0a83c2f058a763b8df89c539926e6c4e46220fe8360a541d79d2ea6f73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
