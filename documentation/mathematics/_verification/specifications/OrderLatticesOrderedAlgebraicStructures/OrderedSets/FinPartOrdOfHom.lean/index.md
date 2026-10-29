# Verification target: Fin Part Ord Of Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19983946167bba82dc450ed4218ab56794724ff1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Varianta853caf0dc2a9230631dcb55ec5f04bbbc8d906dd0fc739aa26b95a6d9b2370a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19983946167bba82dc450ed4218ab56794724ff1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Varianta853caf0dc2a9230631dcb55ec5f04bbbc8d906dd0fc739aa26b95a6d9b2370a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Varianta853caf0dc2a9230631dcb55ec5f04bbbc8d906dd0fc739aa26b95a6d9b2370a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FintypeCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.PartOrd` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/finpartord.md) | 29 | `declaration-track:205963c4d8365d7574c8a859603ccf7faabca8a2583064da2768e6f5818522d4` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/instance-source-edition-2.md) | 34 | `declaration-track:8d5453271f7f5e0bdd83732189c214dfbbd64e5a127eaa7025a772157e322e16` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/instance-source-edition-3.md) | 37 | `declaration-track:af53f63bb34197c0343c615da60dd2d9e560f4a1218c0f94581ccf2fbfdeaf25` |
| 4 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/of.md) | 43 | `declaration-track:f846a2033434b1c2e0f451bff79b6e9db219300e9892f980f10d522fc9fb0f97` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/instance.md) | 46 | `declaration-track:597a4070900e285d6c32a5f776a4b02755048cbe95ef75511d611ae9adf17c80` |
| 6 | `instance` | [largeCategory](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/largecategory.md) | 49 | `declaration-track:ca755e3eac4d3e17732fe2090909bf831d6a2bbee2bbfb2734c629fcfb4812be` |
| 7 | `instance` | [concreteCategory](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/concretecategory.md) | 52 | `declaration-track:b80822d209749e3144fa308503a39cff876f67a6b66d1d692b603c0d61a6133f` |
| 8 | `instance` | [hasForgetToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/hasforgettopartord.md) | 55 | `declaration-track:8dd592d065a53bcb3f6b3e3c5384a2fde0eda7e126dc175c95cbcfd0b802ed3c` |
| 9 | `instance` | [hasForgetToFintype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/hasforgettofintype.md) | 58 | `declaration-track:de1adb028cda98f2e01231a84de1f21ff0dda798edadd9b2584a651b50a36846` |
| 10 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/ofhom.md) | 63 | `declaration-track:537fb9f5753a8735cf245f17a190fe8971e0713db4ee9a9d0d3c29c2227a61ec` |
| 11 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/hom-id.md) | 68 | `result-track:10a4cecfb38ec0c6be1466cd046eebffa15129b61882ddaff506f873d5f268cc` |
| 12 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/id-apply.md) | 71 | `result-track:882fceee9b672fe200efbd78d4fe18694d50ffaf5fdd3ebde6448a69d9bfd1a0` |
| 13 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/hom-comp.md) | 75 | `result-track:b6f6aae7f636cff995811f7dc691e94b81089892b3837c8d2c6f86b25ff07817` |
| 14 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/comp-apply.md) | 79 | `result-track:d1200df44d6a0716a45fd07b5b42f9a0d4b6f03a57ac821f5cb45e5a7f51347d` |
| 15 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/hom-ext.md) | 83 | `result-track:bc6e9fa7740a07e2def12d783edb16dde5125385692e74205637c53bcb1d6990` |
| 16 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/hom-ofhom.md) | 87 | `result-track:f519a8b019f3957c777343bf5512785105747a580c3cf1922c079118c6e88473` |
| 17 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/ofhom-hom.md) | 92 | `result-track:6934a03532be3e484cbbe3c6ee5c112801e04cba6434419c10b085b4c3ec97ee` |
| 18 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/iso-mk.md) | 97 | `declaration-track:5a78f16186be059fa3997a485a498ca70a7c9162e04087228898a0b20793980a` |
| 19 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/dual.md) | 103 | `declaration-track:faf4d406c3a9d93672954d7c76f925ab0c3ef1efa0bd46ab7584520d9add0814` |
| 20 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/dualequiv.md) | 109 | `declaration-track:65deefdcd321a5e0695c9cf24cb61dcd5d05bfd49813585af981ebf8cebc301d` |
| 21 | `theorem` | [FinPartOrd_dual_comp_forget_to_partOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdOfHom.lean/declarations/finpartord-dual-comp-forget-to-partord.md) | 117 | `result-track:988c13c17008e79e5994959e0d3444de4b082357d59a0840c80493c2b288faf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b09d405f6fffa89172f8318241b6fea9cef773b0701b7d0c517bf243b9eae7a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Varianta853caf0dc2a9230631dcb55ec5f04bbbc8d906dd0fc739aa26b95a6d9b2370a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Varianta853caf0dc2a9230631dcb55ec5f04bbbc8d906dd0fc739aa26b95a6d9b2370a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
