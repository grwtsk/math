# Verification target: Resolver Namespaced Semantic Token Resolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b06e678cf1ae4eb8a428679a498d7c75bd06a6e5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variante4f2500c13b9dc8c629e4b3a6ee771603096ab912f7c51efe8d9b131e0b9a28c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b06e678cf1ae4eb8a428679a498d7c75bd06a6e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variante4f2500c13b9dc8c629e4b3a6ee771603096ab912f7c51efe8d9b131e0b9a28c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variante4f2500c13b9dc8c629e4b3a6ee771603096ab912f7c51efe8d9b131e0b9a28c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Authority` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SemanticTokenResolution](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/semantictokenresolution.md) | 21 | `declaration-track:49dc26f13968847ed75daf058e7663370b4a47ffc12c7cc0104fcdd28ccac794` |
| 2 | `def` | [SemanticTokenResolution.structuralCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/semantictokenresolution-structuralcertificate.md) | 47 | `declaration-track:9d30021ff1a9100272bd7f07495646ac8b8f9033902ee1da07ad7c67922b3ea0` |
| 3 | `def` | [SemanticTokenResolution.semanticCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/semantictokenresolution-semanticcertificate.md) | 56 | `declaration-track:c4c225bdcdbd95e7481441a07d209a9e1dcab1cedc5d5e86f3e6261d5d0b5f68` |
| 4 | `def` | [resolveMetaOverlapSemantics](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/resolvemetaoverlapsemantics.md) | 63 | `declaration-track:48c1890d8cf0b5f698e67300fe537e8688e40fb526fa4c3da8eee9dfbcbef1b2` |
| 5 | `theorem` | [resolve_total](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/resolve-total.md) | 102 | `result-track:51b1f0f00c878e8222b62af12c38ddd33db91508dc23fe12dde0068232ae7a75` |
| 6 | `theorem` | [structurallySolved_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/structurallysolved-sound.md) | 108 | `result-track:9abcd448daf3443eec3b63320fb534a4182e51621e70172bff4218eab7dd376f` |
| 7 | `theorem` | [solved_semantic_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/solved-semantic-sound.md) | 120 | `result-track:d9696d3e8f0fa7fecc5b0bafec72dcc02dea0d068533642de80011a545afc82a` |
| 8 | `theorem` | [no_interpretation_without_external_assertion](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/no-interpretation-without-external-assertion.md) | 131 | `result-track:7a805b7e91ef32b040d1f82852a11d64379dedd9afe9501d3e27122fa2aeb7e2` |
| 9 | `theorem` | [no_interpretation_without_accepted_external_assertion](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/no-interpretation-without-accepted-external-assertion.md) | 144 | `result-track:bd1cf1f79aeaee80d9b8d80c793b4958237bfa8e38f455b1beb60a86e8a2638f` |
| 10 | `theorem` | [semantic_completion_requires_explicit_admission_premises](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/semantic-completion-requires-explicit-admission-premises.md) | 152 | `result-track:764a05e652e8e4b449f318cd3ea20c4cb7ec35d0466a73d83a58763850b03c5c` |
| 11 | `theorem` | [semantic_completion_exhausts_generated_obligations](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/semantic-completion-exhausts-generated-obligations.md) | 205 | `result-track:3ed4974477580605087121109cbc9cf54f8c0830053a562494f407e02a14eff9` |
| 12 | `theorem` | [semantic_completion_exhausts_cut_unresolved](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/semantic-completion-exhausts-cut-unresolved.md) | 212 | `result-track:7d67fa7e3a72960799a3395a65980e10b648ccb9c034efb8d2e43e64b5da506a` |
| 13 | `theorem` | [nonempty_unresolved_cannot_resolve_solved](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedSemanticTokenResolution.lean/declarations/nonempty-unresolved-cannot-resolve-solved.md) | 219 | `result-track:372b208ee1a8dc96675dab2e4e3f63827e1528e45cdcb17394ea6a32dd522f2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b961433f0111b299050f1937b29a11e69c79d001b98474dcb122d56743b83170 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variante4f2500c13b9dc8c629e4b3a6ee771603096ab912f7c51efe8d9b131e0b9a28c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variante4f2500c13b9dc8c629e4b3a6ee771603096ab912f7c51efe8d9b131e0b9a28c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
