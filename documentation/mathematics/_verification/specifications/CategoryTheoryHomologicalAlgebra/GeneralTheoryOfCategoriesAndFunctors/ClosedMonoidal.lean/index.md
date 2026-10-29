# Verification target: Closed Monoidal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de6b16de08a6c34a39ff04166ac41fdaf055cfc0",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteae4d8e9ccf58a6c37e85c1d2203a6ea39d2a1c26090ab51905877e2aa4ca1fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de6b16de08a6c34a39ff04166ac41fdaf055cfc0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteae4d8e9ccf58a6c37e85c1d2203a6ea39d2a1c26090ab51905877e2aa4ca1fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteae4d8e9ccf58a6c37e85c1d2203a6ea39d2a1c26090ab51905877e2aa4ca1fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.InvIsos` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Closed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/closed.md) | 35 | `declaration-track:ca847050f92287b5650d408deee79afe6039d1bc9de86bc080e89f3860c5201b` |
| 2 | `class` | [MonoidalClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/monoidalclosed.md) | 41 | `declaration-track:f09283ecf8cb20f26886f1c1a617c9486036dcc1cd786b7d16c28542981d4933` |
| 3 | `def` | [tensorClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/tensorclosed.md) | 53 | `declaration-track:e881ce300ee769ab3d625491cca1b8032c9074faab1882ff87a9e5bff12a75f8` |
| 4 | `def` | [unitClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/unitclosed.md) | 64 | `declaration-track:2dccb65b18cf2bf94e92379ddc7727cb36648daa4fb581b252d0195abbe38d3e` |
| 5 | `def` | [ihom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/ihom.md) | 85 | `declaration-track:d84a48b7c93affa13f3fedee6158d86c775b66fb464f64dfe3411a869668f041` |
| 6 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/adjunction.md) | 92 | `declaration-track:846a29793b603220a0ba2fd25e2badb46079c91bd7c2e733f56507b0e3f7a53e` |
| 7 | `def` | [ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/ev.md) | 97 | `declaration-track:d5ff886959d1f3ac6c2e28adf64a720e4695f505b307739f95d3cb1eeca15afb` |
| 8 | `def` | [coev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/coev.md) | 102 | `declaration-track:29ae528dde9a6183ae8c24582ebc7a1a1979088741f97cbc40658fc98adae393` |
| 9 | `theorem` | [ihom_adjunction_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/ihom-adjunction-counit.md) | 107 | `result-track:35a4d49569223cc7da2b55aff6e20d94d7683be9cc96eccd901e5183951b4100` |
| 10 | `theorem` | [ihom_adjunction_unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/ihom-adjunction-unit.md) | 112 | `result-track:5e57f7eedd9b47406ea40ff9e1b9436abe371ec7c101b9661a786116c3a10c70` |
| 11 | `theorem` | [ev_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/ev-naturality.md) | 117 | `result-track:7e1231e8657e228a7cebf2611e20e458c8c7041ddb45754338ad7a1ec2679ee1` |
| 12 | `theorem` | [coev_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/coev-naturality.md) | 123 | `result-track:da3aa10e393b8b8aa468794906c809400468d75c220dcc6963fc131a1edc2dba` |
| 13 | `theorem` | [ev_coev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/ev-coev.md) | 133 | `result-track:a7019c421dd91c6ebdfc56d87f7a28618123dde329e1431a38264dfef0bc6103` |
| 14 | `theorem` | [coev_ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/coev-ev.md) | 138 | `result-track:054ed1ac566b1a273fd4af7f51bc5e9ebeb8f6cb2dec1c01b3636da34794029b` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/instance.md) | 146 | `declaration-track:67db1ae1f1431f37c72f76ba2946bfcd6e3a817b40531fe7346df04c4213f3c7` |
| 16 | `def` | [curry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/curry.md) | 155 | `declaration-track:a95247a25b6a6c296197573bc15ef82f0bbe83299fe7a2ece7fbcaf9a2c5447d` |
| 17 | `def` | [uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/uncurry.md) | 160 | `declaration-track:442453aa6c46eea09180190dc7eb2878c5126447a6f4342556bf0618e74e4cae` |
| 18 | `theorem` | [homEquiv_apply_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/homequiv-apply-eq.md) | 165 | `result-track:9aef2c18a7b45cac6c98de896634322bee0a4b2499ac0073fc5a5cb0f7b81d63` |
| 19 | `theorem` | [homEquiv_symm_apply_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/homequiv-symm-apply-eq.md) | 170 | `result-track:63d4ae340c4399372f1adb119d0c02a5b71df6f3a1db9224f3a2d0d9840c7c15` |
| 20 | `theorem` | [curry_natural_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/curry-natural-left.md) | 176 | `result-track:7be0598122e176ab105a6fdbafa0d648484a6cc6435387018c424c26e5a637ca` |
| 21 | `theorem` | [curry_natural_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/curry-natural-right.md) | 181 | `result-track:b09916b511e3748bec43e4439b8063b0465c4d8cd768735c98f3b021f4f22379` |
| 22 | `theorem` | [uncurry_natural_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/uncurry-natural-right.md) | 187 | `result-track:e328a23167843b9e7a302a54960a0dc6a303c33f3013c11b6680ac54f1f6bfd2` |
| 23 | `theorem` | [uncurry_natural_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/uncurry-natural-left.md) | 193 | `result-track:e89e45155b2d3577991ddc6d55eb43b9b821a8a70b95b4ea42beb7487484f7b9` |
| 24 | `theorem` | [uncurry_curry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/uncurry-curry.md) | 199 | `result-track:aaa9f0ce3f003b7839fcc91dc19214bbf6efbc0b2c0a669a39068e7303fea6e5` |
| 25 | `theorem` | [curry_uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/curry-uncurry.md) | 204 | `result-track:5b88d5d8634684401e17b3fb822c99b086c6d2b6bfbbb3bc86b5b09cc9ef18a2` |
| 26 | `theorem` | [curry_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/curry-eq-iff.md) | 208 | `result-track:a335b823ca7dbd9a8689a9c4941eb667752db943870a981180a40b5bbcc95818` |
| 27 | `theorem` | [eq_curry_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/eq-curry-iff.md) | 212 | `result-track:d4679f0461c60fc9c799fbdadf1a63bbaeb041f0799ef98b71b259fa587adcb2` |
| 28 | `theorem` | [uncurry_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/uncurry-eq.md) | 217 | `result-track:dff2cd0706158f352b73d5a18ac18982f1b192370b76473ba49203446208951f` |
| 29 | `theorem` | [curry_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/curry-eq.md) | 221 | `result-track:4f45ccd9c1a44e208111001a36e908a6c4051828003324761fa5085d1d3f5db2` |
| 30 | `theorem` | [curry_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/curry-injective.md) | 225 | `result-track:5772a7156e83761702406acc2574565efc13bad66589d9d8d9b327fc48a99067` |
| 31 | `theorem` | [uncurry_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/uncurry-injective.md) | 229 | `result-track:8eb4e4ad4b8d3c9442119304a987f148358731b30b69c14326793f9199a98223` |
| 32 | `theorem` | [uncurry_id_eq_ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/uncurry-id-eq-ev.md) | 235 | `result-track:be603161ea1d17bdb0205b67691b2b203a9218729cbc58e40bd8b255579e27ec` |
| 33 | `theorem` | [curry_id_eq_coev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/curry-id-eq-coev.md) | 239 | `result-track:74494aa1502a5b39f51a177caf7a879bab89682eb58f3cea92e209dcfcfb5020` |
| 34 | `def` | [pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/pre.md) | 249 | `declaration-track:6e61bb5614ed4599d71cf2c6649bb17b332f3cb8244be8c5cc967329d90dfb49` |
| 35 | `theorem` | [id_tensor_pre_app_comp_ev](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/id-tensor-pre-app-comp-ev.md) | 254 | `result-track:a44ed22e2459b23b2107a82595f0793d8a294bb218ed3c9e36f250e309b39b3c` |
| 36 | `theorem` | [uncurry_pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/uncurry-pre.md) | 260 | `result-track:27e4a3708befef7e5a0b1dabaa5d18ef33b55be0eb61e77d3a34c4fc6cff18e0` |
| 37 | `theorem` | [coev_app_comp_pre_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/coev-app-comp-pre-app.md) | 266 | `result-track:7e53db520f88cb3fadc3792a755eb901dbe66b17a4a6370e0efdfd29cee3bacf` |
| 38 | `theorem` | [pre_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/pre-id.md) | 272 | `result-track:152a2094e8806f23fcb6032aecbda6a5f0f23a19927ee1650acc3c0c44b835a0` |
| 39 | `theorem` | [pre_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/pre-map.md) | 279 | `result-track:ab9da1c58a326b5ff7e4780107eff9c6eb67d6b8fa465d0960bcdbb3b5009687` |
| 40 | `theorem` | [pre_comm_ihom_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/pre-comm-ihom-map.md) | 284 | `result-track:b53926fc391e8e5a6827e5aeee07b54de9e1cb753f7873c235fe15b68eda70d4` |
| 41 | `def` | [internalHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/internalhom.md) | 292 | `declaration-track:8669ae23a652dd74ceb6397aa12846683001585f0e6b7477cff4e3ba9484206d` |
| 42 | `def` | [ofEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/ofequiv.md) | 303 | `declaration-track:2726c0249e070ca34297c3894c94c8f747ef966be083132d29a162d3727625a4` |
| 43 | `theorem` | [ofEquiv_curry_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/ofequiv-curry-def.md) | 318 | `result-track:23d9beee7692b03ce03dc6c319b974a1f1b851a2e1d71cac5496de1f5a2fc6fa` |
| 44 | `theorem` | [ofEquiv_uncurry_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/declarations/ofequiv-uncurry-def.md) | 333 | `result-track:db0564a7181dbace416dc94ed8fa861ff889a7c036fb70ffd3f916e0f5bb826b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc2fdaaba0dab154b69b144bf097e34346de63f0bb251bd734a0d2d4fe615a0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteae4d8e9ccf58a6c37e85c1d2203a6ea39d2a1c26090ab51905877e2aa4ca1fd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteae4d8e9ccf58a6c37e85c1d2203a6ea39d2a1c26090ab51905877e2aa4ca1fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
