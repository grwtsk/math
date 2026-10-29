# Verification target: Function Field Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9fac5fabef357ae41de8293703fed3ca2013414",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9fac5fabef357ae41de8293703fed3ca2013414`.

Source path: `GRWTSK/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean.json)

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
| 1 | `abbrev` | [FunctionField](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/functionfield.md) | 66 | `declaration-track:e025bd7e4447a2657b6723a7d04d91fa2d5ed736596273336539d8c9270de38f` |
| 2 | `theorem` | [functionField_iff](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/functionfield-iff.md) | 70 | `result-track:1bee5fc81acbaddf64a404fd09f73705e4503e9bcb3d49894f9afb5c546ddd96` |
| 3 | `theorem` | [algebraMap_injective](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/algebramap-injective.md) | 91 | `result-track:07716c827fe7df38c6e479d328695d498e70753cff5d02c93328ccb6811bf9ce` |
| 4 | `def` | [ringOfIntegers](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/ringofintegers.md) | 102 | `declaration-track:83524fc67ad233082889332557cd6cc96d3457db94f471318f76edb51339bad4` |
| 5 | `instance` | [(anonymous)](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 109 | `declaration-track:279129e47fd16516c8065b2d44d2f2518c30529429fc70cd3f5e47a6c57b027f` |
| 6 | `instance` | [(anonymous)](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 112 | `declaration-track:25700158e4fe9fba546c278c8a50a903baa9cf2c78a9be0a73447d78dcd5c9a5` |
| 7 | `theorem` | [algebraMap_injective](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/algebramap-injective-source-edition-2.md) | 117 | `result-track:a09e8dabc5141807ad14a3c10c6c18c09f2f850673614b0a90c37007cd4348d7` |
| 8 | `theorem` | [not_isField](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/not-isfield.md) | 127 | `result-track:a2e0bc1cc1b797449bc00bb37ac0f0a8006e45ef2e5cd42c9d30fd94bd08505a` |
| 9 | `instance` | [(anonymous)](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/instance.md) | 134 | `declaration-track:0bfad2e68ff3c6b291be7607dfd2d98181b96be779996e718f471e44d63c199e` |
| 10 | `instance` | [(anonymous)](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 137 | `declaration-track:b95962f34c83c6729c0a8590f3c3f0dfb3b72b7a3efd6aa210e6b8b0e3ed1609` |
| 11 | `instance` | [(anonymous)](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 140 | `declaration-track:4103fc9d7182fcf80d66091c203b2b21c6c698638014f9bfab560d3243303eef` |
| 12 | `instance` | [(anonymous)](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 143 | `declaration-track:f02a2a186692fe42dd653bcbb12c6ce694d27f13cd8989d60622200ecb2da904` |
| 13 | `instance` | [valuedFqtInfty](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/valuedfqtinfty.md) | 200 | `declaration-track:db178a10743cd5d1ed71fd799259d3d01dfe66c9afc385a85843796d7e7fa1a4` |
| 14 | `instance` | [FiniteDimensional.adjoin_X](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/finitedimensional-adjoin-x.md) | 215 | `declaration-track:e938bb93c6dcc5366213efb4c104898474d0c9860bad1d4c58ea951a7f565567` |
| 15 | `theorem` | [FiniteDimensional.adjoin_algebraMap_X](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/finitedimensional-adjoin-algebramap-x.md) | 222 | `result-track:e5ed8d00ac49f703bde389c35427599f214d54fa5e71d3c392626265b9554bdc` |
| 16 | `theorem` | [Algebra.IsAlgebraic.adjoin_algebraMap_X](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/algebra-isalgebraic-adjoin-algebramap-x.md) | 226 | `result-track:6a955b3837bab4290b8c6c470f4e51289f51e37148eff29e7e36dabbb44ab4d2` |
| 17 | `theorem` | [isAlgebraic_X_over_adjoin_transcendental](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/isalgebraic-x-over-adjoin-transcendental.md) | 232 | `result-track:6ded03749649953eb4b2ce6675ffc99afb32ac598366d5668fc2635197c80206` |
| 18 | `lemma` | [finiteDimensional_of_adjoin_transcendental](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/finitedimensional-of-adjoin-transcendental.md) | 237 | `result-track:99456ed3ef69db8239d7c47663b67dedfcbf9fcc64d88f02bb04d346e5c9700c` |
| 19 | `theorem` | [finiteDimensional_ratFunc_of_constantExtension](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/finitedimensional-ratfunc-of-constantextension.md) | 279 | `result-track:ae93b47a0e2958bf92145bacbf9bc70f6f86694fd709cf7b7d8e30e189aab11e` |
| 20 | `theorem` | [finiteDimensional_of_constantExtension](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/finitedimensional-of-constantextension.md) | 285 | `result-track:cae0bf26efb88264f76350d0d6918c3466cc0c8feb5dae089071581acb95436f` |
| 21 | `instance` | [(anonymous)](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 297 | `declaration-track:bf0306a2021cc5df003eac32acc86736bd33e88d15fee091788d0c4cf3894ff1` |
| 22 | `instance` | [(anonymous)](../../../../NumberTheory/FunctionFieldNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 302 | `declaration-track:995e9d44d4d866f50754eb8b5ca7183006c953cfc30a3110bbb1de5185b463f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72ce59b2ab7888f8d3533ab07d87d90d2ddafb27f179c65e1f2c160f39ae4ace -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean","GRWTSK/_verification/specifications/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
