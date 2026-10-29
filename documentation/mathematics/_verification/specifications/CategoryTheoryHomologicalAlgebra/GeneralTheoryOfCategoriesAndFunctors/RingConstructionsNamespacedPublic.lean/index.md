# Verification target: Ring Constructions Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49bf76d2933f66199b49c6b2ace6278eb3f4481a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49bf76d2933f66199b49c6b2ace6278eb3f4481a`.

Source path: `GRWTSK/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FreeCommRing` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Units` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pushoutCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pushoutcocone.md) | 55 | `declaration-track:7354c1eab013cf1b210d8b54f2c7f253664c8cc018fa773734d227b547db03de` |
| 2 | `theorem` | [pushoutCocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pushoutcocone-inl.md) | 67 | `result-track:7094d6a84ac038752064c450e41032cedebea693669873c6221f7e0cefe02210` |
| 3 | `theorem` | [pushoutCocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pushoutcocone-inr.md) | 72 | `result-track:117942502143bba489febfd0d1440f4b1c9cd60f8b4ced54082ff8179faf11bd` |
| 4 | `theorem` | [pushoutCocone_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pushoutcocone-pt.md) | 77 | `result-track:ebc6e8771d607042b35444b78b26938bade783f57b573312975e32de2d7ce0e6` |
| 5 | `def` | [pushoutCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pushoutcoconeiscolimit.md) | 83 | `declaration-track:340a5c6c5bd873df591edee4ba1debd8060deea5fe1c9f6dd2c9ed079bf94a13` |
| 6 | `lemma` | [isPushout_tensorProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/ispushout-tensorproduct.md) | 124 | `result-track:cde25eaa993be216caa6cea38a15fbdcaddf384955faad4cc1cc56e639eb5ded` |
| 7 | `lemma` | [isPushout_of_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/ispushout-of-ispushout.md) | 134 | `result-track:0b3f2307d89b2f5627e1cc9fc027b1418117e368d992b7dc6de75353cf681457` |
| 8 | `lemma` | [isPushout_iff_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/ispushout-iff-ispushout.md) | 145 | `result-track:965be532399fbc03accda6dfb03b6bfae52c1d5fde5ccfbeb49bfa75eff9bdc3` |
| 9 | `lemma` | [isPushout_of_isLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/ispushout-of-islocalization.md) | 170 | `result-track:8f65ec27110293d618f0d200abbd01efde714c3fa066a414a3eb9612d6876884` |
| 10 | `lemma` | [closure_range_union_range_eq_top_of_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/closure-range-union-range-eq-top-of-ispushout.md) | 181 | `result-track:df178347e682421ac343e76cd37aca8279f0abd0fd13ae0d93c728d638a11587` |
| 11 | `def` | [coproductCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/coproductcocone.md) | 202 | `declaration-track:4ebc910a8535016eefd5884d1a5d0b11b71d6e4bc5063b199d6dc44f0f5fa4cd` |
| 12 | `theorem` | [coproductCocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/coproductcocone-inl.md) | 208 | `result-track:7eea9390ef836ec6cd2f08e9f0395d686f5e14832c70dbad44f43d0f5be7748c` |
| 13 | `theorem` | [coproductCocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/coproductcocone-inr.md) | 212 | `result-track:25f5ed04138a6eeeba4db08edb4f3ee172c0f410110719d54bc0fcaee3c9f416` |
| 14 | `def` | [coproductCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/coproductcoconeiscolimit.md) | 219 | `declaration-track:46027399693053b52cf752968b4880820476d49fdcd605adc665ebcb687f8860` |
| 15 | `def` | [coproductColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/coproductcolimitcocone.md) | 238 | `declaration-track:1fa0bafde46d9ba2b7585e8eaecd734a1cabbe184eeaec5347991eb2cf81bcec` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/instance.md) | 246 | `declaration-track:1574fe7194d6d78320b87ee0d46e56f55a7147afdbff6563cd6065b3cf06d3f7` |
| 17 | `def` | [punitIsTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/punitisterminal.md) | 250 | `declaration-track:24600814b49edbe67714c73c370907ab8f1fc5a68ef56a2ecaf9518fcbcf6d44` |
| 18 | `instance` | [commRingCat_hasStrictTerminalObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/commringcat-hasstrictterminalobjects.md) | 253 | `declaration-track:bab37190a2be57b2e750094cdf4c395386cdb2ede21ed68036c12866f503f467` |
| 19 | `theorem` | [subsingleton_of_isTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/subsingleton-of-isterminal.md) | 265 | `result-track:17cd9ac2d53f67934fb0fc8cab6057fb4d5c8c789695fcf60e66e7a60692956a` |
| 20 | `def` | [zIsInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/zisinitial.md) | 270 | `declaration-track:e07e4be27aeb1dc579c6aa46b98a9ff494cfb40311b0f4f600528c89547a9b9f` |
| 21 | `def` | [isInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/isinitial.md) | 275 | `declaration-track:579c082bfdaf77f5af5d8d176fe166b0e9fce729798671403b67602432b64ead` |
| 22 | `def` | [prodFan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/prodfan.md) | 291 | `declaration-track:3d44cea123d06de75ed728f5fbd341ef06d7f971a944b1a3e597335d2b59ed97` |
| 23 | `def` | [prodFanIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/prodfanislimit.md) | 297 | `declaration-track:e8f3006c04ab0dff9375d84f9e156be4d91f040967d47e4816dfc5ee8236c157` |
| 24 | `def` | [piFan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pifan.md) | 323 | `declaration-track:4f47fc8dcc9f4684e5af768d5f5b0a5a33624df51c4e89851ef24280b7b12c3a` |
| 25 | `def` | [piFanIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pifanislimit.md) | 329 | `declaration-track:34a199e71335e32f26ec147c1b561b0526687b99251d86ebec69ca732bb48882` |
| 26 | `def` | [piIsoPi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/piisopi.md) | 338 | `declaration-track:1467f18815a656cff195dee0bfaa7fac38a84bbbab9230d67e2d6561c39d0b5a` |
| 27 | `def` | [Ring Constructions Namespaced Public](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/piequivpi.md) | 344 | `declaration-track:e60a1cb246fdd9c4811ab9715d90403b99bf17d14478683b2dce3ac247ab0693` |
| 28 | `theorem` | [isUnit_iff_forall_isUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/isunit-iff-forall-isunit.md) | 354 | `result-track:40eae73bb9a79167abd691d3159e1ac72c3ca296b8c855ae3b1237d3bfadf510` |
| 29 | `theorem` | [π_isLocalHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/islocalhom.md) | 378 | `result-track:483f75e82391b0acc9560129ad8aa10cea9ed48c7fac38f3bcbea27f6fff6a6b` |
| 30 | `theorem` | [isLocalRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/islocalring.md) | 387 | `result-track:24c7a9342c69f8fba499f02f6d47f10f003e6e1aaac1dd87a57db0c375df0f18` |
| 31 | `def` | [equalizerFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/equalizerfork.md) | 401 | `declaration-track:c1170af985627b24a655d4aed8913a352b459421b95c2cb0103b5ec8ca9d002c` |
| 32 | `def` | [equalizerForkIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/equalizerforkislimit.md) | 407 | `declaration-track:df7af917914e69c3815fafe49a3c8fae3c8df7ebd5514a7f8eaff2c49eb2df44` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 418 | `declaration-track:705c939391dc4c0e30ffacee4aea317e69530b1f49babd708fc528778174a5cf` |
| 34 | `instance` | [equalizer_ι_isLocalHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/equalizer-islocalhom-source-edition-2.md) | 423 | `declaration-track:cbb621233423635f764c4b9143d958409ebb3336f0a88bf4888e1b388a46e831` |
| 35 | `theorem` | [equalizer_limit_isLocalRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/equalizer-limit-islocalring.md) | 432 | `result-track:8146cd6a2dfdc9f07109387a3f7d3606ccc927276a66ca5361f3323843ed6d38` |
| 36 | `instance` | [equalizer_ι_isLocalHom'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/equalizer-islocalhom.md) | 436 | `declaration-track:a922aaca568ddc3becac083bdfcf864490cfdf68e427afab68c6cfb9e0d97855` |
| 37 | `def` | [pullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pullbackcone.md) | 455 | `declaration-track:526a1f51a7f7e8bc8b99c7b3ff71286141ac688c8d1abc4ff9e0b24cb1b1ac8f` |
| 38 | `def` | [pullbackConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pullbackconeislimit.md) | 468 | `declaration-track:26aaa3cae50de46e7783ab16ee048e05d5cc2b4d66be242f190dc5e0d46128b2` |
| 39 | `instance` | [pullbackFst_isLocalHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pullbackfst-islocalhom.md) | 491 | `declaration-track:d6969d25f1f421740fbc90109463bf30a10e2efa3a981ad41aeb2f739e30347e` |
| 40 | `theorem` | [pullback_isLocalRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedPublic.lean/declarations/pullback-islocalring.md) | 500 | `result-track:86b4f51a118f98a0e8d8bf74c7ba2eaec2532f2fcc0d914109518161febb5450` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=771cef132765515fc1a8dba22e38540a66306267dd6c1ff9095f8af1f3099d0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean","GRWTSK/_verification/specifications/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
