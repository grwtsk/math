# Verification target: Operator Norm Bilinear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "569d3f985165d6ca2ccc475a507b636ba459afdc",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `569d3f985165d6ca2ccc475a507b636ba459afdc`.

Source path: `GRWTSK/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.ContinuousLinearMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [opNorm_ext](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/opnorm-ext.md) | 47 | `result-track:3890e1210fcd931ab845e6f341f905ddc8e32551ea7f265c6a8690b80d061fe4` |
| 2 | `theorem` | [opNorm_le_bound₂](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/opnorm-le-bound.md) | 61 | `result-track:03bee02d8d6d52af5a8dca89a24f25c9b5e47ee22705418867ad31290b1b4d4e` |
| 3 | `theorem` | [le_opNorm₂](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/le-opnorm.md) | 66 | `result-track:939c27afdb5dfe6ae13e5c160c0492c54a6308d52f99f80b6a3529f321a99934` |
| 4 | `theorem` | [le_of_opNorm₂_le_of_le](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/le-of-opnorm-le-of-le.md) | 71 | `result-track:d604f8e0c7554b6b8aa71dd195fd1715eecd643ee482598b53c3c4db54315cac` |
| 5 | `lemma` | [norm_mkContinuous₂_aux](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/norm-mkcontinuous-aux.md) | 83 | `result-track:1fe745ba59a794c3d988e3788cc43c9afe682da7845f304a88938e86ab1bebc3` |
| 6 | `def` | [mkContinuousOfExistsBound₂](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/mkcontinuousofexistsbound.md) | 97 | `declaration-track:76ef820ad71ff2ba0028b1b1a6b94b9432ab8f4e1d85579672633d1a292840f3` |
| 7 | `def` | [mkContinuous₂](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/mkcontinuous.md) | 113 | `declaration-track:bbefaaf3da9947fb54856ef716e119f96eddb6363ce6a667b28f0a022561425d` |
| 8 | `theorem` | [mkContinuous₂_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/mkcontinuous-apply.md) | 118 | `result-track:69d2395691ba26f78a9def4f5dece02add9a2ae7cb6d39514c795cf7a76d9b34` |
| 9 | `theorem` | [mkContinuous₂_norm_le'](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/mkcontinuous-norm-le.md) | 122 | `result-track:50dbc73d5756a9f0943716ca31edd36913199a96ef0d8323d07cb8e62e8d18bf` |
| 10 | `theorem` | [mkContinuous₂_norm_le](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/mkcontinuous-norm-le-source-edition-2.md) | 126 | `result-track:c3261658f19b1c27f327d28198ca348f22aafd1e953a4d83e899e25d494213ac` |
| 11 | `def` | [flip](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/flip.md) | 139 | `declaration-track:0f9a087f3067053d28340b58627d33bde89f57aeddea9f4a6ad6ffa8ee700da3` |
| 12 | `theorem` | [le_norm_flip](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/le-norm-flip.md) | 146 | `result-track:c153d7d1fb15d1c4dcc5e1cc661be8dc27e33f1481623568f34a566d2110cc39` |
| 13 | `theorem` | [flip_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/flip-apply.md) | 152 | `result-track:c68d47bd5605cb9200f72073ed6d9f8eb304470bf136133ebca2515f1c2287d3` |
| 14 | `theorem` | [flip_flip](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/flip-flip.md) | 156 | `result-track:643ec5ca284c80e343d4f3b72ea11ece5e3c897e71e11769b115312235cf6088` |
| 15 | `theorem` | [opNorm_flip](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/opnorm-flip.md) | 161 | `result-track:83784e0cfd58237c40fecc91bcb1a69d7c4b9feeb9029dd3c4952c537d25ad60` |
| 16 | `theorem` | [flip_add](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/flip-add.md) | 166 | `result-track:07f44be19cd9631d678e1ca5fae75ac0f1e51ee3bd27b59b700bf4023227c7a2` |
| 17 | `theorem` | [flip_smul](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/flip-smul.md) | 170 | `result-track:48f052838e8527b7ebfffb9949305b54eedfaadae51ebfd7b84abc766e57c621` |
| 18 | `def` | [flipₗᵢ'](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/flip-source-edition-3.md) | 178 | `declaration-track:c21a6eab891bf92d1dfe52ad693ca4b971f7dbd74b08492b1875072ce939238c` |
| 19 | `theorem` | [flipₗᵢ'_symm](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/flip-symm-source-edition-2.md) | 190 | `result-track:5be3c032cb322bf5f6f680fb814778907d64a9bb3da9f7367cba51aebf97d3a6` |
| 20 | `theorem` | [coe_flipₗᵢ'](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/coe-flip.md) | 194 | `result-track:01ff93a049766a0ab35fd104309fe4c52c791908f729311150d94c88064e65ce` |
| 21 | `def` | [flipₗᵢ](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/flip-source-edition-2.md) | 202 | `declaration-track:6600a6974ccfe62b83b3bc774586882ccbbf66bccffe0e135ecc6b6aa7dc1ec1` |
| 22 | `theorem` | [flipₗᵢ_symm](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/flip-symm.md) | 214 | `result-track:3efa999da898926bdae8d13550631648c722d2d0519e80cbc25cf5801db1bc7a` |
| 23 | `theorem` | [coe_flipₗᵢ](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/coe-flip-source-edition-2.md) | 218 | `result-track:a394a02974620fa2e712da1b38e3a6d4163461f7fa88af112c3ac5d6d07c8a7d` |
| 24 | `def` | [apply'](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/apply-source-edition-2.md) | 228 | `declaration-track:81ab39b9f5242791ebc497c8ba2fbe9751189ef3284ca1f419c8fd92bf9c2d5c` |
| 25 | `theorem` | [apply_apply'](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/apply-apply.md) | 234 | `result-track:17643d7324b87d16065fe5cc89f99f36652f031014bf0114bb3463d4971a5bf2` |
| 26 | `def` | [apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/apply.md) | 243 | `declaration-track:00d786890258b87aef9ed824af319971d007c1889cb0898ad5bf522ff5c74f42` |
| 27 | `theorem` | [apply_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/apply-apply-source-edition-2.md) | 249 | `result-track:3eb5a7746df022d89aca37158e9d452fcf4b8067a7991db3de028c577ed691dd` |
| 28 | `def` | [compSL](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/compsl.md) | 256 | `declaration-track:c1be21c9943e9b714c59e98e0f415d19dc96c7ba262f60e8cb8d9b1482259eec` |
| 29 | `theorem` | [norm_compSL_le](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/norm-compsl-le.md) | 264 | `result-track:01b983c67fe4cd8695b6173bf2fe9d0761d806f5a984124f9c4b36b227ae55ac` |
| 30 | `theorem` | [compSL_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/compsl-apply.md) | 270 | `result-track:5c915d975f577e235039c9be0b63d653c4d77f673b001949b73a104d5eadb95d` |
| 31 | `theorem` | [_root_.Continuous.const_clm_comp](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/root-continuous-const-clm-comp.md) | 273 | `result-track:1bc568ffce06414022b25b63e1e26a058b9e7d0fa84a84a6d068d372c4028b6d` |
| 32 | `theorem` | [_root_.Continuous.clm_comp_const](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/root-continuous-clm-comp-const.md) | 279 | `result-track:b6200577ade309c6c599bcae0673e6391c09c44d876940aeb59ea4ee7efacdae` |
| 33 | `def` | [compL](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/compl.md) | 288 | `declaration-track:60d0440e93a61e6565481844c7870fbc9a392b76d3e6ee960955d7c29f9ce8ed` |
| 34 | `theorem` | [norm_compL_le](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/norm-compl-le.md) | 291 | `result-track:af8c1fb5aa0578bf668f8b8113d6e9583ca701fbca75c16136e8cd7bc9c892f9` |
| 35 | `theorem` | [compL_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/compl-apply.md) | 295 | `result-track:cbf79ec6bb672b595a3e347856c993c32575a3d6bc78e04d97617ff93289a64f` |
| 36 | `def` | [precompR](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/precompr.md) | 302 | `declaration-track:2c207db1cfeb43e152edcfff61b7e9421f3c746496c657d56e7a171e8666e02c` |
| 37 | `def` | [precompL](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/precompl.md) | 306 | `declaration-track:ca262dfa36804543f62b0e2800617a9565c23dc70829e761914c6b347223392c` |
| 38 | `lemma` | [precompL_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/precompl-apply.md) | 309 | `result-track:5fc07e622e83c37972494fc4c8f1ad057cd1a9b5c1ec4431ebc931561ee720c6` |
| 39 | `theorem` | [norm_precompR_le](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/norm-precompr-le.md) | 312 | `result-track:5180535c01caabd2e480fc54dc646154f8b3b19deb1d5ff2dd5413733cc4c776` |
| 40 | `theorem` | [norm_precompL_le](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/norm-precompl-le.md) | 318 | `result-track:c11932ac5b16d216f4aee78ad901336f37bb314d8ecb01d63c9d4b1fee4f6ea1` |
| 41 | `def` | [bilinearComp](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/bilinearcomp.md) | 336 | `declaration-track:9deeb03b07c5e878cb902556f9a375528fc7b0dcbc336c5fa540b0bd2aa19509` |
| 42 | `theorem` | [bilinearComp_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/bilinearcomp-apply.md) | 341 | `result-track:6a91d47ed8e273b56b1f19a6b6406ef350397af3c6a4ea216f1d1f824ea71650` |
| 43 | `def` | [deriv₂](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/deriv.md) | 349 | `declaration-track:6e5552ccf5b38e7ecbe619eedcfb51f6ba4265f2ba913e7377978c321001a2a9` |
| 44 | `theorem` | [coe_deriv₂](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/coe-deriv.md) | 353 | `result-track:fc8890b62206e4ecdf82edd4c359f05eb0a5676279c9d262f1b290b19ff529bb` |
| 45 | `theorem` | [map_add_add](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/map-add-add.md) | 357 | `result-track:db2080212df69a3af6d0c38f9a13d6085a00081af06547a534541025f01b3832` |
| 46 | `theorem` | [norm_smulRight_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/norm-smulright-apply.md) | 365 | `result-track:b982ee4e628207b1ef1e8d1671d2daca2e7edb790b2e8319c47a51eb00f17b30` |
| 47 | `theorem` | [nnnorm_smulRight_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/nnnorm-smulright-apply.md) | 385 | `result-track:d0493d32bf3d2e9bc86f3d8d05c808b365aed3fa928c025c09807a9df7afe4f2` |
| 48 | `def` | [smulRightL](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/smulrightl.md) | 391 | `declaration-track:a7f242c79b1568e12f98ea29edc9b21184f035023288ef2682cb62a47fd1c03b` |
| 49 | `theorem` | [norm_smulRightL_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/norm-smulrightl-apply.md) | 407 | `result-track:737053a9680816a5d66fe97faee646d5bfcaad63f459ace90a80fb610205fa60` |
| 50 | `def` | [bilinearRestrictScalars](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/bilinearrestrictscalars.md) | 425 | `declaration-track:15f3f7527e23e2843d42dbd2fe74e4cb5bb6789456abb641bfe7a75a2f623792` |
| 51 | `theorem` | [bilinearRestrictScalars_eq_restrictScalarsL_comp_restrictScalars](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/bilinearrestrictscalars-eq-restrictscalarsl-comp-restrictscalars.md) | 430 | `result-track:311b138f3a6a5525ada37a962ea4392e29dffd76ac0bc304fa777f0de39cac4e` |
| 52 | `theorem` | [bilinearRestrictScalars_eq_restrictScalars_restrictScalarsL_comp](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/bilinearrestrictscalars-eq-restrictscalars-restrictscalarsl-comp.md) | 433 | `result-track:a551fb2b0baa2ab5d437395196b6cdecdae5658a20f4c1311e36c90e9f36aac5` |
| 53 | `theorem` | [bilinearRestrictScalars_apply_apply](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/bilinearrestrictscalars-apply-apply.md) | 438 | `result-track:61c76f190af97737bddef50078a2ecaf1b93ee8623dc3ad0fdf97c972b27df37` |
| 54 | `theorem` | [norm_bilinearRestrictScalars](../../../../FunctionalAnalysis/OperatorNormBilinear.lean/declarations/norm-bilinearrestrictscalars.md) | 441 | `result-track:8d35aeb547cd8627947c11dded7868e783a2496cdd151897632fb4748a6e65c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=853640ba1a1db68b6aa3992ecea2c26b3deee24a533023b425fdbfeab12bea9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
