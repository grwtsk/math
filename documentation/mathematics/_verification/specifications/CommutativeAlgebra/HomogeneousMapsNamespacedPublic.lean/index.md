# Verification target: Homogeneous Maps Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a42fb61dd867fe411e0390f399693b19fe7fb34c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Maps/Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a42fb61dd867fe411e0390f399693b19fe7fb34c`.

Source path: `GRWTSK/Algebra/Maps/Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Maps/Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/map.md) | 42 | `declaration-track:620621013578366f08eb49f4bd4ea9bef600f8692167c9c8814ad62d31acfcf4` |
| 2 | `def` | [comap](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/comap.md) | 60 | `declaration-track:35e007037ad98d24196718e8fc2b18ec9690c5dcd85e2bf3fe03f74ef51dfed9` |
| 3 | `lemma` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/map-le-iff-le-comap.md) | 69 | `result-track:47c90f50e6aacef33ecb4c3aecd7b775d4e4e13d46df87bda13604f57e042f30` |
| 4 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/gc-map-comap.md) | 73 | `result-track:2997498b2963356c4639009bb437c1e18d131c79236a62d60adcf93c3e023804` |
| 5 | `lemma` | [map_mono](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/map-mono.md) | 76 | `result-track:d20b0cb62c417df9dd2d2908c8251e3052d817715ade5f7a1c53f71e3b78563c` |
| 6 | `lemma` | [comap_mono](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/comap-mono.md) | 78 | `result-track:05938162601958b3cede623ede5d25601dd07a332830715eee503286c50238dd` |
| 7 | `lemma` | [toIdeal_comap](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/toideal-comap.md) | 80 | `result-track:bd380b7d1c50caab9acef7cc897ca83bd8a3ce948d7e787d66f1354aa5c9b3bf` |
| 8 | `lemma` | [coe_comap](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/coe-comap.md) | 82 | `result-track:a14f6f18cf755d5bf3a41aa84c29f3a0dea39234a2e3560dce01ac6d1f0b3fde` |
| 9 | `lemma` | [toIdeal_map](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/toideal-map.md) | 84 | `result-track:0f67732c64d189554d230eca01bc577bb015be5aabbdc9a12b0ef2d93086c218` |
| 10 | `instance` | [isPrime_comap](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/isprime-comap.md) | 86 | `declaration-track:d3e11619b0e1b1cdcbdeec5034d4051634672756b8ca871bea52f6a002c80534` |
| 11 | `lemma` | [map_id](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/map-id.md) | 89 | `result-track:9979fae30b14dfa716525dafb8143cc2d6de2eddcd283ca2bbf538269ec3c7e1` |
| 12 | `lemma` | [map_map](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/map-map.md) | 91 | `result-track:e010347d546b18fb777628093516498d08ce27393e633f2fcd12e89bdf252058` |
| 13 | `lemma` | [map_comp](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/map-comp.md) | 93 | `result-track:35736661ec2e1bd71598b1e35db2ce87e4a3437c9fc6b03984b2ef1334f861b5` |
| 14 | `lemma` | [comap_id](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/comap-id.md) | 95 | `result-track:1b3d554299bb4991d7ab0edb646d5b84461f4a50db8a2bd622771f0babf053f1` |
| 15 | `lemma` | [comap_comap](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/comap-comap.md) | 97 | `result-track:10ecbad8c9a02729a06374557c395d83e32532e5f0004bc75a79d553f91f612d` |
| 16 | `theorem` | [irrelevant_le_map_comp](../../../../CommutativeAlgebra/HomogeneousMapsNamespacedPublic.lean/declarations/irrelevant-le-map-comp.md) | 112 | `result-track:ea4556a8983648ecfdebaf11db4ae3091bd6925f6da19ceec63e0a4a8e508db5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9fa03f74aca7a12a0dd17d088906e622b9e79117fc0b7588c261fe4caae047c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Maps/Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863.lean","GRWTSK/_verification/specifications/Algebra/Maps/Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
