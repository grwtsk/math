# Verification target: Finite Type Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0abee0426da3e6702b25c083deaa0fca4efd13e7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantb81295bd124a7b09a3a2e7ac3c0f86c9fcb4138ddb4f9513386ea9cbc88d0a11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0abee0426da3e6702b25c083deaa0fca4efd13e7`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantb81295bd124a7b09a3a2e7ac3c0f86c9fcb4138ddb4f9513386ea9cbc88d0a11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FiniteType/Variantb81295bd124a7b09a3a2e7ac3c0f86c9fcb4138ddb4f9513386ea9cbc88d0a11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyOfFiniteType](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/locallyoffinitetype.md) | 51 | `declaration-track:81611932cef96a26eadd3800aff8320aa396ef5483d05bc24895b8973c5c5aa1` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 58 | `declaration-track:64a5bfcfb7f50c209884022289f05c55a8a3a112bba40ffce72a06fed17a6a55` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 64 | `declaration-track:e9a28f9b79ea7723749c882110b785d76215006bff400993f7ff0cbb9f11d39e` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:29a380ddaf174cd4ff0d2ca78c17cfd771e09dc2586a5b01af52750e11296523` |
| 5 | `instance` | [locallyOfFiniteType_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/locallyoffinitetype-comp.md) | 72 | `declaration-track:48c7bc853ab4af6ce22f43c28bee75535672cf5db44b68bf433abac1aa9eb68d` |
| 6 | `theorem` | [locallyOfFiniteType_of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/locallyoffinitetype-of-comp.md) | 76 | `result-track:fd61b89fa176d65819824b6918e90c17973e45343a7bebf4b94a298fb8ebce9c` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance.md) | 80 | `declaration-track:13cfa1af1616b9cc2242a10570b9264acc0296d6c04d0e961aaa1a9cb5c9aad3` |
| 8 | `instance` | [locallyOfFiniteType_isStableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/locallyoffinitetype-isstableunderbasechange.md) | 84 | `declaration-track:dd96ebc5a260a5a350fa7646c61ca3aad7653f22bc47c499606024ff061ea91b` |
| 9 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:3e6010d21c3ee4a3f55b34b0bc241ddfaaa358fa8ad362079507cdf76492f5a2` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 94 | `declaration-track:5e4fd211e3c89b1da3a07085eaec411a24cf34c21ba49d79987774b992fc1ae9` |
| 11 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 99 | `declaration-track:82efc576c570c74c92c22e40ae64443d0d7e00f15a51c4bad5c0e11af796db77` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 102 | `declaration-track:b892baafeffd40a2868d93f81154c534c3eb4c657470dc96ebace01104cc5de6` |
| 13 | `lemma` | [LocallyOfFiniteType.stalkMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/locallyoffinitetype-stalkmap.md) | 106 | `result-track:c8c972e885bc794f9dae1ad5a73066a058bdd3b6ca993a219d53f07458decf9d` |
| 14 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 114 | `declaration-track:b8d65c826d5b7a76b758b61dc3124deef58488f670b1513fa4734fb48a1b4b5b` |
| 15 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 117 | `declaration-track:41cb4040a2ce82192c7f961a1cf27c5a49c934fe750eb1866a0880b79be4edad` |
| 16 | `lemma` | [LocallyOfFiniteType.jacobsonSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/locallyoffinitetype-jacobsonspace.md) | 121 | `result-track:8078cac04edea30368128f95102abc27984526e19256a4f31a0555dc5a82cec5` |
| 17 | `lemma` | [essentiallySmall_costructuredArrow_Spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FiniteTypeNamespacedPublic.lean/declarations/essentiallysmall-costructuredarrow-spec.md) | 155 | `result-track:67746453a5fd32f21d6d5d0322cb1383dc835432b4cf9b0dbad84909e242160e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37632e005d15a0e1b0aa0ff00f9195e967c8e12b0ac5a591371997d213919191 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/FiniteType/Variantb81295bd124a7b09a3a2e7ac3c0f86c9fcb4138ddb4f9513386ea9cbc88d0a11.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/FiniteType/Variantb81295bd124a7b09a3a2e7ac3c0f86c9fcb4138ddb4f9513386ea9cbc88d0a11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
