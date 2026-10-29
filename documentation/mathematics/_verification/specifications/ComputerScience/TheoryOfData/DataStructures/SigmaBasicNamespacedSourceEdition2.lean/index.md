# Verification target: Sigma Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2af528775a9567e486dc51dc2474eb0b9088343",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2af528775a9567e486dc51dc2474eb0b9088343`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instInhabitedSigma](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/instinhabitedsigma.md) | 48 | `declaration-track:14c8a9dff9ec5627ce23f6a29bb5267c8bbeb5a8c797476b1cd8b3c6ec2f22d5` |
| 2 | `instance` | [instDecidableEqSigma](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/instdecidableeqsigma.md) | 51 | `declaration-track:1e94f82967f3ec38e7eb545d581b6ae99ef5f78a986063fc2a934574f2cc5915` |
| 3 | `theorem` | [mk.inj_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/mk-inj-iff-source-edition-2.md) | 61 | `result-track:ad1d8abd6b7b673357421cda9ccef8612b1cb3a5ed6511ba81ee7cc81f802644` |
| 4 | `theorem` | [eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/eta.md) | 65 | `result-track:694b3cee655924886f7fa611c2716322697ab1baabe4a5ae501b6e5364df50f2` |
| 5 | `theorem` | [eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/eq.md) | 68 | `result-track:66bd1171a70f9e88ba6755283680f1a41eaef5b7a233978501b9398eefbf4094` |
| 6 | `theorem` | [Sigma Basic Namespaced Source Edition2](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-mkinjiff-var-source-edition-2.md) | 73 | `result-track:85ecdad29e7c10d82318f013bcebb9f4fcaf4d6bd9c0ab2712f02f8c96c0e86b` |
| 7 | `theorem` | [subtype_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/subtype-ext.md) | 82 | `result-track:0701e771f70c2e4419808a6ce50574378ac2b66f1ac5790eae77facbe4bee6f6` |
| 8 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/forall.md) | 87 | `result-track:12564107f1dfdb3a8854c8c1b61d5626d80d3da9de7f8e9dbe2af8a9c24a5db4` |
| 9 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/exists-source-edition-2.md) | 91 | `result-track:7c755e753c95c95c42cc3f61204038b58c572e7ffe961944bd8e3e0d679008b7` |
| 10 | `lemma` | [exists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/exists-source-edition-3.md) | 94 | `result-track:cc1070e34fb224e53d4937a63ba09ae9383a1a459384019578fdb939f0186881` |
| 11 | `lemma` | [forall'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/forall-source-edition-2.md) | 97 | `result-track:2e91315abb78e154e28a41724ba96dde6bc61dbb5d5ecdc9352fb6d84a6a8296` |
| 12 | `theorem` | [Sigma Basic Namespaced Source Edition2](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-mkinjiff-var.md) | 100 | `result-track:2aad3343e12a48a9b26945df8aece54da15fe12871e1f2ea404d8b73382a190f` |
| 13 | `theorem` | [fst_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/fst-surjective.md) | 103 | `result-track:ca3b093fe6cebac44a3dd38de94760eb0da9fcd6f24bd8c6c774887ddd0a3ac4` |
| 14 | `theorem` | [fst_surjective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/fst-surjective-iff.md) | 106 | `result-track:dc218d7ece6a0c721195b5704d9d37eb34bb30628a40c899d98005a1373f9328` |
| 15 | `theorem` | [fst_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/fst-injective.md) | 109 | `result-track:60162d435967884e57bdaf58f49b7a10f17e3266adc611e5ff2242cac22dd86f` |
| 16 | `theorem` | [fst_injective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/fst-injective-iff.md) | 113 | `result-track:2029d686a9a27deef256f64430f2a74020bde08ce02ef0eaeb818bd2428733ba` |
| 17 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/map.md) | 117 | `declaration-track:9579f8acc2720538bc617bb6c0a6c6e59327fcfca797cbd1ad2c1665854f7d89` |
| 18 | `lemma` | [map_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/map-mk.md) | 120 | `result-track:4ba2bddc4f0869d7081b841765e08f6ea10bd700e714573c9e2d043bde38a5c0` |
| 19 | `theorem` | [Function.Injective.sigma_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/function-injective-sigma-map.md) | 124 | `result-track:f529f2f7f7f7714f1f5b11477280e553d9b4d6d35241c46b84c8a62ed811eeb1` |
| 20 | `theorem` | [Function.Injective.of_sigma_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/function-injective-of-sigma-map.md) | 131 | `result-track:0a7a47f2b330d20aeee44ecb35137196b61f4180640acdf042aacf551eff9c35` |
| 21 | `theorem` | [Function.Injective.sigma_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/function-injective-sigma-map-iff.md) | 135 | `result-track:4382b76c931fa7e9286c4120bd814fe6b0a9aaa3b7e6bd12bb227cf5c85d9dac` |
| 22 | `theorem` | [Function.Surjective.sigma_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/function-surjective-sigma-map.md) | 139 | `result-track:b5267ed2cb1a8f12476d0e7a2cc5075196659360840b7b36d1f60c45df8547cc` |
| 23 | `def` | [Sigma.curry](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/sigma-curry.md) | 147 | `declaration-track:66ff300af60f74903c64897d39d1f070fb9af769668c9e53c31504e776e0012a` |
| 24 | `def` | [Sigma.uncurry](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/sigma-uncurry.md) | 153 | `declaration-track:4871219a65e29a62f02cce4588bb141cea54f8ad3f5c2ca57de6d735b4547dfe` |
| 25 | `theorem` | [Sigma.uncurry_curry](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/sigma-uncurry-curry.md) | 157 | `result-track:cf870d1ec7b870d0e5e125bc3ac83944fa7de1f7dc644ddffd06f2c4f0b452f4` |
| 26 | `theorem` | [Sigma.curry_uncurry](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/sigma-curry-uncurry.md) | 162 | `result-track:ae331d4afc97f82349c3d972dee7bedf8c86e1db02b20d1085a8d8f490ca71a2` |
| 27 | `theorem` | [Sigma.curry_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/sigma-curry-update.md) | 166 | `result-track:f64e6716605273fcdf469141004e7a77f86fb30f4a81a2e05d463bef93528d38` |
| 28 | `def` | [Prod.toSigma](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/prod-tosigma.md) | 185 | `declaration-track:50b7b4fcc20aeed85d6161ce2d9a1d57cd2c316b2e7c56654927937d784633fa` |
| 29 | `theorem` | [Prod.fst_comp_toSigma](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/prod-fst-comp-tosigma.md) | 189 | `result-track:b6d344dd32a764b385a25981c8e012a28b1ea7dca94e907a07de393bccc6d020` |
| 30 | `theorem` | [Prod.fst_toSigma](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/prod-fst-tosigma.md) | 193 | `result-track:48d9c4dcc9f6aa3aa5f979f7b6f8e361cd44d52d2598b4c6d1bfb6435e2c5e30` |
| 31 | `theorem` | [Prod.snd_toSigma](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/prod-snd-tosigma.md) | 197 | `result-track:a08942b505a22a76b03a2dd90f5ebd908579199887d26669b47fcd73526384da` |
| 32 | `theorem` | [Prod.toSigma_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/prod-tosigma-mk.md) | 201 | `result-track:254b2fcacdd0ce9bf5d87761dff7ef5a4a8bd516ce6db8601cf018cea209a893` |
| 33 | `def` | [elim](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/elim.md) | 211 | `declaration-track:980b3d97ac6f4d79e7fd7565b2bbd06c0b64d6af106967a05a8ef45686968fdb` |
| 34 | `theorem` | [elim_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/elim-val.md) | 215 | `result-track:34400a73e6f84a8189dde902969f05435ff231f6b8a6505a50da2c386aa9fe0e` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/instance.md) | 218 | `declaration-track:652c3580bacfa2f5c4dccccefed7ab3e297c9e83c4ab3a4a20f0e82ff714451c` |
| 36 | `instance` | [decidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/decidableeq.md) | 221 | `declaration-track:42e263d41239b84aae9d38d6bd115efee4d464af2f2de1f48c4a5941a81e3b13` |
| 37 | `theorem` | [mk.inj_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/mk-inj-iff.md) | 230 | `result-track:28ba15ded939995eb66e4f3db47bc2ffc0df1131e2b32df18894a9977d179bc4` |
| 38 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/forall-source-edition-3.md) | 237 | `result-track:fbb6d0aaa00fca58fb8ad3aa451084e887fdef78f17e82111e283a2ac9e46a48` |
| 39 | `lemma` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/exists.md) | 240 | `result-track:70630a3397af1b124a24c87370b07cb8dc0cd0c5d770b460e4d7f41530d346a0` |
| 40 | `theorem` | [subtype_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/subtype-ext-source-edition-2.md) | 245 | `result-track:26e971e95c684dd89c5fb16b054d664f4da4c00791b35776e4196be89435c863` |
| 41 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaBasicNamespacedSourceEdition2.lean/declarations/map-source-edition-2.md) | 252 | `declaration-track:d040e039ebfd880f9ac3d59e7e2d57b8991c599a410da024f57c44de05cb978b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27c22c2fcad1e609ddc82fef30f703fa60a50842c6db6f9ed634f3528dd660e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
