# Verification target: Perm Maximal Subgroups Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ece8975cbd5117fa90122dcc7a3d6c9f944d4354",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ece8975cbd5117fa90122dcc7a3d6c9f944d4354`.

Source path: `GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean.json)

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
| 1 | `theorem` | [isPreprimitive_stabilizer_of_surjective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/ispreprimitive-stabilizer-of-surjective.md) | 60 | `result-track:c1c7c876f92c1050ac3aaa79d634225304b2af39bbec3e32236d787dcdfa480c` |
| 2 | `theorem` | [isPreprimitive_stabilizer_subgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/ispreprimitive-stabilizer-subgroup.md) | 72 | `result-track:6ac7470f7fb48ba71188c3f06821d2e71c07379484609c84b0eb5fc678a5011e` |
| 3 | `theorem` | [IsPretransitive.of_partition](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/ispretransitive-of-partition.md) | 82 | `result-track:d4710c8edccb6aedf2c5c0d5a8da7e92cf9a6f882bf148dd56a402421f9dc368` |
| 4 | `theorem` | [ofSubtype_mem_stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/ofsubtype-mem-stabilizer.md) | 109 | `result-track:ebcdf602435448be70f6a9d9d81ed972bac7c5e79df4a677d2622f6eabc23408` |
| 5 | `theorem` | [swap_mem_stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/swap-mem-stabilizer.md) | 120 | `result-track:1216925844281ec500e9b2a37858ac269efb5714e28f0fca61896e990d2317fd` |
| 6 | `theorem` | [exists_mem_stabilizer_smul_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/exists-mem-stabilizer-smul-eq.md) | 133 | `result-track:29f68817a86a8b35f5da17ecdb554c8736257d9e272c4f2caacf35ecdf905ceb` |
| 7 | `theorem` | [stabilizer.surjective_toPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/stabilizer-surjective-toperm.md) | 139 | `result-track:5929a9e7045f2f52243848a2ae7c185b1f54218e30649bb1751d997dd7d8e29e` |
| 8 | `instance` | [stabilizer_isPreprimitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/stabilizer-ispreprimitive.md) | 147 | `declaration-track:7abd86353a0e2af3f1f6f0eed7edc0e04691f80cf62419c98e4c20373aa84760` |
| 9 | `theorem` | [stabilizer_ne_top_of_nonempty_of_nonempty_compl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/stabilizer-ne-top-of-nonempty-of-nonempty-compl.md) | 151 | `result-track:633aac20e0e634077cefff10574e795e254e113d32950462d37083a075fe74c4` |
| 10 | `theorem` | [has_swap_mem_of_lt_stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/has-swap-mem-of-lt-stabilizer.md) | 164 | `result-track:d5027e2e8733b88bc3821aa5f3b80306cc5282a4b4c24f66adb2751581f631cc` |
| 11 | `lemma` | [Perm Maximal Subgroups Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/root-grwtsk-algebra-grouptheory-ispreprimitivestabilizerofsurjective-var.md) | 209 | `result-track:fa8498b0e571fdb8d4aed8ab0a29204de76ce43369bab984f6fa1f41310f9eaa` |
| 12 | `lemma` | [subsingleton_of_ssubset_of_stabilizer_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/subsingleton-of-ssubset-of-stabilizer-le.md) | 235 | `result-track:bb37f1f5779059b441f10a3b5b2245e361bd60e0fc6f42504bccdb61641343b1` |
| 13 | `lemma` | [subsingleton_of_ssubset_of_stabilizer_Perm_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/subsingleton-of-ssubset-of-stabilizer-perm-le.md) | 255 | `result-track:aeb596d9bd168af30bf3e2984220a1a06e23af4fdf0d5d3a29edcc64359bbb81` |
| 14 | `lemma` | [subsingleton_of_stabilizer_lt_of_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/subsingleton-of-stabilizer-lt-of-subset.md) | 266 | `result-track:0f00969795d482881ed534cee9dfe7718e81442b8f28c7969971a291e7289126` |
| 15 | `lemma` | [compl_subset_of_stabilizer_le_of_not_subset_of_not_subset_compl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/compl-subset-of-stabilizer-le-of-not-subset-of-not-subset-compl.md) | 299 | `result-track:fc6e30f5e78a2f88ba354459936e2338c08fe0188bca48b1f87b0b9eb0ef71b1` |
| 16 | `theorem` | [isCoatom_stabilizer_of_ncard_lt_ncard_compl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/iscoatom-stabilizer-of-ncard-lt-ncard-compl.md) | 339 | `result-track:b9338e798593580e701298c05e66b03b032d1ae0bf8d26820c9c336b7d3aeaa0` |
| 17 | `theorem` | [isCoatom_stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermMaximalSubgroupsNamespacedPublic.lean/declarations/iscoatom-stabilizer.md) | 403 | `result-track:304c839bf033d8b38ca42cfed9693fe3c6d5ea176d9b8e80267e81227f4fe9d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca164f6c72606616ed9ab3cb04c7bc0f70338dd0633b9c23c7da2a6b4d69812b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
