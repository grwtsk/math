# Verification target: Lookmap Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed8f57989765354626a9a9cbc1305e179ec8a0d0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variant862d394e57dcdd43ad36d15e28426ca5951805f2688a5bf22ac1d36aeb65984b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed8f57989765354626a9a9cbc1305e179ec8a0d0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variant862d394e57dcdd43ad36d15e28426ca5951805f2688a5bf22ac1d36aeb65984b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variant862d394e57dcdd43ad36d15e28426ca5951805f2688a5bf22ac1d36aeb65984b.lean.json)

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
| 1 | `theorem` | [lookmap.go_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-go-append.md) | 29 | `result-track:d072ccc2bd4b45e7e65192c5f2e62e557434b212a49f2347f11f51a150e87ec7` |
| 2 | `theorem` | [lookmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-nil.md) | 42 | `result-track:86ed0f0dc2ce41c7391f6392f3ad218aed1a1b985e072aff4110b0ec9d6bdfaf` |
| 3 | `theorem` | [lookmap_cons_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-cons-none.md) | 46 | `result-track:9342b47d641ec5320a0b856b7a0d8d97ab7c042ef31a52a44c1cbf00e2ffd4e1` |
| 4 | `theorem` | [lookmap_cons_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-cons-some.md) | 52 | `result-track:2d9727ee89737af0358c0bbfa48bbc82119c90982f4a38f43d64cf7f90ddfcd8` |
| 5 | `theorem` | [lookmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-cons.md) | 58 | `result-track:7f96fdb583747bf1f7f99c5b452bbb7d32428f5a598a4eabb8a72fe283402062` |
| 6 | `theorem` | [lookmap_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-some.md) | 64 | `result-track:e5bd04445fb20d72a8e64c3a2e6ff46c75a6fddd2dfebf80af598a928045ca8b` |
| 7 | `theorem` | [lookmap_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-none.md) | 68 | `result-track:163807b36b1a6309905b3145ec0fd61391d6e97e021a7035b833e8d6e4781359` |
| 8 | `theorem` | [lookmap_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-congr.md) | 72 | `result-track:85476b241685da5284ebed24d3f5c23e81a8bf2efb67dac04f76d206a07549ad` |
| 9 | `theorem` | [lookmap_of_forall_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-of-forall-not.md) | 81 | `result-track:712e2cbedbec1e729470182c192008b4951b1bd89ec18297ca225e0752f1eb5e` |
| 10 | `theorem` | [lookmap_map_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-map-eq.md) | 84 | `result-track:888b5b043076119944b2e42a0c4b8fff5b76d53b849de2707721018469ad94d5` |
| 11 | `theorem` | [lookmap_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/lookmap-id.md) | 92 | `result-track:2b1d044dad1bc58501f12bf9b3a680e8686d1399ed1c771f60edc382c49b9ff3` |
| 12 | `theorem` | [length_lookmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/length-lookmap.md) | 96 | `result-track:f5c91f4ec5a5932b655b86377ec26eaa194261c1e4b13decf3f8ecc181a828d7` |
| 13 | `theorem` | [perm_lookmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespacedPublic.lean/declarations/perm-lookmap.md) | 100 | `result-track:d0409026cd302d54dc3d7134eb2cdeea76752ea7fdbd111907aa56ae4d227057` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3053b1cf19f34cf19e9d29a91ad21add9ae4265dd1525069dd7eae1bbe3c5b20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variant862d394e57dcdd43ad36d15e28426ca5951805f2688a5bf22ac1d36aeb65984b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variant862d394e57dcdd43ad36d15e28426ca5951805f2688a5bf22ac1d36aeb65984b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
