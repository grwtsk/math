# Verification target: Presentation Free Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c872febad2b0da8cf46671fd40ddd361a895c76",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationFreeNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationFreeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c872febad2b0da8cf46671fd40ddd361a895c76`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071.lean.json)

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
| 1 | `def` | [solutionFinsupp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationFreeNamespacedPublic.lean/declarations/solutionfinsupp.md) | 47 | `declaration-track:f1c5a002a9dee70e3a45a911027c0c6176a837bd79d79afb2f5568cd7af58a7a` |
| 2 | `def` | [solutionFinsupp.isPresentationCore](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationFreeNamespacedPublic.lean/declarations/solutionfinsupp-ispresentationcore.md) | 54 | `declaration-track:d69c94df0cfd5875c6babebd6d163eaadaa7da1d48733e5457f4dcc39f1136a9` |
| 3 | `lemma` | [solutionFinsupp_isPresentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationFreeNamespacedPublic.lean/declarations/solutionfinsupp-ispresentation.md) | 60 | `result-track:0a8e26ceffbdea94dbf5624f3c16f4ed29c1bb33aa7a39ed6e6ccd0bf8292743` |
| 4 | `lemma` | [Solution.IsPresentation.free](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationFreeNamespacedPublic.lean/declarations/solution-ispresentation-free.md) | 66 | `result-track:fd7cfb9cb05eaf6bbea42182514a000e20f95c3b0a339f09859ed983d0a6ae3c` |
| 5 | `def` | [presentationFinsupp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationFreeNamespacedPublic.lean/declarations/presentationfinsupp.md) | 79 | `declaration-track:a70d31ac79bd47b994ea52e3e23429c6604fce8eda8839232d6bcf02b8160a5c` |
| 6 | `lemma` | [free_iff_exists_presentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationFreeNamespacedPublic.lean/declarations/free-iff-exists-presentation.md) | 88 | `result-track:24d14b263dfacfb7735d54e10dd47c19fc496a118a2b1ba8c1e38148d729c683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3905ba5f12e15291a2dd0af4d8d5535d2cf07a6780ed446554a61251e1bef411 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Free/Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Free/Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
