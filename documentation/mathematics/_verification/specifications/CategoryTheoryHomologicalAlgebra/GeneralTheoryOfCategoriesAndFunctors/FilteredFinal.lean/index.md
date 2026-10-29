# Verification target: Filtered Final

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Connected` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Filtered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Sifted` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Functor.final_of_isFiltered_structuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-of-isfiltered-structuredarrow.md) | 47 | `result-track:65d71b4178404f492f2a8f817683fefdc68a7364b673de87002b82c04f834d91` |
| 2 | `theorem` | [Functor.initial_of_isCofiltered_costructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-of-iscofiltered-costructuredarrow.md) | 54 | `result-track:45c108b2dccb2a8f209df25a7d5044b3e4e645603e4251f1f340790cc40d2ae8` |
| 3 | `theorem` | [isFiltered_structuredArrow_of_isFiltered_of_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/isfiltered-structuredarrow-of-isfiltered-of-exists.md) | 58 | `result-track:06471e22a0e908855ee31376f5ea363b794fa6641f0795844a2adcfbe3c81e56` |
| 4 | `theorem` | [isCofiltered_costructuredArrow_of_isCofiltered_of_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/iscofiltered-costructuredarrow-of-iscofiltered-of-exists.md) | 76 | `result-track:39d134d82f3c1e0e273273708aca72ab348cf3d01809e7d71ef26f48b1581ec2` |
| 5 | `theorem` | [Functor.final_of_exists_of_isFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-of-exists-of-isfiltered.md) | 93 | `result-track:1d806a1c2c3e2e94bb7f6e300dd7584f5f5b5126f5809dd1f3df19fce8b27e7c` |
| 6 | `theorem` | [Functor.final_const_of_isTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-const-of-isterminal.md) | 100 | `result-track:191dbfe9fef1639edf5bf801181b728d2d53167a4da27d6c2c255bb86856f253` |
| 7 | `theorem` | [Functor.final_const_terminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-const-terminal.md) | 106 | `result-track:9a534fd8ac3daba0faa0ae5a27d56d13983f0bd46c842673bb13bbd12d9df068` |
| 8 | `theorem` | [Functor.initial_of_exists_of_isCofiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-of-exists-of-iscofiltered.md) | 112 | `result-track:567cc92ffc38760494beadd3d45ee673f8dc0a7850ca194a25d711dfaa5e3d77` |
| 9 | `theorem` | [Functor.initial_const_of_isInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-const-of-isinitial.md) | 120 | `result-track:d51a10782d3b6ebe07944ce914320a2244f4eb5705243a180d7956311da58f21` |
| 10 | `theorem` | [Functor.initial_const_initial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-const-initial.md) | 126 | `result-track:f8192231290c67b5ba9767beb17ffb2b97409f3a20becaf6e989ffef16f52ffc` |
| 11 | `theorem` | [IsFilteredOrEmpty.of_exists_of_isFiltered_of_fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/isfilteredorempty-of-exists-of-isfiltered-of-fullyfaithful.md) | 132 | `result-track:ccd654788e5b3444aac79500d0913dad00c20ecdacbb4721254981df983e45ce` |
| 12 | `theorem` | [IsCofilteredOrEmpty.of_exists_of_isCofiltered_of_fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/iscofilteredorempty-of-exists-of-iscofiltered-of-fullyfaithful.md) | 145 | `result-track:9238422f6cfa356ed57a6b046d62feb8faa9fa9d62581b4fb059c3bf018c3ab4` |
| 13 | `theorem` | [IsFiltered.of_exists_of_isFiltered_of_fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/isfiltered-of-exists-of-isfiltered-of-fullyfaithful.md) | 154 | `result-track:320c911097ab522c9b4441a5684da22224cf132d73f869b523aa88c1ff4182af` |
| 14 | `theorem` | [IsCofiltered.of_exists_of_isCofiltered_of_fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/iscofiltered-of-exists-of-iscofiltered-of-fullyfaithful.md) | 164 | `result-track:5541f69ae6f8449cc81c41c54e53defc4a8aa0499cbcdf3332faa62db23b42ba` |
| 15 | `theorem` | [Functor.final_of_exists_of_isFiltered_of_fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-of-exists-of-isfiltered-of-fullyfaithful.md) | 174 | `result-track:34ad4466f99605a04066c16bad3049b244636affcc31309aa2910c58cb02933a` |
| 16 | `theorem` | [Functor.initial_of_exists_of_isCofiltered_of_fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-of-exists-of-iscofiltered-of-fullyfaithful.md) | 184 | `result-track:5f3edc16ca46cda226ccba49b44da12c181367c4434d951a8b5cede7ef893a6f` |
| 17 | `instance` | [IsFiltered.under](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/isfiltered-under.md) | 193 | `declaration-track:815d1953f6bfac65da3a24b00860cb35ca70234683025450037c16a898132920` |
| 18 | `instance` | [IsCofiltered.over](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/iscofiltered-over.md) | 200 | `declaration-track:1fccfaed528d9825b1d1f882e0606570f37d2ce0f9259a989c461852d2a28532` |
| 19 | `instance` | [Under.final_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/under-final-forget.md) | 206 | `declaration-track:4ecef69fe3251c7c5427efdeb835c075ed1dd3aca0943435632f5339956ce485` |
| 20 | `instance` | [Over.initial_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/over-initial-forget.md) | 216 | `declaration-track:51ec8d0836480c5c1180ebea503814188b1c5c84370e857d4e0644ffbf57cc38` |
| 21 | `theorem` | [Functor.Final.exists_coeq_of_locally_small](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-exists-coeq-of-locally-small.md) | 230 | `result-track:8d727f9b4792d423c39e3a3ce6f31772266a70ba4eeacb2d4f5c786af50b1e8b` |
| 22 | `theorem` | [Functor.final_iff_of_isFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-iff-of-isfiltered.md) | 245 | `result-track:30488fb9671331d8f45743fb160a1f7b06b12bbf2373cff4a01b7e08390f2290` |
| 23 | `theorem` | [Functor.initial_iff_of_isCofiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-iff-of-iscofiltered.md) | 262 | `result-track:770b7e41827d50c242bea0b1ec7ec7fe7191be748b95a17ae25bab4ce3882c39` |
| 24 | `theorem` | [Functor.Final.exists_coeq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-exists-coeq.md) | 275 | `result-track:ec468157e39c4ab200334f852a2e1a3a5dd6cef7228c4c8eaca653ba1f3f22fc` |
| 25 | `theorem` | [Functor.Initial.exists_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-exists-eq.md) | 279 | `result-track:6dff11721f18328b4faf257a956fd4088e54f6b91f1d63fab6b182907d4b12fb` |
| 26 | `theorem` | [Functor.final_iff_isFiltered_structuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-iff-isfiltered-structuredarrow.md) | 285 | `result-track:00babe365202bf555ba4e0fb660d26fb524da85b801828282ee58963dca4f720` |
| 27 | `theorem` | [Functor.initial_iff_isCofiltered_costructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-iff-iscofiltered-costructuredarrow.md) | 293 | `result-track:1de0145931c83c7c7b48d02662e1260ac6b9b1a240f5cfd94b051818d8f97fb1` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/instance.md) | 301 | `declaration-track:53c8c8b62614a19d8cebad84ad7b125b4b068ae6b0b6844c40bacae232eb8b6c` |
| 29 | `instance` | [Functor.final_diag_of_isFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-diag-of-isfiltered.md) | 308 | `declaration-track:068b19a710bf1f745e459952c889a1d8027760b27414c4c546541d86d92597de` |
| 30 | `theorem` | [IsFilteredOrEmpty.isSiftedOrEmpty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/isfilteredorempty-issiftedorempty.md) | 312 | `result-track:19f5916c824126b4b55215cb175d44e187a64a6b154dbbaa960ba3ff50069066` |
| 31 | `theorem` | [IsFiltered.isSifted](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/isfiltered-issifted.md) | 317 | `result-track:e92522ff326622a2c0f0f8608d570175692ad0bb9455c4b1d387bab01b3562a4` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/instance-source-edition-2.md) | 321 | `declaration-track:f989e7d1c45045156863f43592679b17851ebe1cb35bdbf00d8a913c94fa2f5b` |
| 33 | `instance` | [Functor.initial_diag_of_isFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-diag-of-isfiltered.md) | 328 | `declaration-track:3e9bae68665a42da5e4a6175fa05b72181dd43918db28e44af5b54b1e9da7c69` |
| 34 | `theorem` | [Functor.final_of_isFiltered_of_pUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-final-of-isfiltered-of-punit.md) | 332 | `result-track:d86a20753df9a921256044ac3f284f885269ac8c86728c1837314d3535c21638` |
| 35 | `theorem` | [Functor.initial_of_isCofiltered_pUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/functor-initial-of-iscofiltered-punit.md) | 341 | `result-track:e530a913c065f215f5c69152de5d694ec87e61705a85608fec4baf2eaef5c554` |
| 36 | `instance` | [StructuredArrow.final_proj_of_isFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/structuredarrow-final-proj-of-isfiltered.md) | 351 | `declaration-track:3fd035bbcb1c2dfe2fd0a6919b43803acc6526ced9423339deaa9ced47ffd499` |
| 37 | `instance` | [CostructuredArrow.initial_proj_of_isCofiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/costructuredarrow-initial-proj-of-iscofiltered.md) | 359 | `declaration-track:eb33c87f2e5cada64e90a4e358a4d3f5ca8e174c02e7ecf3dcfab2fe036dd12f` |
| 38 | `instance` | [StructuredArrow.final_map₂_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/structuredarrow-final-map-id.md) | 368 | `declaration-track:dca6e9739c6d10ce156499c4d96e69b7835aa987c1923b8b63fc40538d5fd5b6` |
| 39 | `instance` | [StructuredArrow.final_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/structuredarrow-final-map.md) | 377 | `declaration-track:6fc8f9ef0357b9d5ab13680acbcffca5709822e3d8a97806ab31b8647a488e00` |
| 40 | `instance` | [StructuredArrow.final_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/structuredarrow-final-post.md) | 386 | `declaration-track:cbfe82aed7d90110e7008227083fbc31c858f38ac0b3a1ac3a0af7943858827d` |
| 41 | `instance` | [CostructuredArrow.initial_map₂_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/costructuredarrow-initial-map-id.md) | 393 | `declaration-track:70ec6d9733b747e8524a9566d2c6b1366e151494f06a5de801f9060ed5589980` |
| 42 | `instance` | [CostructuredArrow.initial_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/costructuredarrow-initial-post.md) | 401 | `declaration-track:7d2440ad8da83fb093174afd62f0d2a03de985fa7dea9d70e902e2cbdb01a9a3` |
| 43 | `instance` | [final_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/final-eval.md) | 410 | `declaration-track:829678e660204ddb6c04c144853cd91dd02668ee088fc4040da36dee368d51ad` |
| 44 | `instance` | [initial_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/initial-eval.md) | 423 | `declaration-track:f2bbeee137ea8f3d29e9325220d8e782c8cfa588a1624bc53cf8036c0e7022bf` |
| 45 | `instance` | [final_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/final-fst.md) | 440 | `declaration-track:4b57a9c3559ef040292f66fce3c426dcf79bffadec4825e15c02d623555c6fd5` |
| 46 | `instance` | [final_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/final-snd.md) | 446 | `declaration-track:8afdf8423c2c2803c84f3d9e2ef8d1d092381f680cec6c6e81a918e55ce1cb67` |
| 47 | `instance` | [initial_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/initial-fst.md) | 450 | `declaration-track:3f3bd4a20fff4db3eaec3c50e93c15e7868d4143a0aeaf1f606ee22b6e7d6ef3` |
| 48 | `instance` | [initial_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/initial-snd.md) | 456 | `declaration-track:132e5e4cb966f5f32e18c0cbefe86a63469834eab4d5b4c2f4476ad42066edb0` |
| 49 | `lemma` | [Monotone.final_functor_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFinal.lean/declarations/monotone-final-functor-iff.md) | 465 | `result-track:195b3604538a4fd4681f98cda3470b75b1e772a5bc4c8bc2d8b1304df20dad6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=491d34abe3d20695850019bbd8c030dcf0b51d3e6b260d78dce2e57b335c58b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
