# Verification target: Syntax Namespaced LEquiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb03458f17ddff175671ca8a55480002b36a3248",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb03458f17ddff175671ca8a55480002b36a3248`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.LanguageMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/term.md) | 81 | `declaration-track:36a15b68fd085dc9192493f52d2310c6718543aa027ab0fda4257802db7f1fd2` |
| 2 | `instance` | [instDecidableEq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/instdecidableeq.md) | 90 | `declaration-track:695cda471e397705a8327fe2a6a8fa1074d32aa8419398f703f374319882b381` |
| 3 | `def` | [varFinset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/varfinset.md) | 106 | `declaration-track:239c5d793d9d88b1f58c7cdcc6c04c5a4fcba756264e6889b9d2fe5442506ef7` |
| 4 | `def` | [varFinsetLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/varfinsetleft.md) | 112 | `declaration-track:938cabf91c74800530020461ebf3d7095c6b43a87f05a288941bbc96e081a90a` |
| 5 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-source-edition-3.md) | 119 | `declaration-track:f61f1bf929a37992f2a3046d52f45c29d4594c735e9203ce4bb88118901aae9a` |
| 6 | `theorem` | [relabel_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-id.md) | 123 | `result-track:d16c197aa0a1c6ae142f4255cf52e8e565bcb365186fc68cb19560e16b9a2033` |
| 7 | `theorem` | [relabel_id_eq_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-id-eq-id.md) | 129 | `result-track:b064e33420bfc3258c4b37bd24a3b6199c44096d0e59253666760718ca8131aa` |
| 8 | `theorem` | [relabel_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-relabel.md) | 133 | `result-track:a1f7dc5df2000451947b261ebadbb4371e750901cff30c2684789e5a2296cac9` |
| 9 | `theorem` | [relabel_comp_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-comp-relabel.md) | 140 | `result-track:8f8800e6a7b2d641aea71e4286407f62b7a140848252b71905e1e8e91a469eec` |
| 10 | `def` | [relabelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabelequiv.md) | 146 | `declaration-track:2b4a081ce9769f57a69206f0b6b7c8762351972b7ac1b2bacab4caaf8648a9a7` |
| 11 | `def` | [restrictVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/restrictvar.md) | 150 | `declaration-track:bdff5619f0c2b8305ade456f0c1a8c2ae731b9cc78cb4fb83ad49546381be981` |
| 12 | `def` | [restrictVarLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/restrictvarleft.md) | 157 | `declaration-track:7b604cb78e26d999df2440a487ab62a10b8393a158d939e2f8e2b279bb418153` |
| 13 | `def` | [Constants.term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/constants-term.md) | 169 | `declaration-track:7c2ac7812680954297e17248f22f0ed5ace4ccf516e925ebdd9efe9469f3eb84` |
| 14 | `def` | [Functions.apply₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/functions-apply.md) | 173 | `declaration-track:d443ff1fc2168933701edab2bf7256c63917fb5aa81f11cfb32ee433967c09de` |
| 15 | `def` | [Functions.apply₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/functions-apply-source-edition-2.md) | 177 | `declaration-track:fdefb8f37ee21c6377c3812cc914e914ebb266e1ecb6a92c1dcca772d11974b1` |
| 16 | `def` | [constantsToVars](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/constantstovars.md) | 184 | `declaration-track:cde8dfce23f68a200caf727c1c7d2b8089b11d50eb9c31e5f6582a77d8d6cb74` |
| 17 | `def` | [varsToConstants](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/varstoconstants.md) | 193 | `declaration-track:2faa793ddc1d13879b6a9c6896c8f21e7c2514468169e61b8e15abc511702eca` |
| 18 | `def` | [constantsVarsEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/constantsvarsequiv.md) | 200 | `declaration-track:adc4dc1581d389bfb8b5676666e61a7f995157e26903fad28028e6d859eed2ce` |
| 19 | `def` | [constantsVarsEquivLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/constantsvarsequivleft.md) | 219 | `declaration-track:d5bc0810404fa15a23689de8dcff932ae6fdb9129a2da01f0a3b306b4b176c5e` |
| 20 | `theorem` | [constantsVarsEquivLeft_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/constantsvarsequivleft-apply.md) | 223 | `result-track:cd472e4c44daee8ba70faa5b467e0077c22519a48f62254b29939e68ecd52255` |
| 21 | `theorem` | [constantsVarsEquivLeft_symm_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/constantsvarsequivleft-symm-apply.md) | 228 | `result-track:7edd83755b0916ee552518a3e45f0d35660b08ea354cae7262ea88ec07c1bfa2` |
| 22 | `instance` | [inhabitedOfVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/inhabitedofvar.md) | 232 | `declaration-track:4c1bee4ecf75eddc2ae92599721f12b2ecfde6c5c556eb31a0286bf5e870a1c6` |
| 23 | `instance` | [inhabitedOfConstant](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/inhabitedofconstant.md) | 235 | `declaration-track:974b6f1c3b5980e55e32ae1e2b9d723beeb93824a0483c7a70876e322734480d` |
| 24 | `def` | [liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/liftat-source-edition-2.md) | 239 | `declaration-track:866021044cf63f522224cb5f26b877978076028344bcc45fba83a96db1601cd7` |
| 25 | `def` | [subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/subst-source-edition-2.md) | 244 | `declaration-track:f8edd333a1915fd1d96476d4fdef2d051771f1b07eaad763a751467461290530` |
| 26 | `def` | [onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onterm.md) | 259 | `declaration-track:d66e4d0032304b16c5f1f16f967826c8484b8c08a0945b201ee613a689eb4693` |
| 27 | `theorem` | [id_onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/id-onterm.md) | 264 | `result-track:2226776179de11cbb2d1e3c56a0859a15c08b5f2ed4736d7eb329998fe8e44d4` |
| 28 | `theorem` | [comp_onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/comp-onterm.md) | 271 | `result-track:6129c733248ad628a3d7183c892cab8c2915d76cbb42c5246eaf0b81f11820f6` |
| 29 | `def` | [LEquiv.onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/lequiv-onterm.md) | 282 | `declaration-track:e54e0ea1bfb3e289917374fb050a8d10ff4c54558de57eba4dcdcf7c591316d7` |
| 30 | `inductive` | [BoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/boundedformula.md) | 297 | `declaration-track:f1b5ffe3a2b478a1da66eadf3b145d4142b60e0f396339a7581efff463c4dcfe` |
| 31 | `abbrev` | [Formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/formula.md) | 307 | `declaration-track:1f3d424d86ce65edef16c20cc099c96046c895db4cf9c7c6e5d5a4403200965e` |
| 32 | `abbrev` | [Sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/sentence.md) | 311 | `declaration-track:314eec025c4de96d7c1fc6f5ca6891402dd213585d6c78576e2aecd7d1becdcf` |
| 33 | `abbrev` | [Theory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/theory.md) | 315 | `declaration-track:fa2b3ba8a03336c58177059257a36e5f1de843a77050ec1f0dc61aa7bbb4f437` |
| 34 | `def` | [Relations.boundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relations-boundedformula-source-edition-3.md) | 321 | `declaration-track:fcb8f9b158a78121b804e13b6db12547c6d419dfb62dc331e97ae9606c0f0086` |
| 35 | `def` | [Relations.boundedFormula₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relations-boundedformula.md) | 326 | `declaration-track:2580922599f13f2cb72c15390e5b5a0f8ee6f6c43f60ae969eefe2197e06ce28` |
| 36 | `def` | [Relations.boundedFormula₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relations-boundedformula-source-edition-2.md) | 331 | `declaration-track:61dcb9b8975c5b9020b87769d068b98ba684aa554aa1cf47a0ed35ebdcf886bd` |
| 37 | `def` | [Term.bdEqual](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/term-bdequal.md) | 336 | `declaration-track:aebaeea2cca03a5bd82925e6cdbb8180c5de339245fac1b7778d9dcc3b9d6fc1` |
| 38 | `def` | [Relations.formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relations-formula-source-edition-3.md) | 340 | `declaration-track:eb17e3be87608c8b32b4710bfe887a3ce4c3146a5c8abdb785cbb458bb0ee445` |
| 39 | `def` | [Relations.formula₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relations-formula.md) | 344 | `declaration-track:0bbb73afa971cfba485b4e02ec440884d173e7eab9848781589fd553ef22cc58` |
| 40 | `def` | [Relations.formula₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relations-formula-source-edition-2.md) | 348 | `declaration-track:dca8dc7b0f3fc8e0efd7cfdef87595c7cc6f92b20f80675721c1c379028daf31` |
| 41 | `def` | [Term.equal](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/term-equal.md) | 352 | `declaration-track:6bf7e5e341487341c8d328aa0a358cda2be15b1fa2de40ba97565df3f99c705f` |
| 42 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/instance-source-edition-5.md) | 357 | `declaration-track:fbbc7b54ba480d4ffedb492b9b7e59a9bc8e678e201f6a19841885e243e56dd0` |
| 43 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/instance-source-edition-2.md) | 360 | `declaration-track:6dd837220a516a8f4dd18ab9ce06869ee54fe0dfe361f8f67df227fb2870b352` |
| 44 | `def` | [not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/not.md) | 365 | `declaration-track:10dd7be931c656a0a596d663e6ce64be035ab5a9f4553c1aadbc810b70673837` |
| 45 | `def` | [ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/ex.md) | 370 | `declaration-track:938237a2f40fca4a58947d2af13c09b41aa8345f57106f86d752db5cbd398c7c` |
| 46 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/instance.md) | 373 | `declaration-track:6a74d50572c882160322de4da235280e12ac2ac832a774276827ceff2e5c7091` |
| 47 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/instance-source-edition-3.md) | 376 | `declaration-track:812fd55498dde69015c2226b38b59c9a4d12a392ac198843b23200f731853ff0` |
| 48 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/instance-source-edition-4.md) | 379 | `declaration-track:a19247655b2e519fa29269f19473ee19dc5d93a8e016f4808c155ba49046449c` |
| 49 | `def` | [iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/iff-source-edition-2.md) | 383 | `declaration-track:b0d0503dff048b93745f22d11120a2ed7f3f81c76ed14ceb3be9caa4eec882d7` |
| 50 | `def` | [freeVarFinset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/freevarfinset.md) | 390 | `declaration-track:348d3105300caf9e30a6e7a6bfde2e31e1f3d21e372feba33fe4c42d9666fd10` |
| 51 | `def` | [castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/castle.md) | 399 | `declaration-track:ecc6fb6586631ef0f3690efa7979a5d7fd6494ec2b899e22fbb92d9624432840` |
| 52 | `theorem` | [castLE_rfl](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/castle-rfl.md) | 408 | `result-track:f4aee7a71e8f445f84ada3b868eafbfadb0eee7c6fb9f9c38639f24b35b9bb72` |
| 53 | `theorem` | [castLE_castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/castle-castle.md) | 417 | `result-track:04923239f2392959aba294628fee76cee542bcad7b14db166b745401880e5b20` |
| 54 | `theorem` | [castLE_comp_castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/castle-comp-castle.md) | 432 | `result-track:3194dc3f7e653a4e61e9a410e1e6534b564837940518e837f42ad5b3336d7914` |
| 55 | `def` | [restrictFreeVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/restrictfreevar.md) | 439 | `declaration-track:aed5cb85298ea3a27e57276c64270b1348f39657828dc38306a1de7bb349fcda` |
| 56 | `def` | [alls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/alls.md) | 454 | `declaration-track:a40a89652ea8f8a4239b498e37665672ab9f994cd68e3bece7657e3bb64629c0` |
| 57 | `def` | [exs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/exs.md) | 459 | `declaration-track:3e818a0bcaff0ee9c8e1c5d9e4c19f351e14fc02c457042fb8654c3442df6220` |
| 58 | `def` | [mapTermRel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/maptermrel.md) | 464 | `declaration-track:e4dfbe3e81693951264133160e0fdec672cbf374eec7b5ed49a90736f89b0470` |
| 59 | `def` | [liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/liftat.md) | 475 | `declaration-track:5444d2364b2c639c1a66e07f3f069f13682304f575ec307bdd9a20f01ab19f56` |
| 60 | `theorem` | [mapTermRel_mapTermRel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/maptermrel-maptermrel.md) | 481 | `result-track:4f36b9bf134fe2e76f024323a17179ce0adcb08ef40c0a49867d8efa63e2ecdc` |
| 61 | `theorem` | [mapTermRel_id_id_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/maptermrel-id-id-id.md) | 496 | `result-track:b70fbee69a3bf71c84b4f582e44acf88f805ae977e4f0ebc0d47e1b2b7e5cc8a` |
| 62 | `def` | [mapTermRelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/maptermrelequiv.md) | 508 | `declaration-track:a636aa16cca0c888a4b7c92c62e66792a42cb4f2f9a21069ce72903e44e14a53` |
| 63 | `def` | [relabelAux](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabelaux.md) | 515 | `declaration-track:691c4a431da6ea175fcde944e82497f0b74ad466bf7c352221f963c569acd01e` |
| 64 | `theorem` | [sumElim_comp_relabelAux](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/sumelim-comp-relabelaux.md) | 519 | `result-track:9007a93ba8ba5f1b1b377b50eb62394a105b0a62d9e190dbcbd34ec835f1fccb` |
| 65 | `theorem` | [relabelAux_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabelaux-suminl.md) | 531 | `result-track:4dd5ece46e5e7b5976f97ec3f8e2712c0ffb9e9a014157dd93be9bd1d69203e8` |
| 66 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel.md) | 539 | `declaration-track:4357ab6ac9c96dab6ce8f067b058c2dc1a5e0547caac7e97c17f6e1778be0706` |
| 67 | `def` | [relabelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabelequiv-source-edition-2.md) | 544 | `declaration-track:bafae1ea4504af403671b5c95f5f5a3f538dc90f18e3e31b7a72f5d1efed7c64` |
| 68 | `theorem` | [relabel_falsum](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-falsum.md) | 549 | `result-track:6aad89c3b80f5cb8abd3fae47067518bf92fdfedc602a0abb261318bf1f02856` |
| 69 | `theorem` | [relabel_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-bot.md) | 554 | `result-track:56ee94084ceebbdc902ad7664f734f3f0ba55745d0966b14ec9ad37cd625982a` |
| 70 | `theorem` | [relabel_imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-imp.md) | 558 | `result-track:285f6ee27eba21f51c43c8803599fac737e8f87a7dd54930f7bcc22e5c113aa7` |
| 71 | `theorem` | [relabel_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-not.md) | 563 | `result-track:a1bb7efa13f1613bb6710cc71744f93e9b426a6315c206c41eb046fb83c6659a` |
| 72 | `theorem` | [relabel_all](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-all.md) | 567 | `result-track:4d9cbd264635c5f28b0dce2181366b5bc1bf377cfd021d3f184f637a0d7d1a82` |
| 73 | `theorem` | [relabel_ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-ex.md) | 573 | `result-track:2b2f058188e1b66ced72164a38753cd1606771c85e4efaf06fdc28f171a6a925` |
| 74 | `theorem` | [relabel_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-suminl.md) | 577 | `result-track:e4ef9c74076e88998672ac9fdc7b79aae8bce82bd7788162bf94d884f86a6960` |
| 75 | `def` | [subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/subst.md) | 590 | `declaration-track:616272a7d5a5865eff54c544ca91fd68f957342cbef697462925058c91a79e0e` |
| 76 | `def` | [constantsVarsEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/constantsvarsequiv-source-edition-2.md) | 595 | `declaration-track:e3b1670116f25827a01e377fb929d7883eb3ac62efd44ba14ba88c071abba83f` |
| 77 | `def` | [toFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/toformula.md) | 600 | `declaration-track:abf94ce00b31d02c7bfc7c37038850eae86d357504b06320cd35eb8b59fd5132` |
| 78 | `def` | [iSup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/isup.md) | 610 | `declaration-track:6ada64febb02b15c6e78b817efed7cfe36a396bfb2aab14ebbcafb407596891e` |
| 79 | `def` | [iInf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/iinf.md) | 615 | `declaration-track:363f2b1771bbe2bb107cb273c9fc54d6b07682f258a2c434d2c6c17b8e3c8ae4` |
| 80 | `def` | [onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onboundedformula-source-edition-2.md) | 627 | `declaration-track:de395937c294ad192969303d2ba5044957a04042d815dd510464aa97317bf1b2` |
| 81 | `theorem` | [id_onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/id-onboundedformula.md) | 635 | `result-track:53077d1143cddc864c2f1bacf7071a4d049ef7cf446b55fd519bb2deca3ab58f` |
| 82 | `theorem` | [comp_onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/comp-onboundedformula.md) | 646 | `result-track:1442024aa1e2d83a2a9a58d18f3b7b9a08fbc9d722bcf733ed74bb4015fe86ea` |
| 83 | `def` | [onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onformula.md) | 659 | `declaration-track:724163620a12430f8986769f6a43368ab37305283a363f03bcae972daa3501ad` |
| 84 | `def` | [onSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onsentence-source-edition-2.md) | 663 | `declaration-track:bfb68fc149fcd98bf50f4e38f9b3614591a8933c27304c15a7aae503fa1408e9` |
| 85 | `def` | [onTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/ontheory.md) | 667 | `declaration-track:e318d52673b5bbac1ea96040d2883e1ef5da5fd0cbcbd2b95d42d391317646e0` |
| 86 | `theorem` | [mem_onTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/mem-ontheory.md) | 671 | `result-track:77ab7a75578961569ced698a8fc17d6d131fad36c7a391448456d26691ecaae0` |
| 87 | `def` | [onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onboundedformula.md) | 681 | `declaration-track:12c1a32a9b2c3ea133c39712e2f7d0b5989ce9d77767d5935d957b563ba87b0f` |
| 88 | `theorem` | [onBoundedFormula_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onboundedformula-symm.md) | 691 | `result-track:ca1a95eaad50a23228291150dc3540a6acaf6e4d5bf8b01eea39a92f8bfd628d` |
| 89 | `def` | [onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onformula-source-edition-2.md) | 697 | `declaration-track:f8895b93672e64e336022f40398237eaed4cf3003cac532f89b652b8b8791b6c` |
| 90 | `theorem` | [onFormula_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onformula-apply.md) | 701 | `result-track:2bbc552d169861ad482871404681730c610e0d7c161b78d80e925504860a7dcd` |
| 91 | `theorem` | [onFormula_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onformula-symm.md) | 706 | `result-track:8bb91bfdbdf9ad569c0071af9bd9266f37fd5ec74731d423b4c84872fa1a5b6a` |
| 92 | `def` | [onSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/onsentence.md) | 712 | `declaration-track:aedf12fda4e6432fd7ab7cd7d89274cc8e563d53f8e140f288c8f4ecb5234c26` |
| 93 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/relabel-source-edition-2.md) | 737 | `declaration-track:457c45983bc3540299de5004c9d4653c35c2245bdbc3f5d36510e1e4c34545f3` |
| 94 | `def` | [graph](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/graph.md) | 741 | `declaration-track:5e7b25019809c85d0af96eac310f5734eb4735693fbf5b5196fe29c535f338cd` |
| 95 | `abbrev` | [not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/not-source-edition-2.md) | 745 | `declaration-track:b084f7ae4fc0085172263f2d831db7edd41b2beb71c331c96c78c08464854c0d` |
| 96 | `abbrev` | [imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/imp.md) | 749 | `declaration-track:7f944ddc8c9abc998bc17ff1310a99ebb184416a2a3132121f97d8d7882907a6` |
| 97 | `def` | [iAlls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/ialls.md) | 755 | `declaration-track:d3e643682d34486f0b2957b1b495c34aaebfe40f8fcd445c9e6ac8877ef4cda1` |
| 98 | `def` | [iExs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/iexs.md) | 762 | `declaration-track:dea2c11fcd603911352930ba2840a2524d258eaa2ad1c7620eb120552a9c35ba` |
| 99 | `def` | [iExsUnique](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/iexsunique.md) | 769 | `declaration-track:bff6927927766f48296f375f040f1e48266df2b5af1001ffc8213893b1dd625d` |
| 100 | `abbrev` | [iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/iff.md) | 775 | `declaration-track:8fddfefcc24d96497ef7a705b88c9b4ed16fc556d0382d839bb59e2bf1a81c28` |
| 101 | `def` | [equivSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/equivsentence.md) | 779 | `declaration-track:095458cbf98dacd654f5d359a14e02e27a6ea2673ed9ddb5929b305bc5f2ee89` |
| 102 | `theorem` | [equivSentence_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/equivsentence-not.md) | 782 | `result-track:b735c2393d2259a9e9683f7992daa16e506879222bd5256be905bd3ca2235eae` |
| 103 | `theorem` | [equivSentence_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/equivsentence-inf.md) | 785 | `result-track:49f2465db9b7233199e7e8880104d4da2320de862bf286d7f9f413e30bfbd148` |
| 104 | `def` | [reflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/reflexive.md) | 796 | `declaration-track:ccd81d591e451dd1152e4c7852b12926cd6b5866c9e5e1755abed0744b5dc936` |
| 105 | `def` | [irreflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/irreflexive.md) | 800 | `declaration-track:502c0343e1d3f9613c85544bd91a9faa71b0adff1ca6f70c7bad6b258f5e34a6` |
| 106 | `def` | [symmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/symmetric.md) | 804 | `declaration-track:26455a0f421e4c1c1c246cc9e519722b6f911f5b48dda403f38530bb36a04be1` |
| 107 | `def` | [antisymmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/antisymmetric.md) | 808 | `declaration-track:9900cd36e844dadafab1d7c52c3737e79e5226b98664c7936e7f287d3c8736bf` |
| 108 | `def` | [transitive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/transitive.md) | 812 | `declaration-track:7b63d52079ab8b72397942ae9b41a5c9cda6b119016ef91d400f033f4357f66c` |
| 109 | `def` | [total](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/total.md) | 816 | `declaration-track:560322239d497ac637602b0cec95b79056682fd15b787b494569ba13a0813981` |
| 110 | `def` | [Sentence.cardGe](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/sentence-cardge.md) | 826 | `declaration-track:03c82ffeee50c5809c539e4140989d98a7a2ab26c89e9f9cb3c3b9dff3031865` |
| 111 | `def` | [infiniteTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/infinitetheory.md) | 832 | `declaration-track:129ac8e502bac99bea407bb38ec005efbd4ad4bfd1331911467444c0a0fe7010` |
| 112 | `def` | [nonemptyTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/nonemptytheory.md) | 836 | `declaration-track:9720b58e71376c25a954f87c68cb5da3e42f0b2e3bc786cf6ec8a976b01fb04c` |
| 113 | `def` | [distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/distinctconstantstheory.md) | 840 | `declaration-track:8a8770594e2a5a7b7b20063859d9a63515469ba97f06f6fa602c28dab4691102` |
| 114 | `theorem` | [distinctConstantsTheory_mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/distinctconstantstheory-mono.md) | 848 | `result-track:991fc7706d4d67a290458216d46be39392c8184ce40846def371baaf7e0b06d5` |
| 115 | `theorem` | [monotone_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/monotone-distinctconstantstheory.md) | 852 | `result-track:5abf1a63052a44fc013265fdd984ca325b25424e09741bd2a557b538ae81eba6` |
| 116 | `theorem` | [directed_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/directed-distinctconstantstheory.md) | 856 | `result-track:ad3220e837e67f993afcbe689e12b8449c972d86f27bcc10877c98cb1b5ec8d3` |
| 117 | `theorem` | [distinctConstantsTheory_eq_iUnion](../../../../../MathematicalLogicAndFoundations/ModelTheory/SyntaxNamespacedLEquiv.lean/declarations/distinctconstantstheory-eq-iunion.md) | 860 | `result-track:a3a069b49fd34354c9abf9820e1e701e7808d3ebb8674081ace90b681f2a34c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10bc4b09891dcb860608e5d6379d621ef1a063a1f7c2e60212b3080debbd47d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
