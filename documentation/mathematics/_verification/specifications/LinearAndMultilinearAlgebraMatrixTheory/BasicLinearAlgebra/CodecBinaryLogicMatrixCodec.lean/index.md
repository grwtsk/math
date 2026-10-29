# Verification target: Codec Binary Logic Matrix Codec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c4502da6f8c46dd5e2e2fc5914fa57d00910e3f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Codec/Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CodecBinaryLogicMatrixCodec.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CodecBinaryLogicMatrixCodec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c4502da6f8c46dd5e2e2fc5914fa57d00910e3f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Codec/Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Codec/Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BinaryLogicMatrixCodec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CodecBinaryLogicMatrixCodec.lean/declarations/binarylogicmatrixcodec.md) | 5 | `declaration-track:82279c82855a6928018f5d0230fa8d39047ad9c7c034f3943012c76f6b42d453` |
| 2 | `def` | [encodeSigma](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CodecBinaryLogicMatrixCodec.lean/declarations/encodesigma.md) | 14 | `declaration-track:630f5e487098bd9fd866e639d5b2cde5086cbb92bd3f0c213dc2eb66199aa962` |
| 3 | `theorem` | [roundTrip_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CodecBinaryLogicMatrixCodec.lean/declarations/roundtrip-checked.md) | 18 | `result-track:2413e13e7bfb1936bfcac8eb1e6da1dd3f270860a5218af64d4fd3ca86387897` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87a1c3929cc1695509edd98fc41071ac86e19ae1e864a88c1b59c2b02d80ccc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Codec/Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Codec/Variant3ffbfdc8ca778070339598f33b9df96cdd6d4c506562c6804c05355dcf3cd7d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
