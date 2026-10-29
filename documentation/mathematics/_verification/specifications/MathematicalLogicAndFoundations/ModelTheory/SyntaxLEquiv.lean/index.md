# Verification target: Syntax LEquiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9f038486e88b7dbfc123baa8a781a9d5e3e1d8b",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant33205cf205fea58166711001e941c4b37e893dc9523a7f5a6fa757432bb30f03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9f038486e88b7dbfc123baa8a781a9d5e3e1d8b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant33205cf205fea58166711001e941c4b37e893dc9523a7f5a6fa757432bb30f03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant33205cf205fea58166711001e941c4b37e893dc9523a7f5a6fa757432bb30f03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.LanguageMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/term.md) | 73 | `declaration-track:55b4c73d4ad43da82ef4c04089a7f01674f013d1b50f7c26ca287d3caa6d4ff9` |
| 2 | `instance` | [instDecidableEq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/instdecidableeq.md) | 82 | `declaration-track:e15c34b301c613966c13d483f13e26df052d23350e5fe0e793d23f4acded6cc6` |
| 3 | `def` | [varFinset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/varfinset.md) | 98 | `declaration-track:348cf71528b889b3fd0c2250cfa28873f91e1f2df72c2274d7dc80d2a586532b` |
| 4 | `def` | [varFinsetLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/varfinsetleft.md) | 104 | `declaration-track:d35abe47cb13e2663ef09c3150a4e625804fa5947b0a77e31d0a3e4eb6b0e56a` |
| 5 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-source-edition-2.md) | 111 | `declaration-track:a492bde7b3aa19be94b9691cd4c7a990aeab9caa7a2be86d4b2ea52bb4f3bce7` |
| 6 | `theorem` | [relabel_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-id.md) | 115 | `result-track:5fca2b830c0ba5192f094770f0e8c2aa476844bb5bb168eab8e9d916082a8d3c` |
| 7 | `theorem` | [relabel_id_eq_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-id-eq-id.md) | 121 | `result-track:559d3e734833fe05ef08f416b657f25d59fe87547cbbc0af60e211ca13091a98` |
| 8 | `theorem` | [relabel_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-relabel.md) | 125 | `result-track:1f804a2c0a641bb8f02bddd8404e1c5f98ceea6726d356d0e0e98a664b383c05` |
| 9 | `theorem` | [relabel_comp_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-comp-relabel.md) | 132 | `result-track:179f52c35a3ffe31633a5cb3fb72717bd7cd47f4dacc2ee266d0ecdfefb41e9c` |
| 10 | `def` | [relabelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabelequiv-source-edition-2.md) | 138 | `declaration-track:be5993dc53b2f4429af02c1b574fbc3ef6067055988fdca5a538176700e66719` |
| 11 | `def` | [restrictVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/restrictvar.md) | 142 | `declaration-track:be728597a6a3a6e4d43678ef1c690b104262e7e3ea8d662cd508a250da8b5139` |
| 12 | `def` | [restrictVarLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/restrictvarleft.md) | 149 | `declaration-track:d4a15cc70cc821df75876867c5e91433c921772caa864c5c268340010f8a96cc` |
| 13 | `def` | [Constants.term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/constants-term.md) | 161 | `declaration-track:0306e00dcd8c991d7838bebdc9bef2a0f7d029016c7314d9668c7d2ad7f56243` |
| 14 | `def` | [Functions.apply₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/functions-apply.md) | 165 | `declaration-track:6302f90d149e5e5005c83466014444dd255921dbdeb6fd103a9940f70dadcb40` |
| 15 | `def` | [Functions.apply₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/functions-apply-source-edition-2.md) | 169 | `declaration-track:a938d903ad489c7365fa241db7d5fcb7bb101a797e10c7e273d234f068b061f0` |
| 16 | `def` | [constantsToVars](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/constantstovars.md) | 176 | `declaration-track:b1a3b357689116ffa6ad5af2384ae99b1b9c11f8dff6aebc073d6defc28a1856` |
| 17 | `def` | [varsToConstants](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/varstoconstants.md) | 185 | `declaration-track:e9c3f796dcff11d0e3218ec762527d540fa462b9e94716061bafe2a63f226e05` |
| 18 | `def` | [constantsVarsEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/constantsvarsequiv.md) | 192 | `declaration-track:42c651a1d3666e9e6e17618271c599e4afd5ecdd3e1a9908fcb47ec87c44c2da` |
| 19 | `def` | [constantsVarsEquivLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/constantsvarsequivleft.md) | 211 | `declaration-track:58862674ab64550045ad0fa973040e2d1d47a64bb3f4ca1c89baed96d256e2b2` |
| 20 | `theorem` | [constantsVarsEquivLeft_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/constantsvarsequivleft-apply.md) | 215 | `result-track:4a7d7c724cd450dfa0b6c71ffaa184dc5c6608ef855a4dd3022f906f64f09104` |
| 21 | `theorem` | [constantsVarsEquivLeft_symm_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/constantsvarsequivleft-symm-apply.md) | 220 | `result-track:aeeaad711bc06729a18c57215f60e1f2279e5ee1c32d13fd1adf3fb51099a4ac` |
| 22 | `instance` | [inhabitedOfVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/inhabitedofvar.md) | 224 | `declaration-track:141e733bed9e0d0b270a6fcd9a371b400cc771c899cf0c550372d9f07dbcc96c` |
| 23 | `instance` | [inhabitedOfConstant](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/inhabitedofconstant.md) | 227 | `declaration-track:23ebfd264a5396a3ac220826764baa57f5d893dc9e0677e733d88df4ca486343` |
| 24 | `def` | [liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/liftat.md) | 231 | `declaration-track:4ec85fb3752fda15aea538e5c8e921a7087a3e841f2d24df724a902afb7499cd` |
| 25 | `def` | [subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/subst.md) | 236 | `declaration-track:7187b5b3b0c0ae01bc748aa58466a3f8f92875d333c12038883bfcbdc8603330` |
| 26 | `def` | [onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onterm.md) | 251 | `declaration-track:0be382f48d079cc9fb5a83622752cc85ec81294833d9f06db563e8dfa82f5a70` |
| 27 | `theorem` | [id_onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/id-onterm.md) | 256 | `result-track:37d6bb7146af33c508cd2c3ce368481e7bb20c8648d872ae91e4232b8bb3d1b4` |
| 28 | `theorem` | [comp_onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/comp-onterm.md) | 263 | `result-track:1e6a3a22f359b1a81beb03e0d17c0d9bcd0975611a7a319b5c2828f048798478` |
| 29 | `def` | [LEquiv.onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/lequiv-onterm.md) | 274 | `declaration-track:140df791a35c2bdc7a21c596375d229c344b030679b00ee527c37866acbc3e69` |
| 30 | `inductive` | [BoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/boundedformula.md) | 289 | `declaration-track:1637e3c8d3932c3d7311c3f12ac9e2779ec16caf608ff6246f5c0922d89884e3` |
| 31 | `abbrev` | [Formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/formula.md) | 299 | `declaration-track:760061ca053b64172123a6891d0b253453251e2c37557073a3ca94b677c218cd` |
| 32 | `abbrev` | [Sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/sentence.md) | 303 | `declaration-track:c389f0355ab05bbb017379178af7396579e6d6aebb97a02a9443fa582ffdec6f` |
| 33 | `abbrev` | [Theory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/theory.md) | 307 | `declaration-track:85e382fcd98a923d7e418692b22f6ee7359a27305b64438ea7dc1325ebb95109` |
| 34 | `def` | [Relations.boundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relations-boundedformula-source-edition-3.md) | 313 | `declaration-track:e4b54f296e51a40b1584f664b8b3f39efde5be68feb67e519669650d9793c5a5` |
| 35 | `def` | [Relations.boundedFormula₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relations-boundedformula.md) | 318 | `declaration-track:6265dbee3e7089c568ac1a47a7d44cdc6a4374e6a4204ad87bbef4ce7450e197` |
| 36 | `def` | [Relations.boundedFormula₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relations-boundedformula-source-edition-2.md) | 323 | `declaration-track:e45b97efc8aa78d6ef6b7aa4280e52b842a74f4cd8b67085a730968c6857608b` |
| 37 | `def` | [Term.bdEqual](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/term-bdequal.md) | 328 | `declaration-track:1e0634a5f03f3f33f9149e705a7560a6d476dc5f1c30d076062f1fe98f383094` |
| 38 | `def` | [Relations.formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relations-formula-source-edition-3.md) | 332 | `declaration-track:b214299f972362c152b51598c7e422d30d9ce06bb0a8ce726c144dec9bc059a1` |
| 39 | `def` | [Relations.formula₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relations-formula.md) | 336 | `declaration-track:05124ef4b52ca3a2d111e1258d134bd616a0c720f17a41f06fb00b6afb8c651f` |
| 40 | `def` | [Relations.formula₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relations-formula-source-edition-2.md) | 340 | `declaration-track:5a1536a6a7ba910dae1ca30d48e9324380728bc41538eae54e5f162c2791dc31` |
| 41 | `def` | [Term.equal](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/term-equal.md) | 344 | `declaration-track:44adefb9ffa03a7196c972d180f9dcd3b05bb58aca8c3536bd611197877acfff` |
| 42 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/instance.md) | 349 | `declaration-track:1ef46f018f187eaafe3dcd725037d6f0ccf607cabdca3f3c8e54d0520c8cac4a` |
| 43 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/instance-source-edition-4.md) | 352 | `declaration-track:c08885985affdc416c4c124a61650d9c10de2f41175cebcd08c65166165e928c` |
| 44 | `def` | [not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/not.md) | 357 | `declaration-track:a7c8b41480c8c10e2af5ebd29bb1fdfc7d327a777b0d736b53fa5249e8db988c` |
| 45 | `def` | [ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/ex.md) | 362 | `declaration-track:ae48601e46b4db4c20410fca1043f815d4cc492008f750a4662149750f98a97a` |
| 46 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/instance-source-edition-3.md) | 365 | `declaration-track:54cf2a7ae2063612b1bdd3c18236a0b1375c572092ec204e6e60cb8fdeed022f` |
| 47 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/instance-source-edition-2.md) | 368 | `declaration-track:3a04ba5b42ac1c9a7904da0fbc037b391eb199310b793a91473445a133fea390` |
| 48 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/instance-source-edition-5.md) | 371 | `declaration-track:d43ef4f2a6fa51b7812f64e05fc1f5c56aa4af905267b4fc83d18cbfcc42bcd1` |
| 49 | `def` | [iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/iff.md) | 375 | `declaration-track:49c85b8ba94f1068ad0def37a9c2961a8eee5d9adc9b48e0948dec72000daf3a` |
| 50 | `def` | [freeVarFinset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/freevarfinset.md) | 382 | `declaration-track:962aac7c04e27f2d0c12d1b7fed248ac41e6655a674ae1a09867ca1e466a6553` |
| 51 | `def` | [castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/castle.md) | 391 | `declaration-track:daf02ceb1e5ef542f61ea06b33c1d8f801083043a93fb3596456f4a123974c67` |
| 52 | `theorem` | [castLE_rfl](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/castle-rfl.md) | 400 | `result-track:32b3331d20785fce4679046197cc73c68bea08230cc984d9c31d4c96d1756896` |
| 53 | `theorem` | [castLE_castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/castle-castle.md) | 409 | `result-track:e64edd88944b58b465207658e3f878fda7acd05aaa4f660d58e362dddc4a2690` |
| 54 | `theorem` | [castLE_comp_castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/castle-comp-castle.md) | 424 | `result-track:ea5f1ee7001a82a9e4816afc5b49bfdf0f3f93f7ec6707c085fda786470b25a3` |
| 55 | `def` | [restrictFreeVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/restrictfreevar.md) | 431 | `declaration-track:1d1c623a49c5ac8007fb107a230ad6af36fd0a3a28c340db049b42ddaf1e33b1` |
| 56 | `def` | [alls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/alls.md) | 446 | `declaration-track:cc674cc78b4efed50b3ef69201c97654bc58ba5e55ffca32fb75cc360cfd95c1` |
| 57 | `def` | [exs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/exs.md) | 451 | `declaration-track:b70bcb23321f98987a3432aea5174389573b6b2b875ffa0b716e8b12c2b5d4f4` |
| 58 | `def` | [mapTermRel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/maptermrel.md) | 456 | `declaration-track:0863f7b7e7ba193d0378d1ee694c75ff23f6e7a97589c959fc3b8e90fc6d3a13` |
| 59 | `def` | [liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/liftat-source-edition-2.md) | 467 | `declaration-track:df831e951d965f8bdb3797e0fb50d00bb05747e0e1f780f3491987371c4096ca` |
| 60 | `theorem` | [mapTermRel_mapTermRel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/maptermrel-maptermrel.md) | 473 | `result-track:c0ebf965cacd699f0e783a37ee049ab994e5f3d91efe85862edbc25016dfff62` |
| 61 | `theorem` | [mapTermRel_id_id_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/maptermrel-id-id-id.md) | 488 | `result-track:57470fa0fab38753c024a840b2ccc32dde241975e90f74ee0db34b7616278b79` |
| 62 | `def` | [mapTermRelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/maptermrelequiv.md) | 500 | `declaration-track:d680f63d9221bd22a1ef550078bc747256000170dd57e79704c26583ed61c476` |
| 63 | `def` | [relabelAux](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabelaux.md) | 507 | `declaration-track:6ae30366656cc876775cb17c417da3e3900dc51ee7fae788c25f884a37d6bbd7` |
| 64 | `theorem` | [sumElim_comp_relabelAux](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/sumelim-comp-relabelaux.md) | 511 | `result-track:99dadd5923699410097c0a6e475de8ec2435f297bb92fbe047e232be6d20f17e` |
| 65 | `theorem` | [relabelAux_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabelaux-suminl.md) | 523 | `result-track:aabee9956a34ba2ee6fe26ffa29faddc7045dbd806f3be98071eb7b4b8766eff` |
| 66 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-source-edition-3.md) | 531 | `declaration-track:fbd8684cff87aa0de7f01d63d09530232f9d8ddd1ed9261ff6abdd26ddc29b7a` |
| 67 | `def` | [relabelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabelequiv.md) | 536 | `declaration-track:86d370b7e9c5018fb645309938b1227f8e5cd98b020a1107667e65cbbe598f44` |
| 68 | `theorem` | [relabel_falsum](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-falsum.md) | 541 | `result-track:158e77fd6de07c6613448a555855983b002ababdbaae626300a2efcbacd03f8c` |
| 69 | `theorem` | [relabel_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-bot.md) | 546 | `result-track:bd48c420a1b6e4a8ecf4850eba0ac302691407050337b84c42c8f6983f69932e` |
| 70 | `theorem` | [relabel_imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-imp.md) | 550 | `result-track:e2c0db75453838805670b8548e66569764b16ce0a8b5504c5fc9e0c96c86d6fc` |
| 71 | `theorem` | [relabel_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-not.md) | 555 | `result-track:56bf97f4d05b62c6f8c76c48a03fea76dc43e39c5a87f4c8cd207c7a7d6e2879` |
| 72 | `theorem` | [relabel_all](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-all.md) | 559 | `result-track:a7d553076c4fa8771b4cb926f03560ea7111beeb0129b81be90d3ab935d8c612` |
| 73 | `theorem` | [relabel_ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-ex.md) | 565 | `result-track:fd62403e4bdab81fe6cf443b95613c74251c5d0bd664f6133f3bf0da67b7b5ed` |
| 74 | `theorem` | [relabel_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel-suminl.md) | 569 | `result-track:f69a561ec6d97a5818e9a3c1a207fedaf529fda522309805a82233bde516cce3` |
| 75 | `def` | [subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/subst-source-edition-2.md) | 582 | `declaration-track:fb8c8612e02bb629a85fe2271d795f396c9005c997410413d8f6b796aa2aad3e` |
| 76 | `def` | [constantsVarsEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/constantsvarsequiv-source-edition-2.md) | 587 | `declaration-track:8be0165da7f403b846f80095595ad5114ca8f8e06408dfedd0d17107c1258269` |
| 77 | `def` | [toFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/toformula.md) | 592 | `declaration-track:ab2375e7e39dc92573f34086556bc5025d317797ad7c64e7265bc2c2f6047b5a` |
| 78 | `def` | [iSup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/isup.md) | 602 | `declaration-track:fb62f518d9dbb13494b4b78984953716518fbaff15eff882e3c07a19a5f1b12c` |
| 79 | `def` | [iInf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/iinf.md) | 607 | `declaration-track:beb75c65ba72ee4ba12a4c1c80d74701b0af0a7e48094a7eef35d66699e7732a` |
| 80 | `def` | [onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onboundedformula-source-edition-2.md) | 619 | `declaration-track:a85e5fd2f4eb328bb7cfb981b40d9adc3223239bbc31c61b810224ad34fa7196` |
| 81 | `theorem` | [id_onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/id-onboundedformula.md) | 627 | `result-track:3de0d0420e07ff3974c399d89c194a1e8a0e9b3c6fdd5c2eb14a6cfb7d1f4c09` |
| 82 | `theorem` | [comp_onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/comp-onboundedformula.md) | 638 | `result-track:078a1ab87b98f42eb10cf4e5ac8fbdd0f907a838af5a4236d2da63437f5df7ea` |
| 83 | `def` | [onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onformula.md) | 651 | `declaration-track:600997927933a65c458a1ae1d48fa2acba0ea026b9ee7609406fa7200e554fc9` |
| 84 | `def` | [onSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onsentence.md) | 655 | `declaration-track:9e58f26d0fc8aa55ccd6022a210e830b81eb818d0d14ff436fb7bd3f97fc5ca1` |
| 85 | `def` | [onTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/ontheory.md) | 659 | `declaration-track:c401533d256ffc56d8076e1db0fd8f919fdba9e36880a6722607a11fa8de2292` |
| 86 | `theorem` | [mem_onTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/mem-ontheory.md) | 663 | `result-track:55637908f781d40c1ffc32bf79efd32f96d688440b635600355e6289a58b1277` |
| 87 | `def` | [onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onboundedformula.md) | 673 | `declaration-track:11a31a6884da9856e297f1b2bd678a5e290e1f665909fee53775d010b6ce9ef4` |
| 88 | `theorem` | [onBoundedFormula_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onboundedformula-symm.md) | 683 | `result-track:43bad875b5bd1a32d40ba1ba8afe7de44a0c10f66d74c802b56b79c767c0c280` |
| 89 | `def` | [onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onformula-source-edition-2.md) | 689 | `declaration-track:8a465e2f32c0b372fb463e3c3b997d035b3daf180912765d048d2a180690dece` |
| 90 | `theorem` | [onFormula_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onformula-apply.md) | 693 | `result-track:8b758c1d460001ba09c4bd8e677a3808367fe2fa5c322c55edbd171a4c2694cd` |
| 91 | `theorem` | [onFormula_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onformula-symm.md) | 698 | `result-track:76fc9c2c81b4d9b2f24cda03a79f6025aceee463b2ae3194c7a2d268333a6bff` |
| 92 | `def` | [onSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/onsentence-source-edition-2.md) | 704 | `declaration-track:a011625e6f90d6011d936978dd21529ac46c74ee4fc0d6fd1aad71d8235dfbf7` |
| 93 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/relabel.md) | 729 | `declaration-track:5ce8e0c6d1c26990e380bcc6324f2db95962a5a878b3e781ab3aa8075e97653f` |
| 94 | `def` | [graph](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/graph.md) | 733 | `declaration-track:b33a041985275ec3d97580de81693a30bd018a2607ae0a24a5f63e13ff50460e` |
| 95 | `abbrev` | [not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/not-source-edition-2.md) | 737 | `declaration-track:de3a03a187d6bbcb2e9ed9a2517d6ba5ea5bd06f4550fc78d773ef3d62f13a3a` |
| 96 | `abbrev` | [imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/imp.md) | 741 | `declaration-track:1b62310c9739250e9cdb3a011daa7f95e0d876e8dcc247e2d4737b3a1be84c27` |
| 97 | `def` | [iAlls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/ialls.md) | 747 | `declaration-track:c6e0087adab97a812d6403e9e1119985b0fae887ea952454baf9872dbf57e244` |
| 98 | `def` | [iExs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/iexs.md) | 754 | `declaration-track:9def65905b93301631fb8f37b42dd1bd0f23406c06b0aa33196308bf66717c78` |
| 99 | `def` | [iExsUnique](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/iexsunique.md) | 761 | `declaration-track:e20eeffe5ef39a22afbe2f692e4d34de5cdf7d2aadd7792c05e7249dd0287bdf` |
| 100 | `abbrev` | [iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/iff-source-edition-2.md) | 767 | `declaration-track:ef022d7c6e099d724e60430f22a2377aafb2a62375a748c5aefe07736ab74d8b` |
| 101 | `def` | [equivSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/equivsentence.md) | 771 | `declaration-track:cdd73f8f4ac8a0a4d478a29004436453abf3cc831680ca37282b7e2ad093aaff` |
| 102 | `theorem` | [equivSentence_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/equivsentence-not.md) | 774 | `result-track:cc2e6084080f6aabbe91e5cc2bb215d4e60ff34b17990a2f2b78c86ec4b19d0f` |
| 103 | `theorem` | [equivSentence_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/equivsentence-inf.md) | 777 | `result-track:85cab5aefb1c9b54a9c39a7832d2660773b030d644b4aafaa41be1aa56428438` |
| 104 | `def` | [reflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/reflexive.md) | 788 | `declaration-track:d3d2b128bd50f07e1648631e3102e5bcf773c6be1bf68e0dc2f0c44794eb1f0f` |
| 105 | `def` | [irreflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/irreflexive.md) | 792 | `declaration-track:fb289452868c44b9726f47be7ce07cea823ec4ffab016d91d3a2a38b5cb945ab` |
| 106 | `def` | [symmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/symmetric.md) | 796 | `declaration-track:8ad38d4b4cbebfccc380561758f0c111fbf44ae749274ee58fedf774a75238e2` |
| 107 | `def` | [antisymmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/antisymmetric.md) | 800 | `declaration-track:40bfb63fc6602e01d1162c801f3537e0d016e86a977887a7dd09828b53202e9e` |
| 108 | `def` | [transitive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/transitive.md) | 804 | `declaration-track:4b8b127a9dc2a96f2e911166dd596439ff5337a12eddb3d5a0c6bb0ca18fbfb4` |
| 109 | `def` | [total](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/total.md) | 808 | `declaration-track:1960aa9e91aa70b8acfd5c37431ff0100a158b170ddbb3a6a05fe06b707c5838` |
| 110 | `def` | [Sentence.cardGe](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/sentence-cardge.md) | 818 | `declaration-track:826f406d3ae113504640b25433fe949e9bcbe8e545540c6f94f8974d4a06dfc7` |
| 111 | `def` | [infiniteTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/infinitetheory.md) | 824 | `declaration-track:ce67c3a0714b21b1cb30d4c99f1d1968478ecc14034649f64ef38b794a48668f` |
| 112 | `def` | [nonemptyTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/nonemptytheory.md) | 828 | `declaration-track:5beeba50aba88dd11e156ddf7116e1fdcf3a79e7f8591511a8db4017a9e66664` |
| 113 | `def` | [distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/distinctconstantstheory.md) | 832 | `declaration-track:bbeefc4f8d26a0c4b5056679556fff7a91b6a9953f17561038b0b9a229174628` |
| 114 | `theorem` | [distinctConstantsTheory_mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/distinctconstantstheory-mono.md) | 840 | `result-track:4a70049ca32c2bc2536cb28b4fab489881f2dc2db3eff0d45b49c0f32e8dccb5` |
| 115 | `theorem` | [monotone_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/monotone-distinctconstantstheory.md) | 844 | `result-track:71604b164b910837a02ba1b626aeeac2e2066d649fedf0fa3814fa2d3cdbd6aa` |
| 116 | `theorem` | [directed_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/directed-distinctconstantstheory.md) | 848 | `result-track:045159eed2aeda3bb5daff5c2f3896e03ec22aa869a577e136cc6ecb2c24afba` |
| 117 | `theorem` | [distinctConstantsTheory_eq_iUnion](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxLEquiv.lean/declarations/distinctconstantstheory-eq-iunion.md) | 852 | `result-track:97d114e6e0e39997f0c01eb96a3871143b30907f3feb45adaaf513ea4a4bb8b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2a2dbc98b852d6bdd2ee5f7e57498c5138410d88e9ea81d4a989ec0b9bde8b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant33205cf205fea58166711001e941c4b37e893dc9523a7f5a6fa757432bb30f03.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant33205cf205fea58166711001e941c4b37e893dc9523a7f5a6fa757432bb30f03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
