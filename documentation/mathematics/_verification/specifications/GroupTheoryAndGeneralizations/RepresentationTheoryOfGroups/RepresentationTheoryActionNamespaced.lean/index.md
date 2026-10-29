# Verification target: Representation Theory Action Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74139c8e005ae9b4d41e0f41116bfe7fe3e08fe8",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant39bd7a8213c908e41b2305c37464cc840f856efddb75cfa38a76eff527aa928a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74139c8e005ae9b4d41e0f41116bfe7fe3e08fe8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant39bd7a8213c908e41b2305c37464cc840f856efddb75cfa38a76eff527aa928a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant39bd7a8213c908e41b2305c37464cc840f856efddb75cfa38a76eff527aa928a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.OfEquivalence` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.FunctorCategory` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Symmetric` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.FunctorCategory` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Transfer` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Conj` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.FunctorCategory` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Action](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/action.md) | 61 | `declaration-track:a48d58dcd43e7509224f5e39f697b305c2d530d9d4ce585b96eb063a48be07fe` |
| 2 | `theorem` | [ρ_one](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/one.md) | 72 | `result-track:13e3b887a86e89df49557482dd74e3830d1715c74ed88e34153684ff3165b8f3` |
| 3 | `def` | [ρAut](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/aut.md) | 78 | `declaration-track:24a7d7b874b03a0f5691cef853222c8d3d89195f0c2c5a9db2ee57554184026d` |
| 4 | `instance` | [inhabited'](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/inhabited.md) | 93 | `declaration-track:10ac0f05de836a543c9905a5afeb0add331ec22010fb953b7592c56a6904c9f3` |
| 5 | `def` | [trivial](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/trivial.md) | 99 | `declaration-track:c2a547717d995c896eb6cb66a3c0aac7d3de36ede26230af213ae3c9e523c298` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-10.md) | 105 | `declaration-track:501f293c48d5b97c1d97ee5ee41791a3d3928db1eb28221660badeac2d9e1549` |
| 7 | `structure` | [Hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/hom.md) | 116 | `declaration-track:bd5efd5cc0e37716dc243d4ecbe780d6a3017926aace2971ebd02626d0e103ec` |
| 8 | `def` | [id](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/id.md) | 129 | `declaration-track:fda41dc23a8c3462b1aa2370859ffac8802528cc4a02e6f839c794b26764bb54` |
| 9 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-19.md) | 133 | `declaration-track:b21b86b37370d8f2cb880fc10d2cfe39efe4efc1456e11f64e7297f12ddf1655` |
| 10 | `def` | [comp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/comp.md) | 139 | `declaration-track:86883127341e9bf068b9156b7eaaf806d2153072548ab54085cadd3f6275ce2f` |
| 11 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-18.md) | 146 | `declaration-track:b05c43d4bc8ee485e49091f49869384d635c48abda7b2496070721d259addefa` |
| 12 | `lemma` | [hom_ext](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/hom-ext.md) | 153 | `result-track:a57ce5dfd1a9212bf9d5a80f8d03581553e09ca0f7a8721c1b31461876dec92d` |
| 13 | `theorem` | [id_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/id-hom.md) | 157 | `result-track:ee51fc76b9b04de0996fc042183d5cca69d7260f1ee0814c7ea2544fe48b551d` |
| 14 | `theorem` | [comp_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/comp-hom.md) | 163 | `result-track:5966f0172f858a5039e6f7e22d5acadab83330afe29276488440ec2a0349649e` |
| 15 | `def` | [mkIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/mkiso.md) | 173 | `declaration-track:37dfa81103d505e7598a18367e9340a8c9b2eec554b38a1e70cbcbaf5e60b648` |
| 16 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-13.md) | 184 | `declaration-track:637add29a958b490b796f3bdc468747f7d4abe6c52b3859e458939e4ab416386` |
| 17 | `instance` | [isIso_hom_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/isiso-hom-mk.md) | 189 | `declaration-track:c67ffaae23f1cede54e8c375f803a1c4b8fec757e6591c7102eae14528e0c06b` |
| 18 | `def` | [functor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functor.md) | 199 | `declaration-track:fda1a70d06125768e8c3c3212c80f030d1457ef8cc7fe49f9a1202c499a4ad2d` |
| 19 | `def` | [inverse](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/inverse.md) | 213 | `declaration-track:996998ec54f8083c98f9a11e8010933a3b3c4b129e1d711765b2485e62c17e6c` |
| 20 | `def` | [unitIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/unitiso.md) | 228 | `declaration-track:a4f7ff995df18bc0f07e75e55e441da4097c49c38e366c8577bc573ceb712e78` |
| 21 | `def` | [counitIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/counitiso.md) | 235 | `declaration-track:d71452d71d4f4c84a0ae1bcbbc89781e2292d0ab78f9a6ed547010646b36e1bc` |
| 22 | `def` | [functorCategoryEquivalence](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategoryequivalence.md) | 252 | `declaration-track:1960aa691f41924b986d10bb3693e26bda6bc5c25c41b9a12691f73ded2be33b` |
| 23 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-7.md) | 280 | `declaration-track:3b8cd44f29f410ba2c7894386d0fb0f7c54bac0d0d472ba3dd8e20b34679db6f` |
| 24 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-3.md) | 284 | `declaration-track:2e53c6dd5f75e1621b1fe3c43c7ec5e32d5b0910291414642129ce8c0d84b1ef` |
| 25 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-20.md) | 288 | `declaration-track:c278c5c969755e41361301008503dfe80bb348746aca4987aa59dfba8aa62b98` |
| 26 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-12.md) | 291 | `declaration-track:5b648d001f3bbf160e547df609246c3ad3472166abd04bcb9df0092fe02f3365` |
| 27 | `def` | [forget](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forget.md) | 306 | `declaration-track:c59890bc0670c590649c99f2d8c4a971a3b52a88a44410270c730dff25806a5a` |
| 28 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-22.md) | 312 | `declaration-track:c9c18a269c7ce559d50efb9bc304beecff11b51e2f979e024f5397404afa12ac` |
| 29 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-8.md) | 314 | `declaration-track:422384f3afcecc098773bcad2377a1376356450474a0bbfd313516c4445cb70a` |
| 30 | `instance` | [hasForgetToV](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/hasforgettov.md) | 317 | `declaration-track:99dc3696fdb13d83603951561c8c0798f3710b90806986beba6030c2f440bae9` |
| 31 | `def` | [functorCategoryEquivalenceCompEvaluation](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategoryequivalencecompevaluation.md) | 323 | `declaration-track:7a0fea564ac2cdd0a52c5bf4c40d23d1259dfc3401a884c287c1a5162a6968db` |
| 32 | `instance` | [instPreservesLimitsForget](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instpreserveslimitsforget.md) | 329 | `declaration-track:44857847a6dddb7d1065af7baea9e7bd88ff341e7f49f2adfb4a8b5e21845a34` |
| 33 | `instance` | [instPreservesColimitsForget](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instpreservescolimitsforget.md) | 333 | `declaration-track:68d670cdc66909b3994bfa485097900da5c94d18a5f665decc89f6b270f525d3` |
| 34 | `theorem` | [Iso.conj_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/iso-conj.md) | 340 | `result-track:d418d3ead9174edabd8b253dcd8b3516cac843c78764c59286e93eecf0df9fa3` |
| 35 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-16.md) | 352 | `declaration-track:8a4d6048af7cd2cd1c92166df4a9b2de20cb517e2fdd3d0afe19687a7df76d73` |
| 36 | `theorem` | [zero_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/zero-hom.md) | 355 | `result-track:505e9e19e351927e5f6bddf1699e77f6cc7b5f82fd8c713d2b29e076a2db2e70` |
| 37 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-17.md) | 360 | `declaration-track:a3952bff9f2aebfeed68156f90136f48154eb82aeab3c47521b63e8751c9ff6b` |
| 38 | `instance` | [forget_preservesZeroMorphisms](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forget-preserveszeromorphisms-source-edition-2.md) | 362 | `declaration-track:71165010f0beee97cb1d6ba9f789ad41cc871be28fd568df55e38948a01a17ab` |
| 39 | `instance` | [forget₂_preservesZeroMorphisms](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forget-preserveszeromorphisms.md) | 366 | `declaration-track:0bddda29af968f0d240fa3f726ef8dc34bb7e5a75b12012ddc01ee33fae08eae` |
| 40 | `instance` | [functorCategoryEquivalence_preservesZeroMorphisms](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategoryequivalence-preserveszeromorphisms.md) | 371 | `declaration-track:e1a333abf833430a62bb87326c84d836709cb7d2ff120de129bc3c0e233ce7b1` |
| 41 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-6.md) | 382 | `declaration-track:32c155116014bc4e386c54c5cf04958a8c0029d33e8e7abd70516c872409ccef` |
| 42 | `instance` | [forget_additive](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forget-additive-source-edition-2.md) | 394 | `declaration-track:b653619ea6cd927791fd3ae8a415d86eb1cdeaf09eeef32d90d055d64f537e63` |
| 43 | `instance` | [forget₂_additive](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forget-additive.md) | 398 | `declaration-track:7bd32bfa58d34ee2baf5e6011023850d235fd5b9acdaf1153b3211fd6b960c3c` |
| 44 | `instance` | [functorCategoryEquivalence_additive](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategoryequivalence-additive.md) | 402 | `declaration-track:470c883b4df31a2995d2b51eeea40c2d65691fe11cdd8fd9bfe5c1eecd3bbf01` |
| 45 | `theorem` | [neg_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/neg-hom.md) | 408 | `result-track:f024af5e46eda5e15fc45313e886a19d0411de978f291b75d163b2bfbd617bf7` |
| 46 | `theorem` | [add_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/add-hom.md) | 414 | `result-track:42ef98ad5cb06930e98c5b60a7e544ede2d29c7a65d9d17c6f6feb186d6884a0` |
| 47 | `theorem` | [sum_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/sum-hom.md) | 420 | `result-track:bd7886f66e63636375bca95bd475c6b9a2e807fa598c7121cbafa0e326dd8f35` |
| 48 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-21.md) | 432 | `declaration-track:c6865239ad8be4b37dffbd53ca0cc3cc4fdfec83125f587fb33ea77a054f1341` |
| 49 | `instance` | [forget_linear](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forget-linear-source-edition-2.md) | 444 | `declaration-track:d23ebeaf52cc36458b96fdfb97fa6906e8a54627a4251bc7be21c4a8df0b5c9a` |
| 50 | `instance` | [forget₂_linear](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forget-linear.md) | 448 | `declaration-track:3d369215074d97e216789cae174096a762376afb96becede893f78af6b7dfce1` |
| 51 | `instance` | [functorCategoryEquivalence_linear](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategoryequivalence-linear.md) | 452 | `declaration-track:19f4d7f604d83e72c4cb9cee72b706b153e687e69811d36467356d68dddf6654` |
| 52 | `theorem` | [smul_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/smul-hom.md) | 458 | `result-track:12e51b103bc64be817ffd65d49b4c90ccc90f12714e08f2feb8c1a251656f8d9` |
| 53 | `def` | [abelianAux](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/abelianaux.md) | 468 | `declaration-track:a39e6fb1bff8ad2fe33568221be416a150f21a8aba0d82aba62180ea9bbb1b76` |
| 54 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-11.md) | 473 | `declaration-track:5a3682032720cd4d318959c0eda89295eb58b96393c810c0b084d9b7faa26f1e` |
| 55 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-23.md) | 484 | `declaration-track:d9df5c70eddcd850d922ba32ced4bc7342142fb44fde04516c0308525f932157` |
| 56 | `theorem` | [tensorUnit_v](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/tensorunit-v.md) | 488 | `result-track:a316315809cfbabb0a6cd0a5413085ae8e891b4e189d22baf1a0eff2c7ea0b84` |
| 57 | `theorem` | [tensorUnit_rho](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/tensorunit-rho.md) | 494 | `result-track:93f64991765203a16ee3e6dad056f8fe0e01514bf37cb8a74ec8cd20de1c5a5d` |
| 58 | `theorem` | [tensor_v](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/tensor-v.md) | 500 | `result-track:de96e2b5e97133c845e5a3aa6992c66a4c4cc247ab4e51721ad700f6012f7a1b` |
| 59 | `theorem` | [tensor_rho](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/tensor-rho.md) | 506 | `result-track:4aecaf25a10ecde452ec47c7adfc5de9f58d492367faee478b934a6b79722ec6` |
| 60 | `theorem` | [tensorHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/tensorhom.md) | 512 | `result-track:725b9c6c9172299c15ad78331df7742f01b257412e80467e36ef1428b8ad3090` |
| 61 | `theorem` | [associator_hom_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/associator-hom-hom.md) | 518 | `result-track:71a9b9ffc957085106415d570b936d69859a7ce9856a667d8c2399ae17690e4a` |
| 62 | `theorem` | [associator_inv_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/associator-inv-hom.md) | 526 | `result-track:86ede944ba58f736a02801d025e0060263f956e16545627b7ca9ba806caa0290` |
| 63 | `theorem` | [leftUnitor_hom_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/leftunitor-hom-hom.md) | 534 | `result-track:c7702662a2457f812ae1b4e0724f9940fbf161e0e47a3e08ed4da8ed96265c66` |
| 64 | `theorem` | [leftUnitor_inv_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/leftunitor-inv-hom.md) | 541 | `result-track:049bdb447593243fc777df80f79bdd6f00135af33ea84614984787215bf80ff2` |
| 65 | `theorem` | [rightUnitor_hom_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/rightunitor-hom-hom.md) | 548 | `result-track:5699a09074bbde70031d91527dc7f1c6dbd22f80911c0c54248dbec61500ec81` |
| 66 | `theorem` | [rightUnitor_inv_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/rightunitor-inv-hom.md) | 555 | `result-track:a8af2daa75ded094439c1ff7ddaa0fce52583988965611ef13d5adbc25c206d6` |
| 67 | `def` | [tensorUnitIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/tensorunitiso.md) | 563 | `declaration-track:4204f75d12d7c765a83d447e94b868a1381d77745bfc560123d1cf69622ce3e3` |
| 68 | `def` | [forgetMonoidal](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forgetmonoidal.md) | 574 | `declaration-track:d767c5e83fed70fcdc3008f8edb5a3ec64da10c8d7d02519666323bd8bfea041` |
| 69 | `instance` | [forgetMonoidal_faithful](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forgetmonoidal-faithful.md) | 581 | `declaration-track:38780733c77a7a20c08467ef9487c8c6c6f25b70aa682199f992798e3d8f0bc4` |
| 70 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-5.md) | 590 | `declaration-track:30af34357b407debf5cdf84e36d8b6ee52f47bfd35e01cf88fd92708ecca4ba8` |
| 71 | `def` | [forgetBraided](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forgetbraided.md) | 596 | `declaration-track:3e67f57adbe3097480c18aaac451eaad98e14493eaafb18031cc94c67dd47d53` |
| 72 | `instance` | [forgetBraided_faithful](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/forgetbraided-faithful.md) | 601 | `declaration-track:35326951eee02fa4c5eead963a4d25df821036b72c81f94bf8b3d8aee4ec5989` |
| 73 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance.md) | 608 | `declaration-track:0273ef3188793b76f066fcd9307247c75cf86865cf62ce2e43b80beff987580a` |
| 74 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-27.md) | 617 | `declaration-track:ef1a96a257cd895efe8c4d2df6f33ee11d0fe2de84e938f84af9088f3bfe7040` |
| 75 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-14.md) | 621 | `declaration-track:85d340bf06be99b1c041a34cc78cde85711d2fcc8006e68e7d2a3d5ef0ce44fc` |
| 76 | `def` | [functorCategoryMonoidalEquivalence](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence.md) | 628 | `declaration-track:e3dd0cc7d14245135b9f015edc06cca2b31d964fe277cfa6718b0cf7aa4e0281` |
| 77 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-2.md) | 633 | `declaration-track:05d3ea1b663b16b6b2314c4f4b80287262d5c14b2eeab5ff158e0fb514233064` |
| 78 | `theorem` | [functorCategoryMonoidalEquivalence.μ_app](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence-app.md) | 637 | `result-track:0801be973fc0ca79c412b3958194049a2635ec36f3d15a94a89d92f60f66285b` |
| 79 | `theorem` | [functorCategoryMonoidalEquivalence.μIso_inv_app](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence-iso-inv-app.md) | 655 | `result-track:3df8c3e685d8401b808f41cf96e0b1d16d65a223604678aeebf2b80094e41efc` |
| 80 | `theorem` | [functorCategoryMonoidalEquivalence.ε_app](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence-app-source-edition-2.md) | 665 | `result-track:fa7a94b634520253511ad4e7e3a52c83bccfae658f0ee2e4565556922dd4307d` |
| 81 | `theorem` | [functorCategoryMonoidalEquivalence.inv_counit_app_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence-inv-counit-app-hom.md) | 674 | `result-track:389806d7e2ad2813e20a4ddd3d7d82906f99b67e4442721b0c8dd5a657eca517` |
| 82 | `theorem` | [functorCategoryMonoidalEquivalence.counit_app](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence-counit-app.md) | 681 | `result-track:83470347cde2970236ca151767f08cc7e0457b282b0ff706bb50dcc074e86c8a` |
| 83 | `theorem` | [functorCategoryMonoidalEquivalence.inv_unit_app_app](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence-inv-unit-app-app.md) | 688 | `result-track:2bc68f6cdbab5ebda3be206ab6e338c365922d428208c9c56a21432ede04ba3c` |
| 84 | `theorem` | [functorCategoryMonoidalEquivalence.unit_app_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence-unit-app-hom.md) | 695 | `result-track:134b1925534d419faa553eef6ad8dd8038c056a7c70a5551d2e03b783cf0df9b` |
| 85 | `theorem` | [functorCategoryMonoidalEquivalence.functor_map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence-functor-map.md) | 702 | `result-track:b370120358a4aed22a9914eb917a03c80114c737ca9c7bd1d9a1a1601bf39d97` |
| 86 | `theorem` | [functorCategoryMonoidalEquivalence.inverse_map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/functorcategorymonoidalequivalence-inverse-map.md) | 709 | `result-track:47d472093d43733e71cef59ff81edb7dd7975fe744222bbe41aafa6b216e2715` |
| 87 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-25.md) | 717 | `declaration-track:e4d32b20ff8e3a35dc8327815f4791157821986caf96d10ef2d180ec816d5eb1` |
| 88 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-24.md) | 721 | `declaration-track:dd226e5338dcf9b9d55d5751d37a422826bba990e77508473f36a4cbfba8fe96` |
| 89 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-9.md) | 724 | `declaration-track:45f4e0ac05eff4e5913bba74d376d04af6ed71f010b2e190cc04f222800faf3a` |
| 90 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-4.md) | 728 | `declaration-track:3093cb159ccf5c8c2388cef7d6664f97637bedcb18595b901404da4081d55104` |
| 91 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-26.md) | 731 | `declaration-track:eb1e217328237a7685be4184479c754012ddfeec0bfa8ab1562e15ce7b733f58` |
| 92 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/instance-source-edition-15.md) | 735 | `declaration-track:86d24f1313c8cde2b31839b2013ca572c49185daca0d7dd84f7438f59871082e` |
| 93 | `theorem` | [rightDual_v](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/rightdual-v.md) | 742 | `result-track:b51e9e009e3009ea0bb9dbbe403f8e9bbd9dc5d8cc0fa2f6ab5c861f0412da1e` |
| 94 | `theorem` | [leftDual_v](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/leftdual-v.md) | 748 | `result-track:178153a4af8aee6539c664ab0df15cbf1c2a6a1fedf65d5068412ca4ec4a3fd8` |
| 95 | `theorem` | [rightDual_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/rightdual.md) | 754 | `result-track:9f49e9111c8eb7f29caa2a676296f591352ef509226bbc6f9a44387306a98d43` |
| 96 | `theorem` | [leftDual_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/leftdual.md) | 760 | `result-track:7a86f0b1a6213a48ab38281f8dfe7b6e43d3e5482d738c371f418b45849439e8` |
| 97 | `def` | [actionPunitEquivalence](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/actionpunitequivalence.md) | 770 | `declaration-track:b4ad8ab1d0f611f46032a98ff1abfe57940d17aea99d231a25fea8b73eec590f` |
| 98 | `def` | [res](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/res.md) | 792 | `declaration-track:eae44d5e17f60d7b65e9191cff90087ced5ff10fcd3d8a8301b6d5748e63f8a1` |
| 99 | `def` | [resId](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/resid.md) | 806 | `declaration-track:b80017950853bc3223f4629a2728fc016939d7073ad7617c463364207d55cba1` |
| 100 | `def` | [resComp](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/rescomp.md) | 815 | `declaration-track:8e056ad381fd0ce369b17ea9f40e0d90315d58793cbba999ff567ccfada25834` |
| 101 | `instance` | [res_additive](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/res-additive.md) | 824 | `declaration-track:d65f22af0775f82f3bf0a126f407bce4f09d03d3db16bba7f4ac81ddc65a9ca3` |
| 102 | `instance` | [res_linear](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/res-linear.md) | 830 | `declaration-track:fc1b55f11f98cf85746578eff5970a3c3e8b1895fdbc5a3d9649bf0cf7f83673` |
| 103 | `def` | [ofMulAction](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/ofmulaction.md) | 835 | `declaration-track:c99c0f4abc2ebe19501f20e3e4cf9110c3759fd1dad355cfa05323ff7566ba3f` |
| 104 | `theorem` | [ofMulAction_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/ofmulaction-apply.md) | 842 | `result-track:54083d91e28758ec220b5309e17eaf86d490e57c963db087126e605ade18642a` |
| 105 | `def` | [ofMulActionLimitCone](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/ofmulactionlimitcone.md) | 850 | `declaration-track:1bcff147aa3cc979845809bd5060859aff2dafa96eefb33fbc18b6ae55c00b8a` |
| 106 | `def` | [leftRegular](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/leftregular.md) | 875 | `declaration-track:7c86ccb62fc0829623651854393c3d998624081451d573c1fa95de88000a62a0` |
| 107 | `def` | [diagonal](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/diagonal.md) | 882 | `declaration-track:9e4b7bda16abef0f81ad0b3d85eb0f6a86e7180d6aa7d388c53eed4329279064` |
| 108 | `def` | [diagonalOneIsoLeftRegular](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/diagonaloneisoleftregular.md) | 888 | `declaration-track:07708813f36f81c566eed673f4337561158bf3c96c0857e81a3080192ce0f653` |
| 109 | `def` | [leftRegularTensorIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/leftregulartensoriso.md) | 900 | `declaration-track:8dd47322c35db80c63cbd99aad20bc19a951317f19e8dc2ac5981342d09620c8` |
| 110 | `def` | [diagonalSucc](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/diagonalsucc.md) | 937 | `declaration-track:40a5aa2c2f36ed7124375d381c06cf09cf9473ec5e9b0a2b79a4b0e2ac0f8c1a` |
| 111 | `def` | [mapAction](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/mapaction-source-edition-2.md) | 952 | `declaration-track:eafc0b6089756619d1b69adcfe6f0bf064545be32563708952b60e3cc49110d2` |
| 112 | `instance` | [mapAction_preadditive](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/mapaction-preadditive.md) | 971 | `declaration-track:17f7056d2370a8771d4ab3b038a18c31231216ce729c3b406e832b187a7741a6` |
| 113 | `instance` | [mapAction_linear](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/mapaction-linear.md) | 977 | `declaration-track:6d3c20d485f6ecc2f2305e6c1f6c2fb42d441a06574eaa76ae3b1d27d78afcc6` |
| 114 | `def` | [mapAction](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/mapaction.md) | 994 | `declaration-track:d918f317d1396c162d5798a9cf7a121c4c6243de1225f6b044e97fd465b56588` |
| 115 | `theorem` | [mapAction_ε_inv_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/mapaction-inv-hom.md) | 1021 | `result-track:0648a4d8476be3fcb3cf2ec12e801fe4c79f0f6805cfc14c45baa85979d4f7fe` |
| 116 | `theorem` | [mapAction_μ_inv_hom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryActionNamespaced.lean/declarations/mapaction-inv-hom-source-edition-2.md) | 1028 | `result-track:893ed67fa86013048a26985c5cb5092733e69fe2526942126090d60374d41ae4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=290f762c470806094b43bcd4bbf9525fb6e38532ff9538ddc635aab800fb0416 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant39bd7a8213c908e41b2305c37464cc840f856efddb75cfa38a76eff527aa928a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant39bd7a8213c908e41b2305c37464cc840f856efddb75cfa38a76eff527aa928a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
