# Verification target: Transfer Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d7a32e035651bcca42599d7e60c087ebbf5329a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d7a32e035651bcca42599d7e60c087ebbf5329a`.

Source path: `GRWTSK/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean.json)

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
| 1 | `def` | [diff](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/diff.md) | 47 | `declaration-track:f40a4de1b4b1e72fc233ac71abc55422892a9b94b3d3563bcd681654bc245329` |
| 2 | `theorem` | [diff_mul_diff](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/diff-mul-diff.md) | 57 | `result-track:a03364b90196d3172c8068f5842515ba97f2efb4999e2e7595e074d8f9316dcf` |
| 3 | `theorem` | [diff_self](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/diff-self.md) | 65 | `result-track:75ed86708d5557a5e1c83c3b215a92189939e76e37c4ee51007b5ad815584edb` |
| 4 | `theorem` | [diff_inv](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/diff-inv.md) | 69 | `result-track:9f7a9d3aa4032ab1e5670a7e801e187d61c68360b9c55b514f02376067259dfa` |
| 5 | `theorem` | [smul_diff_smul](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/smul-diff-smul.md) | 73 | `result-track:6d739c14f5bac5efb74e8606060a6426550e00a78f1dd75c62f56b4b230e9235` |
| 6 | `def` | [transferFunction](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transferfunction.md) | 89 | `declaration-track:cf55bcddae206f3815997da1d06f2a720f08e4420c6cd43eeab4f043279f6488` |
| 7 | `lemma` | [transferFunction_apply](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transferfunction-apply.md) | 92 | `result-track:65d1b71af7ac3a3308236547882562dcba4557b0dcbf0ec34c82432b2398ba65` |
| 8 | `lemma` | [coe_transferFunction](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/coe-transferfunction.md) | 97 | `result-track:d91a82c68d01aef7e2f4e462119689c765e57b52ac6409023b66dc6943f8d6c2` |
| 9 | `def` | [transferSet](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transferset.md) | 104 | `declaration-track:1b8f349d35fd590b88a5a7ca1d870c1fd4c14cabea7ee838a5b3500845e31edd` |
| 10 | `lemma` | [mem_transferSet](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/mem-transferset.md) | 106 | `result-track:9b0bd51955d119e4fab34421948b5f0143fb999e2c420d411b6f17617db63377` |
| 11 | `def` | [transferTransversal](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfertransversal.md) | 111 | `declaration-track:1f18378f86e7365baa8cb6af4e4bb01caa9d59f96036a7f7c73eacdf6565c749` |
| 12 | `lemma` | [transferTransversal_apply](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfertransversal-apply-source-edition-3.md) | 114 | `result-track:3cee3e4a778c4bb24458650c6199cb5ea3507b81d3938dd3d180c8027ab82d27` |
| 13 | `lemma` | [transferTransversal_apply'](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfertransversal-apply-source-edition-2.md) | 118 | `result-track:28fde09af1a86660eb8d66777d66782ce2d8938ca557b9a1059b60e7d768a3f7` |
| 14 | `lemma` | [transferTransversal_apply''](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfertransversal-apply.md) | 125 | `result-track:0eb443ee2c6767fc0b63ccd54a6f59d86ca766b79a41a766ded59e04776717e1` |
| 15 | `def` | [transfer](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfer.md) | 148 | `declaration-track:f83ad3db955e6bac7831cb7c5bec04e28eb5997f38b6b3521216e00cf6e200a2` |
| 16 | `theorem` | [transfer_def](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfer-def.md) | 157 | `result-track:006eca2674780ae0bdd1745ab61b05d99e5a9ca96223fd49db42569ef9f9a790` |
| 17 | `theorem` | [transfer_eq_prod_quotient_orbitRel_zpowers_quot](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfer-eq-prod-quotient-orbitrel-zpowers-quot.md) | 161 | `result-track:77182d8f10eb644eea8591a804b4254c624c2aa59eac0120b640d9452249e4ee` |
| 18 | `theorem` | [transfer_eq_pow_aux](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfer-eq-pow-aux.md) | 185 | `result-track:50a16b9c5db3145bf80e25f15e2db3830d59aca6bb97c7743ba97629ee1d7be9` |
| 19 | `theorem` | [transfer_eq_pow](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfer-eq-pow.md) | 206 | `result-track:c94d65a9435d4b4c29b29143b14de217afda2e18b734d46fcd17d70231e9a983` |
| 20 | `theorem` | [transfer_center_eq_pow](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfer-center-eq-pow.md) | 224 | `result-track:900e5c5d9ae565abe3564e003cd60ed54e0e85e4706fc4d3e1e15bf119754176` |
| 21 | `def` | [transferCenterPow](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfercenterpow.md) | 231 | `declaration-track:4361c1490c19162574bb869e341c8d1dc3dcb6efa8c564b47ca5b3ecfcdc6807` |
| 22 | `theorem` | [transferCenterPow_apply](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfercenterpow-apply.md) | 237 | `result-track:5caa834eeb3176201c21b89b9771d75cde6ecfe249636b6a2a5c75cc9e90078b` |
| 23 | `def` | [transferSylow](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfersylow.md) | 248 | `declaration-track:deb72b5233364f0af9bb6abcde5ea12ce1ad31739a013fe21d84366b8de82539` |
| 24 | `theorem` | [transferSylow_eq_pow_aux](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfersylow-eq-pow-aux.md) | 255 | `result-track:3b5920606373e08c27da34691f72d701c96b82be19e8be35a3dcc9d013f5a4e2` |
| 25 | `theorem` | [transferSylow_eq_pow](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfersylow-eq-pow.md) | 266 | `result-track:bab3a63f7c73744914c804431ca8140f466e3f19b68c87407416e6cc80c62da1` |
| 26 | `theorem` | [transferSylow_domRestrict_eq_pow](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/transfersylow-domrestrict-eq-pow.md) | 272 | `result-track:3ec5258ec8a8c08756d03367ecb6bff4d7c4f66845f478445f9cb8454bfded7e` |
| 27 | `theorem` | [ker_transferSylow_isComplement'](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/ker-transfersylow-iscomplement.md) | 281 | `result-track:c1b641615936e37ea59820ab84431736dce3bc3c5705c1d212f75dfb3e36ebde` |
| 28 | `theorem` | [not_dvd_card_ker_transferSylow](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/not-dvd-card-ker-transfersylow.md) | 292 | `result-track:b9d9a895c286f20922441d19e80662fbdd970f99e1cfd32f483eb3c2fd358eaf` |
| 29 | `theorem` | [ker_transferSylow_disjoint](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/ker-transfersylow-disjoint.md) | 295 | `result-track:aaf0ca22060076461cf191f079ccea86c7781d23148afe0fa09e0ddc4c5b9394` |
| 30 | `theorem` | [normalizer_le_centralizer](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/normalizer-le-centralizer.md) | 314 | `result-track:c52b2a15baadb8183219a17c6a667ac514cf2fa8769467de61281d2947b0bc0f` |
| 31 | `theorem` | [isComplement'](../../../../GroupTheoryAndGeneralizations/TransferPublic.lean/declarations/iscomplement.md) | 345 | `result-track:f621c34c9ad0d0d593f9884b4a001510159a76dbfe4bd8ac0ebb4548b422d92d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76c9e402f5f9399bbe721b7b9744c4b5230e33aabe9acfeaf71ec450f3a75352 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
