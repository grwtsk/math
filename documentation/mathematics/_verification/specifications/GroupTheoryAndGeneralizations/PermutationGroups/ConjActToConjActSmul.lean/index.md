# Verification target: Conj Act To Conj Act Smul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07db7b0b02891091a89e5c802545d49681c7030e",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ConjAct/Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07db7b0b02891091a89e5c802545d49681c7030e`.

Source path: `GRWTSK/Algebra/GroupTheory/ConjAct/Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ConjAct/Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/conjact.md) | 40 | `declaration-track:7bb49dfb399b196f72cb81a6c68efa440bf1b2c021c1a9c28288c216e894e692` |
| 2 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/instance-source-edition-3.md) | 49 | `declaration-track:b4f7a0891f362318197117305217a1ce4a873fde404bd9338f821cbcc590d1b1` |
| 3 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/instance-source-edition-5.md) | 51 | `declaration-track:ec78699be11a8efeea4f42bb43047ce38a212911a2ebe4b921bbc3ae41d2439f` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/instance.md) | 53 | `declaration-track:514d084f0ea85f3b588f534006be3f159d14092a5678702f5fddea9092e187ef` |
| 5 | `theorem` | [card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/card.md) | 56 | `result-track:c81c53f8f2a104c4de5b753824612fba475648d997dd9ef2455809e6812d1c5f` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/instance-source-edition-4.md) | 63 | `declaration-track:d9a8d0503af0dc3886a000314a3a066be29f56e7a5d0f793f3640e98fb1fbb2b` |
| 7 | `def` | [ofConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/ofconjact.md) | 67 | `declaration-track:99e686dcc80ecf5b7ecf80a174ddbdaeb1e17d9753e79796865712e69973a831` |
| 8 | `def` | [toConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/toconjact.md) | 75 | `declaration-track:df554abce1a7f222f2f628b6d305a5d1534ef6be83ff2806848e298021c5c3f6` |
| 9 | `def` | [rec](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/rec.md) | 80 | `declaration-track:a984667c4ffb2f3446075314e80ce0838ed7659e3986dd67f48d61aee8f8afc4` |
| 10 | `theorem` | [«forall»](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/forall.md) | 84 | `result-track:23f45f60355c697157aa1842bf300c7e27246878b055178d5d4311391a254ed4` |
| 11 | `theorem` | [of_mul_symm_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/of-mul-symm-eq.md) | 88 | `result-track:0f12293e96242b4defca0ae54edcc427b2e6f9afcdcd831eed545bf245f5b6d0` |
| 12 | `theorem` | [to_mul_symm_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/to-mul-symm-eq.md) | 92 | `result-track:d79853d2c2b4b01869aba66a5b2d9a62914621499525b2f2eba4bcaf165bfb39` |
| 13 | `theorem` | [toConjAct_ofConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/toconjact-ofconjact.md) | 96 | `result-track:388223edb9d629a14d05289af3826c762c931588a09bdb61edf24096449e79d4` |
| 14 | `theorem` | [ofConjAct_toConjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/ofconjact-toconjact.md) | 100 | `result-track:0dbc1dbcf356156be8efee8a6f2781a4d3c0db6a6d6dd8da33b7f6d407747eb7` |
| 15 | `theorem` | [ofConjAct_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/ofconjact-one.md) | 104 | `result-track:811c06ee80e5d59d28fc91e20a6b9cbeee637b25ae7972c9ead23b8ce9c5dfe1` |
| 16 | `theorem` | [toConjAct_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/toconjact-one.md) | 108 | `result-track:057d7b5a13491fc2968089de896c409db6c10dd4f2dea73832181d66a060bd01` |
| 17 | `theorem` | [ofConjAct_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/ofconjact-inv.md) | 112 | `result-track:09e623b0512332e3fe8dc2a545aef97b5aa8122d0b85010a8fc5834ece4f3776` |
| 18 | `theorem` | [toConjAct_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/toconjact-inv.md) | 116 | `result-track:4d80115b80bc3a17925ebe9ed5763b04daa988069ffbb7ff6a4b44beb525f24c` |
| 19 | `theorem` | [ofConjAct_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/ofconjact-mul.md) | 120 | `result-track:820e11b92270eff29ff5cfaed4c6109d193b1b3182819fb531c786d55490c711` |
| 20 | `theorem` | [toConjAct_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/toconjact-mul.md) | 124 | `result-track:7a38a79b7e40f3a9eb53287d74efa6e05d0c025e0b337c562e8e3fd5419679dd` |
| 21 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/instance-source-edition-6.md) | 127 | `declaration-track:ecf695375070cac5ad5820d71d5fdf8333ba547970f2399d441277bc2b9f93ea` |
| 22 | `theorem` | [smul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/smul-def.md) | 129 | `result-track:0d350f1c92cf3667cc87792d1f8e390a0ff8612be682f1b6bd37fa5cac2e8656` |
| 23 | `theorem` | [toConjAct_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/toconjact-smul.md) | 132 | `result-track:ff7c3f8f51b3bffb43a746efb970cf60ae4b5ce9db615211e71ea82577c24538` |
| 24 | `instance` | [unitsScalar](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/unitsscalar.md) | 143 | `declaration-track:2a42bc97002b453b2421786234ca2ec1312fb34d9798020048b94e3492fe9831` |
| 25 | `theorem` | [units_smul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/units-smul-def.md) | 145 | `result-track:eb97b356218679e472974dd7a00c486b7226faabb52708be5023e6f3c7aeae6a` |
| 26 | `instance` | [unitsMulDistribMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/unitsmuldistribmulaction.md) | 148 | `declaration-track:e6cc5d08f5a6b7f40707aaa7c774e96757026e57fddee135fe281a263ba31cf5` |
| 27 | `instance` | [unitsSMulCommClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/unitssmulcommclass.md) | 155 | `declaration-track:455c95589f628f8ec1a9eae2fd466e394bff8ad1668765a1351dacb212799c35` |
| 28 | `instance` | [unitsSMulCommClass'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/unitssmulcommclass-source-edition-2.md) | 159 | `declaration-track:c1008ca8d4823c8b84f7b82ec6b34d259bb5eea60eaa2dde9fcfac1627b38203` |
| 29 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/instance-source-edition-2.md) | 172 | `declaration-track:797ec0f0534f6f6e288be3ee56c1f636bc0a7fab864a5a4c36327f11412821ae` |
| 30 | `instance` | [smulCommClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/smulcommclass-source-edition-2.md) | 178 | `declaration-track:5f818afa9934fc4dda1d26f06ed69584c77b2a2f0f26708d378061d399ac100f` |
| 31 | `instance` | [smulCommClass'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/smulcommclass.md) | 182 | `declaration-track:17f8cc7e50b7f6253fe6c8b7fb07df211b2a0a843e92fbb361a4103ada9560da` |
| 32 | `theorem` | [smul_eq_mulAut_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/smul-eq-mulaut-conj.md) | 187 | `result-track:bfc85b9d956b829b684eacd15873faf88e54c4fb07447bcbce54e0e82504da9b` |
| 33 | `theorem` | [fixedPoints_eq_center](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/fixedpoints-eq-center.md) | 191 | `result-track:e7854a195fc87d9de332727f8fecff3070621d6b8b19ba01d1452fa6ae2f6260` |
| 34 | `theorem` | [mem_orbit_conjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/mem-orbit-conjact.md) | 196 | `result-track:b0940d9c9228b0b10268b14f30de25fe38ee5840f3487a234d63277a400a196c` |
| 35 | `theorem` | [orbitRel_conjAct](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/orbitrel-conjact.md) | 199 | `result-track:42d57af72027b5b6f6c8c519d106f5d0a43d0b5b3e8c38c310ba499a7520b5e7` |
| 36 | `theorem` | [orbit_eq_carrier_conjClasses](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/orbit-eq-carrier-conjclasses.md) | 202 | `result-track:784d0dea62f36b16e08985bf1f68cfe41582868371770625f74dfca8ba2a8e8e` |
| 37 | `theorem` | [stabilizer_eq_centralizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/stabilizer-eq-centralizer.md) | 207 | `result-track:396ce47377c7a7ac496072ec31dedeed8b0cbc466eda9abff8f1f3c561bf8c83` |
| 38 | `theorem` | [_root_.Subgroup.centralizer_eq_comap_stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/root-subgroup-centralizer-eq-comap-stabilizer.md) | 212 | `result-track:edee4b4e6d9db15adafeefa6992e0efdffa94d4ef771ad545d1bb37a47e8cd1e` |
| 39 | `instance` | [Subgroup.conjAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/subgroup-conjaction.md) | 224 | `declaration-track:7c4dba0e624fe3eced7cd034aaa74b9b73b33fa47640d53217bd94797823f11a` |
| 40 | `theorem` | [Subgroup.val_conj_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/subgroup-val-conj-smul.md) | 227 | `result-track:ab833ab0723a0a44cab9b1914097a3f56ad9e99ba6dd83543f29491fb575bb5b` |
| 41 | `instance` | [Subgroup.conjMulDistribMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/subgroup-conjmuldistribmulaction.md) | 231 | `declaration-track:1d28d7af445bc83530b46a631eea4f7ec272e1478045c361286897f13c586d2a` |
| 42 | `def` | [_root_.MulAut.conjNormal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/root-mulaut-conjnormal.md) | 236 | `declaration-track:04df3213618b7ebf1222c60cb3f86b05f158f5c916e5ad2cc732b83279249ff8` |
| 43 | `theorem` | [_root_.MulAut.conjNormal_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/root-mulaut-conjnormal-apply.md) | 240 | `result-track:70e3a66cd26fa1bbcad4a8739c0b04ed57a0406d0923ca81c8189bfe4e988fbb` |
| 44 | `theorem` | [_root_.MulAut.conjNormal_symm_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/root-mulaut-conjnormal-symm-apply.md) | 245 | `result-track:970b11f26bbd8ea5c2128adfb7363477f4aac33c90d6f4e2368b2c5f1156f38d` |
| 45 | `theorem` | [_root_.MulAut.conjNormal_inv_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/root-mulaut-conjnormal-inv-apply.md) | 251 | `result-track:55c097ee5f42c65987a4c0f5ad738873c3647316d6fc2534e170410c62869e65` |
| 46 | `theorem` | [_root_.MulAut.conjNormal_val](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/root-mulaut-conjnormal-val.md) | 255 | `result-track:9eeae1134b638a2ee4c495b8445c0213b72ff95abf9ad1440707cc5a3a64acb5` |
| 47 | `instance` | [normal_of_characteristic_of_normal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/normal-of-characteristic-of-normal.md) | 259 | `declaration-track:cf15a6b9c8637ce16914ce55f487e99d48c454bd23b9b05f4cb7ecb8b084736d` |
| 48 | `def` | [unitsCentralizerEquiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/ConjActToConjActSmul.lean/declarations/unitscentralizerequiv.md) | 275 | `declaration-track:b70bba64b02967a9339df7531799cb9216b7bdeade21fa3e62c5c7eae865e54f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1d9555eb9bc4f932becdfc422a84b35a5eef4ec7b59c9f79e540d6ee60d3729 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ConjAct/Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ConjAct/Variant7c37882dc10920cee9ad851d9b4b889b733316f2e18ab181f83bdb1011a48143.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
