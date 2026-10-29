# Verification target: Atoms Namespaced Bot Covby Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb2be85d80a96aaf07ed1ca45de2ad6845a80f1c",
  "lexical_observation_count": 122,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantfaa5c48272b8783db2e287668b42ed4b3b6e7a74717c8767466ae9e6bb2f3d8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb2be85d80a96aaf07ed1ca45de2ad6845a80f1c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantfaa5c48272b8783db2e287668b42ed4b3b6e7a74717c8767466ae9e6bb2f3d8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantfaa5c48272b8783db2e287668b42ed4b3b6e7a74717c8767466ae9e6bb2f3d8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ModularLattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAtom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom.md) | 74 | `declaration-track:ddb15cff3018cbd1f687d6f361ed257cee002ed55d11a400359c34b4d6c96de2` |
| 2 | `theorem` | [IsAtom.Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iic.md) | 78 | `result-track:ecd0abe48779a7a5da511ee99496ef0307aea5c0f7df8efb63c0a918f0b64515` |
| 3 | `theorem` | [IsAtom.of_isAtom_coe_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-of-isatom-coe-iic.md) | 82 | `result-track:60a47412740c5258ce1628f52419762b5c155b8977d661a18ba2f5d61c12bef1` |
| 4 | `theorem` | [isAtom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff.md) | 87 | `result-track:087d9b6272968a45d42033876e1495a147abe717eda043308ca4535de1eab82b` |
| 5 | `theorem` | [IsAtom.lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-lt-iff.md) | 98 | `result-track:cc77b7df78d555d5617d835b763e01af417559dbba288eac7894336e0f0569a5` |
| 6 | `theorem` | [IsAtom.le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-le-iff.md) | 102 | `result-track:943135226fe3081965e4e99dc1ad8b5b642436f52a48d73615d3770621b6ccb8` |
| 7 | `theorem` | [IsAtom.Iic_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iic-eq.md) | 105 | `result-track:b4fc691ea7d3a244c1e20332763fd7d027461603467ede21ad977cb7c8026b1e` |
| 8 | `theorem` | [bot_covby_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/bot-covby-iff.md) | 110 | `result-track:8e0eb513e95328346051d192c63073e21ac0354b13bf923441f060755dc102dc` |
| 9 | `theorem` | [atom_le_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/atom-le-isup.md) | 120 | `result-track:44041593f3774eb2bee64e87ae101189f367d8278fc0981022ab82e001634ca8` |
| 10 | `def` | [IsCoatom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom.md) | 143 | `declaration-track:72413166cac7c39bd66b80db2edbd71a51ab05c2807cbe3cbb495aea1539cbbf` |
| 11 | `theorem` | [isCoatom_dual_iff_isAtom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-dual-iff-isatom.md) | 148 | `result-track:69bc69cdc4280120bdcb46c52b97e038b5e774fb45f5e523373c10d0acda342c` |
| 12 | `theorem` | [isAtom_dual_iff_isCoatom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-dual-iff-iscoatom.md) | 154 | `result-track:72f1e50ee834e28dd4b49d3613bd129e3b3f843d1da821301304ef4cf363b742` |
| 13 | `theorem` | [IsCoatom.Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-ici.md) | 167 | `result-track:a763b38abedff8d14090e03cf1b3ba885cbc647203228cdb071eb03caa72583d` |
| 14 | `theorem` | [IsCoatom.of_isCoatom_coe_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-of-iscoatom-coe-ici.md) | 171 | `result-track:c908ab4fd090cf8d3c6f3f7dcd8ba958a4c0033c435197bef34cdc28da0f71d4` |
| 15 | `theorem` | [isCoatom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-iff-source-edition-2.md) | 175 | `result-track:2b1b4c41182cb935c0e8a8660180f5104e159cc2edb78b233c18da45b60a96d0` |
| 16 | `theorem` | [IsCoatom.lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-lt-iff.md) | 185 | `result-track:3cf30f6784d8b8046636cbbd69fd04242ef632bc07235f4e4755e28bcb11e844` |
| 17 | `theorem` | [IsCoatom.le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-le-iff.md) | 189 | `result-track:8485f9b5d3f3564c76049dc1c15c1b052d8a90bf8acc0157e43438ece2c1c3d1` |
| 18 | `theorem` | [IsCoatom.Ici_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-ici-eq.md) | 193 | `result-track:8b3b76cf8cb147e605f5a5f819240a030ec9ba1acbb6c10b012bcaf5045263c7` |
| 19 | `theorem` | [covby_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/covby-top-iff.md) | 198 | `result-track:5d4527d3879632230eecf210d1deb3edf2aa2e1c546d4d871b18c1edef4fa110` |
| 20 | `theorem` | [iInf_le_coatom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iinf-le-coatom.md) | 208 | `result-track:fb9d6b215128085f2325b3169dd152f85705bed35a97dde4efc35e68ffd9baad` |
| 21 | `theorem` | [Set.Ici.isAtom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/set-ici-isatom-iff.md) | 219 | `result-track:cc7935e52d441fe158a109616b9d8a067613f78f7c2ce287e8797aad706b543a` |
| 22 | `theorem` | [Set.Iic.isCoatom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/set-iic-iscoatom-iff.md) | 226 | `result-track:22b9335d15990676dd722a71cd7a776e9f6f16f30a33f4cb5dc569c2874a700f` |
| 23 | `theorem` | [covby_iff_atom_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/covby-iff-atom-ici.md) | 232 | `result-track:e9417d08d6b2b2756e63f3f5d35f30c4cb16c75d1235eb8b97944ce393a47e41` |
| 24 | `theorem` | [covby_iff_coatom_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/covby-iff-coatom-iic.md) | 235 | `result-track:4c40a12c08ae144e118a0a66515e1c12e7ef7880d5913367fb5275458c5cf914` |
| 25 | `theorem` | [IsAtom.inf_eq_bot_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-inf-eq-bot-of-ne.md) | 242 | `result-track:1282b29b082eb2dbef2a5f994060dfed3676ea6021c379fe33083ed2c322a46e` |
| 26 | `theorem` | [IsAtom.disjoint_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-disjoint-of-ne.md) | 247 | `result-track:0a221e94237aef6aff3538823ee894d418f09c768b8fb824e53bff48e547d4a5` |
| 27 | `theorem` | [IsCoatom.sup_eq_top_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-sup-eq-top-of-ne.md) | 252 | `result-track:cc477b75a8096f4ab0a3caa259407f8cad27b57a20cfae00c3d3e05e855b8636` |
| 28 | `class` | [IsAtomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomic-source-edition-2.md) | 267 | `declaration-track:f867af1e96396f93ff46c114f70320748f8a70df334ba73de45c2acc7a6fd263` |
| 29 | `class` | [IsCoatomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomic-source-edition-3.md) | 275 | `declaration-track:f59b795ac8b7393e71a1e1703c0d9d9bf57a827eaf93ff863391f2bd54888f4e` |
| 30 | `theorem` | [isCoatomic_dual_iff_isAtomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomic-dual-iff-isatomic.md) | 288 | `result-track:2261d6de8bf863e2982a5a8807d72ab474b47c88f9c13baac63d03111cbe8d9e` |
| 31 | `theorem` | [isAtomic_dual_iff_isCoatomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomic-dual-iff-iscoatomic.md) | 294 | `result-track:cf4cad9929d4f54a4961356266b5a7304b05b3df99c3f0bf761b7fb2943ebe25` |
| 32 | `instance` | [isCoatomic_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomic-dual.md) | 303 | `declaration-track:6d839641eec6ef612cfd059ab8631838e9289091a01e214ccbe1d255cffa6deb` |
| 33 | `instance` | [Set.Iic.isAtomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/set-iic-isatomic.md) | 307 | `declaration-track:ab00a854337a277a2e3bffdea3c8b86d1444d788c85a51913f12e555d4b81bb7` |
| 34 | `instance` | [isCoatomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomic.md) | 319 | `declaration-track:6e65db8477b2a5817a90836d1c1d95cdb40d29bcf2b79ccbfbaa472a98ede410` |
| 35 | `instance` | [Set.Ici.isCoatomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/set-ici-iscoatomic.md) | 323 | `declaration-track:b9941947318d5b37c0f135e8872ea6bf285fbaf7bbc61f32731cc78be58c6570` |
| 36 | `theorem` | [isAtomic_iff_forall_isAtomic_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomic-iff-forall-isatomic-iic.md) | 331 | `result-track:9861b475eeeffbc8b007574b189a06d3d3f5988de80d96503e6b8c99c4ce5ef2` |
| 37 | `theorem` | [isCoatomic_iff_forall_isCoatomic_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomic-iff-forall-iscoatomic-ici.md) | 339 | `result-track:aae78e18f6a0ed744fd596c75036b9a8fe02bda4646d35e02a67dc34ba0914b8` |
| 38 | `theorem` | [isAtomic_of_orderBot_wellFounded_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomic-of-orderbot-wellfounded-lt.md) | 348 | `result-track:34d636ba9d0d31799a50975b16f5b686035956f3812b42b0496d4377bb9fb73f` |
| 39 | `theorem` | [isCoatomic_of_orderTop_gt_wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomic-of-ordertop-gt-wellfounded.md) | 356 | `result-track:c70303287db6d667066d5a82bfd29188907c6156ca300a93a8ca4eb0472fa69a` |
| 40 | `theorem` | [le_iff_atom_le_imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/le-iff-atom-le-imp.md) | 365 | `result-track:7a84779c2872460d53ed66a574abd62f493eb440b357ac2e5f4aaa718d516172` |
| 41 | `theorem` | [eq_iff_atom_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/eq-iff-atom-le-iff.md) | 376 | `result-track:5bea3148c72df82b30f6ded7b534c981bde54290aa650121416fc1c16358d3fc` |
| 42 | `abbrev` | [toCompleteAtomicBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/tocompleteatomicbooleanalgebra.md) | 387 | `declaration-track:eb7fe3ad39bb3ecadcd1084668ede4ff7a7e5c31ead8147c849b202d526783b6` |
| 43 | `class` | [IsAtomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomistic-source-edition-2.md) | 403 | `declaration-track:fcdb9dbc25f8f4b9501c03a0c784f6094a9a94822ac74c25ba41583da3b1c644` |
| 44 | `class` | [IsCoatomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomistic.md) | 410 | `declaration-track:57bfcb1215f9ba23d72e46d5610ec984e6b98e60ae3a04a36505a219940f345b` |
| 45 | `theorem` | [isCoatomistic_dual_iff_isAtomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomistic-dual-iff-isatomistic.md) | 423 | `result-track:03faf9064c899c5d1226b2f76201c69b46d0081aca59a140f53e93a8bd98f136` |
| 46 | `theorem` | [isAtomistic_dual_iff_isCoatomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomistic-dual-iff-iscoatomistic.md) | 428 | `result-track:94115c9604cccf929b9d346c63786f39918a3e461994b98462d046b013fee12f` |
| 47 | `instance` | [isCoatomistic_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomistic-dual.md) | 434 | `declaration-track:2bccaa86fd17df0ad1eb1a9eee8c590772373dc862304b1070e5919feb2e2035` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-9.md) | 440 | `declaration-track:e70bf24e08dc2c5d8d5637cc307822f9f891e2eeac4f5b23e81846d182226b81` |
| 49 | `theorem` | [sSup_atoms_le_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/ssup-atoms-le-eq.md) | 454 | `result-track:00dc1f0af9d5f0b3477f3641d544bf7a906dd48c13248bf527a89aad253be939` |
| 50 | `theorem` | [sSup_atoms_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/ssup-atoms-eq-top.md) | 460 | `result-track:20fdc032c0f9a760b0b1c0184d98c22d2540ac793172986127cf36a9921a91e4` |
| 51 | `theorem` | [le_iff_atom_le_imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/le-iff-atom-le-imp-source-edition-2.md) | 465 | `result-track:7ff033ff32808be63ce5ca79023b8297237e77049444fd4eb088fa2ec5da35c7` |
| 52 | `theorem` | [eq_iff_atom_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/eq-iff-atom-le-iff-source-edition-2.md) | 471 | `result-track:fca52d5dbad16c7d159f22c2996986bf49ff62cde68512fb3a2379b067b683c9` |
| 53 | `instance` | [isAtomistic_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomistic-dual.md) | 480 | `declaration-track:330ccba079cc7bea59ccee06266cace881275c69481624d2ee9ab17f62bfc84d` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-4.md) | 486 | `declaration-track:6930da2ec9bcc8746dfb8430950c0f01694e31018758227b74ea72e3f5bca5b3` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-5.md) | 497 | `declaration-track:a96838432c7c1feba956d8553b37a016c769e8d0558309752b0f5673261052e2` |
| 56 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-6.md) | 512 | `declaration-track:ab93765cc2fa8bef778fa66822de7d32367a5f83813604384addfe948ab4e65c` |
| 57 | `class` | [IsSimpleOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder.md) | 520 | `declaration-track:904040053ff0e24021df0e6a18bda56fedcd2ac9ffb2c3792ccfe451be9d156d` |
| 58 | `theorem` | [isSimpleOrder_iff_isSimpleOrder_orderDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-iff-issimpleorder-orderdual.md) | 527 | `result-track:57f1229f0b622d7971231bc71d142931019974fdff9f60e8fd03836c9d4d6c2f` |
| 59 | `theorem` | [IsSimpleOrder.bot_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-bot-ne-top.md) | 538 | `result-track:1da7b731dc8f31b1ee6f8a442d487aebfd56cede7a778ea2207b41cc20514d22` |
| 60 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-12.md) | 548 | `declaration-track:fed13442fea98048de436b9b754cb59e57d1bd125487a46c036bc32fcfa1dc99` |
| 61 | `def` | [IsSimpleOrder.preorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-preorder.md) | 552 | `declaration-track:fb756cb68967bd7a4b0326cc41fe82214f239006936ea5ceb310cc1e8fb4311c` |
| 62 | `def` | [IsSimpleOrder.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-linearorder.md) | 566 | `declaration-track:93e2134dafcd9027c17c29b46f3984ec5c0cdcf9f16157f2f6c494f0c44e79da` |
| 63 | `theorem` | [isAtom_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-top.md) | 580 | `result-track:1e18687c40a663976f75e25171696b14b1f39f23e4fbfb67453dc718965ee96e` |
| 64 | `theorem` | [isCoatom_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-bot.md) | 585 | `result-track:dc0c5a8c8c88b06d154325a720a468964dde272789ac3744db4ef08a92b60f86` |
| 65 | `theorem` | [bot_covby_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/bot-covby-top.md) | 589 | `result-track:4be80dcd8769c426fa2fea1b53dc0f9ef422dd29f0be06e43814072a79901849` |
| 66 | `theorem` | [eq_bot_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/eq-bot-of-lt.md) | 601 | `result-track:949b086210b9e115b7a3a98bbf523d890fca032165cc1eb66a53362917a131cb` |
| 67 | `theorem` | [eq_top_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/eq-top-of-lt.md) | 605 | `result-track:69d98bcba34bdaebdb0aed226f55b4f5107173d0c376ed4c62fbc048afd49639` |
| 68 | `def` | [lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/lattice.md) | 621 | `declaration-track:291d68793684c8c09a2032e036e39acdf11d279e08425a0090a62aeb389246d5` |
| 69 | `def` | [distribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/distriblattice.md) | 628 | `declaration-track:5b6eea76aab745e70cf1091903e17f34d43654df005391dea160b699fddf89c8` |
| 70 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance.md) | 634 | `declaration-track:15c296afee628a2cddb715e6f09586a20fa531748b3838f77e11464665bfbce6` |
| 71 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-7.md) | 638 | `declaration-track:dcf83e1b951cbaf00b82a1f7bfecf36f0ced2745debcd557d7f069feb7697377` |
| 72 | `def` | [equivBool](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/equivbool.md) | 650 | `declaration-track:45dc7a44d069941ccb5b48990171724af2304497bf9919fff215704726280740` |
| 73 | `def` | [orderIsoBool](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/orderisobool.md) | 661 | `declaration-track:3d39c38a9ac28c5aa127ddd89903897360622bbe010e91534ae79d89e337fb41` |
| 74 | `def` | [booleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/booleanalgebra.md) | 672 | `declaration-track:7487ea9831856cec2a61679d5341af5edc8049bc5d0227934853b173f576ffa6` |
| 75 | `def` | [completeLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/completelattice.md) | 693 | `declaration-track:7bae1d77a6572ca54ed8f794b57382ad8a99647f5169bb3b930222eb69882fa2` |
| 76 | `def` | [completeBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/completebooleanalgebra.md) | 721 | `declaration-track:69fe490d936940fef97af56081abb2f69016d9f93fc8f13d2e637c76cfbcdb7e` |
| 77 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-11.md) | 744 | `declaration-track:ef8dfcce3849b5f35e60816e6872c875b2c4f86a481f9a0174fd3a5bd2d5966b` |
| 78 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-2.md) | 752 | `declaration-track:1b13ae8c125c60c14cea66db95b1e95e9a2b622d57bd5e7425b753b2020f479a` |
| 79 | `theorem` | [isSimpleOrder_iff_isAtom_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-iff-isatom-top.md) | 757 | `result-track:a4171c5a21419ad99effb6afa906c7a1a692660f4498947d2b73a2b10a34f6a7` |
| 80 | `theorem` | [isSimpleOrder_iff_isCoatom_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-iff-iscoatom-bot.md) | 764 | `result-track:56be79b29950ad65f0b44d3024e50778096e85f19b5eeb27231997f74423c08d` |
| 81 | `theorem` | [isSimpleOrder_Iic_iff_isAtom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-iic-iff-isatom.md) | 771 | `result-track:49313cd713cecd24e3f42546bddb61c30999cce20f0921843037292bf14bc8c0` |
| 82 | `theorem` | [isSimpleOrder_Ici_iff_isCoatom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-ici-iff-iscoatom.md) | 779 | `result-track:baa33d95b59fda65be20872e211c1182e61d6e96c5e47dacfa8d18ac3a3686a8` |
| 83 | `theorem` | [isAtom_of_map_bot_of_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-of-map-bot-of-image.md) | 793 | `result-track:709408ecd0b9513e51b98a7736f8a8f3127fa87e86e6e57d98e1741e26bf9406` |
| 84 | `theorem` | [isCoatom_of_map_top_of_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-of-map-top-of-image.md) | 799 | `result-track:8101a5ca062692e056ba3d5dfeb5fd45567f4ccf21a874d67ecd096eb91e4694` |
| 85 | `theorem` | [isAtom_of_u_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-of-u-bot.md) | 810 | `result-track:9d935a4b76f95c941838de22c23433e2557bfdc19dff34e082c1e641bfc1eaab` |
| 86 | `theorem` | [isAtom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff-source-edition-4.md) | 816 | `result-track:76881d23d9136faabee8f6f6a7139eb546975e7966e94dc4212754eefe6ca2a7` |
| 87 | `theorem` | [isAtom_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff-source-edition-7.md) | 832 | `result-track:969586c6efaa12f999b1e1eb169ac2757eb8cb27f42e063ecbfbaaf360a6ad0f` |
| 88 | `theorem` | [isCoatom_of_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-of-image.md) | 837 | `result-track:2211076b5716f4e2359fe849f928572c6f41af5be69414f256ef2dc384284ed7` |
| 89 | `theorem` | [isCoatom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-iff-source-edition-3.md) | 843 | `result-track:9edb416c210599cd727642b1541133fed9356f614ee439d925eabead458d714c` |
| 90 | `theorem` | [isCoatom_of_l_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-of-l-top.md) | 862 | `result-track:53ed25092b48211eb80494bd15d1b34b8e75ecc9cf123ea23bcca3fe10cb6662` |
| 91 | `theorem` | [isCoatom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-iff-source-edition-6.md) | 867 | `result-track:d8b9ed265ae2584f1e370a5bf8a6e40f75ab260cd7e24f349c916753f63da3d3` |
| 92 | `theorem` | [isCoatom_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-iff-source-edition-4.md) | 873 | `result-track:bb78441bf423096bd66d930e28eeb6758a07b6339f20f988ebdd855a232db47a` |
| 93 | `theorem` | [isAtom_of_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-of-image.md) | 879 | `result-track:8eda1715f059e1fd60ad083cd305b75cc0c2f64e3b86094e949a9086ecd80447` |
| 94 | `theorem` | [isAtom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff-source-edition-2.md) | 884 | `result-track:0d94ae64780755fa7a9ee24c4e891f27b2b4c8391b347b9f63be1fecd66edfd3` |
| 95 | `theorem` | [isAtom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff-source-edition-5.md) | 897 | `result-track:78b385d27129f3a9b7a13a56c6d1818384ce43c3966a1bfc3948d09c7960ddc5` |
| 96 | `theorem` | [isCoatom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-iff-source-edition-7.md) | 903 | `result-track:e965ba06215a85b42b67c8d6dfe1f5633055c701e676b1ec231b7fe26dd2fa3f` |
| 97 | `theorem` | [isSimpleOrder_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-iff.md) | 908 | `result-track:1cdbf66f3beceeaa799561d9277bc645a384b3af40f363de38d79f8164c8d8f3` |
| 98 | `theorem` | [isSimpleOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/issimpleorder-source-edition-2.md) | 914 | `result-track:ddbae414f5c60e2b4973d323159672b7e38dfcc3a7997e2b8cf6cb8628c40762` |
| 99 | `theorem` | [isAtomic_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomic-iff.md) | 919 | `result-track:59d9485dae11710643673129b9998bbb206f9de25d9c6c17a9ce8b1c0699e275` |
| 100 | `theorem` | [isCoatomic_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomic-iff.md) | 925 | `result-track:829bbcf1d2f2dc5e10aaf2bb7bda21660e8df848060fcb539666914406e70d95` |
| 101 | `theorem` | [isAtom_iff_isCoatom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff-iscoatom.md) | 940 | `result-track:b426d0a697ad9c4d375a698d5d8152cd21623e919fa824157b855898af686eb4` |
| 102 | `theorem` | [isCoatom_iff_isAtom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-iff-isatom.md) | 945 | `result-track:819b959f2ac04b3a175989242fe08cae7e6d4b15d4bcb408e1bfff3055593a62` |
| 103 | `theorem` | [isCoatomic_of_isAtomic_of_complementedLattice_of_isModular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomic-of-isatomic-of-complementedlattice-of-ismodular.md) | 953 | `result-track:a38f7c4c13cf88afd54f4871bddb27dca63a4559e7ae4957a298cff09097623c` |
| 104 | `theorem` | [isAtomic_of_isCoatomic_of_complementedLattice_of_isModular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomic-of-iscoatomic-of-complementedlattice-of-ismodular.md) | 967 | `result-track:bd73cae4fa1def222e74f677390cd6fbb7c182b35abfa788c231ca408b8373da` |
| 105 | `theorem` | [isAtomic_iff_isCoatomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomic-iff-iscoatomic.md) | 972 | `result-track:de33cb9265a7220d6cdba2f44d37654d89a4e3437eb5849c27bec5295c3bbdc7` |
| 106 | `theorem` | [isAtom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff-source-edition-8.md) | 981 | `result-track:cb9e93f406caf6a6d5979bdb0b010992273430cc9ec5cdd273f9cbd006094405` |
| 107 | `theorem` | [isCoatom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-iff-source-edition-5.md) | 984 | `result-track:cf1d458b8630ba049cf1ca90b99b141feb63039180d2a2e75f019528c8513d98` |
| 108 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-3.md) | 987 | `declaration-track:678a424bcee4f7b4b9a39967cc5f3c85e826c390099d0f5beb40562ed7b2b3af` |
| 109 | `theorem` | [eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/eq-bot-iff.md) | 996 | `result-track:945d82c65987d07cf0df4cb2a3168f75fbdaf81da2238172821d52c48ec9ee12` |
| 110 | `theorem` | [isAtom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff-source-edition-6.md) | 999 | `result-track:964975f265a5c9cf1954b34a12375a0c957fbc6a775a22aeef5fd871cfcd8da4` |
| 111 | `theorem` | [isAtom_single](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-single.md) | 1028 | `result-track:fa0edea48e143c061ad0355dbf0f9a396b77ca152a93356ddfac60140b006cf7` |
| 112 | `theorem` | [isAtom_iff_eq_single](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff-eq-single.md) | 1032 | `result-track:5eaf47676336768b6db1304b5744a38520d99c48896cb0c0a9522d2f0e97f2fd` |
| 113 | `instance` | [isAtomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomic.md) | 1045 | `declaration-track:1836948d9969a87b1873b950315935364ba00c96ad34f3782eb6debdb2265f1d` |
| 114 | `instance` | [isCoatomic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomic-source-edition-2.md) | 1053 | `declaration-track:ef7fa0a877fa3abf09d633a51356a7ac1f55e76b3f833a92e105b983e37d74e3` |
| 115 | `instance` | [isAtomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatomistic.md) | 1058 | `declaration-track:3b73e9810b9f8be1365041f357b1c1c2ba32e73f945ecf7f030c051f52dad057` |
| 116 | `instance` | [isCoatomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatomistic-source-edition-2.md) | 1080 | `declaration-track:7251e76c55ae2a811cec066bde1180b4b50d1d7b9725b07378b1ffc70af230aa` |
| 117 | `theorem` | [isAtom_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-singleton.md) | 1089 | `result-track:73ff7e42dcd40fc73065153f7f5c4da1197d8c153d726de2f75113a2f725622e` |
| 118 | `theorem` | [isAtom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/isatom-iff-source-edition-3.md) | 1093 | `result-track:37d853dc3a0747ee7f35380113fa57c6aa1c1eb384d2f1ee86c404b3a91ca057` |
| 119 | `theorem` | [isCoatom_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-iff.md) | 1105 | `result-track:0af7faaddec3595724c42c968f38cce6279800a4922a0f3055c450fc6b0ca7ba` |
| 120 | `theorem` | [isCoatom_singleton_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/iscoatom-singleton-compl.md) | 1110 | `result-track:e146124f9a7c4103e9c7598664a5bd285c6d66c7a5c853b98a85342633d0f42e` |
| 121 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-10.md) | 1114 | `declaration-track:eaa10a0353bcabdb032c1ec67471abb5484f15b3a1985bd05f1d88f658b1af47` |
| 122 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AtomsNamespacedBotCovbyIff.lean/declarations/instance-source-edition-8.md) | 1120 | `declaration-track:e100172170a50eafd8de333f04ebe22e49d690f1a3b7eb53ea715228537a8bcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=888e5f10a8c08ec3282902b97c910768b267ff78e41b962aeff0f92966e3c3a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantfaa5c48272b8783db2e287668b42ed4b3b6e7a74717c8767466ae9e6bb2f3d8a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variantfaa5c48272b8783db2e287668b42ed4b3b6e7a74717c8767466ae9e6bb2f3d8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
