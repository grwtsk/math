# Verification target: Congruence Subgroups Namespaced Gamma0 Det

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d87c08ec096149ff1be6d3aa5c2791a2fa39858",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant2439883a8cff679f2112216e450cfbb22d410375f50ec380b08239729162cee7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/index.md) · [Full source](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d87c08ec096149ff1be6d3aa5c2791a2fa39858`.

Source path: `GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant2439883a8cff679f2112216e450cfbb22d410375f50ec380b08239729162cee7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/CongruenceSubgroups/Variant2439883a8cff679f2112216e450cfbb22d410375f50ec380b08239729162cee7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SL_reduction_mod_hom_val](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/sl-reduction-mod-hom-val.md) | 48 | `result-track:cbae9adce84375b9734943f2e590bb53cc2a243ef601184f42e8aa1e3a2b4ba6` |
| 2 | `def` | [Gamma](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma.md) | 55 | `declaration-track:72b77e14cffa5ecab69bc5eac984e43c360bcf323782e3993850c674afc7461a` |
| 3 | `theorem` | [Gamma_mem'](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma-mem-source-edition-2.md) | 59 | `result-track:aa677a7b867ac96c5294683b2b220a442059ed9d3603e930b84e323ab27ede42` |
| 4 | `theorem` | [Gamma_mem](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma-mem.md) | 64 | `result-track:3ed817ba41cf0da6cbaf5fb06f6786e9cad77607933980911aa0e51c2fff2a07` |
| 5 | `theorem` | [Gamma_normal](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma-normal.md) | 77 | `result-track:2e41125c1121cc54e0fcbb81e5a86e91ad369c265683df970ae2879c067866b8` |
| 6 | `theorem` | [Gamma_one_top](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma-one-top.md) | 81 | `result-track:e99013b8e72edecd40e2b69f1b551fd4d85e0e7272cccdd0b1c87d55e76d72c3` |
| 7 | `theorem` | [Gamma_zero_bot](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma-zero-bot.md) | 86 | `result-track:dee8e4b6822dd462fc41c3e71761202f983dee5f7084976165531bee7737d3fa` |
| 8 | `def` | [Gamma0](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma0.md) | 101 | `declaration-track:bbb45eda9aff48a28689834661bccf0cd75a42ea6551565a4086e26a2a985e9b` |
| 9 | `theorem` | [Gamma0_mem](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma0-mem.md) | 121 | `result-track:836d4b039bbef73dec4b2099ac86f04b47c4e97bc53b60ef4d14eb2be04285b9` |
| 10 | `theorem` | [Gamma0_det](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma0-det.md) | 125 | `result-track:e0ad42abcf3b2482f3ace63284ecd93783667296f17551bf36337f007ebef5e0` |
| 11 | `def` | [Gamma0Map](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma0map.md) | 130 | `declaration-track:fc7de5c30047aa37334ce5cbb6660681c5d271bd4fa8488facf3c5784953ed06` |
| 12 | `def` | [Gamma1'](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma1.md) | 147 | `declaration-track:1cf19c9a0207769f03c607428f46f6c971416fa7bc9f31ed16b7ac033437cce6` |
| 13 | `theorem` | [Gamma1_mem'](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma1-mem.md) | 152 | `result-track:1858ea3b51d885edb0585c26942eb402997574ebf1c65007d4b0f672c825bd55` |
| 14 | `theorem` | [Gamma1_to_Gamma0_mem](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma1-to-gamma0-mem.md) | 156 | `result-track:8288d24b31952553eebd71076909255e7630922e33874c7a7679adb44f41fea2` |
| 15 | `def` | [Gamma1](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma1-source-edition-2.md) | 177 | `declaration-track:470b0b4cc9936970258da8921444bffa30a39f0df942a28edb302ea9b9425d8b` |
| 16 | `theorem` | [Gamma1_mem](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma1-mem-source-edition-2.md) | 182 | `result-track:64994df86e60483009029c93c058212dcba7dd64d8bf489fe464c580a294bea4` |
| 17 | `theorem` | [Gamma1_in_Gamma0](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma1-in-gamma0.md) | 203 | `result-track:54e30c61d0217b7f54e92142506042e23d8fa79fdfaaf46a4ca3d7ff00ee5c1b` |
| 18 | `def` | [IsCongruenceSubgroup](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/iscongruencesubgroup.md) | 213 | `declaration-track:6049414340c563a9a82b27bee288044c0b1861b9533cfbcf4d55ace37257d3c9` |
| 19 | `theorem` | [isCongruenceSubgroup_trans](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/iscongruencesubgroup-trans.md) | 217 | `result-track:bbaee62d85c03677458f8b8e098f499cb1f03e5d33ee189fdc875549ce0d55f6` |
| 20 | `theorem` | [Gamma_is_cong_sub](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma-is-cong-sub.md) | 223 | `result-track:38bb99a18c32f948f3363db9cd40c7c91618bb6e1a7c12b93342584c2da0f377` |
| 21 | `theorem` | [Gamma1_is_congruence](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma1-is-congruence.md) | 227 | `result-track:0ec0a1928053d96be3e13be8a5e8f17bfa59ebfd8898889a30c870fb51e964a2` |
| 22 | `theorem` | [Gamma0_is_congruence](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma0-is-congruence.md) | 234 | `result-track:23c35316f5aaefa7fb6b6706dd28d15e104b814d5658bb26134e30cc6e6d287f` |
| 23 | `theorem` | [Gamma_cong_eq_self](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/gamma-cong-eq-self.md) | 244 | `result-track:50f7dbcc0d86842a221d30908aaeab442171f7ea276f8740aa168972fae67e41` |
| 24 | `theorem` | [conj_cong_is_cong](../../../../NumberTheory/CongruenceSubgroupsNamespacedGamma0Det.lean/declarations/conj-cong-is-cong.md) | 248 | `result-track:32a920d7e1a1bf09f9a318c2ba9731a70c386368897a937d2169bea2f1fee650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=faf5448e33d5d422ca417fbb907105c1755f055995f23cf5bd9f6b4aad179d6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant2439883a8cff679f2112216e450cfbb22d410375f50ec380b08239729162cee7.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/CongruenceSubgroups/Variant2439883a8cff679f2112216e450cfbb22d410375f50ec380b08239729162cee7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
