# Verification target: Pseudoelements Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3fca66943b2140552e6b28295dce12d2f002833",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3fca66943b2140552e6b28295dce12d2f002833`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Align` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Exact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Over` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [app](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/app.md) | 104 | `declaration-track:3bf700282b6a91f7cb2ec31c62cf057f3a09287d08c042b0c3c227fdcbe2fd7a` |
| 2 | `theorem` | [app_hom](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/app-hom.md) | 109 | `result-track:7f34daaa6423a572d0fc6dd2e90a71d32fb77fe5a771bfab4b272ca479cb8078` |
| 3 | `def` | [PseudoEqual](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudoequal.md) | 114 | `declaration-track:b3a512b63cddc6dae7b78fc2e216bc036d6f10efcfd157c9c89966f98ac5f8d2` |
| 4 | `theorem` | [pseudoEqual_refl](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudoequal-refl.md) | 118 | `result-track:cfe9c0e79de5c6e029ccd334331ba1a27400a06180fd7ca639e78914deeb0911` |
| 5 | `theorem` | [pseudoEqual_symm](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudoequal-symm.md) | 122 | `result-track:c4664247105fbcab366e442d6355b19f061b043029610a107deeaa9368bd88da` |
| 6 | `theorem` | [pseudoEqual_trans](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudoequal-trans.md) | 132 | `result-track:4c082fd2bf03f189280b920637e2750a8e55a64a60da304052f536ceb1cfa31f` |
| 7 | `def` | [Pseudoelement.setoid](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudoelement-setoid.md) | 142 | `declaration-track:1c64fcff7c59a02f0ac0fb45206adc91abb3dd4c07d7ab5321fb566b8d4ea049` |
| 8 | `def` | [Pseudoelement](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudoelement.md) | 150 | `declaration-track:2c5f24c56df0bc96beecdf0e84aa25135c1c84130fb89cc868819b9962433d56` |
| 9 | `def` | [objectToSort](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/objecttosort.md) | 157 | `declaration-track:af6ea8ac84f29bf9ec2bdc1649b9b02d1281f5b72ed3ebd1b4ef29da31b4bdc4` |
| 10 | `def` | [overToSort](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/overtosort.md) | 166 | `declaration-track:09d86178226bc2b3ba87b472870c80c43ea4fb7522f9c6b43d2f5e53f2ba235b` |
| 11 | `theorem` | [over_coe_def](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/over-coe-def.md) | 172 | `result-track:bed43f9ed2c1c8324f29ca7b23d27f7a19d1f07f22f0e5ab751503b37bc5174f` |
| 12 | `theorem` | [pseudoApply_aux](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudoapply-aux.md) | 176 | `result-track:6fbd08bcd93ef81afec10c72459f5d3a68b810b9bffff14f78b346002841053f` |
| 13 | `def` | [pseudoApply](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudoapply.md) | 182 | `declaration-track:3a49ed35f0739d54e4026096fb2fb5ff28d14826af3e9d75e9067f9e6ae586f2` |
| 14 | `def` | [homToFun](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/homtofun.md) | 187 | `declaration-track:0046b732ed71815125fea76848c71c522f34ed2cfe61f9199c05d394d1199083` |
| 15 | `theorem` | [pseudoApply_mk'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudoapply-mk.md) | 195 | `result-track:a30c9a4fb32af93f0d97e984f379de9e1cd40105d4c2f2cb6ae38678aac63483` |
| 16 | `theorem` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/comp-apply.md) | 201 | `result-track:0edef9cde2cf790fd0384f8701d7d674c3b20e5772017aa6b2b645a0bf326d58` |
| 17 | `theorem` | [comp_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/comp-comp.md) | 209 | `result-track:72e9cf18df40fa529d8def56c4db9d1d80129a3e425fd8d77c096ddced6d9683` |
| 18 | `theorem` | [pseudoZero_aux](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudozero-aux.md) | 227 | `result-track:8fbc398af4f229af3319273f38d001d36edbcb655b5749ea270c145ee6d12d81` |
| 19 | `theorem` | [zero_eq_zero'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/zero-eq-zero-source-edition-2.md) | 235 | `result-track:70552a383027c1c3052ddbd444a76015fac46fad4a66ef6dfde5e859e3a4ddd5` |
| 20 | `def` | [pseudoZero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudozero.md) | 241 | `declaration-track:43d6a060f57129265e0e5fdcd5d92fdc94dbeed041b36da5a25cfce70e7f04e3` |
| 21 | `instance` | [hasZero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/haszero.md) | 249 | `declaration-track:b098c5a83da97bc8e740aebabe86f5fb41ab29ea2e968c17af5c57fcadd21ea0` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/instance.md) | 253 | `declaration-track:64aa66c8b2ad05b1132868ef08b073ef1000952abcc047681326913caf781a19` |
| 23 | `theorem` | [pseudoZero_def](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudozero-def.md) | 256 | `result-track:5cd70a6f56430fcfc7af2f0376ff9d5e6d4100f82f3a2e7ec695bed1104acb6b` |
| 24 | `theorem` | [zero_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/zero-eq-zero.md) | 260 | `result-track:01fb4246247c570ed6b82207de59f6e77bb752790b450dc339329deba2c12075` |
| 25 | `theorem` | [pseudoZero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudozero-iff.md) | 265 | `result-track:53523405e96651eae1f0b31e2a4e9d747594eda81d389be32e19512986ca218e` |
| 26 | `theorem` | [apply_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/apply-zero.md) | 276 | `result-track:ea42800bfd3346fb0ae25ce7b50dcc5299cd95403ec2b7b1dcdd9b9ea0390d92` |
| 27 | `theorem` | [zero_apply](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/zero-apply.md) | 283 | `result-track:5bbff72922277b7a78f581dcfbd16d2f87809e27d1cd367d8eda71f4fa5f4864` |
| 28 | `theorem` | [zero_morphism_ext](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/zero-morphism-ext-source-edition-2.md) | 290 | `result-track:a2d85c120b530c7004e85668d356cfa2b69733f7951b00480ac9bb2b67ea386e` |
| 29 | `theorem` | [zero_morphism_ext'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/zero-morphism-ext.md) | 295 | `result-track:3b4ed53ad36d51141e0cff0342a7ec72a6dd1a8cc15b8d872fa810eb462fc0c3` |
| 30 | `theorem` | [eq_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/eq-zero-iff.md) | 305 | `result-track:c7cdbc31a2cda762ac3a890d4255faae5cc7da8b19eeeea9d92dfc4e442df8f5` |
| 31 | `theorem` | [pseudo_injective_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudo-injective-of-mono.md) | 310 | `result-track:6be912412dce054766c3e629893f67275a27e8941d6afdf5504c1432046b5880` |
| 32 | `theorem` | [zero_of_map_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/zero-of-map-zero.md) | 322 | `result-track:2928981f59ff5642b1ed462602419695d3c75b9d87afa23dada10ce50129ffa8` |
| 33 | `theorem` | [mono_of_zero_of_map_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/mono-of-zero-of-map-zero.md) | 329 | `result-track:f206b260d37af85ec40eeed239962a3f22e18f8bc143bee8e0e346ad474a15df` |
| 34 | `theorem` | [pseudo_surjective_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudo-surjective-of-epi.md) | 338 | `result-track:5b3eb7bc6960b1dc97b7f1e841a9ee5d8758df42b77eba159da8f7b0b5c552f8` |
| 35 | `theorem` | [epi_of_pseudo_surjective](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/epi-of-pseudo-surjective.md) | 350 | `result-track:e55a4f7ef816f6c451882d5504ab42d0811337f97fa7edfcb601fd04eec3e38b` |
| 36 | `theorem` | [pseudo_exact_of_exact](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudo-exact-of-exact.md) | 367 | `result-track:946b48c8d194c67ef98631a4b01156f1d725677ff85e7cbba2a0fc61bba20b64` |
| 37 | `theorem` | [apply_eq_zero_of_comp_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/apply-eq-zero-of-comp-eq-zero.md) | 400 | `result-track:df4cda027a30e409cd098eb67555b2a3a25c7fe79426e0afe2b0381e7a679a8c` |
| 38 | `theorem` | [exact_of_pseudo_exact](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/exact-of-pseudo-exact.md) | 407 | `result-track:eca75d6bcae982341fa6a048b15d2bdbaa3fa5ed7d980c7c2f1c45ac1c961977` |
| 39 | `theorem` | [sub_of_eq_image](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/sub-of-eq-image.md) | 444 | `result-track:01427ee996757de4c0fa31123681384c7c12ad4c45abb0cc5ec785a717af5cd2` |
| 40 | `theorem` | [pseudo_pullback](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/pseudo-pullback.md) | 472 | `result-track:42780829337ac39bff3ba259b367479108be649c96f1e8c0c9d52df21488db56` |
| 41 | `theorem` | [ModuleCat.eq_range_of_pseudoequal](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsNamespacedAligned.lean/declarations/modulecat-eq-range-of-pseudoequal.md) | 488 | `result-track:1c7396678b26306357c21844f7aef18213d4bdbcac2ec27613a64b623c3c0e2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcd5950bebf514aeda8d2d39d12f430d93fea1e9b2651a44675c361cf5e48d7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
