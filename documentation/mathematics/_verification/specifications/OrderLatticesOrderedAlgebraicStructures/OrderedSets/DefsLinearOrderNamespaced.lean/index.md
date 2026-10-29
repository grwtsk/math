# Verification target: Defs Linear Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edd89bbb48df83baf6f08bf2dba9715ae3cb8968",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant6a258f4e621a4d9fbebfe6bd291a9599210f9aa86ddf3c95a17df2a1fd5a6a9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edd89bbb48df83baf6f08bf2dba9715ae3cb8968`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant6a258f4e621a4d9fbebfe6bd291a9599210f9aa86ddf3c95a17df2a1fd5a6a9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant6a258f4e621a4d9fbebfe6bd291a9599210f9aa86ddf3c95a17df2a1fd5a6a9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Classes.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Trans` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Ordering.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtendDoc` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.PartialOrder` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxDefault](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/maxdefault.md) | 38 | `declaration-track:49a108f310dc0a1c4792f9bf6b49d7b14c66d080293063e90ad4326b39d91922` |
| 2 | `def` | [minDefault](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/mindefault.md) | 42 | `declaration-track:558a0064a78e01e9ab1a340621175ce28728e2b59b7a1a8add4ad04559bf1780` |
| 3 | `macro` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/macro.md) | 54 | `declaration-track:c087ab141888e7d36fe9c0eeaa4de73e5bfd9e34f3cbdc16fa75fa21c39812f0` |
| 4 | `class` | [LinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/linearorder.md) | 61 | `declaration-track:2c9a8dea9c9df2582d90d02fa39f1c529ab5b0ad7e5d4278db8e02a6a736d4e0` |
| 5 | `lemma` | [le_total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-total.md) | 87 | `result-track:02bbaad6fab53b19b3ec01960593f8071603fd47c266d84beaeaf5cadb429f4d` |
| 6 | `lemma` | [le_of_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-of-not-ge.md) | 89 | `result-track:88dc21a6bbd975c6c40fa064d7670f3ae0ee7f194279daa4829c6803489635a5` |
| 7 | `lemma` | [le_of_not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-of-not-le.md) | 90 | `result-track:34c6e35a8883d77f97dad41b29598e28aee9e9877a584adb7ee3f7c5762da6cd` |
| 8 | `lemma` | [lt_of_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/lt-of-not-ge.md) | 91 | `result-track:1cb8efcbafc94530709046ffc56617e2d046b1b80015d1c0731aaef07015b91a` |
| 9 | `lemma` | [lt_trichotomy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/lt-trichotomy.md) | 93 | `result-track:efaa9fd74d1476442b2bd462b863ae5a48ee14b9db6ac45c8dc73cbf7c6aa5f5` |
| 10 | `lemma` | [le_of_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-of-not-lt.md) | 102 | `result-track:83a34dd385ee71ab2b6f101368e340528cad648240c92e44f921a1b0cc2c3730` |
| 11 | `lemma` | [le_of_not_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-of-not-gt.md) | 108 | `result-track:c77d8e527f58e2bfaf697324a562e4e8b4a7d43d13709f4e0be025e84ac154e6` |
| 12 | `lemma` | [lt_or_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/lt-or-le.md) | 110 | `result-track:ed7f88fdd652c16689b39d65e70a2353e25718276e50e194717d48fe7ca09804` |
| 13 | `lemma` | [le_or_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-or-lt.md) | 113 | `result-track:22c7400a86dce6162d7ab26be62086f75c8b469deae52e546869eb3344efa8a9` |
| 14 | `lemma` | [lt_or_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/lt-or-ge.md) | 114 | `result-track:e2821fe173dd917690d82365e186cbfd173db9aca72899343ab364abb0844630` |
| 15 | `lemma` | [le_or_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-or-gt.md) | 115 | `result-track:530585a102c024756f444ff467f2933c42bfa80877fa48a376e7b75b3716f987` |
| 16 | `lemma` | [lt_or_gt_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/lt-or-gt-of-ne.md) | 117 | `result-track:cfce38beb84fada55de07c6da6c8fe763602a4d7ff6b133c0fbfd7989a8a02bd` |
| 17 | `lemma` | [ne_iff_lt_or_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/ne-iff-lt-or-gt.md) | 119 | `result-track:a85813ec9f7979fe6a8fd37bcdfeb47c18df7b7c6266302be60dc85148d2bd68` |
| 18 | `lemma` | [lt_iff_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/lt-iff-not-ge.md) | 121 | `result-track:9d93326d5466640388f0c828b30f68f119900b8d9777366c8886b173c61a292e` |
| 19 | `lemma` | [not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/not-lt.md) | 123 | `result-track:9838efb55f04b975a996538e94b2e41c2ea3b9999767bc6f82dde32e99ea339d` |
| 20 | `lemma` | [not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/not-le.md) | 124 | `result-track:12cbf477fe23e580b7b370e09c4ee3b6cca0dcc2d9ec12b62ab8fe5025d572ae` |
| 21 | `lemma` | [eq_or_lt_of_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/eq-or-lt-of-not-lt.md) | 126 | `result-track:a27622b3de946a39b0cc60acf9f52925f97d384c9e0d20b356c2e735e095ca2f` |
| 22 | `def` | [ltByCases](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/ltbycases.md) | 130 | `declaration-track:713e878eaeae8e10eb3950a583c70c2cdd8f0860f373a552586fdc85eee2d4e4` |
| 23 | `theorem` | [le_imp_le_of_lt_imp_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-imp-le-of-lt-imp-lt.md) | 134 | `result-track:ef91324f1e04d97703f8698f3cad05c284d2c3b820f9d8a67c024ed98b093aac` |
| 24 | `lemma` | [min_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-def.md) | 138 | `result-track:073484831514beed4c280b4681177fccc393f7e7b702dc36c01d2a707a63b3db` |
| 25 | `lemma` | [max_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-def.md) | 139 | `result-track:1bd7cedcc30c1b2170d5f163f43d836533f6a689b428064fe277d7e1be88bb44` |
| 26 | `lemma` | [min_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-le-left.md) | 141 | `result-track:6b0e5e9a0b21e97874db85a894687d10e794c558aece63e2608b781d26aa72ce` |
| 27 | `lemma` | [min_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-le-right.md) | 146 | `result-track:502814ff2c99b6ceb6b1707235d36934ef36389e174fdb54dc052a28532e9fc4` |
| 28 | `lemma` | [le_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-min.md) | 151 | `result-track:29fd64cf819f073d4d66e53106855c38607de83a740d2589ba3bc12bfb4f150c` |
| 29 | `lemma` | [le_max_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-max-left.md) | 156 | `result-track:0535949cfe9c8f33bd1b072d04785179c6336e81782ae0ec205703b80ca3509e` |
| 30 | `lemma` | [le_max_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/le-max-right.md) | 161 | `result-track:d69015ff0db18a458ef230c1f75f72e09fb3655e665a02b17a78f87763a79b18` |
| 31 | `lemma` | [max_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-le.md) | 166 | `result-track:e7d0b0d1826e3f86a19531a21104cfa195b96f469e5304f397534b077d970de5` |
| 32 | `lemma` | [eq_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/eq-min.md) | 171 | `result-track:07c2d3e0a45b52471358e0baaa73c7e461bd919fdbab79c84b250abc183f8a67` |
| 33 | `lemma` | [min_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-comm.md) | 174 | `result-track:b20f41f86334a18b10a15d572999b2144fdccd8fe5a731e2ca17fa305cd0db73` |
| 34 | `lemma` | [min_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-assoc.md) | 177 | `result-track:fe1c059eae0102b9f386083cbbfcde0b168ac79ad40f95c96941b218453e1506` |
| 35 | `lemma` | [min_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-left-comm.md) | 187 | `result-track:cdbbf7731d0c8293fef1e0db5872ce66e836921a2488d7691b23ab9058c8b593` |
| 36 | `lemma` | [min_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-self.md) | 190 | `result-track:33b3828a2595e76eddbf659f69ccba72fd7e09ed1be87489de95c1a662a2ef13` |
| 37 | `lemma` | [min_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-eq-left.md) | 192 | `result-track:ee771c8f4a4c192a19cf580bf01525294fce7d37d5cb8f691bc6239da72ddca7` |
| 38 | `lemma` | [min_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-eq-right.md) | 195 | `result-track:ac20216506bd5bb7589d63abe732dc5a009f26696a1717ee90c825e1c6d08c14` |
| 39 | `lemma` | [eq_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/eq-max.md) | 197 | `result-track:76d6b94e54f233f0e7edb89fade6de641d0aec7d84b93ca49e47252c4e744a93` |
| 40 | `lemma` | [max_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-comm.md) | 201 | `result-track:7472f407907d5ba66addcd22acb3f73470364f157d569caa33acc88508dc03ad` |
| 41 | `lemma` | [max_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-assoc.md) | 204 | `result-track:a35c6c55e2ee45546d080fae1327d1e0cfa873bb0d526a21813b39f701340da4` |
| 42 | `lemma` | [max_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-left-comm.md) | 214 | `result-track:0bfda20215c832488abb96a9eff391a8e442838923f25357ee1bcefd1c5809bd` |
| 43 | `lemma` | [max_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-self.md) | 217 | `result-track:451aa8aed5df7434483b1fe185f8ed9657ec5a8a07d6a195216edf4e620fe234` |
| 44 | `lemma` | [max_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-eq-left.md) | 219 | `result-track:0b85cb29879c74b5f2dbf725d38ddbc3453f3ceb6fc9addc9287d73ef0a6b3a1` |
| 45 | `lemma` | [max_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-eq-right.md) | 222 | `result-track:eb76c979fa20fa45704df2de69ad5b32c00488822b6c56a681c6a3f3164bf847` |
| 46 | `lemma` | [min_eq_left_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-eq-left-of-lt.md) | 224 | `result-track:6f284f6fccd2d736001456c6f76ed6b61a471694acdfa5fd16bff89b0baef992` |
| 47 | `lemma` | [min_eq_right_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/min-eq-right-of-lt.md) | 225 | `result-track:896b4341e86b0053e69a8667077755e3f4c0c64d5bb3ff26a87942395ec7cffd` |
| 48 | `lemma` | [max_eq_left_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-eq-left-of-lt.md) | 226 | `result-track:ff52b9a4b0109cf97d01b93795d0cae6f2a635a315a65510ac4d6ca2a77583fc` |
| 49 | `lemma` | [max_eq_right_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-eq-right-of-lt.md) | 227 | `result-track:c9a21d9803845bbd2d8ee8d21aefb91efbb11f727a6959e8f6580d98c9c00806` |
| 50 | `lemma` | [lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/lt-min.md) | 229 | `result-track:125c731b973ae49fc7490ea2758b3b6bd18af0ec2c2a8b7339406776b68d2975` |
| 51 | `lemma` | [max_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/max-lt.md) | 232 | `result-track:223807becea4b3a491bbec974b59dbd63b620e3edf64bb619fae5b2b789ad5c4` |
| 52 | `lemma` | [compare_lt_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/compare-lt-iff-lt.md) | 237 | `result-track:70c016ccf640e4d836a492083d5156faafb1b1a67150b12dcf12bba762d1ae05` |
| 53 | `lemma` | [compare_gt_iff_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/compare-gt-iff-gt.md) | 241 | `result-track:2eb333967aed0415fc5c87abaa44ca45698131986882051e89b1471a509453b0` |
| 54 | `lemma` | [compare_eq_iff_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/compare-eq-iff-eq.md) | 248 | `result-track:ac243422245d4a891c90869eb99e7c6e7ed5db5890ce93214343008bd4c257bb` |
| 55 | `lemma` | [compare_le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/compare-le-iff-le.md) | 255 | `result-track:17fc493d9ff8e5f2746026334fa3f0db857ac23983ebd8c44d57d567107727a7` |
| 56 | `lemma` | [compare_ge_iff_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/compare-ge-iff-ge.md) | 261 | `result-track:1124408e1618145114eb303f96854cab9419f16fb337ab740a9f1d48633a3178` |
| 57 | `lemma` | [compare_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/compare-iff.md) | 267 | `result-track:6180e7ea67ac80dff8e22fdff583bc0e65a4a573dff50d7ca946ea89f1157535` |
| 58 | `theorem` | [cmp_eq_compare](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/cmp-eq-compare.md) | 273 | `result-track:5e521b0ce0e9f326c5e11556fd82425a24034febe30a22918fa1c6c3fa7affd8` |
| 59 | `theorem` | [cmp_eq_compareOfLessAndEq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/cmp-eq-compareoflessandeq.md) | 280 | `result-track:45892b11191a7ae40632a1a1cc29658293b8ba7889326fad5f21f4cef0236cf7` |
| 60 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderNamespaced.lean/declarations/instance.md) | 283 | `declaration-track:acc8654f5806c46b0eb060d18355531f4c200c65f8363f38c791a9f86744ffec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e1a7d88fd64fab9d24fb1b151bc87f6dfa76ec989e3966a6de7a94f6dc6828d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant6a258f4e621a4d9fbebfe6bd291a9599210f9aa86ddf3c95a17df2a1fd5a6a9f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant6a258f4e621a4d9fbebfe6bd291a9599210f9aa86ddf3c95a17df2a1fd5a6a9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
