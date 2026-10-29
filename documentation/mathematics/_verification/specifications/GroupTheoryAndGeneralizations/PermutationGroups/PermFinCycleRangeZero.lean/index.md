# Verification target: Perm Fin Cycle Range Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a73e7bfe41bea232ad239b18d49a74f4206129e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a73e7bfe41bea232ad239b18d49a74f4206129e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Option` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Equiv.Perm.decomposeFin](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/equiv-perm-decomposefin.md) | 23 | `declaration-track:2171c0bd53e84b1141958b79bf7fbcacb751ba711efccc5e5f07de7a83ca0a23` |
| 2 | `theorem` | [Equiv.Perm.decomposeFin_symm_of_refl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/equiv-perm-decomposefin-symm-of-refl.md) | 29 | `result-track:b0dece0653ddc5fdbc6821e648516ae7ec5e79a9a45dece6560367fd89d40093` |
| 3 | `theorem` | [Equiv.Perm.decomposeFin_symm_of_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/equiv-perm-decomposefin-symm-of-one.md) | 35 | `result-track:9d7465dc6797eb5455b122258242834682108ba1d2d6d6bb9250c265e36ada22` |
| 4 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/equiv-perm-decomposefin-symm-apply-zero.md) | 41 | `result-track:a484228e938f831398768d953c584e3b55c212adf35aa1db366181f268c4a882` |
| 5 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_succ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/equiv-perm-decomposefin-symm-apply-succ.md) | 46 | `result-track:35e24e7b42831f02dae1fd771f366cb17f8a713fab10b5cd2c6f238da455c056` |
| 6 | `theorem` | [Equiv.Perm.decomposeFin_symm_apply_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/equiv-perm-decomposefin-symm-apply-one.md) | 58 | `result-track:e8ca8559b2bf0de7abc20592263fdbf7ac7a016ca79f16f5ca0fecd802f3f18b` |
| 7 | `theorem` | [Equiv.Perm.decomposeFin.symm_sign](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/equiv-perm-decomposefin-symm-sign.md) | 64 | `result-track:92ab90d1f3aa2126249e2ea2b5e4020c9d94e212aafdee6cea6d8bbc75ec3a03` |
| 8 | `theorem` | [Finset.univ_perm_fin_succ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/finset-univ-perm-fin-succ.md) | 71 | `result-track:47753c874fc1122153001064b073627f94f60ef04d8e9885beadc6d3f3e47645` |
| 9 | `theorem` | [finRotate_succ_eq_decomposeFin](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/finrotate-succ-eq-decomposefin.md) | 89 | `result-track:1fb3153f6e84ae9d0eb7aa9c86c312b2c82988f0319745495d2f2afd36147e4c` |
| 10 | `theorem` | [sign_finRotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/sign-finrotate.md) | 104 | `result-track:2dc303e384eb104f5d7006326ba79bda6212c3b729c689391fe002596838c52b` |
| 11 | `theorem` | [support_finRotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/support-finrotate.md) | 112 | `result-track:81369488142b7d2f667c4264875d62d2a22ffa8eaf86da4b5bf97d946631ea46` |
| 12 | `theorem` | [support_finRotate_of_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/support-finrotate-of-le.md) | 117 | `result-track:612dca58438dab7726c57a0cdd9cb81e6809e696513e324479bfc42f9ad3e11d` |
| 13 | `theorem` | [isCycle_finRotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/iscycle-finrotate.md) | 122 | `result-track:0aaad1d26be760fbbe1cee9d87dd16733585519b1746f3da2a16920da6bffaf4` |
| 14 | `theorem` | [isCycle_finRotate_of_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/iscycle-finrotate-of-le.md) | 133 | `result-track:5522d123a63e5c7449d1ba160ddee4fb295c0dc21f7947928ee701fb02043bc8` |
| 15 | `theorem` | [cycleType_finRotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cycletype-finrotate.md) | 140 | `result-track:76ee91e7c7e5ca8672ee33198fd8651353115caaa40f1f4a17621e2214b514f4` |
| 16 | `theorem` | [cycleType_finRotate_of_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cycletype-finrotate-of-le.md) | 145 | `result-track:687703cbff2e57c22f360790171dec42f41c697aa7db9170da249657bbf131e0` |
| 17 | `def` | [cycleRange](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange.md) | 153 | `declaration-track:f635640b48db79ba2dcd35d0d0c42d71c197a371bc0e05213189a434300a4ba6` |
| 18 | `theorem` | [cycleRange_of_gt](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-of-gt.md) | 162 | `result-track:375e7f8ee571829b5182cb9515c31894ca4b8ec202750f2315561ff7285d29f2` |
| 19 | `theorem` | [cycleRange_of_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-of-le.md) | 169 | `result-track:6f0b1b3fa3c404d05ea54073e2e202b7423582c0c0df7b61241b30f985e03dc1` |
| 20 | `theorem` | [coe_cycleRange_of_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/coe-cyclerange-of-le.md) | 187 | `result-track:3c850b8a4e4bb5ff93b45126ff1bbaa92381677dc092e8154a875051eb9164e4` |
| 21 | `theorem` | [cycleRange_of_lt](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-of-lt.md) | 199 | `result-track:30752e46f8690678ad3aed81930a6e6e9e0f26d59a6a0b372a9c0ff7ff6128bb` |
| 22 | `theorem` | [coe_cycleRange_of_lt](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/coe-cyclerange-of-lt.md) | 203 | `result-track:9a1c1ceb9181d42c27613580f5e1b990f5dda99664218137b9010004cc9362d3` |
| 23 | `theorem` | [cycleRange_of_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-of-eq.md) | 207 | `result-track:05df967b8c38ac1f261d17bb98ec7c4dfacad3ac635ce556287c3b73b604e176` |
| 24 | `theorem` | [cycleRange_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-self.md) | 212 | `result-track:87f3db75f60efc6cd5ec7007de529188c27c615f5590f495c0f01dffb3c0e0ab` |
| 25 | `theorem` | [cycleRange_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-apply.md) | 216 | `result-track:4adee7627308b1fcfd7d87b2ce1e4ed1a64079c61ddd0b489892e842da6c5d24` |
| 26 | `theorem` | [cycleRange_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-zero-source-edition-2.md) | 225 | `result-track:f2ba7a7dc1a055ac7d6db62b044231dcdb8288e36cc30fe9279beb931f9fe9c5` |
| 27 | `theorem` | [cycleRange_last](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-last.md) | 233 | `result-track:aba16f82f962dd88581c4d140d8dc72366ec9f1e1449cf6503c2187108067557` |
| 28 | `theorem` | [cycleRange_zero'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-zero.md) | 239 | `result-track:a43754f81bf23ff71c4c1cacba6f0db42d10ef95e1534c3878770f2863c26fd6` |
| 29 | `theorem` | [sign_cycleRange](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/sign-cyclerange.md) | 246 | `result-track:cf19377d58f5bae791a63d865971477602e0be79cec99fad3389114dc08a6999` |
| 30 | `theorem` | [succAbove_cycleRange](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/succabove-cyclerange.md) | 251 | `result-track:a8a2cf3faf1b64a94b36b4e5e17686dde3aa4b0410a261af2983090f95a59edb` |
| 31 | `theorem` | [cycleRange_succAbove](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-succabove.md) | 274 | `result-track:8809fdb6c4e9a017a2e9bfa1bde5121a9bf7537132b668a03aadf36c4f4fe640` |
| 32 | `theorem` | [cycleRange_symm_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-symm-zero.md) | 282 | `result-track:35b217147a66bb4933c4bcf81397f786832294c9470fb0e5dd299784137da84c` |
| 33 | `theorem` | [cycleRange_symm_succ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cyclerange-symm-succ.md) | 287 | `result-track:016d5deefed170b1798b58b7060e896067d918e42d7c9f44efb6889dee0fa1df` |
| 34 | `theorem` | [isCycle_cycleRange](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/iscycle-cyclerange.md) | 292 | `result-track:e552750c82fcf4ddf6ebf41fa57227b073caa67c56dbff72f56613c57e95d618` |
| 35 | `theorem` | [cycleType_cycleRange](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/cycletype-cyclerange.md) | 300 | `result-track:b8cff2db3c3eae422bea863f3c5d4a4eadf9e580bec296962e396b39fb78c982` |
| 36 | `theorem` | [isThreeCycle_cycleRange_two](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinCycleRangeZero.lean/declarations/isthreecycle-cyclerange-two.md) | 309 | `result-track:8a713e8b201dd541a672ec4b2453f7d80998e9a55e9507ce8d46e0aabf929400` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ecd29c54e5145a403aceee4162b15afca2035cd4fe8216c2baadf78f323d7fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
