# Verification target: Dirichlet Character Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6026d444ad49c14c802f1e21b30646c8a2595056",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variante66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/DirichletCharacterBasic.lean/index.md) · [Full source](../../../../NumberTheory/DirichletCharacterBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6026d444ad49c14c802f1e21b30646c8a2595056`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variante66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variante66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.EvenFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirichletCharacter](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/dirichletcharacter.md) | 34 | `declaration-track:05e53d86be8516b1c2210b03ed717a8e910c88f6b1be8f82c7ac0a9ac5c85849` |
| 2 | `lemma` | [toUnitHom_eq_char'](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/tounithom-eq-char.md) | 42 | `result-track:74802f40b579b2d73864620071ec1113ea98a93db7aef7266eab48368ade3a6b` |
| 3 | `lemma` | [toUnitHom_inj](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/tounithom-inj.md) | 44 | `result-track:4bb9af00aae7bf238fcac624d5166ecb63125c565951259d300151e2e3e3445f` |
| 4 | `lemma` | [eval_modulus_sub](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/eval-modulus-sub.md) | 48 | `result-track:2c792e18d9be4ac7179a7730e29144370fb200232a54063916ae6c8613ce04e9` |
| 5 | `def` | [changeLevel](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel.md) | 56 | `declaration-track:02e490365e8b80caf57eba8a714707d215e5fa7fa60ea6550c18c7ee2d3de516` |
| 6 | `lemma` | [changeLevel_def](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-def.md) | 62 | `result-track:3afb4cde1d4d21b0711ac1818cac688d45def82715d8a13063c7a3488bbadd0b` |
| 7 | `lemma` | [changeLevel_toUnitHom](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-tounithom.md) | 65 | `result-track:a9242ffcb2a414fcb5ee652c2bb1828c390cb825c381f64a7280b7c4e7d4dd99` |
| 8 | `lemma` | [changeLevel_injective](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-injective.md) | 70 | `result-track:4d8feca5a70c18ae38193ac656e5b3e0cc489046df43a4efb5778c4e0ae5dc21` |
| 9 | `lemma` | [changeLevel_eq_one_iff](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-eq-one-iff.md) | 79 | `result-track:1390c5820cfd841fb622c168330a577dad0fb2785c0c30c32b3b156a96a1c151` |
| 10 | `lemma` | [changeLevel_self](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-self.md) | 84 | `result-track:6c0af52ed2378213bf92ce5250954edce218c0635facf8cb570c450fce80e171` |
| 11 | `lemma` | [changeLevel_self_toUnitHom](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-self-tounithom.md) | 87 | `result-track:b8310b1c7ab7e64240e322f2714101a84ed87c8aa1ec4f06d91ad78ec3653321` |
| 12 | `lemma` | [changeLevel_trans](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-trans.md) | 90 | `result-track:a3b7cd24fa883497940282efb870d9be5d25aa25de6c76d64768eb2e55626411` |
| 13 | `lemma` | [changeLevel_eq_cast_of_dvd](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-eq-cast-of-dvd.md) | 94 | `result-track:2efa9a91ad88c75e6def859ea32ab872fb22cf39944dd75c085ec66251192a50` |
| 14 | `def` | [FactorsThrough](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/factorsthrough.md) | 100 | `declaration-track:6089f11b6084dce2d08bfd8ba4732024faff2c47e326e4380664cbf795c4dca2` |
| 15 | `lemma` | [changeLevel_factorsThrough](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-factorsthrough.md) | 103 | `result-track:fb3851abe75f282bb7b7dd151a6351980ea77468e58396353ca2dfd684583e65` |
| 16 | `lemma` | [dvd](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/dvd.md) | 111 | `result-track:b432cfc4c9e73dd5ea03347c915e2912384eea34219265f73c578eaa1e05f11f` |
| 17 | `def` | [χ₀](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/anonymous.md) | 115 | `declaration-track:df4e9a6bd57ee98bddec337bdca03c7670ba0ac28d3966f60cf9b49fbdd8d8c1` |
| 18 | `lemma` | [eq_changeLevel](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/eq-changelevel.md) | 118 | `result-track:1994eea207f46f1f879cf2fe9d76208d78d5e5d98617de7f606287f12f56fad5` |
| 19 | `lemma` | [existsUnique](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/existsunique.md) | 122 | `result-track:b1ac444ad15382249f17599fde9174b090328aa74db2a10144ae13fb637d026f` |
| 20 | `lemma` | [same_level](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/same-level.md) | 128 | `result-track:95149004baa95d5c9357e401fc8406151906cceb6fcea21ab9f8b527fb30f7bf` |
| 21 | `lemma` | [factorsThrough_iff_ker_unitsMap](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/factorsthrough-iff-ker-unitsmap.md) | 135 | `result-track:2f5796ca63ad025ac1c734fb0bcd41da1432161ebe8ca4fb5e79aa6ae608565f` |
| 22 | `lemma` | [level_one](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/level-one.md) | 149 | `result-track:7c0568d610bf4c22e35e313e9fd8e29dc54fc23c44e22aced8733e384c119ea7` |
| 23 | `lemma` | [level_one'](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/level-one-source-edition-2.md) | 153 | `result-track:c4c758fa5ef40d61b5d128fc7901e415b12e2d5345e7f364a9ac0f9848b778e5` |
| 24 | `instance` | [(anonymous)](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/instance.md) | 157 | `declaration-track:a7f8f65b7d371b71424be20cef746852f518ad1146855c68e9565fe31c372aff` |
| 25 | `instance` | [(anonymous)](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/instance-source-edition-2.md) | 161 | `declaration-track:d607bfad5aa36eb6d790f57b763e5624d113566ecd3d1dc0143ee5f02e80b8e7` |
| 26 | `lemma` | [map_zero'](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/map-zero.md) | 164 | `result-track:136e3f05ab3a647e6f7dc20c89963d10a9a636e28b837ac592fb206281181d77` |
| 27 | `lemma` | [changeLevel_one](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/changelevel-one.md) | 167 | `result-track:e400f9a5a2ce8bc813c498e77a2944e173f986e232627ef4fd742ae5d305a770` |
| 28 | `lemma` | [factorsThrough_one_iff](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/factorsthrough-one-iff.md) | 171 | `result-track:acea06564ef86770ffa490180cc1915627cc8a2ddbcefc289ae16fd567b24099` |
| 29 | `def` | [conductorSet](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/conductorset.md) | 181 | `declaration-track:905a433ae552d7d922b613f14e1b5745f9432b0e054715ae45dcdbb449f37899` |
| 30 | `lemma` | [mem_conductorSet_iff](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/mem-conductorset-iff.md) | 183 | `result-track:2ce300f5c5da6d7114a5e0efd668ff90ba090f4acdbc8b12943739138fb1ae3d` |
| 31 | `lemma` | [level_mem_conductorSet](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/level-mem-conductorset.md) | 185 | `result-track:a187423256031cf6c612c81dd688e2d0131d39f81fa84b61d0dbc638d89990cc` |
| 32 | `lemma` | [mem_conductorSet_dvd](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/mem-conductorset-dvd.md) | 187 | `result-track:400ea6915cb32d862296d27c62ca06ba96c322edf3293bacd649aa21c7850313` |
| 33 | `def` | [conductor](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/conductor.md) | 190 | `declaration-track:4ff5ac7aa2aef5cc7e664e1b858544aa5c8f9d91eb66dbb17537837a8535f5dd` |
| 34 | `lemma` | [conductor_mem_conductorSet](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/conductor-mem-conductorset.md) | 192 | `result-track:9bf62da22a050d19557b8b422b32ce0a3b8c4cb814ab452694e0781002828760` |
| 35 | `lemma` | [conductor_dvd_level](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/conductor-dvd-level.md) | 195 | `result-track:c8a23230f215f90d042f6546f157654e82e27703873775adcd0c1a81a96c2111` |
| 36 | `lemma` | [factorsThrough_conductor](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/factorsthrough-conductor.md) | 197 | `result-track:9d0a913ae86a47e10df9d7d8d3748740b19d83115e709acadd252eb774e9ca5b` |
| 37 | `lemma` | [conductor_ne_zero](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/conductor-ne-zero.md) | 199 | `result-track:84260aff67ae62a5eaf30fd4907f52d83cbc7e1dc3fcd708e38a59518c9e55eb` |
| 38 | `lemma` | [conductor_one](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/conductor-one.md) | 203 | `result-track:4b824750a02f0ea5d62663323527e804a8ad55110f74e3a6f2ec6afc7d837bf1` |
| 39 | `lemma` | [eq_one_iff_conductor_eq_one](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/eq-one-iff-conductor-eq-one.md) | 212 | `result-track:402c3d6398d5dcfa0fda3b6a10cd607344fe6a137cc5e36ac39cedb9cc668421` |
| 40 | `lemma` | [conductor_eq_zero_iff_level_eq_zero](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/conductor-eq-zero-iff-level-eq-zero.md) | 217 | `result-track:7993ad8d9600d5d3538aa8b77b3e749dc78723570f27374f34ac0bac0c8e8d5d` |
| 41 | `lemma` | [conductor_le_conductor_mem_conductorSet](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/conductor-le-conductor-mem-conductorset.md) | 222 | `result-track:455dfe8bfb82f75388e59d9f862ad950f09a9ca4edf43ae9158f0b85973165d8` |
| 42 | `def` | [IsPrimitive](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/isprimitive.md) | 234 | `declaration-track:66640cf5357a250af8fcf6c0bef02fb7e6f6cf227d8b38264924b3909db9c3e7` |
| 43 | `lemma` | [isPrimitive_def](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/isprimitive-def.md) | 236 | `result-track:f6607ab1807c6accdbd1072a0170cce161037bb5262eb3cada360dce0567ab69` |
| 44 | `lemma` | [isPrimitive_one_level_one](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/isprimitive-one-level-one.md) | 238 | `result-track:5fbf4dfe23d49c75828ac1ba793c9d49edc9eb61ccbc298ee426c76b23de7e9e` |
| 45 | `lemma` | [isPritive_one_level_zero](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/ispritive-one-level-zero.md) | 241 | `result-track:51b371a1158c03f186554f741ee964bcb6716fc93d0cdc7271e9cb2ba2246c63` |
| 46 | `lemma` | [conductor_one_dvd](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/conductor-one-dvd.md) | 244 | `result-track:20e010596d63b5a393333097e56002e6315cd8038270d5107a3dfa2668ed8bfa` |
| 47 | `def` | [primitiveCharacter](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/primitivecharacter.md) | 249 | `declaration-track:6dca179733a7ddb8dfec1a8c20bb3133181562313ad5bf9346522ab29c45c2ce` |
| 48 | `lemma` | [primitiveCharacter_isPrimitive](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/primitivecharacter-isprimitive.md) | 252 | `result-track:b0d57ad866b1806dcb37409ab1c349a87373f92a0fe8debeb315d393a5f81cb3` |
| 49 | `lemma` | [primitiveCharacter_one](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/primitivecharacter-one.md) | 259 | `result-track:fcae9c60c4b34b5ac0ad65125a224ea244ded88180fb9fb3f30f0a342f7b4b44` |
| 50 | `def` | [mul](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/mul.md) | 267 | `declaration-track:330866936a12180911d43010ab2144fda1af20d0225e561563909f8a4ee45604` |
| 51 | `def` | [primitive_mul](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/primitive-mul.md) | 273 | `declaration-track:98ff52a4b007c7cee6070d6595405680ba5fca5fa3d6aef63087c3677bb80bda` |
| 52 | `lemma` | [mul_def](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/mul-def.md) | 277 | `result-track:ede28287f12745ffc0fde8143bfadf123e445c1164409c15b10965d6bfce4aa2` |
| 53 | `lemma` | [primitive_mul_isPrimitive](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/primitive-mul-isprimitive.md) | 281 | `result-track:3f3e13cb8e23075e6e44f1713a82c432150f6dbcdd3936529d563c19efdf24f2` |
| 54 | `def` | [Odd](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/odd.md) | 294 | `declaration-track:4a11528280c881918136ffbb3dc6214f8b1f7bae962add4093944ac38e080ee3` |
| 55 | `def` | [Even](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/even.md) | 297 | `declaration-track:76541587574edb9508b2d4a5053588004c7120808a88ce8f72a77eebc030ebd3` |
| 56 | `lemma` | [even_or_odd](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/even-or-odd.md) | 299 | `result-track:b7d81ab90eae2033f11dad0ebaa072496b8ded80fe691fe2c1878b44d80a7b9e` |
| 57 | `lemma` | [not_even_and_odd](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/not-even-and-odd.md) | 303 | `result-track:0eed98d3777a1c8d1f8d09a427b9b28a510d3fdea42f8e2d158ace64be177549` |
| 58 | `lemma` | [Even.not_odd](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/even-not-odd.md) | 307 | `result-track:2c4ba33822c34c9a53adbbe679ccd5d6f02f77f0f34478bebcb70d2187844eb3` |
| 59 | `lemma` | [Odd.not_even](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/odd-not-even.md) | 310 | `result-track:d0ddd685a00a6891c06af54f8c84c6864a9099d803abb5829f2d04dcfda01cc3` |
| 60 | `lemma` | [Odd.toUnitHom_eval_neg_one](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/odd-tounithom-eval-neg-one.md) | 313 | `result-track:6ed72a451a5f2d8e419ba2cca4189d93635e285740010c9d37e120803d902ccf` |
| 61 | `lemma` | [Even.toUnitHom_eval_neg_one](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/even-tounithom-eval-neg-one.md) | 317 | `result-track:b998401faeb55f36a6e3217c403fabdbb6fb06bb0fb668b4990c91298fc040ca` |
| 62 | `lemma` | [Odd.eval_neg](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/odd-eval-neg.md) | 321 | `result-track:660c8eb7db9c064e662b623de9602650bc672805a38b03829092e3f16024b0a7` |
| 63 | `lemma` | [Even.eval_neg](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/even-eval-neg.md) | 326 | `result-track:efa147bb185f47b7555d27a8a31c0b049c83a97111f1e3389112f1a863e0e121` |
| 64 | `lemma` | [Even.to_fun](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/even-to-fun.md) | 332 | `result-track:1d586d28de4b773b430313dd07fdc9c607a86dc323497e78958b3e22b12b642f` |
| 65 | `lemma` | [Odd.to_fun](../../../../NumberTheory/DirichletCharacterBasic.lean/declarations/odd-to-fun.md) | 336 | `result-track:6941a178e7b4ed5adce1734b7be8925b6880152f90c5b46c51e5da8fd88891a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=362d10a929067cba23f845b1dfba18a5d94e6af93ecb413c707b8ea5e020aa29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variante66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variante66b1b2e71be110dba467324823951729095d7c6ba43a69e60542ebc07f4596a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
