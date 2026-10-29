# Verification target: Mono

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ff0819a073ea9cd46b40caa4814393e23606f6f",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ff0819a073ea9cd46b40caa4814393e23606f6f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Iso` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mono_snd_of_is_pullback_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/mono-snd-of-is-pullback-of-mono.md) | 47 | `result-track:a04556cfcc6ce131b28382b69a074f889469450e6dcb8a2eaddcda55815c34da` |
| 2 | `theorem` | [mono_fst_of_is_pullback_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/mono-fst-of-is-pullback-of-mono.md) | 54 | `result-track:f239e3c516a629b5c56ec9e439100367b41225e6918e2a6721804f59a64a8753` |
| 3 | `def` | [isLimitMkIdId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/islimitmkidid.md) | 64 | `declaration-track:742fd7d5d690f3988175d2c6845f10f84be91f96374fafc057c19729fa259ce0` |
| 4 | `theorem` | [mono_of_isLimitMkIdId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/mono-of-islimitmkidid.md) | 73 | `result-track:e1d1c09b9b782433e503e42cf2698fcde781792f5501ef72dc0e963ed13deb14` |
| 5 | `def` | [isLimitOfFactors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/islimitoffactors.md) | 83 | `declaration-track:d1ef8b70044b283a624d029d3767718d44b981e002bf1982f680549b936e6486` |
| 6 | `def` | [isLimitOfCompMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/islimitofcompmono.md) | 102 | `declaration-track:8f2f043eed767ac3c613fee79fcea70096bc3954f200469615cb6345c6e3d91f` |
| 7 | `instance` | [pullback.fst_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullback-fst-of-mono.md) | 122 | `declaration-track:6a3e1bb6f065ae37b5a8fad97b21995c9615c5399978e04f302e4ae568393f5f` |
| 8 | `instance` | [pullback.snd_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullback-snd-of-mono.md) | 127 | `declaration-track:392d02e7547f9f90096d190292f8d618c6d2c4e99b56f44aa3187e1c74d4ce93` |
| 9 | `instance` | [mono_pullback_to_prod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/mono-pullback-to-prod.md) | 132 | `declaration-track:b7d32a6b4823ae120dd44fe50a1bf8e7adcea904a39550acfc613842c54dcea9` |
| 10 | `def` | [pullbackIsPullbackOfCompMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullbackispullbackofcompmono.md) | 141 | `declaration-track:660674b2b007b530e80438279ef2aed8537bd8308209973abd157483d14dc15a` |
| 11 | `instance` | [hasPullback_of_comp_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/haspullback-of-comp-mono.md) | 148 | `declaration-track:2afe6679cc0a3a8c07b7509b55b0ac21a7438269ef76bf0171ceef862a4159de` |
| 12 | `instance` | [hasPullback_of_right_factors_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/haspullback-of-right-factors-mono.md) | 158 | `declaration-track:ede1dd3ce3714d2d3d5aa1860657cdeebcc94b4bad222ce2e6de5afbaf48d706` |
| 13 | `instance` | [pullback_snd_iso_of_right_factors_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullback-snd-iso-of-right-factors-mono.md) | 161 | `declaration-track:151ffd07cfd8e3b752f94cc8b76d98e6f358af2b7cfab19fa6db2cd0e4b2beec` |
| 14 | `instance` | [hasPullback_of_left_factors_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/haspullback-of-left-factors-mono.md) | 170 | `declaration-track:59e2e416fa3d2f068d2f942f5375a1763e21c502be5f363e7f01ef90b6c0ecfa` |
| 15 | `instance` | [pullback_snd_iso_of_left_factors_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullback-snd-iso-of-left-factors-mono.md) | 173 | `declaration-track:c40fd1f5b7dfae0aac95cc933514a1837e21bf737dbc9f0c14b6c6b364abe887` |
| 16 | `instance` | [has_kernel_pair_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/has-kernel-pair-of-mono.md) | 188 | `declaration-track:ba5fa3df3f3847885bc2a5e8fa953d4c81df911ddd4dd7b042af3505598c264d` |
| 17 | `theorem` | [PullbackCone.fst_eq_snd_of_mono_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullbackcone-fst-eq-snd-of-mono-eq.md) | 191 | `result-track:09f3640cf5fd88502aca78c60a7f86330cdee05f1c88dcb7575dc8f2180c5138` |
| 18 | `theorem` | [fst_eq_snd_of_mono_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/fst-eq-snd-of-mono-eq.md) | 195 | `result-track:f5fe5da29411026a3b9640a47c905436361f56a42add3618ea7b809bc886fd8a` |
| 19 | `theorem` | [pullbackSymmetry_hom_of_mono_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullbacksymmetry-hom-of-mono-eq.md) | 199 | `result-track:294215e22e31ad0ebfddd5c82ed4ace28be4560f065aba8aefe480a598f52dcf` |
| 20 | `lemma` | [PullbackCone.isIso_fst_of_mono_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullbackcone-isiso-fst-of-mono-of-islimit.md) | 205 | `result-track:960e334472be7d897f9dbc51b6235d8f4fa476baa9f454cc405930369f50e7d0` |
| 21 | `lemma` | [PullbackCone.isIso_snd_of_mono_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullbackcone-isiso-snd-of-mono-of-islimit.md) | 213 | `result-track:bc835189e780880ef2a4aeed1977ff1498dfb2c9996df6dc36ab6fbe26aa9c77` |
| 22 | `instance` | [isIso_fst_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/isiso-fst-of-mono.md) | 217 | `declaration-track:45c3e1dfc7e95d567bd8b3a28c44ba3e6705e9a525d9ca5abe57c64d667f3395` |
| 23 | `instance` | [isIso_snd_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/isiso-snd-of-mono.md) | 220 | `declaration-track:6c9b2b70431a21d983df5adbb958ee577e347529e81d67d09045a0c69807275a` |
| 24 | `theorem` | [epi_inr_of_is_pushout_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/epi-inr-of-is-pushout-of-epi.md) | 228 | `result-track:27ce3494923584501df639ea1ce48daf0989d92e2a742b6fb2028f3a208683eb` |
| 25 | `theorem` | [epi_inl_of_is_pushout_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/epi-inl-of-is-pushout-of-epi.md) | 232 | `result-track:5fd2a07dadae068c4404b34e1cffce98891629f9737c64bed2d51ee7e2a6fe0c` |
| 26 | `def` | [isColimitMkIdId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/iscolimitmkidid.md) | 240 | `declaration-track:67c1b94595563fd60bbfd5394e38ab384827d999f7481603d9f25edacfe76329` |
| 27 | `theorem` | [epi_of_isColimitMkIdId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/epi-of-iscolimitmkidid.md) | 248 | `result-track:149bf6b58b830885d042dce44f9353ef4d6c099a3a3eb663a50691c046836ca0` |
| 28 | `def` | [isColimitOfFactors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/iscolimitoffactors.md) | 258 | `declaration-track:669362e82536d4447800cd3758819447c32e278403e518e3dfead32332fd4fcd` |
| 29 | `def` | [isColimitOfEpiComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/iscolimitofepicomp.md) | 281 | `declaration-track:f79f996e7bf6f2be4f40c4868a65218e3a37feb64e938706100bf6dcbd2184f6` |
| 30 | `instance` | [pushout.inl_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pushout-inl-of-epi.md) | 299 | `declaration-track:dcd4e855e96f40984091e35a55b30f64cd5a80e8881072ec83a367b82832c5b3` |
| 31 | `instance` | [pushout.inr_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pushout-inr-of-epi.md) | 304 | `declaration-track:c77c54492aa97097900bf0df76168e0b317fc7ea475bd9b6019c07c1d94a33ce` |
| 32 | `instance` | [epi_coprod_to_pushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/epi-coprod-to-pushout.md) | 309 | `declaration-track:a67aa7e3cd17594c87358193eaefa9335f6df777d485e4403293176db72e9555` |
| 33 | `def` | [pushoutIsPushoutOfEpiComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pushoutispushoutofepicomp.md) | 318 | `declaration-track:3e8a234c9f7774c42c0afa17a347a936080e508cbb547616cfad92b24ede7b41` |
| 34 | `instance` | [hasPushout_of_epi_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/haspushout-of-epi-comp.md) | 324 | `declaration-track:7ab98bc54af613e2398cc07da37e4871b6e227b9e820ec12623b202e493c76a5` |
| 35 | `instance` | [hasPushout_of_right_factors_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/haspushout-of-right-factors-epi.md) | 334 | `declaration-track:de05eb88b867bba8259377f02574370a2f04761dd19aea47c95b0c5b51c124b5` |
| 36 | `instance` | [pushout_inr_iso_of_right_factors_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pushout-inr-iso-of-right-factors-epi.md) | 337 | `declaration-track:432932c89e9a644d0b02254ea806248442e18d1250e92effb4833502e9c8cf8b` |
| 37 | `instance` | [hasPushout_of_left_factors_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/haspushout-of-left-factors-epi.md) | 347 | `declaration-track:be261548c82e8c948a2b616c992a71cdb492bcbae03fb857fb0eaabcb52a901d` |
| 38 | `instance` | [pushout_inl_iso_of_left_factors_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pushout-inl-iso-of-left-factors-epi.md) | 350 | `declaration-track:5d98b843392e9d2489de56b13389835ff0f6f9c38913031676ff8e12b4bdbf43` |
| 39 | `instance` | [has_cokernel_pair_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/has-cokernel-pair-of-epi.md) | 366 | `declaration-track:43e2d293d538f2806787a3d5cdf7702a73159e3e5e200017af4a24069f3b6e04` |
| 40 | `theorem` | [PushoutCocone.inl_eq_inr_of_epi_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pushoutcocone-inl-eq-inr-of-epi-eq.md) | 369 | `result-track:cea52d2b97d8681948725b641e2151b1975b87f551f18b5de8154182669d0aad` |
| 41 | `theorem` | [inl_eq_inr_of_epi_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/inl-eq-inr-of-epi-eq.md) | 373 | `result-track:1d9093fc595ebc2f8655c4ef135c96e4b1f56175f451f41524078e954a32b924` |
| 42 | `theorem` | [pullback_symmetry_hom_of_epi_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pullback-symmetry-hom-of-epi-eq.md) | 377 | `result-track:ae73976a8eefbff3510f4b42c47cdbe1700f96a3b91773796d20cbb43f8b0374` |
| 43 | `lemma` | [PushoutCocone.isIso_inl_of_epi_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pushoutcocone-isiso-inl-of-epi-of-iscolimit.md) | 381 | `result-track:b1b2a9daf9ab51394069b11be4a800e7ee447d8a3c3e53311da0b2ebf7baf2bc` |
| 44 | `lemma` | [PushoutCocone.isIso_inr_of_epi_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/pushoutcocone-isiso-inr-of-epi-of-iscolimit.md) | 389 | `result-track:9151fca93483d3dc9670ee45e4380dc06511a3bc94ef4f1b7b98800f086abe5f` |
| 45 | `instance` | [isIso_inl_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/isiso-inl-of-epi.md) | 393 | `declaration-track:fcdad60b0870caa56a398ecf8211719e2fd20c9baac4dc253dbb301ae2937082` |
| 46 | `instance` | [isIso_inr_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Mono.lean/declarations/isiso-inr-of-epi.md) | 396 | `declaration-track:e0e95fe6ed5e93c9dfb13c2d01260c944d955ce92502aba26dfc69927275c74e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0508a184ff4f7841a7c3dbbe29743acb2f75299bffe9a7e705d7770dfa1afe63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Varianta8e5b5303090482bdfa6d80ce9b1eaa4f716e95bbf5e4ee7544e74521cbe5c62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
