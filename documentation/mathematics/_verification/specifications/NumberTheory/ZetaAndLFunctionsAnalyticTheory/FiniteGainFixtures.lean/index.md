# Verification target: Finite Gain Fixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "244f9b2324098c55b7810cd58419815d8a6d613b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainFixtures/Variant37902041e156d2093adfe74b0c9c51fe36620cee67a9732c0a61027d585f72aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGainFixtures.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGainFixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `244f9b2324098c55b7810cd58419815d8a6d613b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainFixtures/Variant37902041e156d2093adfe74b0c9c51fe36620cee67a9732c0a61027d585f72aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainFixtures/Variant37902041e156d2093adfe74b0c9c51fe36620cee67a9732c0a61027d585f72aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.FiniteGainCertificates` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [next](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGainFixtures.lean/declarations/next.md) | 23 | `declaration-track:d6ac67982db7777b56d0d7dcbc41c1026e79555e3a4cf804fa23fc8eb1ed7134` |
| 2 | `def` | [gain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGainFixtures.lean/declarations/gain.md) | 26 | `declaration-track:9b95777e23e1d63457cc5da40f003796c1bee1d0eb2873463362f17f4e62ce71` |
| 3 | `def` | [storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGainFixtures.lean/declarations/storage.md) | 29 | `declaration-track:8aaab635875f44b50ccd5ecc811499c1b29873068d3b6711d3ff22856518ff25` |
| 4 | `theorem` | [eight_state_edge_equality](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGainFixtures.lean/declarations/eight-state-edge-equality.md) | 31 | `result-track:452339374cbe15ce36e5e824c6d8809eb64b69446afe270f4190bca46deb5f39` |
| 5 | `theorem` | [eight_state_orbit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGainFixtures.lean/declarations/eight-state-orbit.md) | 35 | `result-track:08fff25af4426b1cbb677ca6de22590b7779f5905c6d98c7b3be808c319f0274` |
| 6 | `theorem` | [adverse_edge_rejected](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGainFixtures.lean/declarations/adverse-edge-rejected.md) | 39 | `result-track:7cd295dc4fe29c638b0008dd34e5706134484d6f5562bd221f6bca80435025c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2fcc7b4a592619b81c6bd4c6e06f1089eccb1ca61521bf415fa1bf5851985783 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainFixtures/Variant37902041e156d2093adfe74b0c9c51fe36620cee67a9732c0a61027d585f72aa.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainFixtures/Variant37902041e156d2093adfe74b0c9c51fe36620cee67a9732c0a61027d585f72aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
