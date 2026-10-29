# Verification target: ODEExist Unique Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4303a59264d27308dbe232496454d61b9bab767b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/index.md) · [Full source](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4303a59264d27308dbe232496454d61b9bab767b`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean.json)

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
| 1 | `theorem` | [exists_eq_forall_mem_Icc_hasDerivWithinAt](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/exists-eq-forall-mem-icc-hasderivwithinat-source-edition-2.md) | 56 | `result-track:3d936323daf71f015201e88318b2e4ca272df7d0dfadcb72261736f44aabb1e1` |
| 2 | `theorem` | [exists_eq_forall_mem_Icc_hasDerivWithinAt₀](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/exists-eq-forall-mem-icc-hasderivwithinat.md) | 70 | `result-track:2fc521c8ecfef3038a6798010edc43b88b99b59ee03476f6d5da8414e7662bf1` |
| 3 | `theorem` | [exists_forall_mem_closedBall_eq_hasDerivWithinAt_lipschitzOnWith](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/exists-forall-mem-closedball-eq-hasderivwithinat-lipschitzonwith.md) | 78 | `result-track:72dc157720a8d17b54f70fd1049142ebb7e7dcbb1e9e32fac8d51865cb75b05d` |
| 4 | `theorem` | [exists_forall_mem_closedBall_eq_hasDerivWithinAt_continuousOn](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/exists-forall-mem-closedball-eq-hasderivwithinat-continuouson.md) | 113 | `result-track:a672217f120aa620ef8f7239a2c7b9497cbf2510d4a84d296e295acdd5cea458` |
| 5 | `theorem` | [exists_forall_mem_closedBall_eq_forall_mem_Icc_hasDerivWithinAt](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/exists-forall-mem-closedball-eq-forall-mem-icc-hasderivwithinat.md) | 125 | `result-track:c6f479bc468b783a0ea9989442d336205fc640859c1ac7baec3ea10278fe7496` |
| 6 | `theorem` | [exists_forall_mem_closedBall_exists_eq_forall_mem_Ioo_hasDerivAt](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/exists-forall-mem-closedball-exists-eq-forall-mem-ioo-hasderivat.md) | 144 | `result-track:46103a8b5ac5961407cfb130178a87846b8390ca90c43b303f3153ece633b0ef` |
| 7 | `theorem` | [exists_forall_mem_closedBall_exists_eq_forall_mem_Ioo_hasDerivAt₀](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/exists-forall-mem-closedball-exists-eq-forall-mem-ioo-hasderivat-source-edition-2.md) | 156 | `result-track:54aed97e4b59bf94a927a56d2df586e231a483ad5bd0ba6b27b00324b93f9a49` |
| 8 | `theorem` | [exists_eventually_eq_hasDerivAt](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/exists-eventually-eq-hasderivat.md) | 167 | `result-track:12a3dd9aaf52a792e9f5dc7fe62fd79b315c2aeb55ca8713a319e46fb4c121b6` |
| 9 | `theorem` | [ODE_solution_unique_of_mem_Icc_right](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/ode-solution-unique-of-mem-icc-right.md) | 193 | `result-track:ea6c8cbd8bdf6ec36dc61c7a800b38aa9d4dfcb38b360af6418a67d46decf08a` |
| 10 | `theorem` | [ODE_solution_unique_of_mem_Icc_left](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/ode-solution-unique-of-mem-icc-left.md) | 208 | `result-track:cebc13f2e63124f3681d734048ad340e656672f35858a80cf5dd779e844dd928` |
| 11 | `theorem` | [ODE_solution_unique_of_mem_Icc](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/ode-solution-unique-of-mem-icc.md) | 251 | `result-track:5561f049d67c1f3b108ec95336f3f8c20ea426525e7a5574abd82af074ec629a` |
| 12 | `theorem` | [ODE_solution_unique_of_mem_Ioo](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/ode-solution-unique-of-mem-ioo.md) | 278 | `result-track:4ef2b4230e074a0e7200c3051614360b88a1ceb8ac5c5b08b54bf311f05187ec` |
| 13 | `theorem` | [ODE_solution_unique_of_eventually](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/ode-solution-unique-of-eventually.md) | 311 | `result-track:02588142f923276b384824d695aae524935f4d664a9848ebe98241a622bd28d5` |
| 14 | `theorem` | [ODE_solution_unique](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/ode-solution-unique.md) | 326 | `result-track:c5da3f5efd44c4693b067e2b641d58a28be29699fbae00c8c567c4c9de89329a` |
| 15 | `theorem` | [ODE_solution_unique_univ](../../../../OrdinaryDifferentialEquations/ODEExistUniquePublic.lean/declarations/ode-solution-unique-univ.md) | 340 | `result-track:ba49584a6a4367a1831a11582e9d56749fad13c1ac2f67daf88c6b3837d65dd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc9bceb7dc54c72de644d1bb1716236137b2ceb0a8daf0c22179db514d42823e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
