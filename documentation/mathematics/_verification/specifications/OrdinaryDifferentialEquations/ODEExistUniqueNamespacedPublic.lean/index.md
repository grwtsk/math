# Verification target: ODEExist Unique Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd17382c2a8add899969cc6c56a493c2ba42dbf5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/index.md) · [Full source](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd17382c2a8add899969cc6c56a493c2ba42dbf5`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean.json)

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
| 1 | `theorem` | [exists_eq_forall_mem_Icc_hasDerivWithinAt](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/exists-eq-forall-mem-icc-hasderivwithinat-source-edition-2.md) | 64 | `result-track:e1f8dd036a88a32ee4887691dc37a8d1e6a0aa629b71bf6e7483cd63bb31c29f` |
| 2 | `theorem` | [exists_eq_forall_mem_Icc_hasDerivWithinAt₀](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/exists-eq-forall-mem-icc-hasderivwithinat.md) | 78 | `result-track:4d5e1964e631b752a04822c8965112289cfecfeb853ed750c2994207fc300c08` |
| 3 | `theorem` | [exists_forall_mem_closedBall_eq_hasDerivWithinAt_lipschitzOnWith](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/exists-forall-mem-closedball-eq-hasderivwithinat-lipschitzonwith.md) | 86 | `result-track:9c1e4839a546a0fd088bea5466178712b91c26eeb590fd51882da32d60039f1c` |
| 4 | `theorem` | [exists_forall_mem_closedBall_eq_hasDerivWithinAt_continuousOn](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/exists-forall-mem-closedball-eq-hasderivwithinat-continuouson.md) | 121 | `result-track:95325fd077b2640e9a954a0a308660aea0b67ad164a7b2d8c4a2202d1dc5811d` |
| 5 | `theorem` | [exists_forall_mem_closedBall_eq_forall_mem_Icc_hasDerivWithinAt](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/exists-forall-mem-closedball-eq-forall-mem-icc-hasderivwithinat.md) | 133 | `result-track:53cce2d2ddb8f6b2f587baffa951c4d33d42cee95eb86d095f3277977edba9ea` |
| 6 | `theorem` | [exists_forall_mem_closedBall_exists_eq_forall_mem_Ioo_hasDerivAt](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/exists-forall-mem-closedball-exists-eq-forall-mem-ioo-hasderivat.md) | 152 | `result-track:869adb62d96a39ac429ef0aa162da4365d27789c14c83a5a51691f0b230dfc53` |
| 7 | `theorem` | [exists_forall_mem_closedBall_exists_eq_forall_mem_Ioo_hasDerivAt₀](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/exists-forall-mem-closedball-exists-eq-forall-mem-ioo-hasderivat-source-edition-2.md) | 164 | `result-track:ce19d14584b7d44ce6985524662502d22614aaeac82e8fb03c5ed8c25bb0f0d1` |
| 8 | `theorem` | [exists_eventually_eq_hasDerivAt](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/exists-eventually-eq-hasderivat.md) | 175 | `result-track:99d7a0eeff309164b965b7c47c44b03d1cb7d795b9bf84fd1af3d369de71075c` |
| 9 | `theorem` | [ODE_solution_unique_of_mem_Icc_right](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/ode-solution-unique-of-mem-icc-right.md) | 201 | `result-track:4c46b43bd8d59acd1ce0aa7fd455dee1da2e039294ce736fa8ac014e4724c829` |
| 10 | `theorem` | [ODE_solution_unique_of_mem_Icc_left](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/ode-solution-unique-of-mem-icc-left.md) | 216 | `result-track:f5f43076edcdb7a0557e7b54a57b4191e2576a51205f2823ad7f881ffd8f71d3` |
| 11 | `theorem` | [ODE_solution_unique_of_mem_Icc](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/ode-solution-unique-of-mem-icc.md) | 259 | `result-track:cc6f076d4fc3862a9bab6df80f40b71b2a706a932d61df9d133c0282aa0767c7` |
| 12 | `theorem` | [ODE_solution_unique_of_mem_Ioo](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/ode-solution-unique-of-mem-ioo.md) | 286 | `result-track:f2408ba1c442eb627223ffb866a7b1eb8de19faca4d6d7a8e53ca1a0d3505b32` |
| 13 | `theorem` | [ODE_solution_unique_of_eventually](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/ode-solution-unique-of-eventually.md) | 319 | `result-track:cb3924622d5f8164e19d7f211f6d02c09808b174d6b062dd9cd7d69441392084` |
| 14 | `theorem` | [ODE_solution_unique](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/ode-solution-unique.md) | 334 | `result-track:3c2b52307af2d716091ac5ebfbbbc629b5a204b4f909486dd9ff6af59761cfde` |
| 15 | `theorem` | [ODE_solution_unique_univ](../../../../OrdinaryDifferentialEquations/ODEExistUniqueNamespacedPublic.lean/declarations/ode-solution-unique-univ.md) | 348 | `result-track:3ae49c0c169e05eabe226e1d451119b2278f737751fa0fb4475c873619109d56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24800d279d003856d44f924b61b473aaf55a77c5f3cbcd0d294ee28eb152e555 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8a6b96b348fee2f69c7a858f2ecbc984ce119fee3a696c054bb518355321364d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
