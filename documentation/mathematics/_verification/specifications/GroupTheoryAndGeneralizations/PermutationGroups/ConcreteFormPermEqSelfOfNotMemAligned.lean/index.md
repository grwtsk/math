# Verification target: Concrete Form Perm Eq Self Of Not Mem Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83454a1ca5c479792bda20778feec02764ac84f0",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83454a1ca5c479792bda20778feec02764ac84f0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Cycle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.List` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [formPerm_disjoint_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm-disjoint-iff.md) | 58 | `result-track:c5c53b505ccf1140a5e7b2ae202f881838dece1d24986a76564d59f2c0576542` |
| 2 | `theorem` | [isCycle_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/iscycle-formperm-source-edition-2.md) | 74 | `result-track:9bec5c62d4db10c70773d48af655b5cd3f980bd4abee4f429895d0b15737b068` |
| 3 | `theorem` | [pairwise_sameCycle_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/pairwise-samecycle-formperm.md) | 89 | `result-track:7a4d394dc0baa4b97ee50d9e9f05903e292967bd290bffeca337dd91c492ab6c` |
| 4 | `theorem` | [cycleOf_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/cycleof-formperm.md) | 97 | `result-track:02b2bf622c2c1e4b5fee59277278d15b302f91c3be39b816e0e13249f41c75a0` |
| 5 | `theorem` | [cycleType_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/cycletype-formperm.md) | 105 | `result-track:9e71d4bd8760988b3bb398d16a0f84c11f705d2f2bc568950d9f1cd132bc3e13` |
| 6 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm-apply-mem-eq-next.md) | 121 | `result-track:04efc8f5978e154944b4705ebe704eea58bae3c890de553db4367f6ef088f7e4` |
| 7 | `def` | [formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm.md) | 136 | `declaration-track:f7480779475e8cef43897f2105ed7015c3039fe9cd9867ec6e2161dffc33f2b7` |
| 8 | `theorem` | [formPerm_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm-coe.md) | 146 | `result-track:3bdc061a89e25cf5bdc66eb7827632294e42c2f076ea7b9ae99076c150a4c14b` |
| 9 | `theorem` | [formPerm_subsingleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm-subsingleton.md) | 150 | `result-track:2c48e769630429c696e18abdd6cfe6b856c8b0b6a80ca1f54bff05fc0abc196a` |
| 10 | `theorem` | [isCycle_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/iscycle-formperm.md) | 160 | `result-track:55fece9dd94e402fe1eedf818ef0885716a6d863a52caae9f4d41a03cc644541` |
| 11 | `theorem` | [support_formPerm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/support-formperm.md) | 166 | `result-track:e18d41dcf2711d3de227b6aa7b93936ad6c344d213acdb7e5c11495cb4208450` |
| 12 | `theorem` | [formPerm_eq_self_of_not_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm-eq-self-of-not-mem.md) | 174 | `result-track:2dff404164bcea50ae9796c99d9c8beeeb3345cf298702ffa1d2ab5409ad0c86` |
| 13 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm-apply-mem-eq-next-source-edition-2.md) | 180 | `result-track:62399feccc4bd4f9180afb754e3e0b8af4414d6b28eb84d1f50a70e64192f017` |
| 14 | `theorem` | [formPerm_reverse](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm-reverse.md) | 186 | `result-track:187e5d1c5f792a426b7805521d6860d5b0c125169061be6c33dc32c06daf53d3` |
| 15 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm-eq-formperm-iff.md) | 192 | `result-track:d6b113d5372b2acb04eba340e92e93cafc5789cb84ba8d10cff6d6056849ec7f` |
| 16 | `def` | [toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist.md) | 217 | `declaration-track:53faf5d8b5b085f2ae4f0e3d2662deae79a12ff6b5c946baa3ba68ee86863403` |
| 17 | `theorem` | [toList_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist-one.md) | 222 | `result-track:46f95225889ff0f8d167aea89ec37a5042dfd46c7dbd4b3e535744daa6641daa` |
| 18 | `theorem` | [toList_eq_nil_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist-eq-nil-iff.md) | 226 | `result-track:4d96b7ef8c902a6f0cf14875cde216a6b795744e5b319b056a5641ff5a85dcf3` |
| 19 | `theorem` | [length_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/length-tolist.md) | 230 | `result-track:0ada56c2bb73886ab781efdc2d49f2f8a97edea6544cdf835cfab7d1ade8932e` |
| 20 | `theorem` | [toList_ne_singleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist-ne-singleton.md) | 233 | `result-track:8366d9ae3fdc7a2535a1511c58562a12061d2c69cb45cafeff75bc878f9d4def` |
| 21 | `theorem` | [two_le_length_toList_iff_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/two-le-length-tolist-iff-mem-support.md) | 238 | `result-track:f720e92595ac1b184f4ca4e0975316edb9f6bef398cd5288fa069f70b681d51b` |
| 22 | `theorem` | [length_toList_pos_of_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/length-tolist-pos-of-mem-support.md) | 242 | `result-track:ac7b3a7d0b4a943adaaf822bdc36e0e68f478049ad60b3cbeb3273564beac9e7` |
| 23 | `theorem` | [nthLe_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/nthle-tolist.md) | 246 | `result-track:af3a2bafdf3b9d708b76fa041be4dfd862cd7c96970dec3f2a9526294f399d57` |
| 24 | `theorem` | [toList_nthLe_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist-nthle-zero.md) | 250 | `result-track:0011e38e624e2e300d62767f0837c3fc62ca27a605f1a9924a79fd7604be0228` |
| 25 | `theorem` | [mem_toList_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/mem-tolist-iff.md) | 256 | `result-track:893e71540dd413658dfe129e14bf8035b631036917f50ed0934a42dffd91a9fa` |
| 26 | `theorem` | [nodup_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/nodup-tolist.md) | 269 | `result-track:0e39c9983af9fbde348c110d7936b4c84a1a9915ce90b372feaa1ed8b9c7874f` |
| 27 | `theorem` | [next_toList_eq_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/next-tolist-eq-apply.md) | 303 | `result-track:9b53c0fb9645f2deed9d3e70e113fc084ca4c195e329a2caa3962f36a93805a7` |
| 28 | `theorem` | [toList_pow_apply_eq_rotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist-pow-apply-eq-rotate.md) | 315 | `result-track:ae453a47e43741d75b5e1ae5e63990d9f336aa546b957a9591595c3f8c5605bc` |
| 29 | `theorem` | [SameCycle.toList_isRotated](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/samecycle-tolist-isrotated.md) | 324 | `result-track:8acba92c1187db6f45f9f12d2fa060c94cfb585aa5b8304ea3eb7577e1ace299` |
| 30 | `theorem` | [pow_apply_mem_toList_iff_mem_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/pow-apply-mem-tolist-iff-mem-support.md) | 337 | `result-track:0b7c17024ca0e4027e369eac6a45dc93a93c98bef5e3dabe75f28784f14d1e4a` |
| 31 | `theorem` | [toList_formPerm_nil](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist-formperm-nil.md) | 343 | `result-track:7253113658c072206489d149b8f9ebac7aa0e92b4de789fdd35c8ffb241ada2b` |
| 32 | `theorem` | [toList_formPerm_singleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist-formperm-singleton.md) | 346 | `result-track:c7908baecdb8a2541bc1b57ab647c9b8b55740790a02ce1c25d78ba18d59586e` |
| 33 | `theorem` | [toList_formPerm_nontrivial](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist-formperm-nontrivial.md) | 350 | `result-track:2ed23557d3ddd923d3320f5ffd0c9cf1e0342e771cbe6ec2a7e20f9f24db72d4` |
| 34 | `theorem` | [toList_formPerm_isRotated_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tolist-formperm-isrotated-self.md) | 364 | `result-track:1e4bc2ac522b017347babab0a99c5fcd0ec02de338b5c1c104c2165a31466bb2` |
| 35 | `theorem` | [formPerm_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/formperm-tolist.md) | 377 | `result-track:6c7709b57590789c1954efac2f5bcf0368da470560d31def5c134c67f5bd5a7d` |
| 36 | `def` | [toCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tocycle.md) | 397 | `declaration-track:74bf8611dbe7053a24de477ba510afff9eb03b653c7c82edeaedcc5e0b3221af` |
| 37 | `theorem` | [toCycle_eq_toList](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/tocycle-eq-tolist.md) | 408 | `result-track:d943b9b484b2c2e9816b5064f781455880038eec3f7ad7e03c1a6cee89c06e76` |
| 38 | `theorem` | [nodup_toCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/nodup-tocycle.md) | 415 | `result-track:6c8c784274688871f1195e5787bff5e01882ad70053761d706a8ef0da2c503b2` |
| 39 | `theorem` | [nontrivial_toCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/nontrivial-tocycle.md) | 420 | `result-track:0f81bf86e3f934f703bd36dcd3cf448291cbe5af123faa2d357eb8feb67259f4` |
| 40 | `def` | [isoCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/isocycle.md) | 429 | `declaration-track:4d0cc5531f4bc004b9e652d40bc0ee4f70bee96642a16bfda21cc9690a9fd6dd` |
| 41 | `theorem` | [IsCycle.existsUnique_cycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/iscycle-existsunique-cycle.md) | 459 | `result-track:5dde815f4a07ee913b316236bfbd118b2eccb9c199b5c5ab8d66601042e868ac` |
| 42 | `theorem` | [IsCycle.existsUnique_cycle_subtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/iscycle-existsunique-cycle-subtype.md) | 477 | `result-track:cef6cc92a4f589d2b1e60d7cfa0596878b69dca59457312fd6fcfb787bd93db1` |
| 43 | `theorem` | [IsCycle.existsUnique_cycle_nontrivial_subtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/iscycle-existsunique-cycle-nontrivial-subtype.md) | 485 | `result-track:b0cc41d0fca90d4d5d3f7249bcd52dcb413329199a3af198b08b8ef58eadaff6` |
| 44 | `def` | [isoCycle'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/isocycle-source-edition-2.md) | 507 | `declaration-track:695d35c2cf08bcf8ebc78a5a02f63896030fb0b3508331ef1fc7c091d80b7237` |
| 45 | `instance` | [repr_perm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConcreteFormPermEqSelfOfNotMemAligned.lean/declarations/repr-perm.md) | 523 | `declaration-track:9128a059ffb5b469dd3a7ecc36af609f2ff10bbff5d4dd32d22d572fccd8602f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c3908f6294537828031291e2c4ed304d2da68ae74df917489f2e7ec4d5a2300 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
