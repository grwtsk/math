# Verification target: Intercalate Namespaced Public Intercalate Nil

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed825f9caf8e03bfd25942e59cac725b305efb1f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant0e822f2455322c81d0ad243140b124bb26e34fd39e3af0d6f642c0dcd210a38d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed825f9caf8e03bfd25942e59cac725b305efb1f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant0e822f2455322c81d0ad243140b124bb26e34fd39e3af0d6f642c0dcd210a38d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant0e822f2455322c81d0ad243140b124bb26e34fd39e3af0d6f642c0dcd210a38d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intercalate_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/intercalate-nil.md) | 28 | `result-track:7b63004eb4260305ddee6d2f988608c9b2e317b1e1b890fbd482200274cc92b7` |
| 2 | `theorem` | [intercalate_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/intercalate-singleton.md) | 32 | `result-track:459ee453e6febc586726d9b67ba0ca0af50ede09b451524551bf4f4648c16c50` |
| 3 | `theorem` | [intercalateGo_append](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/intercalatego-append.md) | 35 | `result-track:1da543ef0b700618a452d1f162fec00fb36a0c085811e0874b2768bf366e4419` |
| 4 | `theorem` | [intercalate_cons_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/intercalate-cons-cons.md) | 40 | `result-track:c457b20769a1d9a4b0ec0d6dcd4bdcc907e909c0a792bfd75192f6397b20455e` |
| 5 | `theorem` | [intercalate_cons_append](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/intercalate-cons-append.md) | 45 | `result-track:50b20585aa8b5f8e11e16e9703e70e27aac3efaac630e7b1b9868bc7814bb85d` |
| 6 | `theorem` | [intercalate_cons_of_ne_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/intercalate-cons-of-ne-nil.md) | 49 | `result-track:d978bca84158c648ec89c0f8499a4090ef0d97cb8b76e50ade6978a55044f175` |
| 7 | `theorem` | [intercalate_append_of_ne_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/intercalate-append-of-ne-nil.md) | 54 | `result-track:74d3c4603e709bc6068ef7be86c20a5161f340dfbae7d502bc6406f8969f6253` |
| 8 | `theorem` | [toList_intercalate](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/tolist-intercalate.md) | 65 | `result-track:f04e57fab8e394ea1dfc7a318f8f1ee44451d1985d077d678f7f984aeed82224` |
| 9 | `theorem` | [join_eq_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/join-eq-foldl.md) | 71 | `result-track:692c7e3935af10113f7abc2178288c167bc848c90b471a42be703f80e465cf3f` |
| 10 | `theorem` | [join_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/join-nil.md) | 75 | `result-track:e6ee6273398e6da8c11f519128f85a8e5dab899076303886c7cfaff75c42590f` |
| 11 | `theorem` | [join_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/join-cons.md) | 79 | `result-track:8519058defe884fb605e64112206cb718e495b747c7b46233693f2cbe66775ce` |
| 12 | `theorem` | [toList_join](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/tolist-join.md) | 85 | `result-track:de4d50935069c57b4e5718cfa58c3f932638bb27a1b11b7c9b969fa9ef964c59` |
| 13 | `theorem` | [join_append](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/join-append.md) | 89 | `result-track:df4bab53200dda5611eff762e14ca8b1d2410556cd974355de546f432e33db68` |
| 14 | `theorem` | [Intercalate Namespaced Public Intercalate Nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-in.md) | 95 | `result-track:f67c8d7843fb85ac9f1b987eff748cef8a3d42d7449fe0e089bf7e1050a2c0fb` |
| 15 | `theorem` | [intercalateGo_append](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/intercalatego-append-source-edition-2.md) | 97 | `result-track:935f067dc114ff39eb313981ab33e1a6097d7827ef6986229e7b85bb293f49e6` |
| 16 | `theorem` | [intercalate_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/intercalate-eq.md) | 102 | `result-track:e9de5076e0feee3e034b58e5d1318c8224fac1220d518a79c0eb3b8c2fb0319a` |
| 17 | `theorem` | [join_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalateNamespacedPublicIntercalateNil.lean/declarations/join-eq.md) | 109 | `result-track:ce9eb1d5214bc03c2a2231318ecb0047934c05c87c6d0acd03a41b3a46b2f3f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a2f4c9d9a6f718d5e69fea2380d4df2d2b41ee8b59d9ac0093da4279b6eea27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant0e822f2455322c81d0ad243140b124bb26e34fd39e3af0d6f642c0dcd210a38d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant0e822f2455322c81d0ad243140b124bb26e34fd39e3af0d6f642c0dcd210a38d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
