# Verification target: Algebra Mv Polynomial Rename Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5badf02217b318a81d10530fffe0cf2b95f3a1c0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant83e8971ac59cbb4861cfdc35f01e40ba52baee93985b8048ed42c636c3bd1b5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5badf02217b318a81d10530fffe0cf2b95f3a1c0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant83e8971ac59cbb4861cfdc35f01e40ba52baee93985b8048ed42c636c3bd1b5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Rename/Variant83e8971ac59cbb4861cfdc35f01e40ba52baee93985b8048ed42c636c3bd1b5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename.md) | 58 | `declaration-track:0bf2d2a38b79d45488ad739b738cc018122be67dd744ce7a851601a005b43f98` |
| 2 | `theorem` | [rename_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-c.md) | 61 | `result-track:f85512cbc5f70e3048a8b5f5a462474626425dd139d2e61e194e62a803d3d34e` |
| 3 | `theorem` | [rename_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-x.md) | 65 | `result-track:80816b65b48822b2e732eebf4e7cb0740398c7234f0ff2ad3731fca9a89885a5` |
| 4 | `theorem` | [map_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/map-rename.md) | 68 | `result-track:429c42959f4e7abdca75b398c7d6c99b85e66826a9e178a8d1443847aa0ca152` |
| 5 | `lemma` | [map_comp_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/map-comp-rename.md) | 75 | `result-track:47aa05d7898066b1ead752546bfa71bf44d296a7230830c8358722f93d929f4f` |
| 6 | `theorem` | [rename_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-rename.md) | 80 | `result-track:c8170065683a2f74a9c5686dca09122a66b10bb834a9d6900deb634036425de4` |
| 7 | `lemma` | [rename_comp_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-comp-rename.md) | 91 | `result-track:003beac45b1c08fae6bc5fa553931a24cb57ec891f30682a16c07e5d1893ba2b` |
| 8 | `theorem` | [rename_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-id.md) | 96 | `result-track:e14157536a76b3e0643d2da4fa573f73279fcdc73f50a97462834706428bfdb1` |
| 9 | `lemma` | [rename_id_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-id-apply.md) | 99 | `result-track:033cc5036eb1b479bd18dbf99cf4db725c88731b77afd592f4de310c76335f5a` |
| 10 | `theorem` | [rename_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-monomial.md) | 102 | `result-track:32818edd92a20db7fda89179efd30c2185da99668f8d4ee46d78711780d98ccf` |
| 11 | `theorem` | [rename_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-eq.md) | 110 | `result-track:5edf605c50ff1aea9ac0ea4259213da48775f5a8db4247c55991e7a3ccef430b` |
| 12 | `theorem` | [rename_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-injective.md) | 116 | `result-track:f6154b8fb73f5c495aa281cbcd744304e75d2a993a2db11397878de9aaa9db9c` |
| 13 | `theorem` | [rename_leftInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-leftinverse.md) | 124 | `result-track:7c07775d61d29e3463ec1ccd228ac2abbdea4380b3e0396689ecb839b6705ddb` |
| 14 | `theorem` | [rename_rightInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-rightinverse.md) | 129 | `result-track:8db4b34d887d9a4bec5538cb83b8a806bc7fa17e9cd017611da41fe056fc7da7` |
| 15 | `theorem` | [rename_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-surjective.md) | 133 | `result-track:d54afb61c1ae4d6213e494e67d888c58b609615f3c6eb57c4563699581390cf5` |
| 16 | `def` | [killCompl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/killcompl.md) | 145 | `declaration-track:82b468daab9bd780c63d7a81f7e91a851773ff4db54dcaf29cc814601f1360c4` |
| 17 | `theorem` | [killCompl_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/killcompl-c.md) | 148 | `result-track:01e0431b7270d63bef379de4b27636b2792a81dddf7a27c3b0a3ed981e3f1d42` |
| 18 | `theorem` | [killCompl_comp_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/killcompl-comp-rename.md) | 150 | `result-track:db9fa1e24406694728cbbc4acd8777c891498c540d383328ee258d464e1c1c33` |
| 19 | `theorem` | [killCompl_rename_app](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/killcompl-rename-app.md) | 156 | `result-track:0bb641a2368a6dfe71ad6e0cf4c56f2ea9a3af5063cc0e17f5cbdc79164dd82b` |
| 20 | `def` | [renameEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/renameequiv.md) | 167 | `declaration-track:0b001898d0663cdbb11f7c70de7dfbae5573a7c49d1313f39f997b0cc85db2ee` |
| 21 | `theorem` | [renameEquiv_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/renameequiv-refl.md) | 175 | `result-track:9d7ed9cbf12566b3dbac24425f45775b2280ddf71789a53725c80c167344f834` |
| 22 | `theorem` | [renameEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/renameequiv-symm.md) | 179 | `result-track:46dc73eea000a1d16c5c6ab5ce9cab7dd0264e3fb763a20d7f3a350c26e90988` |
| 23 | `theorem` | [renameEquiv_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/renameequiv-trans.md) | 183 | `result-track:9dba3ab9c144f4474cae29a52277a6195359e4031a4e7e182bab144a9edf0f6d` |
| 24 | `theorem` | [eval₂_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/eval-rename.md) | 193 | `result-track:36dd4d88417f530ce22e908ceacf0878416b9a4ea08ed79fb0c54714c77ae4c8` |
| 25 | `theorem` | [eval_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/eval-rename-source-edition-2.md) | 198 | `result-track:43956c89b9be36680fe34776f81f9593ee2bddb17e6f18c6fb5a29c7fe7a13e8` |
| 26 | `theorem` | [eval₂Hom_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/eval-hom-rename.md) | 201 | `result-track:65347e34f4bd244dd0b0ad663255705e2e57508c871cc0a6c193814c151058df` |
| 27 | `theorem` | [aeval_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/aeval-rename.md) | 204 | `result-track:2ec8dc11257eb6cb5992f2d15b4274c99c9014fa359e46bba362bdfc0b88a614` |
| 28 | `lemma` | [aeval_comp_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/aeval-comp-rename.md) | 207 | `result-track:255f831d626eb6d24416dd6fc86b4bce1f2ae3624164926c53d7bc12172a6398` |
| 29 | `theorem` | [rename_eval₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-eval.md) | 211 | `result-track:0bf4f6460af26e21446cbff395d54b807eea6effafcbe004a6c4dfccdb5f5642` |
| 30 | `theorem` | [rename_prod_mk_eval₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/rename-prod-mk-eval.md) | 217 | `result-track:a5e0e7ffd342ae23433921e07b0b6d77a448c232c277b8397da6cbe7d6a808a5` |
| 31 | `theorem` | [eval₂_rename_prod_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/eval-rename-prod-mk.md) | 223 | `result-track:409030a8f0f546e13f36109d61626f9fdb38e46418f73f532511a3e4d6f0897f` |
| 32 | `theorem` | [eval_rename_prod_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/eval-rename-prod-mk-source-edition-2.md) | 229 | `result-track:f56b5329bea161a4f04a04ffe98fc2d168afbf8606092f542b3b598459e01a7a` |
| 33 | `theorem` | [exists_finset_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/exists-finset-rename-source-edition-2.md) | 236 | `result-track:b9028e10696cd9ee18a06b499ac4ea890b31d4328085c974bf36f6dde55a5748` |
| 34 | `theorem` | [exists_finset_rename₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/exists-finset-rename.md) | 260 | `result-track:05ab2c9aa4a0a6eded2ccacc73844c11a005768845222c11735dd8a91b9d061f` |
| 35 | `theorem` | [exists_fin_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/exists-fin-rename.md) | 271 | `result-track:38379c25f7dca2668a5de374f2ae3be23e3e8de7b59e3ea7c170a7303a2fc0c0` |
| 36 | `theorem` | [eval₂_cast_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/eval-cast-comp.md) | 282 | `result-track:888d643f8a296c43b247c4625b43574bf1363269c26cc6bfcb2fbe9e389f7c1f` |
| 37 | `theorem` | [coeff_rename_mapDomain](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/coeff-rename-mapdomain.md) | 291 | `result-track:5264faa2d4b76f646d516adf070e13fb973fe99137aeae5d3ad6cb9553bbd4b6` |
| 38 | `theorem` | [coeff_rename_embDomain](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/coeff-rename-embdomain.md) | 303 | `result-track:33a340a82f543ac142b863b6cf90b725fc1a939fd014a6c9ffbfd14510fc07ce` |
| 39 | `theorem` | [coeff_rename_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/coeff-rename-eq-zero.md) | 307 | `result-track:a1118700563b1b06790446bc0849ef5d9025fa4a9a27e69abb54c9df3f8ec219` |
| 40 | `theorem` | [coeff_rename_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/coeff-rename-ne-zero.md) | 319 | `result-track:103fcc65bf9fe4e7ba33cfcde2359f44aa28896d514249875e79a77a9f0bc02c` |
| 41 | `theorem` | [constantCoeff_rename](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/constantcoeff-rename.md) | 325 | `result-track:60f1dfae12185fb24a5fe7089071fef209b933b22f5680b7cc68e33a15549df2` |
| 42 | `theorem` | [support_rename_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialRenameNamespaced.lean/declarations/support-rename-of-injective.md) | 339 | `result-track:098bb246e916b04f00ca66b1aa272360e2f7982a3f4aaa2b1a4d534ea605db51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdd2a49fa80579ba9f8f1764760a8d62013da3f16b8263e9adf896f2162a376f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant83e8971ac59cbb4861cfdc35f01e40ba52baee93985b8048ed42c636c3bd1b5c.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Rename/Variant83e8971ac59cbb4861cfdc35f01e40ba52baee93985b8048ed42c636c3bd1b5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
