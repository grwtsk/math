# Verification target: Fixed Det Matrices Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e4c109daecc1be7b9449c2925286a1c235bfd40",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e4c109daecc1be7b9449c2925286a1c235bfd40`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean.json)

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
| 1 | `def` | [FixedDetMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/fixeddetmatrix.md) | 36 | `declaration-track:8d1e4f30da134093b6ef73515e13c55d72ccf6eb6db59b2f52acb965323b77da` |
| 2 | `lemma` | [ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 45 | `result-track:5e0e6422c70bd5be05d682e0a74520f6e48f2344393149f1f2b18884bacb9868` |
| 3 | `lemma` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/ext.md) | 50 | `result-track:4e81f9acca2a0c8cdc79fe25cddde2d4b7fa21079b0d0d368584e7aa23572a84` |
| 4 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/instance.md) | 55 | `declaration-track:30895d0c4ebcbb1f158e5937179ff23980f16305494bfa5bf4b7900ab2b7afa4` |
| 5 | `lemma` | [smul_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/smul-def.md) | 58 | `result-track:da51b219a9f255669635a0130383fb1422ad12a47548062530b51f4e1be717a9` |
| 6 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:3a00e358c0bf5833502ecc07fe11aaca84ed6cf508cac01188958014ae35689d` |
| 7 | `lemma` | [smul_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/smul-coe.md) | 67 | `result-track:e8cbd8dcddcb9a75040838f12cbdde97ac0e4df820f7eb4af9126f7a700b895c` |
| 8 | `def` | [reps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reps.md) | 78 | `declaration-track:11e5b9cbc618f53fb0fca16d97963ec464c7fe639bab392fb45f4667d5487d4c` |
| 9 | `def` | [reduceStep](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reducestep.md) | 82 | `declaration-track:de849e531a663819f216f014a00695bc74dba36c49165e89e7c95bc87ed93472` |
| 10 | `lemma` | [reduce_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reduce-aux.md) | 84 | `result-track:711de1a33b7907a52e83885dea5ce4b71edcd6117b399d00c47b738df995f538` |
| 11 | `def` | [reduce_rec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reduce-rec.md) | 94 | `declaration-track:800ca6af1adaba0e8dba397a9799ed5645d717742fd4e4c891605301e096fcb4` |
| 12 | `def` | [reduce](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reduce.md) | 108 | `declaration-track:32934403e09ca1d3932bf06a2f3882e4d7b0d0c2e57dcc6b17bbea8a291301b9` |
| 13 | `lemma` | [reduce_of_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reduce-of-pos.md) | 120 | `result-track:813b5616b91bb754ef97c9085b7772498b521f7636f786e1ff9c5607f25eea8d` |
| 14 | `lemma` | [reduce_of_not_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reduce-of-not-pos.md) | 126 | `result-track:6adb00f059c5fb6f02efe7332c264d912287142451304f59bf0894b1f949db37` |
| 15 | `lemma` | [reduce_reduceStep](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reduce-reducestep.md) | 133 | `result-track:cb2c987d769e1354be474fbb3a515f4e641e0eec7ce466e9fc02c2ca5ae0e0ed` |
| 16 | `lemma` | [A_c_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/a-c-eq-zero.md) | 138 | `result-track:e056aeeb43fca8fc7e18e86f8bbc75a06d8393c17d463144cf689bdfb8ba2e16` |
| 17 | `lemma` | [A_d_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/a-d-ne-zero.md) | 141 | `result-track:5ca63e17fa15dcef542acdfa781563684071daf08617d2dad0f9e7cf1743914f` |
| 18 | `lemma` | [A_a_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/a-a-ne-zero.md) | 144 | `result-track:89844a95f60f4b14a9ac028833594486c8334971ab2662ef9f0e49a693d5fb8a` |
| 19 | `lemma` | [reps_entries_le_m'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reps-entries-le-m.md) | 148 | `result-track:b9eaa620ddfdcf0f5674faa95ad9116d034ca1e1a5de17b03fe403564a2c0a30` |
| 20 | `lemma` | [reps_zero_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reps-zero-empty.md) | 161 | `result-track:9ff80c02ef88b47d3b7716aefc988f70cb2a697ccceb06b7f3e974172ccdc044` |
| 21 | `instance` | [repsFintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/repsfintype.md) | 168 | `declaration-track:fa02ed1196a1c21d2355f231539d6917f1f4e896902df024cb785ea7ff793c9a` |
| 22 | `lemma` | [S_smul_four](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/s-smul-four.md) | 178 | `result-track:fdd87298c23a80f169e3465f41b49d2ca31cd3dddf3aa88c4f90135166a9bd0b` |
| 23 | `lemma` | [T_S_rel_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/t-s-rel-smul.md) | 182 | `result-track:9c21f253cfd91be3ef74cb9157bd27695a0200a0c108415aaf68d3d9c0a4e094` |
| 24 | `lemma` | [reduce_mem_reps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reduce-mem-reps.md) | 186 | `result-track:1af35a00f28f5beadef6f887325293bd4c5c77e24568de79c467a553b8f63f49` |
| 25 | `lemma` | [prop_red_S](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/prop-red-s.md) | 224 | `result-track:8be7bad374ce48b37e658a3705d9744c9b61a9c819f7ece163d80c2ea85615d1` |
| 26 | `lemma` | [prop_red_T](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/prop-red-t.md) | 230 | `result-track:b9c9cb948c09c0bdcabde40a3c81f16064d7bf057ae6824a9c914a96ec48828c` |
| 27 | `lemma` | [prop_red_T_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/prop-red-t-pow.md) | 237 | `result-track:dc3f4d8ac3dcd9c24338dcd969cbb853542e7f20e1297c8e27bccf7a5c58d35d` |
| 28 | `theorem` | [induction_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/induction-on.md) | 249 | `result-track:2d8775988ecb33247fff0ff4af0a11eea6e1a771a1eca5df0b879c0ce98ee547` |
| 29 | `lemma` | [reps_one_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/reps-one-id.md) | 265 | `result-track:645892e34cd6612cc5d054b64654f3b65afc1bbf25be1d150536b39fcc3373b0` |
| 30 | `lemma` | [SpecialLinearGroup.SL2Z_generators](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedDetMatricesNamespacedPublic.lean/declarations/speciallineargroup-sl2z-generators.md) | 282 | `result-track:9ca36e1dc820c83b4cde43b71bf28b87bb493a02cfcfa6b1773f2f5d972d994b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=368e56d2fa0ed1702b4a868a70eaa00b979c70bf89bd48df893438a0cc5d90dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
