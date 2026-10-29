# Verification target: Decomposition Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f659ff5c85c47f57920ef4f7488211a89dd2152",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Decomposition/Variantdb67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/DecompositionPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/DecompositionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f659ff5c85c47f57920ef4f7488211a89dd2152`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Decomposition/Variantdb67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Decomposition/Variantdb67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean.json)

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
| 1 | `theorem` | [decomposition_Q](../../../../AlgebraicTopology/DecompositionPublic.lean/declarations/decomposition-q.md) | 56 | `result-track:e49b98dc19319c4ee331f5405056ad93f3a48b75e7da7c120cc8533e94ee7d75` |
| 2 | `structure` | [MorphComponents](../../../../AlgebraicTopology/DecompositionPublic.lean/declarations/morphcomponents.md) | 92 | `declaration-track:23e66abe4232ba9b7a14190d09d921aa6561417df573569857931b301780a03f` |
| 3 | `def` | [φ](../../../../AlgebraicTopology/DecompositionPublic.lean/declarations/anonymous.md) | 101 | `declaration-track:52aa032a03139af47068140aca6868e49acf0c731f74d249e69dd002dfe344f8` |
| 4 | `def` | [id](../../../../AlgebraicTopology/DecompositionPublic.lean/declarations/id.md) | 110 | `declaration-track:92b23574008157752be413c7dda14a896799cb5776efb62eced697d878899580` |
| 5 | `theorem` | [id_φ](../../../../AlgebraicTopology/DecompositionPublic.lean/declarations/id-source-edition-2.md) | 115 | `result-track:9aa7c145778111639f2883e1ab331e55e0363a36d6db0ca70c05a87123c20427` |
| 6 | `def` | [postComp](../../../../AlgebraicTopology/DecompositionPublic.lean/declarations/postcomp-source-edition-2.md) | 125 | `declaration-track:b5952c4f521f6b753ce68a126062f42763396d617dbb17ebf9adb116a1445af8` |
| 7 | `theorem` | [postComp_φ](../../../../AlgebraicTopology/DecompositionPublic.lean/declarations/postcomp.md) | 130 | `result-track:0a2417fde59883df7aabab911612ba5f59bc10b9141f284d42d690476140df8b` |
| 8 | `def` | [preComp](../../../../AlgebraicTopology/DecompositionPublic.lean/declarations/precomp-source-edition-2.md) | 136 | `declaration-track:d8eb52a5f56abdf08855aa3fdbb65b09d2a9ea681bac6807222b57a32e76fe3a` |
| 9 | `theorem` | [preComp_φ](../../../../AlgebraicTopology/DecompositionPublic.lean/declarations/precomp.md) | 141 | `result-track:83a7c2a17cba86048799618fead803ae988542850c8f1c9611c1f2094a4e7588` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7644aab83c9a6c0ae19da85c0cd74cf88089d03fa538cf0c743f3501ffb504cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Decomposition/Variantdb67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Decomposition/Variantdb67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
