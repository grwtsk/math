# Verification target: Assembly Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e560f31e5c30ffbb345b0f13b82409af156896d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant019859900bf98862b4310df69352e76696ced124dcb3461200c8f1941a759217.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e560f31e5c30ffbb345b0f13b82409af156896d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant019859900bf98862b4310df69352e76696ced124dcb3461200c8f1941a759217.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant019859900bf98862b4310df69352e76696ced124dcb3461200c8f1941a759217.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.PoleCertificate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positive_candidate_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/declarations/positive-candidate-eq.md) | 50 | `result-track:3a3dedec55c715ace56a53786c8d9209bc4a82445111ab49fa8da18adf7f76eb` |
| 2 | `theorem` | [continuedTransform_meromorphic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/declarations/continuedtransform-meromorphic.md) | 79 | `result-track:4d493575e45e1943b9c1c49eea3e5302aa2af592d050b2a23142512764eb75ee` |
| 3 | `theorem` | [shifted_pole_nonreal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/declarations/shifted-pole-nonreal.md) | 94 | `result-track:ed47e848d899106614c0be61c470ca7461a8d7ac75848ad7f926197962562465` |
| 4 | `theorem` | [shifted_pole_ne_real](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/declarations/shifted-pole-ne-real.md) | 102 | `result-track:8368b50e72aa1bf597a13330743c614a2a0d7d4885cf5486ce31dd64dc7cb0cb` |
| 5 | `theorem` | [positive_real_mem_domain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/declarations/positive-real-mem-domain.md) | 111 | `result-track:be4918f6d161fc07d0ee405b3fbc3495846a653b6d9568ff7025bd253a04df5e` |
| 6 | `theorem` | [continuedTransform_analytic_positive_real](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/declarations/continuedtransform-analytic-positive-real.md) | 126 | `result-track:48f6f1ad5d5ea28cc466c8f86250588beb222a7d1c5a7c64a69b1da75ad829e4` |
| 7 | `def` | [MeromorphicLaplacePoleObligation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/declarations/meromorphiclaplacepoleobligation.md) | 137 | `declaration-track:f48929f4d994ad1c0e427a9ec9b72deaab5df9339ef432d970a8d2587dca8ea6` |
| 8 | `theorem` | [meromorphic_laplace_pole](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyNamespacedEdition2.lean/declarations/meromorphic-laplace-pole.md) | 164 | `result-track:525a28ffdc45fb10b8f6a53ea418390e353a2f708c74a28e58e5bf90a87a5b62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2666fa4060283a69b601d8da0344ccb8dc1a31b83fbf2e51c899af6c90cf5126 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant019859900bf98862b4310df69352e76696ced124dcb3461200c8f1941a759217.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant019859900bf98862b4310df69352e76696ced124dcb3461200c8f1941a759217.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
