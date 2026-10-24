# Verification target: GRWTSK.Topology.GeneralTopology.Quaternion.Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb28e6f14b0e9902f8ad97a873cb1385369955f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb28e6f14b0e9902f8ad97a873cb1385369955f`.

Source path: `GRWTSK/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Quaternion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/instance--3b9eedcb39ac2360af75e775.md) | 48 | `declaration-track:3b9eedcb39ac2360af75e7753a167d85c44fbb37dd1cf2b981ba20d40bd73bed` |
| 2 | `theorem` | [inner_self](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/inner-self--1f73443bd0dad278bacaa63d.md) | 51 | `result-track:1f73443bd0dad278bacaa63dbb80463ecc552b2004250c52c312f49b738076d5` |
| 3 | `theorem` | [inner_def](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/inner-def--92302333c64610f159421e18.md) | 54 | `result-track:92302333c64610f159421e18d0882e36f2699c114ea6f5f890c1b49d83dc5f93` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/instance--fac1c69d4e9914fef4751808.md) | 57 | `declaration-track:fac1c69d4e9914fef47518086cf5639c61078eca9d69ed61d8eed413f117f060` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/instance--e82a2e2f3b1eb1c146c175f0.md) | 66 | `declaration-track:e82a2e2f3b1eb1c146c175f036f8018d569535d8099120a30095499d2c4cedf0` |
| 6 | `theorem` | [normSq_eq_norm_mul_self](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/normsq-eq-norm-mul-self--e386d9cbba0f2e59051410cd.md) | 69 | `result-track:e386d9cbba0f2e59051410cd3d3cdd3e737a18947bf5308350f735fa2b822839` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/instance--53ecb287e7b6170586b7a4df.md) | 72 | `declaration-track:53ecb287e7b6170586b7a4df9adbd1fef35d3a4414f197bb6ad6049efd64c964` |
| 8 | `theorem` | [norm_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/norm-coe--d51c5ee6e6a4c9745af9bc5c.md) | 76 | `result-track:d51c5ee6e6a4c9745af9bc5c1415456281a62092aac6a750b91d0c76aabe3f84` |
| 9 | `theorem` | [nnnorm_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/nnnorm-coe--cd2633bcef07c28017c4196e.md) | 80 | `result-track:cd2633bcef07c28017c4196e859bb1042d3e2939f20c8d41ad0e51e2af5c8347` |
| 10 | `theorem` | [norm_star](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/norm-star--fdee625407c8402eeebe8dd0.md) | 84 | `result-track:fdee625407c8402eeebe8dd03f0886d3f134b897991caff8d7ba85b28ee2325e` |
| 11 | `theorem` | [nnnorm_star](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/nnnorm-star--192b01f57a04589af3fbb38f.md) | 88 | `result-track:192b01f57a04589af3fbb38f391474991e172cd06798c7aac90b040f845b80b3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/instance--40efe384c0f40f3445242106.md) | 91 | `declaration-track:40efe384c0f40f34452421069d53b1383cb2746d73c6ba615251cd29bdc1f034` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/instance--c7fbdfc0088c846457f12d92.md) | 95 | `declaration-track:c7fbdfc0088c846457f12d92402661546634e6f150ff4c5d5109d01dd634af81` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/instance--b7348dc24bbfb9824888ec31.md) | 99 | `declaration-track:b7348dc24bbfb9824888ec318b5ba8fd077b01a87994dc99315398aeb773514e` |
| 15 | `def` | [coeComplex](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex--5b96dde58ab5ecc0fd5fd2e8.md) | 104 | `declaration-track:5b96dde58ab5ecc0fd5fd2e84eb579766f5fcee3039a19efbb1c1599d9587676` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/instance--d41079e18c7b70150a940939.md) | 106 | `declaration-track:d41079e18c7b70150a9409395c5d2b8955bce42e735f1e471b8e53784454f007` |
| 17 | `theorem` | [coeComplex_re](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex-re--762421113aa2d02b475873cb.md) | 109 | `result-track:762421113aa2d02b475873cbcd89a4e27a9185f21ad55e89e108c5c585118c87` |
| 18 | `theorem` | [coeComplex_imI](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex-imi--cffc92d25eb4cd5472954d1a.md) | 113 | `result-track:cffc92d25eb4cd5472954d1a5818ffecc5405a767889affaf2089523fcbd42f8` |
| 19 | `theorem` | [coeComplex_imJ](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex-imj--e92fc77488664edd74073b18.md) | 117 | `result-track:e92fc77488664edd74073b185ca81b230357608ff61d1252fe631ed2e11b6a5f` |
| 20 | `theorem` | [coeComplex_imK](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex-imk--4ac2053534bd913a66e06f2c.md) | 121 | `result-track:4ac2053534bd913a66e06f2cee8b38e1578cde4b1e02b5248fc0487b868eeab5` |
| 21 | `theorem` | [coeComplex_add](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex-add--d3254a93f7c799d4e1225b05.md) | 125 | `result-track:d3254a93f7c799d4e1225b05c9aed01471249714918a08ed6a337d24bfbf9275` |
| 22 | `theorem` | [coeComplex_mul](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex-mul--48f22ad4dabb5df7f1e7d4a3.md) | 128 | `result-track:48f22ad4dabb5df7f1e7d4a393109ce5b700cc114b6cd62951433229b30f5fa7` |
| 23 | `theorem` | [coeComplex_zero](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex-zero--809261bc5fd7e0bd59e67794.md) | 131 | `result-track:809261bc5fd7e0bd59e677949bf22e9767551647a5cf2104fcf05760fb2ad138` |
| 24 | `theorem` | [coeComplex_one](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex-one--0e61030c7b1255e6a5630820.md) | 135 | `result-track:0e61030c7b1255e6a5630820a0fdb41fa9c87c0eaf9c82db3315e6b0d82e1966` |
| 25 | `theorem` | [coe_real_complex_mul](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coe-real-complex-mul--5ac6649197bbd3a1a77efb76.md) | 139 | `result-track:5ac6649197bbd3a1a77efb76ce9d4928a1c59fb1288f4d1e56bdcc7a984c630a` |
| 26 | `theorem` | [coeComplex_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coecomplex-coe--d5abc5924586f996710d371a.md) | 142 | `result-track:d5abc5924586f996710d371adf1d38558de6c9498fa4a6efbdcf2f940033901e` |
| 27 | `def` | [ofComplex](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/ofcomplex--0fb48428cfd572a897974041.md) | 146 | `declaration-track:0fb48428cfd572a897974041611cd36b66a76ab7fb536e2e43c45ddf9d743be0` |
| 28 | `theorem` | [coe_ofComplex](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/coe-ofcomplex--85b0f20a7293ee3c9e67d977.md) | 155 | `result-track:85b0f20a7293ee3c9e67d9776a37fe7b4daad2e2fa130a414aaf109550ad423f` |
| 29 | `theorem` | [norm_piLp_equiv_symm_equivTuple](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/norm-pilp-equiv-symm-equivtuple--37e416e4f1371d5fab0462bd.md) | 158 | `result-track:37e416e4f1371d5fab0462bd8ec62232fa5b7a379fb9001e4ac70d164ff5d77b` |
| 30 | `def` | [linearIsometryEquivTuple](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/linearisometryequivtuple--7ce93afd5ddd2922c304eb07.md) | 167 | `declaration-track:7ce93afd5ddd2922c304eb07338b91e921aae52198d26231f1170cb1506b9a3c` |
| 31 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/continuous-coe--9b36fcfe6eebcdb5fbec93c7.md) | 175 | `result-track:9b36fcfe6eebcdb5fbec93c7895b026ebe6d65b59ab168d3ad8a292aa0f94908` |
| 32 | `theorem` | [continuous_normSq](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/continuous-normsq--b44953582fed21a12a26465b.md) | 179 | `result-track:b44953582fed21a12a26465bb0dabab22233945a5481e5cdf04817e89f413735` |
| 33 | `theorem` | [continuous_re](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/continuous-re--0bfba3d0a05bee6629ce5280.md) | 184 | `result-track:0bfba3d0a05bee6629ce528052f02e0e7758131c7172ed4fff050490fa44fc8c` |
| 34 | `theorem` | [continuous_imI](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/continuous-imi--5eb5f6f4bcb3e054204ad66a.md) | 188 | `result-track:5eb5f6f4bcb3e054204ad66a6a59ad89e692b43c1888940b406b13bf4a6d036f` |
| 35 | `theorem` | [continuous_imJ](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/continuous-imj--b49f3c6fa4996cb30091a3e4.md) | 192 | `result-track:b49f3c6fa4996cb30091a3e493d912d924dd1e6bf060b8e24b79229556d29a6c` |
| 36 | `theorem` | [continuous_imK](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/continuous-imk--e0b612d24e77da1443c42e8f.md) | 196 | `result-track:e0b612d24e77da1443c42e8f243b5c137c62a8acf8bc7781d621502896787f63` |
| 37 | `theorem` | [continuous_im](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/continuous-im--396d4ea41867f9df95485186.md) | 200 | `result-track:396d4ea41867f9df95485186f2a331b956c6a89d1008686d1720871162702e06` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/instance--cd99409d2027571bec2f47bb.md) | 203 | `declaration-track:cd99409d2027571bec2f47bbfe2ea3702016addaa98d31847117a63921d70c1a` |
| 39 | `theorem` | [hasSum_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/hassum-coe--fdc87ccb7c86abd6537da360.md) | 213 | `result-track:fdc87ccb7c86abd6537da3602fe1bb752b994dca3ec4b9ea10777781dca990c3` |
| 40 | `theorem` | [summable_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/summable-coe--e5c2f6267b9198e314c0d0bd.md) | 220 | `result-track:e5c2f6267b9198e314c0d0bdb923d59ca618b07689b70cfd2aab20952b05aac5` |
| 41 | `theorem` | [tsum_coe](../../../../../mathematics/Topology/GeneralTopology/Quaternion/Variant66889c864d5c86922a78317613df91950dad5b3ec07c137da4e4fbc2ad9048d8.lean/declarations/tsum-coe--bcd9390a5743c6956963a6c6.md) | 227 | `result-track:bcd9390a5743c6956963a6c6e1e2aa82393bd10200405ab3ba3f3c4d02b02c36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
