# Verification target: Linear Algebra Complex Module Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2888e10ff4f8a035a78d19ff1064404f9950fa7d",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2888e10ff4f8a035a78d19ff1064404f9950fa7d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion.Field` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Submonoid` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-13.md) | 67 | `declaration-track:e20f21c3835bfc86cff2f90a55361038ead47b514e3ef05fbd820e9f4499e6af` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-11.md) | 71 | `declaration-track:b5e75afe7f00bacc0f79a4f85680713023bf99ac14c4481046181d8a426c1b96` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-10.md) | 76 | `declaration-track:9cdeca652b55710f82f07f1b4c6f2c158fe80f761ea330dacb800ad0328a8f02` |
| 4 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-9.md) | 81 | `declaration-track:75f90f7d5d7c4b2e4516c937fff52a2f4f9629a30aa23d45bece423fe30f4803` |
| 5 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-14.md) | 86 | `declaration-track:f6c8894c2cc59a5880f43d1886881ccaf4d7917f433fe561ae20a72ae8e6180e` |
| 6 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-7.md) | 91 | `declaration-track:5e89005c4e2228bccf3f55fb9737a055d14517c47392dd611c9ae476b3f5fc1f` |
| 7 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance.md) | 95 | `declaration-track:02e498d3e2d40df0360b920bda54173b29ee234a8e169ac1536e65c809c4062f` |
| 8 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-5.md) | 100 | `declaration-track:48474c5b1a8ca12c687624789b1c2ce01385b62dfaf4ba95959834812cf35e47` |
| 9 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-4.md) | 105 | `declaration-track:39714d92a015c3bdc542a2f2bd73eb8b375a270f904867d3c85318100ff6ef89` |
| 10 | `theorem` | [coe_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/coe-algebramap.md) | 109 | `result-track:653d7736a27cfa82ea66038e6008da2f33c8bcdd4fab18d63f3c722110baa418` |
| 11 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/example-source-edition-3.md) | 112 | `declaration-track:30a0be4000ea68d4dc8163bb9c03c9e6874825158a3fe2a85d7e52aea6564529` |
| 12 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/example-source-edition-5.md) | 115 | `declaration-track:3c42834d49d271399f2ebfae168cebad9a6ad774e7c84d112f669c2c221920a6` |
| 13 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/example.md) | 118 | `declaration-track:0a1881814a89d2a7a81a0aa4cc53dff8f5491023ebf488fae0b48fb3e49e7e75` |
| 14 | `theorem` | [_root_.AlgHom.map_coe_real_complex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/root-alghom-map-coe-real-complex.md) | 128 | `result-track:90078ef41036cbf504c995fae786b3569580a481c672f19f720e74976a658ed5` |
| 15 | `theorem` | [algHom_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/alghom-ext.md) | 133 | `result-track:7695c37a3685e88e3925785ebebf843203c9564928087471bd311f688aaa7180` |
| 16 | `def` | [basisOneI](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/basisonei.md) | 142 | `declaration-track:7fbf2ce9da02b24755d5813e6e3d96f9d9fc866ea2609e49c294441875d0caac` |
| 17 | `theorem` | [coe_basisOneI_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/coe-basisonei-repr.md) | 154 | `result-track:a3f5df7407d2ef80cca8ea68fd202a34d9922d7c70e7e20ceaefd6d77c01bed5` |
| 18 | `theorem` | [coe_basisOneI](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/coe-basisonei.md) | 158 | `result-track:6b91398eadb1703669adeb5b14a0d5d86a9e8b977aabbdc2f7e0d3868aa28672` |
| 19 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-3.md) | 168 | `declaration-track:304f6b6da354730e2ab6d74d64f061224eb8be971f1f09de44a8c271cf469648` |
| 20 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-8.md) | 174 | `declaration-track:68daccf207bf085a0a48e299ff6f59f407cc3eb2e410e705ccf52d43208e9da7` |
| 21 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/example-source-edition-4.md) | 180 | `declaration-track:3569a36b0dd098f4c24deb6f9763d28aa3f7980ad9c2df5f8120c800a474920b` |
| 22 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/example-source-edition-7.md) | 184 | `declaration-track:ab0ebb46f27683572bc1d8810ed136cf2c4ead7ab7301e7d41e028e301aafe7c` |
| 23 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/example-source-edition-2.md) | 188 | `declaration-track:0ce9b2b38531f4454c8b06a3f9307bc7cf40e2c733dbeaa8d1deafc5ba2a9184` |
| 24 | `theorem` | [Complex.coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/complex-coe-smul.md) | 193 | `result-track:21e9a6b1a168c67bc5ca345d3af2a6cc39e2478f388a9e27be96d86707c10efa` |
| 25 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-12.md) | 199 | `declaration-track:bf9c4eeb57281e4c48f24c8d497dac06eb24d65ca12abee04874b1c0c2703c89` |
| 26 | `instance` | [IsScalarTower.complexToReal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/isscalartower-complextoreal.md) | 205 | `declaration-track:e66747255aa5075802f69078144160bd7caa5b63a21cbfcd5cb73ee913b0cba1` |
| 27 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/example-source-edition-6.md) | 210 | `declaration-track:755797dff6beed0579b0698128d6ebf3a27abd87c1a4329e5798e7a52a591b80` |
| 28 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-2.md) | 212 | `declaration-track:17839d2e9b45ac820c05243720134e81fffc0c6ce8d2448250221341754c1924` |
| 29 | `def` | [reLm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/relm.md) | 221 | `declaration-track:ebcf715c34a58569a83013ce810efba940c046361a293d7349f974b410524b77` |
| 30 | `theorem` | [reLm_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/relm-coe.md) | 227 | `result-track:07b2abb91e8ee52b91403c50e3273f78514c04aec9b967f59b779664c12e8ae5` |
| 31 | `def` | [imLm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imlm.md) | 231 | `declaration-track:e17c207dabfe70a87216a0f6d51eae8ac73f1e0aa5bfd9f8bfbf1b52361e78e7` |
| 32 | `theorem` | [imLm_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imlm-coe.md) | 237 | `result-track:a965a0d95def711edebf1f401e9072c3e69e5ea1c9094c212d6ddfa47e0691d7` |
| 33 | `def` | [ofRealAm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/ofrealam.md) | 241 | `declaration-track:beb82849e91be65a6d9eddb3190b936f259dc82bfe5285643ee5ceaf3e2947af` |
| 34 | `theorem` | [ofRealAm_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/ofrealam-coe.md) | 245 | `result-track:5e16bb0bdda649231640cfaae1bc8569361e6c3efab5d361037b023fca61ad51` |
| 35 | `def` | [conjAe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/conjae.md) | 249 | `declaration-track:10bec47255f2fbe6592eab73ebd4c99feb27b0c503bf255da4a81e9cb02077d1` |
| 36 | `theorem` | [conjAe_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/conjae-coe.md) | 257 | `result-track:7c1ea88852e84c7c688fc23dcf82c7bdd327a1440bc8f99f432822141b2188f3` |
| 37 | `theorem` | [toMatrix_conjAe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/tomatrix-conjae.md) | 262 | `result-track:afad78f7e8e1835ba3c84d488fd077e66c609e48736ed734e53a6dbf01ff1139` |
| 38 | `theorem` | [real_algHom_eq_id_or_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/real-alghom-eq-id-or-conj.md) | 268 | `result-track:3b68eaac23ca4928df090f70739cb206669cea1229edc89e7e301ba4a460ba81` |
| 39 | `def` | [equivRealProdLm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/equivrealprodlm.md) | 276 | `declaration-track:bc6d235184f8c7515f5c2eb1d70300bead67d0870ab0dbc64b4372f0e6f46868` |
| 40 | `theorem` | [equivRealProdLm_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/equivrealprodlm-symm-apply.md) | 280 | `result-track:d16778bb873e81b186345aaaae9d154bc8ea7a32776f62ea9ce20f9f130f0965` |
| 41 | `def` | [liftAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/liftaux.md) | 292 | `declaration-track:afc4744cfee3d69b58878cf96b24e99d495c748c8b419b0da59ac4fb0fcc8b23` |
| 42 | `theorem` | [liftAux_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/liftaux-apply.md) | 311 | `result-track:278ac5d95b58e30cb3b8cb631332b5bf0a31514efca2d33ecd14166aeff33500` |
| 43 | `theorem` | [liftAux_apply_I](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/liftaux-apply-i.md) | 314 | `result-track:2141ee82bbc98b93c5dc464e497e2993cd697980ce4d15d10e75c0ef020cfbad` |
| 44 | `theorem` | [adjoin_I](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/adjoin-i.md) | 317 | `result-track:5ec91b1133d519f8394ed31955f9899dd52e7fa6775a86a8b7e23505fe072bf1` |
| 45 | `theorem` | [range_liftAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/range-liftaux.md) | 323 | `result-track:93cc472cdb83c22865685c8273b2bb26d48b9488464c9c89ffb7657818099305` |
| 46 | `def` | [lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/lift.md) | 333 | `declaration-track:1fedc190135a272bc5cbfca8931c83ca1486ccdbbf54fe0dee3aa36c0b932694` |
| 47 | `theorem` | [liftAux_I](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/liftaux-i.md) | 341 | `result-track:7c6eb820d068bd4b2eb783027a4e9589ab0e511d2f91f0125840cda3b2f0da6e` |
| 48 | `theorem` | [liftAux_neg_I](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/liftaux-neg-i.md) | 346 | `result-track:237c2e4e5e4b98a5955638c483f39d51d7c0c92f77818150dcc180924631aa8b` |
| 49 | `lemma` | [Complex.I_mem_skewAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/complex-i-mem-skewadjoint.md) | 363 | `result-track:886110d2a0b433892da11514eff2a038e767e1d9e1221eff3adc28ad54632ccc` |
| 50 | `lemma` | [Complex.I_smul_mem_skewAdjoint_iff_isSelfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/complex-i-smul-mem-skewadjoint-iff-isselfadjoint.md) | 365 | `result-track:cd0b1c82ea2e39f5438cf42fbe6c098fa7dcb58bc7c36bb50707827f47a9e887` |
| 51 | `lemma` | [Complex.isSelfAdjoint_I_smul_iff_mem_skewAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/complex-isselfadjoint-i-smul-iff-mem-skewadjoint.md) | 369 | `result-track:d1f15e35daf43ad2f5731e1a94128a28694d4bdf030a5344cc55a8595a940968` |
| 52 | `def` | [skewAdjoint.negISMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/skewadjoint-negismul.md) | 376 | `declaration-track:1400ba733301708cf6053c0d15a097281be242cb25682bf8e93c7af8c8655c03` |
| 53 | `theorem` | [skewAdjoint.I_smul_neg_I](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/skewadjoint-i-smul-neg-i.md) | 381 | `result-track:18d484d6b311cbecca51e305609aba64f8dbafeb11ab614be44d5b7a643f7160` |
| 54 | `def` | [realPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart.md) | 387 | `declaration-track:07c9b1a075bbaa631b3cbc307c7795c8adc703c67b7a42f889dc636723d54974` |
| 55 | `def` | [imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart.md) | 395 | `declaration-track:6481a3e9a1e8e3ab896f01cc6df1b412fae88778ad0ed3af25c12c0b56197aab` |
| 56 | `theorem` | [realPart_apply_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-apply-coe.md) | 405 | `result-track:31056a7a2900df13adc5e864937ee8643b63cb74e159b18b91ddd8655caede81` |
| 57 | `theorem` | [imaginaryPart_apply_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-apply-coe.md) | 408 | `result-track:c0b3a41910561222b0ec66c1df02901d1ac829a274a0d4a5af41912d77b634ab` |
| 58 | `theorem` | [realPart_add_I_smul_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-add-i-smul-imaginarypart.md) | 413 | `result-track:812a9a17858e4e6483a6009a17676766dde161f7629dfc4c8a0d1477144752b5` |
| 59 | `theorem` | [realPart_I_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-i-smul.md) | 417 | `result-track:efa831c58b128402a73493f0f9501b7ecfeefc2950584c9c03b578bcf14ba0ed` |
| 60 | `theorem` | [imaginaryPart_I_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-i-smul.md) | 422 | `result-track:eea29362abe8e2cf328d6ac81e35ff69238519782cf71d41a136b59e16296b04` |
| 61 | `theorem` | [realPart_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-smul.md) | 426 | `result-track:59917a26d4f035c61701cdfd67eb57608263258f1370d5241e0c554e838d93e4` |
| 62 | `theorem` | [imaginaryPart_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-smul.md) | 430 | `result-track:4cf8fd8d1fc842cb1063b096a5030d2891966a3944f3ca0c34ef8a3a3a740630` |
| 63 | `lemma` | [skewAdjointPart_eq_I_smul_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/skewadjointpart-eq-i-smul-imaginarypart.md) | 434 | `result-track:6f5cdd458ddcbd0049ab15f9fe4142205793d33a85db80374acdab18dc6b6ce1` |
| 64 | `lemma` | [imaginaryPart_eq_neg_I_smul_skewAdjointPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-eq-neg-i-smul-skewadjointpart.md) | 438 | `result-track:34dbc4849a70777b4f060a5596ce0db1038542f8067cab14b95201d43f2770c4` |
| 65 | `lemma` | [IsSelfAdjoint.coe_realPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/isselfadjoint-coe-realpart.md) | 442 | `result-track:d4c10a11afb113868705bbe4af29560ea7c5e566ec816dd9ee834f9bf538b682` |
| 66 | `lemma` | [IsSelfAdjoint.imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/isselfadjoint-imaginarypart.md) | 446 | `result-track:dc3836673151832476bcc255876291e07b4a7758157727e81774b84e48d8577a` |
| 67 | `lemma` | [realPart_comp_subtype_selfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-comp-subtype-selfadjoint.md) | 450 | `result-track:d095a466dfeff74897c3e33ddfd9ce4f3e33b2e915b32fb607e6fe790326f2b2` |
| 68 | `lemma` | [imaginaryPart_comp_subtype_selfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-comp-subtype-selfadjoint.md) | 455 | `result-track:e40f2fe6585033cc23a17f615c1d6682712c5076a3787d61193dcdbbbeea04be` |
| 69 | `lemma` | [selfAdjoint.realPart_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/selfadjoint-realpart-coe.md) | 460 | `result-track:49489dd57dbf0f87ea4bbe937df3f160ac95be83cd3880b6086fe4b50b6db0d3` |
| 70 | `lemma` | [selfAdjoint.imaginaryPart_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/selfadjoint-imaginarypart-coe.md) | 464 | `result-track:5fd9ccfc63c56297a10c9db05df2b6c42c0bf05cb3a73c7c35e59baf3d434574` |
| 71 | `lemma` | [imaginaryPart_realPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-realpart.md) | 467 | `result-track:658ef0f0d9ad07620ee2ba6d1d30e89862bd18ebefbb63bb2a7135f5c308ec86` |
| 72 | `lemma` | [imaginaryPart_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-imaginarypart.md) | 470 | `result-track:19efe446bfa49301bdfb3c59bf1cc008865582828718179f07a0ddbb8063a9ed` |
| 73 | `lemma` | [realPart_idem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-idem.md) | 473 | `result-track:a289a1f2ebe7a33377d3fcd8617a689bf4875a06ce41fd2e3984c9539edd8a8a` |
| 74 | `lemma` | [realPart_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-imaginarypart.md) | 476 | `result-track:6ca1abcc98014317c152ae6a4b7c5814dd0aa04c50e7a30ed1c5348f8c6d7ba7` |
| 75 | `lemma` | [realPart_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-surjective.md) | 479 | `result-track:340e27ad60304e2055e9e6ac2c1519081a123605da7f9b9743baca75f31c9f54` |
| 76 | `lemma` | [imaginaryPart_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-surjective.md) | 482 | `result-track:2b28e327c4b24ebf6e196fb328716ee901d722fdabf5b462701f1f9448a2df6d` |
| 77 | `lemma` | [ComplexStarModule.ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/complexstarmodule-ext.md) | 486 | `result-track:b7a98a8198a41eb6f5a3cb8950b19990a40c1ff928a200157388237667698dae` |
| 78 | `lemma` | [ComplexStarModule.ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/complexstarmodule-ext-iff.md) | 489 | `result-track:e08496ac7c6c87486d474ef528ff04654c0237f0f87243022236385ecec7d2c3` |
| 79 | `lemma` | [map_realPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/map-realpart.md) | 498 | `result-track:c234fb713e410e5cbae1bf770d89c9496f8fb46bb80edf1618923db7bec78cb1` |
| 80 | `lemma` | [map_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/map-imaginarypart.md) | 501 | `result-track:a0621a631ce2d3f371bd4af2fce66f2a57a5c191d379bf0330578ddcbabdc3db` |
| 81 | `theorem` | [ker_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/ker-imaginarypart.md) | 508 | `result-track:3cdb2d36fb7a4f5a334a682ff5118521c933f4e940425adb34684a0928e90deb` |
| 82 | `lemma` | [imaginaryPart_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-eq-zero-iff.md) | 514 | `result-track:36ad82f7ceb85f8d81aa37ffdc18a1cedd4119300f9103d414ae20c53f5aeb88` |
| 83 | `lemma` | [span_selfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/span-selfadjoint.md) | 519 | `result-track:ce0b12968bbe4c466d09f4eb227544282f018fb6bd14511e5211a899ecb4aac4` |
| 84 | `def` | [Complex.selfAdjointEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/complex-selfadjointequiv.md) | 531 | `declaration-track:a1db189fd1aa55b737f16886afe69a1907f652921b4a87a1f34e70165594575a` |
| 85 | `lemma` | [Complex.coe_selfAdjointEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/complex-coe-selfadjointequiv.md) | 538 | `result-track:88208b66eabf0d42ad1643bcea900e81a99aa00d38680aa9c30d4e4747fc3f82` |
| 86 | `lemma` | [realPart_ofReal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-ofreal.md) | 544 | `result-track:150ea0eaa428e1f4635a89ed089b4fbe5720f7231ff4d744c4dbb14499c111c7` |
| 87 | `lemma` | [imaginaryPart_ofReal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-ofreal.md) | 549 | `result-track:e3139ed21e09c3bce9590fb00b1cdef5c0e79e2e6dbab7210acfd6cfb04114a6` |
| 88 | `lemma` | [Complex.coe_realPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/complex-coe-realpart.md) | 552 | `result-track:1d9b236be9b356a0da39cbec659c6d799bbc4865029110f754c3c19a89e81d90` |
| 89 | `lemma` | [star_mul_self_add_self_mul_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/star-mul-self-add-self-mul-star.md) | 561 | `result-track:5c17682a3c1ecd6899bb58add883c0608f8befecf1a71911003c09d18ed08056` |
| 90 | `lemma` | [star_mul_self_sub_self_mul_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/star-mul-self-sub-self-mul-star.md) | 572 | `result-track:9cbeebab7bf2720545c474a575d4b92f4a0e748a62d794e7b565519bfc03db1d` |
| 91 | `lemma` | [isStarNormal_iff_commute_realPart_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/isstarnormal-iff-commute-realpart-imaginarypart.md) | 584 | `result-track:53ea95b9f3679c92fa50dc6c8c2582e16f1cb82ade697fd14ecde06e96d4e5fa` |
| 92 | `lemma` | [Commute.realPart_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/commute-realpart-imaginarypart.md) | 590 | `result-track:b43ded9d182b7c796f652aa8714f5700d7125208e008bcfa24851da70a0f8b50` |
| 93 | `lemma` | [star_mul_self_eq_realPart_sq_add_imaginaryPart_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/star-mul-self-eq-realpart-sq-add-imaginarypart-sq.md) | 594 | `result-track:59febea36ed94b84ea94b649d79f6da07f29fd9fecd97d45371c158bbddfe7a0` |
| 94 | `lemma` | [nonneg_iff_realPart_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/nonneg-iff-realpart-imaginarypart.md) | 609 | `result-track:248d5597972fa6a891600b5d1376070edaaf9627a1590e24681c98e387cfd5aa` |
| 95 | `lemma` | [nonpos_iff_realPart_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/nonpos-iff-realpart-imaginarypart.md) | 616 | `result-track:66107bdd90c0a82a38f3845d541f527949ee7720627a6220ec0f9d90342891de` |
| 96 | `lemma` | [realPart_nonneg_of_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-nonneg-of-nonneg.md) | 620 | `result-track:5e388badf7d7046e5335f45c93dcbb5c72442aca48d8006f1112ff02b53dce94` |
| 97 | `lemma` | [realPart_nonpos_of_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-nonpos-of-nonpos.md) | 623 | `result-track:13250512b3b6a16df1a84c4b91a52cd887feb037434ee3d20cfb315cf844ad15` |
| 98 | `lemma` | [le_iff_realPart_imaginaryPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/le-iff-realpart-imaginarypart.md) | 626 | `result-track:9a10d40edd249720b2b5b11ac14ae236d8fa5842817a1cb60449254f8b0fcc4c` |
| 99 | `lemma` | [imaginaryPart_eq_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/imaginarypart-eq-of-le.md) | 630 | `result-track:395ee7b1a563d8473ce86581664bec7364cfbeb3e898a917ef52501645cd27ed` |
| 100 | `lemma` | [realPart_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-mono.md) | 634 | `result-track:ad444be472fc4fc293def3b21692ddc353630080cf2af16f03499417ad12274e` |
| 101 | `lemma` | [realPart_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/realpart-one.md) | 641 | `result-track:76a12563263cf61a2fe836b74f285dc0baeddc0373b829b4c059c03620f00464` |
| 102 | `lemma` | [mem_unitary_iff_isStarNormal_and_realPart_sq_add_imaginaryPart_sq_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/mem-unitary-iff-isstarnormal-and-realpart-sq-add-imaginarypart-sq-eq-one.md) | 645 | `result-track:e1ac413f45085f6827c8bbb12822f7b1832b938a5f2f041ef1b7e2e2ba593595` |
| 103 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraComplexModulePublic.lean/declarations/instance-source-edition-6.md) | 654 | `declaration-track:4ef614425d4bff67b5b4c18161b947c3f1f5cbab20cda18687e5b5758542010c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc006ca85ce26e930f98f4f1b22fb8559f46cdab70c4ca7638e6360e8329f709 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Module/Variantc2148a34eea6e638af8f3b71340a58081e90eae4642aae72c32069a4e2c65221.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
