# Verification target: UInt Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16f5b5c17726ad4d50cc37af5b80f2f4bc76146e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UInt/Variantf430b7859ce2ba7f57d896724ab604aa3c4764c8ed55090da4e2dd3b4d0deb8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16f5b5c17726ad4d50cc37af5b80f2f4bc76146e`.

Source path: `GRWTSK/Algebra/UInt/Variantf430b7859ce2ba7f57d896724ab604aa3c4764c8ed55090da4e2dd3b4d0deb8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UInt/Variantf430b7859ce2ba7f57d896724ab604aa3c4764c8ed55090da4e2dd3b4d0deb8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toBitVec_nsmul](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/tobitvec-nsmul.md) | 49 | `result-track:d6dbfed0ece13f99ca5a507331fd43c9201234af2cbd19348c940a6bf4cea23e` |
| 2 | `theorem` | [toBitVec_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/tobitvec-natcast.md) | 58 | `result-track:550947b4c4f0420c93092a5ccfa3e462661c9212a6258f407b221021e0d80836` |
| 3 | `theorem` | [toBitVec_intCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/tobitvec-intcast.md) | 63 | `result-track:35bc9310edf48794cad75e7d97fff32e6f80e19e296c11635458d1f114a61d4f` |
| 4 | `theorem` | [toBitVec_zsmul](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/tobitvec-zsmul.md) | 73 | `result-track:d0508032e9cfe7af3ca530d5894c1d10d2aca7ba5dcdc495b86a9c6846f86ab2` |
| 5 | `lemma` | [toFin_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/tofin-injective.md) | 94 | `result-track:db594410dd4d6ba4372a559bb715ac3be3346e943d02172fcf17e4a4d3296533` |
| 6 | `lemma` | [toBitVec_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/tobitvec-injective.md) | 97 | `result-track:801cf3f6e773e97a025982702c86b4d8f10c4991c04600e6905a6bb0ed669dbd` |
| 7 | `instance` | [instCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/instcommmonoid.md) | 100 | `declaration-track:e3bb6b4e2a304b005d88d0a7fa236056856d70da9078e6f90c769df425ac4d29` |
| 8 | `instance` | [instNonUnitalCommRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/instnonunitalcommring.md) | 107 | `declaration-track:56445700be9d8cf46374c52913b4df3e36ee533efe74d2ed5640b621f9bb1627` |
| 9 | `instance` | [instCommRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/instcommring.md) | 120 | `declaration-track:ce540e697f0a4be26985c13846ea02a8865911acec6f2005274116f7aed11dc7` |
| 10 | `def` | [isASCIIUpper](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/isasciiupper.md) | 146 | `declaration-track:d9d8ca1e705828d0f4a56035466a4a6ad9ab10c282e7baaa12c6dc4258908408` |
| 11 | `def` | [isASCIILower](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/isasciilower.md) | 150 | `declaration-track:51256285970af6325d39a42c8023560c5794d20966f2a01dcf92a8b3e3871186` |
| 12 | `def` | [isASCIIAlpha](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/isasciialpha.md) | 154 | `declaration-track:22c6d987a63a381129af6d5590e5dfa8454341da7f77b1c6121745ea4e5bba95` |
| 13 | `def` | [isASCIIDigit](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/isasciidigit.md) | 158 | `declaration-track:4d4660342286cd33d451f2ebb4c709dda295a12420b829d9f118f9a0d4f35623` |
| 14 | `def` | [isASCIIAlphanum](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/isasciialphanum.md) | 162 | `declaration-track:d7857b4b3c6bec040ae680583ddb1b1e9608f63918c2723eb62696b7339d2412` |
| 15 | `def` | [toChar](../../../../../../ComputerScience/TheoryOfData/DataStructures/UIntNamespacedPublic.lean/declarations/tochar.md) | 166 | `declaration-track:52d725bcf869fa9d8aaafb123a933c2abbd4047d9d998b3402781e952cae8333` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06ee6c081ec3d2520db102bb960b0e2777e8d62530676a80ef85bc443bbd5f07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UInt/Variantf430b7859ce2ba7f57d896724ab604aa3c4764c8ed55090da4e2dd3b4d0deb8b.lean","GRWTSK/_verification/specifications/Algebra/UInt/Variantf430b7859ce2ba7f57d896724ab604aa3c4764c8ed55090da4e2dd3b4d0deb8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
