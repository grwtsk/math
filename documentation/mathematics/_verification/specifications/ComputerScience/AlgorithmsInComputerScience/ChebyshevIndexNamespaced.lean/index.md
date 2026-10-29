# Verification target: Chebyshev Index Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "785f21cebfab610ce3c937ab1dd5a0f9717ed4d9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant0803c156005637f4537c823209d19d8c2b25f58c65171c0dac17e88c774023c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ChebyshevIndexNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ChebyshevIndexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `785f21cebfab610ce3c937ab1dd5a0f9717ed4d9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant0803c156005637f4537c823209d19d8c2b25f58c65171c0dac17e88c774023c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant0803c156005637f4537c823209d19d8c2b25f58c65171c0dac17e88c774023c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.BinomialChebyshevBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.Exposition.EulerPrimeDivergenceIndex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chebyshevThetaDefinitionAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ChebyshevIndexNamespaced.lean/declarations/chebyshevthetadefinitionanchor.md) | 22 | `declaration-track:17deeaf09143b88e5a266d0650d8a8eb5059041006a151c332abf80dd3c380ad` |
| 2 | `def` | [chebyshevPsiDefinitionAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ChebyshevIndexNamespaced.lean/declarations/chebyshevpsidefinitionanchor.md) | 32 | `declaration-track:8a13478d1beaec266fc7c6fd1144c139ed2cea8fe05d27f9e92a1f9c9d72df20` |
| 3 | `def` | [lcmPsiIdentityAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ChebyshevIndexNamespaced.lean/declarations/lcmpsiidentityanchor.md) | 42 | `declaration-track:93a7a66297876e866b2b9db95403074e4bcf1f9f091ce4900f4f779926974fb7` |
| 4 | `def` | [centralBinomialChebyshevAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ChebyshevIndexNamespaced.lean/declarations/centralbinomialchebyshevanchor.md) | 52 | `declaration-track:5f050de5817852e18535ef37ec71c298a88d696398aba47999898148b3cbb790` |
| 5 | `def` | [chebyshevPrimeCountingBoundsTargetAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ChebyshevIndexNamespaced.lean/declarations/chebyshevprimecountingboundstargetanchor.md) | 62 | `declaration-track:80057beb3b976ce714697bc24d815225938b96758a429ee2f15bd6d40a1cc8b6` |
| 6 | `def` | [pntStillTargetAfterChebyshevAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ChebyshevIndexNamespaced.lean/declarations/pntstilltargetafterchebyshevanchor.md) | 72 | `declaration-track:b9ee4091f19265ed995d0ba96e2fa9658516c91e1f9bfd319fcfd2c9ab0066b0` |
| 7 | `def` | [chebyshevAnchors](../../../../../ComputerScience/AlgorithmsInComputerScience/ChebyshevIndexNamespaced.lean/declarations/chebyshevanchors.md) | 82 | `declaration-track:77356afd699c9804864655caf9ae6f58a61267fc66761122da91f788821a4db6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=179adbd459c90318e4cfa4815c70a4deaff42f977762b0a0ce6a173728e72631 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant0803c156005637f4537c823209d19d8c2b25f58c65171c0dac17e88c774023c1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevIndex/Variant0803c156005637f4537c823209d19d8c2b25f58c65171c0dac17e88c774023c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
