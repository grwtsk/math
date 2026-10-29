# Verification target: Algebraic Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e98fb608e05417720a8a59b3ae17326da05d487",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AlgebraicBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AlgebraicBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e98fb608e05417720a8a59b3ae17326da05d487`.

Source path: `GRWTSK/Algebra/Basic/Variant96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Expand` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [is_transcendental_of_subsingleton](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/is-transcendental-of-subsingleton.md) | 30 | `result-track:2382f5060898910bfdab4c4ac8f36a3bba781ddaf396e0c63002188bae449736` |
| 2 | `theorem` | [IsAlgebraic.nontrivial](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-nontrivial.md) | 35 | `result-track:e43164ced6b06f89647a0c790b9018d594b8ea6d63327e8ef20a33779515e839` |
| 3 | `theorem` | [Algebra.IsAlgebraic.nontrivial](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-nontrivial.md) | 42 | `result-track:a7a9ebbaf714c3674a03d75b20e378ea53709f149d91a87b9ca4fe35665c3516` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/instance.md) | 45 | `declaration-track:8b749113afbdee6355e25ce0c04fa7a7a28734842406c9aa82fb7ae570ed270c` |
| 5 | `theorem` | [Polynomial.transcendental_X](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/polynomial-transcendental-x.md) | 49 | `result-track:47df95dec757145064bf86860cee6df510fc3c36245017ead1d350fa76533a65` |
| 6 | `theorem` | [IsAlgebraic.of_aeval](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-of-aeval.md) | 54 | `result-track:3a939a66f132520669e5f17f362bf25817539d6992f7102d81a5a744c1579d3d` |
| 7 | `theorem` | [Transcendental.aeval](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-aeval.md) | 64 | `result-track:1db3a5349692993587694b95615d46ddfc3179982904c55be31c299e9ec2b61d` |
| 8 | `theorem` | [Transcendental.aeval_of_transcendental](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-aeval-of-transcendental.md) | 71 | `result-track:e8f6fc58f801be9c63a24bda8d462d082a9d48f33556da8713ffd6f991c45f49` |
| 9 | `theorem` | [Transcendental.of_aeval](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-of-aeval.md) | 80 | `result-track:9befbf14c735a01a0b86f2b2bfce5ac5772a57f1966f806f52e0fd403299a308` |
| 10 | `theorem` | [IsAlgebraic.of_aeval_of_transcendental](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-of-aeval-of-transcendental.md) | 86 | `result-track:5d8345231b9b3fa13ddf92e68bb4f986725395561d85d09b1a2003c27f9190c0` |
| 11 | `theorem` | [Polynomial.transcendental](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/polynomial-transcendental.md) | 91 | `result-track:d982cbd55d4ed88ceff73cb77611cfcb02ecadcc80f25aa31ec34ddd047fccc0` |
| 12 | `theorem` | [isAlgebraic_iff_not_injective](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-iff-not-injective.md) | 96 | `result-track:96780c273597d1e8903a0cf75180cc373697786d08fc94d7b76a6540ab2c17b1` |
| 13 | `theorem` | [transcendental_iff_injective](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-iff-injective.md) | 102 | `result-track:d002dfc1e3d5939cc8b7d7f56898c9a3c65c231b940e0eedaa124fcea3af5082` |
| 14 | `theorem` | [transcendental_iff_ker_eq_bot](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-iff-ker-eq-bot.md) | 108 | `result-track:3dac05a3aa0252c5414d84552f71c0b113e9893dbd6d43fa4805a8d0b3675fae` |
| 15 | `theorem` | [Algebra.isAlgebraic_of_not_injective](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-of-not-injective.md) | 112 | `result-track:78357af08b5f676f55a19b809ff12abf8aee82c9fa43b537bffe33ddb72c7052` |
| 16 | `theorem` | [Algebra.injective_of_transcendental](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-injective-of-transcendental.md) | 117 | `result-track:8f240e7103d5c450cc497190115bbafb70f45280d6e222a2c22043eb12deefc0` |
| 17 | `theorem` | [isAlgebraic_zero](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-zero.md) | 131 | `result-track:03a29238d3698715b0397b21044d281ca136454af508ee02a6016bc611afb782` |
| 18 | `theorem` | [isAlgebraic_algebraMap](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-algebramap.md) | 135 | `result-track:31d6f27154ee16a47b978a749db08121388083df3f2d936f1625889250031ce4` |
| 19 | `theorem` | [isAlgebraic_one](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-one.md) | 138 | `result-track:b114e1032ee3307bf6ffd16ccbeb8a56c58782725c781f48d7146dcd266c6907` |
| 20 | `theorem` | [isAlgebraic_nat](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-nat.md) | 142 | `result-track:586ed27770f08d28b5395256e80c9c1ec3366f7588b8898f5ea208fa18c98c85` |
| 21 | `theorem` | [isAlgebraic_int](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-int.md) | 146 | `result-track:fef1267022d541680f0a20670fddc504305bafb510358cb4370741ee1c4c4387` |
| 22 | `theorem` | [isAlgebraic_rat](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-rat.md) | 150 | `result-track:18e81ab331dcb3a537335a34c185935b468366cffbd2d91e02d7af018dabacdf` |
| 23 | `theorem` | [isAlgebraic_of_mem_rootSet](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-of-mem-rootset.md) | 155 | `result-track:9c2305ed2c751a66032ba2649e05f06290a1e317924da917eb4b49be495f783b` |
| 24 | `theorem` | [IsLocalization.isAlgebraic](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/islocalization-isalgebraic.md) | 160 | `result-track:8c9cde1e7e29e3c567f22f66e153b8dc0b9295b41499ec4f34c4297f2c080d31` |
| 25 | `theorem` | [IsAlgebraic.algebraMap](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-algebramap-source-edition-2.md) | 171 | `result-track:e6445055c56984495ec0ada07cde838c40b5872724077f67a49a7c1472330f10` |
| 26 | `theorem` | [IsAlgebraic.algHom](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-alghom.md) | 181 | `result-track:d3c6abeedce4dd8a4751edc41564c199f795e24669fee22c2da7f23beaadcc8b` |
| 27 | `theorem` | [isAlgebraic_algHom_iff](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-alghom-iff.md) | 186 | `result-track:9bd3120aa9855270872f435d65364bafd2e8fb465d58127f82603c97d86c1026` |
| 28 | `theorem` | [IsAlgebraic.ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-ringhom-of-comp-eq.md) | 201 | `result-track:a9e3309e7027408d8e26eaff3695d55e8be72161cd98c8027c2e6c372c207014` |
| 29 | `theorem` | [Transcendental.of_ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-of-ringhom-of-comp-eq.md) | 210 | `result-track:319d5fdd385246a8ffb10249c1c07227c9233adca8d172f0bb5334408fb0a98f` |
| 30 | `theorem` | [Algebra.IsAlgebraic.ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-ringhom-of-comp-eq.md) | 215 | `result-track:4f9b642c60417a9f69b2a53a05127ef1291293a65804429c847e2a7894dd4edc` |
| 31 | `theorem` | [Algebra.Transcendental.of_ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-transcendental-of-ringhom-of-comp-eq.md) | 223 | `result-track:509ad9717c68fc834413b8646607249a01a515da62e4a426c7cef721ae79d830` |
| 32 | `theorem` | [IsAlgebraic.of_ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-of-ringhom-of-comp-eq.md) | 230 | `result-track:ad901016d2e1ff8a45e48481946727f98719764bec3809da22e87ed396e4942a` |
| 33 | `theorem` | [Transcendental.ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-ringhom-of-comp-eq.md) | 241 | `result-track:473555389da100120c9d2f8e6e61352dbe630daaa8a6ff2fd54df9891a7af2ed` |
| 34 | `theorem` | [Algebra.IsAlgebraic.of_ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-of-ringhom-of-comp-eq.md) | 246 | `result-track:d3946f9bb5e6067d54e40bd48c4d85bf0350dd4f00f2ba2a0191923ac6bf7a70` |
| 35 | `theorem` | [Algebra.Transcendental.ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-transcendental-ringhom-of-comp-eq.md) | 252 | `result-track:4fc17b928359ca0f098a40ab6f93b85bb53fa904696fca2edcfc518254ead567` |
| 36 | `theorem` | [isAlgebraic_ringHom_iff_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-ringhom-iff-of-comp-eq.md) | 266 | `result-track:05538915793b33cadf3c5df1989137eb531fd7db79d63982d776030910cb649a` |
| 37 | `theorem` | [transcendental_ringHom_iff_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-ringhom-iff-of-comp-eq.md) | 273 | `result-track:768a414283854790d46e3f1f3f43955820c231e3f63ee93e468deb73540075a3` |
| 38 | `theorem` | [Algebra.isAlgebraic_ringHom_iff_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-ringhom-iff-of-comp-eq.md) | 286 | `result-track:e9f5df97b017f571cf246d1912778fd7040009ce665e7555d425fd3ae1c3fab9` |
| 39 | `theorem` | [Algebra.transcendental_ringHom_iff_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-transcendental-ringhom-iff-of-comp-eq.md) | 292 | `result-track:da4a9aa11747443cd30994aaa8fc77cd876d51d409be8de3ef675b08f1ae9eb2` |
| 40 | `theorem` | [Algebra.IsAlgebraic.of_injective](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-of-injective.md) | 302 | `result-track:565a6cd0105030d8921d1401d12d28289b78e4d3e75b538fb608bfd767de5ff9` |
| 41 | `theorem` | [AlgEquiv.isAlgebraic](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algequiv-isalgebraic.md) | 307 | `result-track:955aa07dccb3e3bece91e433d1595027cff3f8a25c67450c122f1244ba4162cb` |
| 42 | `theorem` | [AlgEquiv.isAlgebraic_iff](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algequiv-isalgebraic-iff.md) | 311 | `result-track:073446bedefeac1b346258c781ff0704b1aaf62fbe51cfbaeb16ee6c585851f0` |
| 43 | `theorem` | [isAlgebraic_algebraMap_iff](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-algebramap-iff.md) | 317 | `result-track:49c36eb8fa6b5ddf8d75d56f3c7758e90192cd378301cce4a37932341ab24b3b` |
| 44 | `theorem` | [transcendental_algebraMap_iff](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-algebramap-iff.md) | 321 | `result-track:6e602960a5086cca17b53e50bfbfd480234d3ba0eacd8a7c8a2a9e5bf5aa16f3` |
| 45 | `theorem` | [isAlgebraic_iff_isAlgebraic_val](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-iff-isalgebraic-val.md) | 327 | `result-track:00c3fc308824159a94af7b25a8faa11f7eee2f2b2a18b94505008b63043f478c` |
| 46 | `theorem` | [isAlgebraic_of_isAlgebraic_bot](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-of-isalgebraic-bot.md) | 331 | `result-track:2f5508f3bfb026a348f1e6db44b87c8712da034e6342515d6b36f794ba8ad851` |
| 47 | `theorem` | [isAlgebraic_bot_iff](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-bot-iff.md) | 336 | `result-track:463d47dbbf2fdfb9c715245a276d5b4557c3d4a49071ba2ffc9e3d3f4b3a3520` |
| 48 | `theorem` | [algebra_isAlgebraic_of_algebra_isAlgebraic_bot_left](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-of-algebra-isalgebraic-bot-left.md) | 342 | `result-track:907d6783c4e6813a3047995cc5c0ecae1665e3679752348a2b12d0574d7ed313` |
| 49 | `theorem` | [algebra_isAlgebraic_bot_left_iff](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-bot-left-iff.md) | 347 | `result-track:d0c0935700c98f04a274babacde9b159ae8b98cba80914a226f7956063a4660b` |
| 50 | `instance` | [algebra_isAlgebraic_bot_right](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-bot-right.md) | 351 | `declaration-track:3def846387824c888d416130ea505f23ad53965886b6d80dec313220407b43ce` |
| 51 | `theorem` | [IsAlgebraic.of_pow](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-of-pow.md) | 357 | `result-track:198c44761c9b54f74384cd2ea1195aeeed1a31a3b2bb35395effeed85d7e93fd` |
| 52 | `theorem` | [Transcendental.pow](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-pow.md) | 362 | `result-track:1bbe3671610587d1fa17d82d1436fe81bb2095c284e2608a883d08657b5194b2` |
| 53 | `lemma` | [IsAlgebraic.invOf](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-invof.md) | 365 | `result-track:ae21973e37e260811745d3382ab8ce35c6bb905b4048086c504f228d2e58a35a` |
| 54 | `lemma` | [IsAlgebraic.invOf_iff](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-invof-iff.md) | 370 | `result-track:a3522b8f327be51ce040fbe6b6e82844f0896d8cedb9c1e379c75bd4b20d2006` |
| 55 | `lemma` | [IsAlgebraic.inv_iff](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-inv-iff.md) | 374 | `result-track:8f56fbe6ebc7d57f9d9f8dcb86c25d072f49685e7627b968c9f21250bf867e54` |
| 56 | `theorem` | [IsAlgebraic.extendScalars](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-extendscalars.md) | 398 | `result-track:3cf3ac04a08b1596138798c5c2890fbbabf1238b0c67af07e3fba967dc7aa730` |
| 57 | `theorem` | [IsAlgebraic.tower_top_of_subalgebra_le](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-tower-top-of-subalgebra-le.md) | 409 | `result-track:bd70fdc4036da6dd6b2a6f90549ff137df67b0d693335cd3b5285e97e5a051cc` |
| 58 | `theorem` | [Transcendental.restrictScalars](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-restrictscalars.md) | 418 | `result-track:1ae6867ed1076d5c6fdb9d373c46f6d681f3fa13e201d8b4894176d1f098d5e0` |
| 59 | `theorem` | [Transcendental.of_tower_top_of_subalgebra_le](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-of-tower-top-of-subalgebra-le.md) | 426 | `result-track:4907f0bd1cf46daf210189278ff604aaddfb756e689781fa4700b3889d07dd11` |
| 60 | `theorem` | [Algebra.IsAlgebraic.extendScalars](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-extendscalars.md) | 433 | `result-track:adff0988836c48f935c4610a8b798ba50b646dba973821dd6df9153493f77fda` |
| 61 | `theorem` | [Algebra.IsAlgebraic.tower_bot_of_injective](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-tower-bot-of-injective.md) | 440 | `result-track:a6ef416c17d27f7af656d176d669b734fee98b6c4665d622a2dcfe45a1d4ea9d` |
| 62 | `theorem` | [IsAlgebraic.tower_top](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-tower-top.md) | 456 | `result-track:49ef99cd59c28c55bb8c5b1db56069b0476b5ffc43f409d7e453ff793e384a3f` |
| 63 | `theorem` | [Transcendental.of_tower_top](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-of-tower-top.md) | 463 | `result-track:7fdc4399ed8bd4faee85a1e45e930389b96da3b44e120d6a2238efe7731fc57a` |
| 64 | `theorem` | [Algebra.IsAlgebraic.tower_top](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-tower-top.md) | 468 | `result-track:b66c5b4d32b9eed22fbe6684fd7fc22590077d2bb7db0495c9b088cf0f926274` |
| 65 | `theorem` | [Algebra.IsAlgebraic.tower_bot](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-tower-bot.md) | 473 | `result-track:12168c199b295d6242a7bc04a90dfbb31e3056553ffe01844ad7c40032f4acec` |
| 66 | `theorem` | [algHom_bijective](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/alghom-bijective-source-edition-2.md) | 489 | `result-track:9d129edea9bd8e1d24cf366736fc7cb0a7cbf591bb98684170e33ae3ee4a3a7d` |
| 67 | `theorem` | [algHom_bijective₂](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/alghom-bijective.md) | 499 | `result-track:870d9f7c0df3a4a789d6752e9566a157ecd4d8c7feb2f5219133d1df8518967d` |
| 68 | `theorem` | [bijective_of_isScalarTower](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/bijective-of-isscalartower.md) | 504 | `result-track:2804662f2d24e3dc2da640cdb51adfb12bcb3afd8bd59707573b35bc2e54fc83` |
| 69 | `theorem` | [bijective_of_isScalarTower'](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/bijective-of-isscalartower-source-edition-2.md) | 509 | `result-track:9f35ca72c5102c033f2224a5cc8d883b62258c8eb6fad03eef8766c13dd7f4dd` |
| 70 | `def` | [algEquivEquivAlgHom](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algequivequivalghom.md) | 519 | `declaration-track:2f450cc2772d74bfa5800db5fecf75876efac3631426e36e7e7d8ee7219a2c40` |
| 71 | `theorem` | [IsAlgebraic.exists_nonzero_coeff_and_aeval_eq_zero](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-exists-nonzero-coeff-and-aeval-eq-zero.md) | 537 | `result-track:346a408295ef70c25eafc4c5d9accbbe7c3daba38e0770f34e715fd4d25810d2` |
| 72 | `theorem` | [IsAlgebraic.exists_nonzero_eq_adjoin_mul](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-exists-nonzero-eq-adjoin-mul.md) | 546 | `result-track:a393d121327ac027105d70fdf33ce479cb0a355d422641d94d76b080c1ef55ba` |
| 73 | `theorem` | [IsAlgebraic.exists_nonzero_dvd](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-exists-nonzero-dvd.md) | 555 | `result-track:b39c7cf5dd082514aa3fdde349e07d8451a47c43bb0529208bcefd36a32efbc7` |
| 74 | `theorem` | [injective_tower_top](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/injective-tower-top.md) | 569 | `result-track:17fdb39d7a33068b05a94f9a37327e228c602ef29e99864943d0bd51e5ae72e5` |
| 75 | `theorem` | [faithfulSMul_tower_top](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/faithfulsmul-tower-top.md) | 577 | `result-track:32e032e6ba59bf257c7e77bf9eb48ef36c9089302665e3da682393fd4667246c` |
| 76 | `theorem` | [IsAlgebraic.exists_smul_eq_mul](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/isalgebraic-exists-smul-eq-mul.md) | 585 | `result-track:9089aaebe70062d464c520561eea894962d02480fe62a28ef20586181f9c5ac0` |
| 77 | `theorem` | [Algebra.IsAlgebraic.exists_smul_eq_mul](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-isalgebraic-exists-smul-eq-mul.md) | 595 | `result-track:207acc79fb8ce23daae66ea2ddc537907d335add079849cc582545484ea39b64` |
| 78 | `theorem` | [inv_eq_of_aeval_divX_ne_zero](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/inv-eq-of-aeval-divx-ne-zero.md) | 606 | `result-track:c1bcb7f03e4f144d93bf2be23ffe08f7ddd8cffc73e15fc62866667db0b663c2` |
| 79 | `theorem` | [inv_eq_of_root_of_coeff_zero_ne_zero](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/inv-eq-of-root-of-coeff-zero-ne-zero.md) | 613 | `result-track:90281162eb288215d5d3e4e570a563bc8aac7d928501466d3cc89937f5ecc9cb` |
| 80 | `theorem` | [Subalgebra.inv_mem_of_root_of_coeff_zero_ne_zero](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/subalgebra-inv-mem-of-root-of-coeff-zero-ne-zero.md) | 623 | `result-track:190eed56cd867a40a9c1f7b7f2b4561bb7de5101ed501da77475caa062f0dc80` |
| 81 | `theorem` | [Subalgebra.inv_mem_of_algebraic](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/subalgebra-inv-mem-of-algebraic.md) | 635 | `result-track:1f3b3800af5be3d545423f1f118ecb2e3aefcace476c2f681303d6c3651c6476` |
| 82 | `theorem` | [Subalgebra.isField_of_algebraic](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/subalgebra-isfield-of-algebraic.md) | 655 | `result-track:a101adda880b1df3e228784bd4255dc02a2e0da8a2f503ec05cdb6dcbdd871d0` |
| 83 | `theorem` | [Transcendental.infinite](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/transcendental-infinite.md) | 667 | `result-track:c2373a5a7f9a089d6bfdc533ff476e28c2b58cefb92e99b47476cabc29278134` |
| 84 | `theorem` | [Algebra.Transcendental.infinite](../../../../CommutativeAlgebra/AlgebraicBasic.lean/declarations/algebra-transcendental-infinite.md) | 671 | `result-track:a1ad34b4bef442f7179cba915b4eaf727c231619554e281c2df3d76fc1c05015` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68131a9a46a042b9c6ae2e6c3f57f35d51f9bdccd7ac31693f16d79a6cc4725d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant96d32d040293510cadd43faedd01da73fb138cb74ceab19eca5b45e3402ab835.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
