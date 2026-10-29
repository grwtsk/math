# Verification target: Free Module PIDRepr Eq Zero Of Not Mem Range

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `393373167928c6a90d2d42a212fc7b66a0e98b6d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_bot_of_generator_maximal_map_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/eq-bot-of-generator-maximal-map-eq-zero.md) | 58 | `result-track:02b15770be7c7fa41c3b04203e8392e0f2b7f3036b68056399f99292cedb34db` |
| 2 | `theorem` | [eq_bot_of_generator_maximal_submoduleImage_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/eq-bot-of-generator-maximal-submoduleimage-eq-zero.md) | 70 | `result-track:affbf4cfef1aae8370855f162005f6f365782c63b4b387f8640b17e04390fdc2` |
| 3 | `theorem` | [dvd_generator_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/dvd-generator-iff.md) | 90 | `result-track:3249f1e8bd66c3b4260ced8d9b2320f970c3d685e69ea41eff35c98054ad27f9` |
| 4 | `theorem` | [generator_maximal_submoduleImage_dvd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/generator-maximal-submoduleimage-dvd.md) | 112 | `result-track:64b5e23c98dff2ba82cb3a2202e6f5b8df4433a590c40e03ff2af280ed59afbc` |
| 5 | `theorem` | [Submodule.basis_of_pid_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-basis-of-pid-aux.md) | 155 | `result-track:f2102ae191f99fcef4ebe9e04f80597bce48245c6b4f7ad064b2cc7a754f6128` |
| 6 | `theorem` | [Submodule.nonempty_basis_of_pid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-nonempty-basis-of-pid.md) | 284 | `result-track:d3eaf5d74452dfb9ddcf117a048f0e85971f5108e9e9447bdda2c2f6424c4f46` |
| 7 | `def` | [Submodule.basisOfPid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-basisofpid.md) | 304 | `declaration-track:87a2d273068dcd4c0143e9d9bc99fbb26bd27cf62898a1aa34a71c09c65de7b5` |
| 8 | `theorem` | [Submodule.basisOfPid_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-basisofpid-bot.md) | 308 | `result-track:64e9786efe847a05b7d7a859a8aaeb1e763075152729d8de6236c352447ec565` |
| 9 | `def` | [Submodule.basisOfPidOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-basisofpidofle.md) | 320 | `declaration-track:bfe0d8b7070fa45cf83895b8441dd5f958dbb8b9236fe5f4de1c20aad5f6e6f0` |
| 10 | `def` | [Submodule.basisOfPidOfLESpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-basisofpidoflespan.md) | 327 | `declaration-track:552c7d92b66e53b2a90a16521cd1ba690f706f89c4b350537aaa22f0c6fbcc0c` |
| 11 | `def` | [Module.basisOfFiniteTypeTorsionFree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/module-basisoffinitetypetorsionfree.md) | 333 | `declaration-track:072bed076f0ae018acf5f8954ea889e14ad0cec6a04311db06c69dd5ce3b9aba` |
| 12 | `theorem` | [Module.free_of_finite_type_torsion_free](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/module-free-of-finite-type-torsion-free-source-edition-2.md) | 381 | `result-track:b327ec8e87409a67cd6fe44007602e8e7cc8bd7b3715e8d9cc84ec58f91bfaca` |
| 13 | `def` | [Module.basisOfFiniteTypeTorsionFree'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/module-basisoffinitetypetorsionfree-source-edition-2.md) | 388 | `declaration-track:5c61ccc1bed1fbae3ab6d74b983b052702c8f84179a103a91a0e50749b1f6ca2` |
| 14 | `instance` | [Module.free_of_finite_type_torsion_free'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/module-free-of-finite-type-torsion-free.md) | 392 | `declaration-track:2cff20909b58c072f60018f9ae328f759053cd854ba09b1c10317bd8dcd544af` |
| 15 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/instance.md) | 397 | `declaration-track:ff0a27e9d6b45df52e999a86fde1c05d46fa0704453d2387a6975bca8bf95648` |
| 16 | `theorem` | [Module.free_iff_noZeroSMulDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/module-free-iff-nozerosmuldivisors.md) | 404 | `result-track:1a18c1024d3e8509ce09c9184ae7c0e12fff98ff9c1e56997bc1eb75a7a0cc9e` |
| 17 | `structure` | [Basis.SmithNormalForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/basis-smithnormalform.md) | 415 | `declaration-track:891e3a99c93904d3c0e6e94e0ff3d7459543d93d82d6facded672689e346e310` |
| 18 | `lemma` | [repr_eq_zero_of_notMem_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/repr-eq-zero-of-notmem-range.md) | 431 | `result-track:d71a8b595623d89c7489123ed91a80772c310faf81a9b1fcbeee6c4195e25c24` |
| 19 | `lemma` | [le_ker_coord_of_notMem_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/le-ker-coord-of-notmem-range.md) | 441 | `result-track:42dc5b52050982b1e30b1e88780c670b47ff3b238be4b77d58bb5f281357c62c` |
| 20 | `lemma` | [repr_apply_embedding_eq_repr_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/repr-apply-embedding-eq-repr-smul.md) | 448 | `result-track:497872fa509b8e544ae2553956a8a2da86cc795f216baaac350c5e6ac6dd487b` |
| 21 | `lemma` | [repr_comp_embedding_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/repr-comp-embedding-eq-smul.md) | 463 | `result-track:96ed6627cc3ba03fc7474de57cd0792c3b649c12d4e63c7256e84449930ed046` |
| 22 | `lemma` | [coord_apply_embedding_eq_smul_coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/coord-apply-embedding-eq-smul-coord.md) | 468 | `result-track:b91d2ed39c315e551c4b42818659f95161eb639a00c22dcf22417cf32c395542` |
| 23 | `lemma` | [toMatrix_restrict_eq_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/tomatrix-restrict-eq-tomatrix.md) | 477 | `result-track:d5f2e2bea7afbc7c2ccc47b75f40b7fe9d1eaa6bc43c8358851bc98a21e7ee7e` |
| 24 | `theorem` | [Submodule.exists_smith_normal_form_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-exists-smith-normal-form-of-le.md) | 500 | `result-track:e5d8200525b28037477d3fa486ab83cd61a529f1391501b712cf082e9356b4d0` |
| 25 | `def` | [Submodule.smithNormalFormOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-smithnormalformofle.md) | 528 | `declaration-track:68aff06ba64dd7254e3aeb239d12cb3e7e864d9c735da3ed0f55d514ed5b8f71` |
| 26 | `def` | [Submodule.smithNormalForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-smithnormalform.md) | 547 | `declaration-track:955d29070819a1be0a114f619effbe7c3de0d8d1f794d5879f9618a6502fde86` |
| 27 | `def` | [Submodule.smithNormalFormOfRankEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-smithnormalformofrankeq.md) | 569 | `declaration-track:ea025fac96a7aee30ee49b38e0b26b3e61594d95adf897c56428490d8a3b7bea` |
| 28 | `theorem` | [Submodule.exists_smith_normal_form_of_rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-exists-smith-normal-form-of-rank-eq.md) | 590 | `result-track:f7d62c7ea256dddfe31c78b5ebe45f5aa4e1b17ba60bdd2fb39cbd0a8ee63fb8` |
| 29 | `def` | [Submodule.smithNormalFormTopBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-smithnormalformtopbasis.md) | 613 | `declaration-track:416cd169eb48c7e191135fe798c390a28f44a7fc4ee429dd502b840c295a911f` |
| 30 | `def` | [Submodule.smithNormalFormBotBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-smithnormalformbotbasis.md) | 626 | `declaration-track:869b4cde6af8fc45ea6111328e28a201c3844780aec5715787c722679b936374` |
| 31 | `def` | [Submodule.smithNormalFormCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-smithnormalformcoeffs.md) | 639 | `declaration-track:d5223935909847bdb14ab5b3ea6a793f352180f24d4db504ff47dc20caff7ddb` |
| 32 | `theorem` | [Submodule.smithNormalFormBotBasis_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-smithnormalformbotbasis-def.md) | 644 | `result-track:46c7225a1f7f2a42126fe2071d34b70af3d8e79b244115911d0e27a0fc166b18` |
| 33 | `theorem` | [Submodule.smithNormalFormCoeffs_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/submodule-smithnormalformcoeffs-ne-zero.md) | 651 | `result-track:f0c81a897a0195c49c408a3c1175104c1fa41b3b86e7d36ab771a7597250845f` |
| 34 | `theorem` | [Ideal.finrank_eq_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/ideal-finrank-eq-finrank.md) | 665 | `result-track:61dc7f1365aaf0f20ef9e001e2e0b6b20283b975b8c3b206b53917b8a491c0f9` |
| 35 | `def` | [Ideal.smithNormalForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/ideal-smithnormalform.md) | 682 | `declaration-track:28bed867b6b8aacf4639215852d31d039feb356eab961504aae47d7d64014782` |
| 36 | `theorem` | [Ideal.exists_smith_normal_form](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/ideal-exists-smith-normal-form.md) | 699 | `result-track:d948ff60dc97ea1fcf7353482b66f20009a0b93c002d6c9863c6030d6b6413f3` |
| 37 | `def` | [Ideal.ringBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/ideal-ringbasis.md) | 711 | `declaration-track:4408d2af27751eb96bc78e2efd88b8f1991e7d23f6876c74de8d8c13191eb39d` |
| 38 | `def` | [Ideal.selfBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/ideal-selfbasis.md) | 722 | `declaration-track:a7aa06c959d6afd1394d6b16d93a15909e9a7c64adb87fa34030177356f8245a` |
| 39 | `def` | [Ideal.smithCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/ideal-smithcoeffs.md) | 733 | `declaration-track:9538b6ece47a52d052c6151b089a34b48a30e3678e233179b40f75633b61d91f` |
| 40 | `theorem` | [Ideal.selfBasis_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/ideal-selfbasis-def.md) | 742 | `result-track:46d582e115d9747ed5b0a71c4bb9af1e2d5e5bd15876109f9a8e4b7d91937388` |
| 41 | `theorem` | [Ideal.smithCoeffs_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreeModulePIDReprEqZeroOfNotMemRange.lean/declarations/ideal-smithcoeffs-ne-zero.md) | 747 | `result-track:dc985b9c9d65cb7dc4e52bda1b751277b587e0d7824ac89c9927cb6c5397068d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05a6268c81589b36b8d21b6baa3d5c0565f6cf870d338e32c54ee703f5cf9978 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
