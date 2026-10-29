# Verification target: Raw Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad2a3be40616b6094104bb7c34ebe4435c7bc04b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Raw/Variant1c8d57ca7060024fe531ff341c8f11c05684ddb2ae6b6f718798b2fa197804c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad2a3be40616b6094104bb7c34ebe4435c7bc04b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Raw/Variant1c8d57ca7060024fe531ff341c8f11c05684ddb2ae6b6f718798b2fa197804c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Raw/Variant1c8d57ca7060024fe531ff341c8f11c05684ddb2ae6b6f718798b2fa197804c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Completion` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Raw](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/raw.md) | 27 | `declaration-track:55ceec7b47153216a58935a6359cd093e087f6c6ad43f0c2bad0ec5454e2b293` |
| 2 | `def` | [toFinsupp](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/tofinsupp.md) | 34 | `declaration-track:39aa82da73aace516a865fc70a042f57f69045c1c896b4359d0a9a63d5adb230` |
| 3 | `def` | [inner](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/inner.md) | 38 | `declaration-track:6ed40f75f5d59726b73c42885fd8914bb71442e3ec2883d274bd4aba1292ef61` |
| 4 | `def` | [core](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/core.md) | 44 | `declaration-track:d3a3df10e81c0cfdbf3c068f3cea2bcbb97c96e701c4e09ca857f0c9c5cae6cd` |
| 5 | `def` | [seminorm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/seminorm.md) | 69 | `declaration-track:6853787df9591a001ab4bf272f63a3cc05033f284d99bf185b7e1f60005a2796` |
| 6 | `theorem` | [conjugate_linear_left](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/conjugate-linear-left.md) | 73 | `result-track:59cfcf5be7e1100dd76c08e9f5e11f833a334a705c505b77abb3c438638ef4c5` |
| 7 | `theorem` | [inner_conj_symm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/inner-conj-symm.md) | 80 | `result-track:5a6f92437f15c6f346b7bad74c2fe24b47df2dfa9307b7edb0ca6ca75bbb90fd` |
| 8 | `theorem` | [linear_right](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/linear-right.md) | 85 | `result-track:41ad53a1ecb6abcf20db2cf8fa936de9bab70ed2934820f647d8214b9281a411` |
| 9 | `theorem` | [add_left](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/add-left.md) | 93 | `result-track:8b4ab0c5b619a49cd1367d125c49364b01af69776b88891cf8f4b3aa56578097` |
| 10 | `theorem` | [add_right](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/add-right.md) | 99 | `result-track:895dbe4ccf8754c697f1acb27d8c8c057bed4393352b64e64895444f7c6aa536` |
| 11 | `theorem` | [inner_self_nonneg](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/inner-self-nonneg.md) | 106 | `result-track:21b329582aeaf9ae7f9351122eae2e13b3f87f444036afbebe118f87c3088970` |
| 12 | `theorem` | [kernel_cauchy_schwarz](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/kernel-cauchy-schwarz.md) | 111 | `result-track:7a8ed32ced15642e5aca34162fd4f07fd216483e84eade1c6e636c6301bbcbbb` |
| 13 | `def` | [basisVector](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/basisvector.md) | 123 | `declaration-track:97f7b423a9e25c6688e9189014c45844ef0d982325af2b1704612701cddfc486` |
| 14 | `theorem` | [inner_basisVector_basisVector](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawEdition1.lean/declarations/inner-basisvector-basisvector.md) | 127 | `result-track:859663662ad018e2ebea3fecd9793031eba72f21b0297e8a2ccea8dfe1630755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0556ed1555ed7b35000b01667ceca122e304fda37b7ac39fed588f241edcffae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Raw/Variant1c8d57ca7060024fe531ff341c8f11c05684ddb2ae6b6f718798b2fa197804c1.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Raw/Variant1c8d57ca7060024fe531ff341c8f11c05684ddb2ae6b6f718798b2fa197804c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
