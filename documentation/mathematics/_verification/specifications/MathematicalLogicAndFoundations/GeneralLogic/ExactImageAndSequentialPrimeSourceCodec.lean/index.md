# Verification target: Exact Image And Sequential Prime Source Codec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c46cf3ffb60cb3f3679f9661d467c4b916b8e0e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/SequentialPrimeCanonicalSourceEncoding/Variantfbf782fb31be88b3/ExactImageAndSequentialPrimeSourceCodec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExactImageAndSequentialPrimeSourceCodec.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExactImageAndSequentialPrimeSourceCodec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c46cf3ffb60cb3f3679f9661d467c4b916b8e0e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/SequentialPrimeCanonicalSourceEncoding/Variantfbf782fb31be88b3/ExactImageAndSequentialPrimeSourceCodec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/SequentialPrimeCanonicalSourceEncoding/Variantfbf782fb31be88b3/ExactImageAndSequentialPrimeSourceCodec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.SequentialPrime` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Codec.Source` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bitwise` — import line 21; external provider; requires a separately pinned dependency.
- [Source State Placement And Recovery](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceStatePlacementAndRecovery.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [decodeSourceState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExactImageAndSequentialPrimeSourceCodec.lean/declarations/decodesourcestate.md) | 51 | `declaration-track:3dfcef6f4c5bdaf2a4d4e766d68378757f8af239fbcd1864a780036171ac5e55` |
| 2 | `def` | [sourceCodecOfInjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExactImageAndSequentialPrimeSourceCodec.lean/declarations/sourcecodecofinjective.md) | 61 | `declaration-track:6c069c0cd5886fedd7a1060fcaae80336a7abd9968017ecaff569b168dcb74e6` |
| 3 | `def` | [sourceCodec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExactImageAndSequentialPrimeSourceCodec.lean/declarations/sourcecodec.md) | 90 | `declaration-track:2a770751a4c80fac8f11834c80562746fabdef5080b2dd9e27b3c0266213f22d` |
| 4 | `theorem` | [sourceCodec_decode_encode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExactImageAndSequentialPrimeSourceCodec.lean/declarations/sourcecodec-decode-encode.md) | 95 | `result-track:b7a68c6c962a251f1b9ec373dd3fd648312f54fa6564ad34487a9de88b8c5264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba492bfc53a7d8e2e9fad652ea3504bee6fab849d0d93848813389ba80816720 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/SequentialPrimeCanonicalSourceEncoding/Variantfbf782fb31be88b3/ExactImageAndSequentialPrimeSourceCodec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/SequentialPrimeCanonicalSourceEncoding/Variantfbf782fb31be88b3/ExactImageAndSequentialPrimeSourceCodec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
