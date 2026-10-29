# Verification target: SMul Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c98f30ee8de7b6410fbdcbf06ce2b862dd293a91",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SMul/Variantc82e2914e172699c06d84439628d05abcbfad85721e5b00cdc1f16860553c1fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c98f30ee8de7b6410fbdcbf06ce2b862dd293a91`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SMul/Variantc82e2914e172699c06d84439628d05abcbfad85721e5b00cdc1f16860553c1fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SMul/Variantc82e2914e172699c06d84439628d05abcbfad85721e5b00cdc1f16860553c1fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [single_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/single-smul.md) | 49 | `result-track:60f7ffe96db0ff2c00e00aafcd460e1db300c304c6d8f1567c1a9a3f1b82d41a` |
| 2 | `def` | [comapSMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/comapsmul.md) | 63 | `declaration-track:08c89cf082a6486dbdd4e201d11a3db384bbcf7b5f8a3899a0acb2778240f4e0` |
| 3 | `theorem` | [comapSMul_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/comapsmul-def.md) | 67 | `result-track:b62f8104070c4d16a286eaddf36f1e0d591adf7aa1a1dd62d4ee44f7eeefe2cb` |
| 4 | `theorem` | [comapSMul_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/comapsmul-single.md) | 71 | `result-track:fbb40bde99c80ce3c2f65d94bf1b6a66fc80cac13ea098cdddec0aaaed9e5358` |
| 5 | `def` | [comapMulAction](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/comapmulaction.md) | 76 | `declaration-track:628b0e3af8c50756e47d5372ebeb8de78e8c95213b3d901bb94b180c4bf4f996` |
| 6 | `def` | [comapDistribMulAction](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/comapdistribmulaction.md) | 85 | `declaration-track:f89bf45d9c05a8e8d3490907b1ce1b19cb21676dea16aa201aa0dbbd217606fd` |
| 7 | `theorem` | [comapSMul_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/comapsmul-apply.md) | 106 | `result-track:accae3004fe6461d13a9eb66da929047c614a3da35d4d77c9e6dcca74465a0ac` |
| 8 | `theorem` | [SMul Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-si.md) | 119 | `result-track:3f3c253cb4a4cfdc44027f6a5e8aba05976814e037e516adae66c0ecbeaa1847` |
| 9 | `instance` | [faithfulSMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/faithfulsmul.md) | 123 | `declaration-track:eae7550578a2b2e2a689a4b8ffc0920614f21110f0abff34fc68904afeb5eddb` |
| 10 | `instance` | [distribMulAction](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/distribmulaction.md) | 131 | `declaration-track:ae810f4e322642e87977e8ab7d27019903dc28bbb1aa858ddfeb4bbfd68864f4` |
| 11 | `instance` | [module](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/module.md) | 137 | `declaration-track:4b374e380c355ce9ee0c82a7b4bfedc00582b039838fbd7e8c7f5551db979994` |
| 12 | `theorem` | [support_smul_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/support-smul-eq.md) | 145 | `result-track:ef588ad8423e3e7bcb08e38452b1dafde0d81de6663b496d489a87eaa34a19da` |
| 13 | `theorem` | [filter_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/filter-smul.md) | 154 | `result-track:9fcae76d10599f20c9d21b593b4fd19e5392c2e17648192f12d4af45f7005a56` |
| 14 | `theorem` | [mapDomain_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/mapdomain-smul.md) | 162 | `result-track:93c2b7e4f0ae3dbf1b3bb094d13e425b1f64fc1ee202e936a1617488f286a6e7` |
| 15 | `theorem` | [smul_single'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/smul-single.md) | 166 | `result-track:4daa971e818c09991cd71a8c48fde9a4e5f4cae633b0de205985c93688e515e2` |
| 16 | `theorem` | [smul_single_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/smul-single-one.md) | 169 | `result-track:46c080cd70c010e97d8d676509db3ba7f958841ca976f6ff1ed82ee6e69e3c12` |
| 17 | `theorem` | [comapDomain_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/comapdomain-smul.md) | 173 | `result-track:c1c012d52e79e224fbe8184fb0c015d42980a1533ad921a687f071198df13362` |
| 18 | `theorem` | [comapDomain_smul_of_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/comapdomain-smul-of-injective.md) | 182 | `result-track:ede2585eeb3b38ddacf2209b2150f0e9cae5e520938828709e57e19de9a7f7cd` |
| 19 | `theorem` | [sum_smul_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/sum-smul-index.md) | 189 | `result-track:7a9275d5218b2388499176cc86fb75bb4e658488bb8f58bcef4e529f0cba01a9` |
| 20 | `theorem` | [sum_smul_index'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/sum-smul-index-source-edition-2.md) | 193 | `result-track:9f8248c87a2dd792c8ae94e9673d1b904001a0dca67437b76a5c254091fb2d40` |
| 21 | `theorem` | [sum_smul_index_addMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/sum-smul-index-addmonoidhom.md) | 198 | `result-track:31c6fea7fe73cd8bcc526728b83077bd45ba64e6013eb0493f1865650b18de22` |
| 22 | `instance` | [moduleIsTorsionFree](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/moduleistorsionfree.md) | 203 | `declaration-track:efabb76069caabd3d7c6267c7acc8ec66e7b5089e512af1f0c243fb7c5dafd32` |
| 23 | `def` | [DistribMulActionHom.single](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/distribmulactionhom-single.md) | 213 | `declaration-track:177c998d682c77677416ec36d608be3f177d2672f45fb5bf2a18db5edc00d4b4` |
| 24 | `theorem` | [distribMulActionHom_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/distribmulactionhom-ext-source-edition-2.md) | 217 | `result-track:d56accd53a9bedb19709f506f75721f2011bb170e517d0ad46bb3ca679505d68` |
| 25 | `theorem` | [distribMulActionHom_ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SMulNamespacedPublic.lean/declarations/distribmulactionhom-ext.md) | 223 | `result-track:5ed3a687fa0ddd4d3fde4e0f38dd6d30f433708222c17b53de17b4c09b5ef8ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0230712159dd725b93c4bb3541ace7dddd94ddba43f47be4a034ac7c5cd3e50b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SMul/Variantc82e2914e172699c06d84439628d05abcbfad85721e5b00cdc1f16860553c1fe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SMul/Variantc82e2914e172699c06d84439628d05abcbfad85721e5b00cdc1f16860553c1fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
