# Verification target: Model Theory Basic Card Empty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bfc120d0bc481b7b03f8224ad7f71dd25447315",
  "lexical_observation_count": 142,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant3cc281b19a100dbec942d34614e773682ea1de17b3ca9f448fe0728e806a164b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bfc120d0bc481b7b03f8224ad7f71dd25447315`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant3cc281b19a100dbec942d34614e773682ea1de17b3ca9f448fe0728e806a164b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant3cc281b19a100dbec942d34614e773682ea1de17b3ca9f448fe0728e806a164b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Language](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/language.md) | 55 | `declaration-track:4947e4fc411fb2b05d6fbc5dfcb952cb21d1cd36065a736cd8f59a004abbfb32` |
| 2 | `abbrev` | [IsRelational](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/isrelational.md) | 66 | `declaration-track:149a34b5930d0fa954be5b5353c50e3b79b87cf263ad57b1d8f1f3ac048642cb` |
| 3 | `abbrev` | [IsAlgebraic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/isalgebraic.md) | 69 | `declaration-track:2f3d1334462a533e8a1aa66495973b5638b9d2bf3ce269b7402d583a98d8428b` |
| 4 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/empty.md) | 72 | `declaration-track:b42510d8fecb26df8a5ac180e7faba60b8ac514a1c9aceb20d083e3c57b9aee3` |
| 5 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-6.md) | 76 | `declaration-track:88aa833ec5ce9ec725fd6dadd295b09b7ed3e58d2477482a6fa942e5e3b75c51` |
| 6 | `def` | [sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/sum.md) | 80 | `declaration-track:8b24d53ca0b96fa736c44b92ae82d1095f56050d64246821bcd6f2ad04fa8740` |
| 7 | `abbrev` | [Constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/constants.md) | 84 | `declaration-track:04790d613d96f89afdfc146febad7e7404090079c18c65b60f94a14ffb8bfb64` |
| 8 | `abbrev` | [Symbols](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/symbols.md) | 88 | `declaration-track:0f9faa3b3ad86aee904bc01d8fec398e4df748ec5d829499bfe6851134a6dd56` |
| 9 | `def` | [card](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/card.md) | 92 | `declaration-track:edebe93701bf4b72004ef8d0b63a94fb11685be936cd354dddedbec08c506404` |
| 10 | `theorem` | [card_eq_card_functions_add_card_relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/card-eq-card-functions-add-card-relations.md) | 97 | `result-track:94d1a61ffb29f6868e11d0db18932a29607ac856d6b7aabffca08933e6a618e0` |
| 11 | `instance` | [isRelational_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/isrelational-sum.md) | 103 | `declaration-track:f74c24ba0e4d45e53177b3d3feb5dafae2b93253e200f3d68e47b8e7c2304626` |
| 12 | `instance` | [isAlgebraic_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/isalgebraic-sum.md) | 106 | `declaration-track:48071a824d6381b01a2c020cd4dec99c8b633abc13282e9147ce52d3370f771a` |
| 13 | `theorem` | [card_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/card-empty.md) | 110 | `result-track:bf05c126329f0945065894592580b975c9cd028ec9196597bed75651d82fc4c1` |
| 14 | `instance` | [isEmpty_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/isempty-empty.md) | 115 | `declaration-track:ee99942829e15369a4ff2909c6c329ffb7db4b44a9cf943cd0dd41b70f3adc95` |
| 15 | `instance` | [Countable.countable_functions](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/countable-countable-functions.md) | 119 | `declaration-track:f003a82cbdedd8903da9664b1c9918f19078692ee7395fcc976d29994a2318fb` |
| 16 | `theorem` | [card_functions_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/card-functions-sum.md) | 123 | `result-track:7217631a979c9415a75a5a4664157b4a0217384af844466bd84ead26bd30d234` |
| 17 | `theorem` | [card_relations_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/card-relations-sum.md) | 129 | `result-track:4253de655df9ec138dd16d7032a1517f755fea766d307c89baa6f61bec530cbf` |
| 18 | `theorem` | [card_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/card-sum.md) | 134 | `result-track:9aa5236637ab283a9b384a354795218b9879c4ab858de16568341e5fb10f9868` |
| 19 | `instance` | [instDecidableEqFunctions](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instdecidableeqfunctions.md) | 143 | `declaration-track:a57e2c27bb434d3176de6f161691a7e132b3f09827a55e56f8ce98d5ce8d7f34` |
| 20 | `instance` | [instDecidableEqRelations](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instdecidableeqrelations.md) | 149 | `declaration-track:5cdd62a157fae47191b5e52196832f05efaac205c44a64170d597c2fee9d945b` |
| 21 | `class` | [Structure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/structure.md) | 159 | `declaration-track:ce084258ca0899ebadb51515dace30542a9eb6f041566349506e879e001051aa` |
| 22 | `def` | [Inhabited.trivialStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/inhabited-trivialstructure.md) | 172 | `declaration-track:1a6ee75d47ef2d84370e1ba82e20d7d517a70f9ba89bbbb451850f0d05feadd4` |
| 23 | `structure` | [Hom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/hom.md) | 181 | `declaration-track:64b1053047b3efb1873ae16825c4eed5f4cded02e400834992fe8dd1733e2610` |
| 24 | `structure` | [Embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/embedding.md) | 202 | `declaration-track:2454c371ff5c937c1584cfb3e48ba76d985c267a5bc088f3cf70a966dac43bab` |
| 25 | `structure` | [Equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/equiv.md) | 215 | `declaration-track:5edeab4f69933df865e587bb4dada8f7afeddab4ad2dffe108913f1f4175a3ee` |
| 26 | `def` | [constantMap](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/constantmap.md) | 230 | `declaration-track:22033f93833a7580ce8793bd241335303cc6a270b55e09eb69d0948804e2fb1d` |
| 27 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-7.md) | 232 | `declaration-track:8dfc38b0f8d925ec15eec79120c8e003686f3e5cee65f6a7c33fcffae2c91dc1` |
| 28 | `theorem` | [funMap_eq_coe_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/funmap-eq-coe-constants.md) | 235 | `result-track:497bf3dab55ea3cdf7a1ecceefe2513b83294f1431a839052ac962f3e9e2fe07` |
| 29 | `theorem` | [nonempty_of_nonempty_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/nonempty-of-nonempty-constants.md) | 240 | `result-track:91e4e71ca08b42397d877ba3e1bed62f9b8494d2d3fd728b6343f135ae69f0ac` |
| 30 | `class` | [HomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/homclass.md) | 245 | `declaration-track:3ba9331e0aa9881dc3544d9833a4bdd50765c66b9cb78df601760236d12d224f` |
| 31 | `class` | [StrongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/stronghomclass.md) | 252 | `declaration-track:47a7317202ce7c87ebdce458676e0c1e5ae6c2570eac46c84aa1ff7a62fa107d` |
| 32 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-4.md) | 257 | `declaration-track:667f3df35be6a8a0d790e8d5853f99379b4c4963264fb2ab04f3a7829c2434b3` |
| 33 | `theorem` | [HomClass.strongHomClassOfIsAlgebraic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/homclass-stronghomclassofisalgebraic.md) | 263 | `result-track:73b3a03b5d5c0acb1b7033778783f7031426a760aeab2fc1b8bcd275f61eb2d8` |
| 34 | `theorem` | [HomClass.map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/homclass-map-constants.md) | 268 | `result-track:e47304735f38381c45161ceefbd287400f3099c14a11947a54cc7741b735dfe9` |
| 35 | `instance` | [instFunLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instfunlike.md) | 282 | `declaration-track:336c56643817b00730249d0ec3f57b7609abfb4c3a83ba4b9ff219a131af0eb8` |
| 36 | `instance` | [homClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/homclass-source-edition-2.md) | 286 | `declaration-track:73740198e6de4f312ae08815818211a68ac3f17454f810017609037cb189dea6` |
| 37 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance.md) | 290 | `declaration-track:3c3ea098bf52eb92284d1d720df5ce18c1f1591f60c0c04acc6dc38e4ffff7a0` |
| 38 | `theorem` | [toFun_eq_coe](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/tofun-eq-coe.md) | 294 | `result-track:057d2342101aa62bacb95e8cc73a6ba795705dc6890e7c9a17c180203ab82d3f` |
| 39 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/ext-source-edition-2.md) | 298 | `result-track:b2d2057e4bda1d8b48941d24d79a6d5bf6c7ea953aa006aeb898ea0d8bfb757c` |
| 40 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/map-fun-source-edition-3.md) | 302 | `result-track:a6af06fce49782957ac807a0657925cc1941b59148f0ff4cb83cd9ff943f798a` |
| 41 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/map-constants.md) | 307 | `result-track:10cc478490afc3e53a37e8a6ba069017d1ec6bcef0cec67545b56d5422d36d4f` |
| 42 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/map-rel-source-edition-3.md) | 311 | `result-track:d4b1760d6619002c55944d57621c593797da79d2189810ec99a0a46d0b7187a2` |
| 43 | `def` | [id](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/id.md) | 319 | `declaration-track:30d46e16a6f734fc4b65e0c60d04703245c9e70192b98cce9fe77f66cdf93899` |
| 44 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-10.md) | 324 | `declaration-track:b6462eba519b3956c44edbcd4bb605717c10f55785c34408245e2ae650fbd9eb` |
| 45 | `theorem` | [id_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/id-apply.md) | 328 | `result-track:8199597b839c151a34bd0a4660a8292d9418fac2f79689faf6d2b05dac25bccb` |
| 46 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-source-edition-2.md) | 333 | `declaration-track:8520285d6cc331be807ac8f9b15f52d2ed79153f24bc7865c1416fac4a56de59` |
| 47 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-apply-source-edition-3.md) | 341 | `result-track:f3b973d949773c8c21d744e904a8d0cbe31f687d7abae0bbecb45e32567e2748` |
| 48 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-assoc.md) | 345 | `result-track:32b5af86c9b460b68c6ea7d5771153427041f84a0b44d885a2f2e51fa878e3b7` |
| 49 | `theorem` | [comp_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-id.md) | 350 | `result-track:7f763d0e4cfe823ab84f0adc9bbe79062bfdcd6ac1467f236229a6d1ea7a3415` |
| 50 | `theorem` | [id_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/id-comp.md) | 354 | `result-track:41fd954b7d58bd707a7d2f381a65a3446378d0d39da24f94f1f3405db604c8bb` |
| 51 | `def` | [HomClass.toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/homclass-tohom.md) | 360 | `declaration-track:c9a68e802fe908f09b3b9f6e5afcee8a7ead7b0e4d95e2f3e7c04db519f3727a` |
| 52 | `instance` | [funLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/funlike.md) | 366 | `declaration-track:f60425459fb552a9948d6b357529b07d675c7d0e7368248b20905c57316da20d` |
| 53 | `instance` | [embeddingLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/embeddinglike.md) | 375 | `declaration-track:45f1aab2ad0edad1fb3874d83b2cf9b79a9494a00af39a06b0bae1c418ea2bd7` |
| 54 | `instance` | [strongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/stronghomclass-source-edition-2.md) | 378 | `declaration-track:52137c7c13e9c21350b9dc6eb9faca26e6e2951ae9eeb1425ddb8c2b6d12e7b6` |
| 55 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/map-fun.md) | 383 | `result-track:0c77efd3badf8fcabd1205b9d8ca644210e4a3b71576eed4392c22ec786ae6e0` |
| 56 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/map-constants-source-edition-2.md) | 388 | `result-track:3ce956f3fa9feabef9efca811ae8cd5cbe28a453967e11058948def1634bfdef` |
| 57 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/map-rel-source-edition-2.md) | 392 | `result-track:ad45e9dea526643114cf1eb85240fcbb69eb0c99c4450c5dee267570773ef350` |
| 58 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/tohom.md) | 397 | `declaration-track:23e5089d207f7c2cc95e29a72c5d2c2e1217dee96bbc5a7bac0671bb475d7f73` |
| 59 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/coe-tohom-source-edition-2.md) | 401 | `result-track:47b7882b4bf7a0004985cc438e445972bee955cc14644f6f333f25c6d1d25f66` |
| 60 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/coe-injective.md) | 404 | `result-track:094fcd2a46c3fbc5cfb1a283fe484d2f0325dedece94e9623323e6d7fa36270a` |
| 61 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/ext-source-edition-3.md) | 413 | `result-track:cab0f0e4034d83f75343dbb845773fbb1fd92c33926936cf4f32b1cd6f1f2a70` |
| 62 | `theorem` | [toHom_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/tohom-injective.md) | 416 | `result-track:c883b2e273238807b1adf9e935747775df1ba6208745d4a15ee26afb6a6fb213` |
| 63 | `theorem` | [toHom_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/tohom-inj.md) | 422 | `result-track:cc503a455ffb1edb76aad4acd798e55f8111319b99076d3fc6df5c68108b56ff` |
| 64 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/injective-source-edition-2.md) | 425 | `result-track:8ec51c33341f9bcfd427b7190f8a767141887a905d7b2c7f67915aac3ddf1fc4` |
| 65 | `def` | [ofInjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/ofinjective.md) | 430 | `declaration-track:9a295d14666d58f62a7f7614a6f2c40a5b4d19f4570da54b3790eccfe81b36ae` |
| 66 | `theorem` | [coeFn_ofInjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/coefn-ofinjective.md) | 436 | `result-track:7a6399e9da1a5ab7b022e007168f18d887da172f574439620cf918ebc702715c` |
| 67 | `theorem` | [ofInjective_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/ofinjective-tohom.md) | 441 | `result-track:b7ce9635510284dc7acef2cd77015df92ed6079aaa2fb6fe8cad3c336fad1b0e` |
| 68 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/refl-source-edition-2.md) | 449 | `declaration-track:72c7be64ef5edeb9e6c4d0574465dfa0d3d8d1710a304f620c72a9768d961ad2` |
| 69 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-11.md) | 453 | `declaration-track:bc37b8e7361e2d6382d439f7a7f1313e8b1b12c36e9f989a02f620ce8ae54883` |
| 70 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/refl-apply-source-edition-2.md) | 457 | `result-track:9183e9564a7060302c7aed6b3552cbe4812b76a61424b4790dba005ea08e3da2` |
| 71 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp.md) | 462 | `declaration-track:0c8769cd5c986aa83f34005ece7c1aac522b7e21be08bb436f769f31cfb0a9ff` |
| 72 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-apply-source-edition-2.md) | 471 | `result-track:db9090e27247b7b2f540dda0b2519e01e4aef0a91a6782b2c3c2cd6af80d2c27` |
| 73 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-assoc-source-edition-3.md) | 475 | `result-track:91211178c2e447919bd2d6f3405626f4a5ecb2ac3d4ea34468504f07a18cf0d1` |
| 74 | `theorem` | [comp_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-injective.md) | 479 | `result-track:914c40d4137886ff582e58deee0058bf1c725cb205343c954f65c6eeb7d33abb` |
| 75 | `theorem` | [comp_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-inj.md) | 485 | `result-track:8db1aeb72c7982f3354829ed61e4dd999c1bc13eb17477876de6f691b56f6635` |
| 76 | `theorem` | [toHom_comp_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/tohom-comp-injective.md) | 488 | `result-track:998bef0d74c7436e99ba9db71cea79362d4d4d6af354e2cf838c0a6dc20cd413` |
| 77 | `theorem` | [toHom_comp_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/tohom-comp-inj.md) | 494 | `result-track:643510f7360e9076296441d19541ba83ab8bc837b45d4d7950379c79332f7b62` |
| 78 | `theorem` | [comp_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-tohom-source-edition-2.md) | 498 | `result-track:88494a470d4c681260ec4de36dc6685c0c9283a68b1d869c54d0ffc61805f47f` |
| 79 | `theorem` | [comp_refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-refl.md) | 503 | `result-track:99dc965a70faca240eae0d6ba9669a162c67a426a28abdf26757bbe7952d36e1` |
| 80 | `theorem` | [refl_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/refl-comp.md) | 506 | `result-track:b69b5a45b2401c5e7f37856c544f39d6dbbc63ff9c95c88c459ea58af4f73415` |
| 81 | `theorem` | [refl_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/refl-tohom-source-edition-2.md) | 509 | `result-track:2baac7de501fc173d81f730a8bcc062f364cd1e233da984fe11dc7bd0ec25736` |
| 82 | `def` | [StrongHomClass.toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/stronghomclass-toembedding.md) | 515 | `declaration-track:5abcc7fab57ee0e6be54644a1821b2fa4403361776929c648b4a4eaaaefaf523` |
| 83 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-8.md) | 521 | `declaration-track:91b71acd71434d01e63b61a7a95b8a8dfabcc06eb59810a6bf552e5eb2293e99` |
| 84 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-3.md) | 533 | `declaration-track:5a86e67f063ea84ae734828532ebd363bee5550566050c64ef29b18390315fc7` |
| 85 | `def` | [symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/symm.md) | 539 | `declaration-track:23f13e83858283a8c70c6ff8b301e353aca5e872a2d347b1886ee3b068e2136f` |
| 86 | `theorem` | [symm_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/symm-symm.md) | 552 | `result-track:7619f0431fffa003f3f4bf1c7ced957ce701c3b348bfc1feed238c28282afcaa` |
| 87 | `theorem` | [symm_bijective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/symm-bijective.md) | 556 | `result-track:1c521b848fdf1671927d17e64d62fb2a6b3680854f4fc00bf41217acc055e358` |
| 88 | `theorem` | [apply_symm_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/apply-symm-apply.md) | 560 | `result-track:dd5937b51290370b45cea337a886a2b9bc8acb0bbea14e9120a05e6bbda900c3` |
| 89 | `theorem` | [symm_apply_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/symm-apply-apply.md) | 564 | `result-track:daaf5b239f84a1c66d2fdc63fe5aab1c5db1f71af3d08a06a6e675259ceb03d6` |
| 90 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/map-fun-source-edition-2.md) | 568 | `result-track:6d6ab3392680174e31d65be8532edd5a92782373b82541ed6db12142925d168b` |
| 91 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/map-constants-source-edition-3.md) | 573 | `result-track:5c7955d3b62b6d7918249c83b8375d3fc5d90f618cef48186c1859b1a3f21c58` |
| 92 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/map-rel.md) | 577 | `result-track:7f5833cc3b1a892bc4740b0bfbe36551532dddf3361be3156e0895626c12af13` |
| 93 | `def` | [toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/toembedding.md) | 582 | `declaration-track:58ba6fb65cdd49c0a412302e69bdb71565ae6d56786f7cbe3ec6fef66cdf1a5e` |
| 94 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/tohom-source-edition-2.md) | 586 | `declaration-track:3289a95f0cbb66c3c722193ae9346461cf055f973a688d8a536f3c0f60b5a89a` |
| 95 | `theorem` | [toEmbedding_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/toembedding-tohom.md) | 590 | `result-track:683d32dab2977b840fd45db45818204d1d8190ab6badefcb6fc2471d6930cd76` |
| 96 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/coe-tohom.md) | 594 | `result-track:39b1bbc0d8956ea6b4ef98cef47a808897a9506367c37bf0aa831d4a09778795` |
| 97 | `theorem` | [coe_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/coe-toembedding.md) | 598 | `result-track:4248b11b4d8e4efc7aa0a87bbedfc7f84a8fe75bf08ba073934ca17eac80f979` |
| 98 | `theorem` | [injective_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/injective-toembedding.md) | 601 | `result-track:79ccb6ac96bc8c81193c3e59d43d80ae6aeee1d423aa546ce4f1a7f94b3cdb76` |
| 99 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/coe-injective-source-edition-2.md) | 604 | `result-track:7e7966209bfa3dafb276487c9d138f0bdddc0817025afe5a1ab54d9f9bb7b292` |
| 100 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/ext.md) | 608 | `result-track:4c84ef6e38eabd7727c89ae5ac86af89f5203c2608c70a18a7b08daeca27c4a2` |
| 101 | `theorem` | [bijective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/bijective.md) | 611 | `result-track:052867fe9cc1768daed9b4ee7de0f7c769e97a0cbfeb88ba4a74c1f337476a76` |
| 102 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/injective.md) | 614 | `result-track:4c5d1a6f79930b2aeb5f1e90a8913f2e87674754452e8304394408e8296012e3` |
| 103 | `theorem` | [surjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/surjective.md) | 617 | `result-track:bf6183fd6e0c47646891e5fd7062f561d7927e32c3e79bb2e1d7d691969c2446` |
| 104 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/refl.md) | 624 | `declaration-track:0f802ebfae7beb053dca58dabb52a438fa9930ac0665d4ed2328a21a2dafb35e` |
| 105 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-9.md) | 628 | `declaration-track:a1c256bb8fa4131e2cfcbd55ccdaa212fc6490cb539d6bd4063e192b2bcea9b3` |
| 106 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/refl-apply.md) | 632 | `result-track:36104d434863fd2a82285ec55a1893e223fd547a767f7f08c6f0232ffc24a891` |
| 107 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-source-edition-3.md) | 636 | `declaration-track:cde264bfdc1f7fed4722049a552134ba7d9cd4cf072e9afb9afcd42f97951860` |
| 108 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-apply.md) | 645 | `result-track:76e246ee698e7030a8151d91d1bb55e26303860a717dc9cee02274f6b9a45ec4` |
| 109 | `theorem` | [comp_refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-refl-source-edition-2.md) | 649 | `result-track:c2c9b26e400eacfdb49918c2a6c4ab1d86b101585eb4a4dc8bc082da501307e2` |
| 110 | `theorem` | [refl_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/refl-comp-source-edition-2.md) | 653 | `result-track:c8a6f00c13ad27481767245c73c77031e89885cdfff6baf62523d85a18cdb316` |
| 111 | `theorem` | [refl_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/refl-toembedding.md) | 657 | `result-track:29587650fa7f0ce23daa72889dba023a53a852c048c065199348fa483d5c8c89` |
| 112 | `theorem` | [refl_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/refl-tohom.md) | 661 | `result-track:21646cc356a08349bbd047a1dd9ca596618d9dbcae77ca19923353274582c079` |
| 113 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-assoc-source-edition-2.md) | 665 | `result-track:60d223e1a03e4dbc6d809483091832d3b45670e92f8775ed9d49c13d37777df0` |
| 114 | `theorem` | [injective_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/injective-comp.md) | 669 | `result-track:eb556f62cd52531b690561f2e187439159662f23e825fb4b0ff246b4f3112f8e` |
| 115 | `theorem` | [comp_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-tohom.md) | 675 | `result-track:685501907d01fd2fc01621d06393d5c2110f3733a118bab82f51bd14387bd14b` |
| 116 | `theorem` | [comp_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-toembedding.md) | 680 | `result-track:3e16b27a624d1413d3b11b5b10e69d47fd04577fde640b807510d3355e007468` |
| 117 | `theorem` | [self_comp_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/self-comp-symm.md) | 685 | `result-track:13daf80b21f62e3e50570f84ad4dabfefb00089f4233ea465afb8882cf980fb5` |
| 118 | `theorem` | [symm_comp_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/symm-comp-self.md) | 689 | `result-track:4635043d334142eabbf00eabba3de5fa3d90d76ef7d868f9cb00ec639a8e827c` |
| 119 | `theorem` | [symm_comp_self_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/symm-comp-self-toembedding.md) | 693 | `result-track:435113929134e86f3e3b9321c1e2855263e526f520a1213b095f35f8caa0ddcd` |
| 120 | `theorem` | [self_comp_symm_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/self-comp-symm-toembedding.md) | 698 | `result-track:64a05a1f69b348b01f45fc63a81cb311a8e81651b909dbd67758033ceaf474a2` |
| 121 | `theorem` | [symm_comp_self_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/symm-comp-self-tohom.md) | 703 | `result-track:161af995200aefce958142362db7f4b30b23aa9b3159d8d8771f3393adedbc02` |
| 122 | `theorem` | [self_comp_symm_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/self-comp-symm-tohom.md) | 708 | `result-track:535b984858541c39534ca9097b4e06742af5193754b44e62ef604a10e3f328c2` |
| 123 | `theorem` | [comp_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-symm.md) | 713 | `result-track:68e266d7117d68053140454561fc2278b8112318a4c935334f5d1c9089fc071f` |
| 124 | `theorem` | [comp_right_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-right-injective.md) | 716 | `result-track:04b212ec51817a5a0d314aea9b3948e2dd80402179b8c27061122dbe31f0675a` |
| 125 | `theorem` | [comp_right_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/comp-right-inj.md) | 723 | `result-track:df168463396d17c143520e94b835245d9e9ca83a30eab5f8edce6a6151463e55` |
| 126 | `def` | [StrongHomClass.toEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/stronghomclass-toequiv.md) | 729 | `declaration-track:e32a8b0a5c21afd4751ee6f890682e5f273fcc86f55aa3f969594953e46277e4` |
| 127 | `instance` | [sumStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/sumstructure.md) | 738 | `declaration-track:ede9f6f71783e844b8b87cf2b0a6e04956163c85914567ae50d64d2355cf2e9c` |
| 128 | `theorem` | [funMap_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/funmap-suminl.md) | 745 | `result-track:94e64089ec27d2faa82960b42c9e363ed82e7b3c6e20660688d2a1b23169a090` |
| 129 | `theorem` | [funMap_sumInr](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/funmap-suminr.md) | 750 | `result-track:2c464a4300367c1416784bc979c71870f35b62455404643c62456451f7e4f162` |
| 130 | `theorem` | [relMap_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/relmap-suminl.md) | 755 | `result-track:dac50fd21a4bcbfd72d65e4b3487eda0576c6c90930feff6a412887afea00cf5` |
| 131 | `theorem` | [relMap_sumInr](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/relmap-suminr.md) | 760 | `result-track:0c1c24777471d8b3c88d145da645f209c6208dac04b8390b0790ab41e0557e58` |
| 132 | `def` | [emptyStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/emptystructure.md) | 775 | `declaration-track:d3aede8a51f7420e4c0953eb28283aa9eb01c537253b8704cd9ec8da040a9a62` |
| 133 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-5.md) | 777 | `declaration-track:77bc74b6abf2ed584362b15404b2eaef2a53ccebe488e5d412edee5edd2e02d2` |
| 134 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/instance-source-edition-2.md) | 783 | `declaration-track:49c0cc945288cb61bbad2f0d163dde8500f3009ef780b67bf393ba0a3f28839a` |
| 135 | `theorem` | [empty.nonempty_embedding_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/empty-nonempty-embedding-iff.md) | 788 | `result-track:febfcb0864ab03425b1521681b1ab696d1f9f25616251137afae3ce61de9ce6e` |
| 136 | `theorem` | [empty.nonempty_equiv_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/empty-nonempty-equiv-iff.md) | 794 | `result-track:db36cbaae816353a61ceed8a84fefda01b2a6d6028b451ffdf17244533c34a13` |
| 137 | `def` | [_root_.Function.emptyHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/root-function-emptyhom.md) | 803 | `declaration-track:83f4738d0ca3a329a7d2b328292ad08f789e9a64aca2bd9cf282dbea393a93c7` |
| 138 | `def` | [inducedStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/inducedstructure.md) | 821 | `declaration-track:c14d79ec715d26934b96d94f534aacd15f09f6648c0f40408a090f65793b756c` |
| 139 | `def` | [inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/inducedstructureequiv.md) | 825 | `declaration-track:bd120f051e3f19a22fdd02783eca6a16a6f176d432cf77a52bb5408e8b5b2ecf` |
| 140 | `theorem` | [toEquiv_inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/toequiv-inducedstructureequiv.md) | 833 | `result-track:305972f3a04f5904346fce699edffb116e63d20a88b4f5de70cc0a78d3d737bc` |
| 141 | `theorem` | [toFun_inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/tofun-inducedstructureequiv.md) | 838 | `result-track:6980264126542b41341b1c45ab39e99b29430758749566f7c511bc69f65d40ef` |
| 142 | `theorem` | [toFun_inducedStructureEquiv_Symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicCardEmpty.lean/declarations/tofun-inducedstructureequiv-symm.md) | 843 | `result-track:f5aa03214169a339e444e61ea0454ad696df3afa2327f01d65fc0a52e447bf18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d9665a8d809fc93a2962bf260e1299de0255c1d6d15d01c418578a76ec21f6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant3cc281b19a100dbec942d34614e773682ea1de17b3ca9f448fe0728e806a164b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant3cc281b19a100dbec942d34614e773682ea1de17b3ca9f448fe0728e806a164b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
