# Verification target: Cyclotomic Galois Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0621d0eb3e646b0912432e86baa0800bb0bd0d6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0621d0eb3e646b0912432e86baa0800bb0bd0d6`.

Source path: `GRWTSK/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean.json)

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
| 1 | `abbrev` | [galEquivZMod](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/galequivzmod.md) | 68 | `declaration-track:986cfc7f2142fa015f31b87d855349e9449a1867eb06e4c19f8da55b97ee30cb` |
| 2 | `theorem` | [galEquivZMod_apply_of_pow_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/galequivzmod-apply-of-pow-eq.md) | 71 | `result-track:2dfd74907e915dcb4970e84db9fd6401aad4b03054b6f00c5ac2d68e2607b9db` |
| 3 | `theorem` | [galEquivZMod_smul_of_pow_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/galequivzmod-smul-of-pow-eq.md) | 78 | `result-track:8b6a1bb32bd58783e93815b2312b233d61ab379025702a13c647335c857bcc54` |
| 4 | `theorem` | [galEquivZMod_restrictNormal_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/galequivzmod-restrictnormal-apply.md) | 96 | `result-track:aa3ecd489f00bc598a9f46d5f2ee57a2b30fdeb46ae430abffb818f1fa7b6b5a` |
| 5 | `theorem` | [mem_zpowers_galEquivZMod_of_mem_stabilizer](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/mem-zpowers-galequivzmod-of-mem-stabilizer.md) | 121 | `result-track:60713fa6b0fd634210223a577459233e527e100d2395bb66a5e93061438ba5a4` |
| 6 | `theorem` | [galEquivZMod_stabilizer](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/galequivzmod-stabilizer.md) | 143 | `result-track:f781290574f756d6fa34b66ebb50f101daa8304278deff239cca0e62953fd959` |
| 7 | `def` | [subgroupGalEquivSubgroupChar](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/subgroupgalequivsubgroupchar.md) | 170 | `declaration-track:35c2936b573668c8b5d9ef16257b8f214a046c46d9124d5279d1788286a4e7a1` |
| 8 | `theorem` | [mem_subgroupGalEquivSubgroupChar_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/mem-subgroupgalequivsubgroupchar-iff.md) | 175 | `result-track:20afcd70c968bb72f4c883b5a38f674fa688c514630b6643059aff793900ba84` |
| 9 | `theorem` | [mem_subgroupGalEquivSubgroupChar_symm_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/mem-subgroupgalequivsubgroupchar-symm-iff.md) | 181 | `result-track:dfc3b02e894bea0b8112ab270ed20f6cd82d2d45f6f148d70ad6e30466bee0be` |
| 10 | `theorem` | [card_subgroupGalEquivSubgroupChar](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/card-subgroupgalequivsubgroupchar.md) | 189 | `result-track:353e4de5fc9d50b1fce66bf759175bfce7d89285ab0bba2e9cf4e94e9f35dc86` |
| 11 | `def` | [intermediateFieldEquivSubgroupChar](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/intermediatefieldequivsubgroupchar.md) | 200 | `declaration-track:b963f8aafb4208dd6b0a2f5b96ab74fce31e1105e8bd52e9817abd95db79126d` |
| 12 | `theorem` | [card_intermediateFieldEquivSubgroupChar](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/card-intermediatefieldequivsubgroupchar.md) | 207 | `result-track:60edbed1b8e59453d430250cca1e936fbad7af08e439d0e6807cf1f8568c65a5` |
| 13 | `theorem` | [mem_intermediateFieldEquivSubgroupChar_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/mem-intermediatefieldequivsubgroupchar-iff.md) | 216 | `result-track:6876eb500fe6d81a552e3f5bb744dc015fa867d0ff2177d35a2b96877e4103e4` |
| 14 | `theorem` | [mem_intermediateFieldEquivSubgroupChar_iff_conductor_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CyclotomicGaloisNamespacedPublic.lean/declarations/mem-intermediatefieldequivsubgroupchar-iff-conductor-dvd.md) | 226 | `result-track:ee274a389a5102557732bc5240d3bb3a46f0f690852ab4db525bd364307e1b48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e85f0b8334aad9cef52de3b010d530960d77e5762e93ea4523df2dc75f502539 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean","GRWTSK/_verification/specifications/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
