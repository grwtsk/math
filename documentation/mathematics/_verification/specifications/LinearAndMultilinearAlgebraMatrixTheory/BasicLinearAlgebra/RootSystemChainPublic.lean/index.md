# Verification target: Root System Chain Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f03ec767f13691a3e0824b5a64c6ebd1afbac1b",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant40d73374ce7138a114bae9c3e4095c6773900ce4256a68cb67eac352f1f2cefb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f03ec767f13691a3e0824b5a64c6ebd1afbac1b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Chain/Variant40d73374ce7138a114bae9c3e4095c6773900ce4256a68cb67eac352f1f2cefb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Chain/Variant40d73374ce7138a114bae9c3e4095c6773900ce4256a68cb67eac352f1f2cefb.lean.json)

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
| 1 | `lemma` | [setOfPred_root_add_zsmul_eq_Icc_of_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/setofpred-root-add-zsmul-eq-icc-of-linearindependent.md) | 45 | `result-track:21dde982d825b9d5b1aaaa2ebe907b6dc59784533fdab483d68bc8de5c9bb44c` |
| 2 | `def` | [chainTopCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff.md) | 110 | `declaration-track:7728e0f12eba177cd5ba38b7776908a05b19e995e8d1d858abbd0cae46ceaf74` |
| 3 | `def` | [chainBotCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff.md) | 120 | `declaration-track:1969ecd30871eb38de08377588e070b59235051eedd03dfc55d2e8cf89594c87` |
| 4 | `lemma` | [chainTopCoeff_of_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff-of-not-linearindependent.md) | 127 | `result-track:6bba9f68ac51a5b7828fad583eaa75b3b4ea2d903601aabab0f51f1110b7318c` |
| 5 | `lemma` | [chainBotCoeff_of_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-of-not-linearindependent.md) | 131 | `result-track:2f8942d65db66ca812b7975456763ea70d01de168877a6794eac05444707e9b7` |
| 6 | `lemma` | [root_add_nsmul_mem_range_iff_le_chainTopCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/root-add-nsmul-mem-range-iff-le-chaintopcoeff.md) | 138 | `result-track:353563d9d98b59c6bf2af18b9698cba100b698afb5f552b7c300c89aa7c7dc58` |
| 7 | `lemma` | [root_sub_nsmul_mem_range_iff_le_chainBotCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/root-sub-nsmul-mem-range-iff-le-chainbotcoeff.md) | 152 | `result-track:1e44fb2ad0e9adc03fc43b7bde1404779973e33f94fa415780e9555f917c53d9` |
| 8 | `lemma` | [Iic_chainTopCoeff_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/iic-chaintopcoeff-eq.md) | 165 | `result-track:93f7d95257c99088129eab6ed04b01c392beef206c01c35145defff15d0e2fa0` |
| 9 | `lemma` | [Iic_chainBotCoeff_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/iic-chainbotcoeff-eq.md) | 169 | `result-track:dbbf41a586708454d059f6b77e2e1db223cd07a1fd3d69275469bb421919aa3b` |
| 10 | `lemma` | [one_le_chainTopCoeff_of_root_add_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/one-le-chaintopcoeff-of-root-add-mem.md) | 174 | `result-track:e08a28acd12bc0c4fab5085e4343e9c91d134ee170a6afc1aed2aadb12a2c61f` |
| 11 | `lemma` | [one_le_chainBotCoeff_of_root_add_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/one-le-chainbotcoeff-of-root-add-mem.md) | 180 | `result-track:3e57bf059ad90c5d52135dd6bbf9fa14f69928298f9556af43c76ae42070ce68` |
| 12 | `lemma` | [root_add_zsmul_mem_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/root-add-zsmul-mem-range-iff.md) | 186 | `result-track:6cae04c38d37f327114a480226056dd7b2c2813fceec0db662cf7744b8c76a9f` |
| 13 | `lemma` | [root_sub_zsmul_mem_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/root-sub-zsmul-mem-range-iff.md) | 193 | `result-track:2ef096ae6bd4b2de036140dffe184fdcdaf06959d817f117a96b13e750b1216f` |
| 14 | `lemma` | [setOfPred_root_add_zsmul_mem_eq_Icc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/setofpred-root-add-zsmul-mem-eq-icc.md) | 199 | `result-track:b3d867e57c3aaa52174527920abebe503c55be9aadb92896183bfd34970ea0dd` |
| 15 | `lemma` | [setOfPred_root_sub_zsmul_mem_eq_Icc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/setofpred-root-sub-zsmul-mem-eq-icc.md) | 207 | `result-track:c9d41df0e7c702b0ee30916f113537121ddfc632d8a3080f8d92eebc194fdaf0` |
| 16 | `lemma` | [chainTopCoeff_eq_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff-eq-ssup.md) | 215 | `result-track:0ddda09275788133284446e1fe55f9f2169dcbe9aa4cf597e6c2e446a13eb2a7` |
| 17 | `lemma` | [chainBotCoeff_eq_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-eq-ssup.md) | 219 | `result-track:a592348870d539b74904415df9a7e60bd1a4edc6f3fea2d4696a563216a3b903` |
| 18 | `lemma` | [coe_chainTopCoeff_eq_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/coe-chaintopcoeff-eq-ssup.md) | 223 | `result-track:7e06302b4fe204a9cf1dddff10f2d638da6aad9006b1c902602443418063fbcf` |
| 19 | `lemma` | [coe_chainBotCoeff_eq_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/coe-chainbotcoeff-eq-ssup.md) | 228 | `result-track:75031da69efc74cae83d95b967e77a229046460eff319b93cfd5f01b2618f840` |
| 20 | `lemma` | [chainCoeff_reflectionPerm_left_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaincoeff-reflectionperm-left-aux.md) | 235 | `result-track:de7d5ae0c5913d0eff74ca328af6af1b5e5bbb57c15ecc74c70899f5056b7cda` |
| 21 | `lemma` | [chainCoeff_reflectionPerm_right_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaincoeff-reflectionperm-right-aux.md) | 250 | `result-track:bdd8b7c6a3c923f455fa5b3c87601cb19b25c881caa5f13cd3f3baa71434d6b8` |
| 22 | `lemma` | [chainTopCoeff_reflectionPerm_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff-reflectionperm-left.md) | 266 | `result-track:7db16d3e75553477cc2589e9fba0726c9e6bdf9201ca970843cf0f4cc1302799` |
| 23 | `lemma` | [chainBotCoeff_reflectionPerm_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-reflectionperm-left.md) | 277 | `result-track:c23551602fdb69aec25c163ff980b8da8843863aea20ad0fb09a326da1842e12` |
| 24 | `lemma` | [chainTopCoeff_reflectionPerm_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff-reflectionperm-right.md) | 288 | `result-track:6fe27fcd62d139c9837e7db19c6eb31e463aeed92b5914cf0eac6d3645c985a7` |
| 25 | `lemma` | [chainBotCoeff_reflectionPerm_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-reflectionperm-right.md) | 299 | `result-track:0fbb373aa935cff1166a1e2cb260ae6338f2decbb79d189cf9ce3130e3fe3a8e` |
| 26 | `lemma` | [chainBotCoeff_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-eq-zero-iff.md) | 309 | `result-track:44522ebb2aa9eec5b947a2d2bfca1fd3804b3a136e33e98fd820900cbfb2d845` |
| 27 | `lemma` | [chainTopCoeff_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff-eq-zero-iff.md) | 324 | `result-track:fa7f9c50f6882b994c5ccf404fb3c9be420c39828128e0a8892e2adf9a0271f8` |
| 28 | `lemma` | [chainBotCoeff_of_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-of-add.md) | 332 | `result-track:6f15600e740c7671334a428c696b8084663eeb18b44a042c29373a1799465e0c` |
| 29 | `lemma` | [chainTopCoeff_of_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff-of-sub.md) | 346 | `result-track:8598363ca7508f6407e9989c787f5222f6960ea91e40bcf0a0daf96e340dcf05` |
| 30 | `lemma` | [chainTopCoeff_of_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff-of-add.md) | 352 | `result-track:a70d60b0d3507f7499aa7395098338decdebbcca8b052329ca8b914c70095c24` |
| 31 | `def` | [chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopidx.md) | 366 | `declaration-track:4d7afcadba42fae2bd6c17431054af3ec2a0e7383101568edaff6fd3aa0ff463` |
| 32 | `def` | [chainBotIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotidx.md) | 377 | `declaration-track:1f7d91ad7f9456e57eb0da875f550152e3797123f78663ded1344a2d5f66f6a7` |
| 33 | `lemma` | [root_chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/root-chaintopidx.md) | 386 | `result-track:f69cadfad8de4e81dc91f783f0f85d344d663e5ff8cf8a20b1d1c03d01139ee0` |
| 34 | `lemma` | [root_chainBotIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/root-chainbotidx.md) | 395 | `result-track:1674aaee34d5599940bf5675cbbd88c39d21f05582611bd28694f0a8743ff3a2` |
| 35 | `lemma` | [chainBotCoeff_sub_chainTopCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-sub-chaintopcoeff.md) | 405 | `result-track:8922ecde77f1fea34f44b998801c8ffc0baabe7e092bde8fcf33df3d08aaff2b` |
| 36 | `lemma` | [chainTopCoeff_sub_chainBotCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff-sub-chainbotcoeff.md) | 425 | `result-track:54d2da1bac0efb850bd9779407d0c09718ac27cc86a8bfb7929a1ae1aadd3be1` |
| 37 | `lemma` | [chainCoeff_chainTopIdx_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaincoeff-chaintopidx-aux.md) | 431 | `result-track:f1bd8ad01538aec9c2ec81391d32f58b99bf43f26640a4631a33357a4628c9d3` |
| 38 | `lemma` | [chainBotCoeff_chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-chaintopidx.md) | 455 | `result-track:1e0f81e63c83e156221f7fc76d327fe9ca91efa891f3c7249011f5eca108c402` |
| 39 | `lemma` | [chainTopCoeff_chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chaintopcoeff-chaintopidx.md) | 460 | `result-track:57f548ca4510bf033b5ce2946c90028d5331dcff20bdb2afb2c69434aa03b87a` |
| 40 | `lemma` | [chainBotCoeff_add_chainTopCoeff_eq_pairingIn_chainTopIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-add-chaintopcoeff-eq-pairingin-chaintopidx.md) | 465 | `result-track:1a6383f685ee243093c6d2a850ac01eec538bf02e1d05548cedc3b6767bc224c` |
| 41 | `lemma` | [chainBotCoeff_add_chainTopCoeff_le_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemChainPublic.lean/declarations/chainbotcoeff-add-chaintopcoeff-le-three.md) | 475 | `result-track:119be9c06205c868ecacb62a1ff9cdc9b53de3d54fb37c4affd3e9c4a19273da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c71441c0eb7e381c76d2f28203df7d48286881ca560043a9b1cd7b33c145fdff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Chain/Variant40d73374ce7138a114bae9c3e4095c6773900ce4256a68cb67eac352f1f2cefb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Chain/Variant40d73374ce7138a114bae9c3e4095c6773900ce4256a68cb67eac352f1f2cefb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
