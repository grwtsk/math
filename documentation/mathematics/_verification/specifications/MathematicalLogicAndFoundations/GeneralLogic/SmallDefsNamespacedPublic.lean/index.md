# Verification target: Small Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82726a993d9833e7295dfc237b62f97527894d08",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantcfdc09671c040da75d4f2da184ea49e40b61ced802d5e604c097654e45fbd07c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82726a993d9833e7295dfc237b62f97527894d08`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantcfdc09671c040da75d4f2da184ea49e40b61ced802d5e604c097654e45fbd07c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantcfdc09671c040da75d4f2da184ea49e40b61ced802d5e604c097654e45fbd07c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Small](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small.md) | 45 | `declaration-track:8a7a1daedca7dc5dac18189ee344a19b11a0c7190d02a4b30d8511ec6bcab130` |
| 2 | `theorem` | [Small.mk'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-mk.md) | 51 | `result-track:00de67802531078a626c50cf6db031afa5f33609749e04885175f10e55ac32fd` |
| 3 | `def` | [Shrink](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/shrink.md) | 57 | `declaration-track:ee6858a1682da090818134f16bcc394f16c442a4cdfb6c28e980c13f4537791d` |
| 4 | `def` | [equivShrink](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/equivshrink.md) | 63 | `declaration-track:9f9c03a704e141192da038d207f498671f085dc8758ac3568bfe58cb862e914b` |
| 5 | `theorem` | [Shrink.ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/shrink-ext.md) | 67 | `result-track:56b80cfb37e56a27cd4c815bc310faaedf5ec1756ee8e3f478a8ed923a69e0e0` |
| 6 | `def` | [Shrink.rec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/shrink-rec.md) | 75 | `declaration-track:ff33a174f5e8d7f109f7504ea19a84cdc222cf736a8df7d858e02071c08c2f07` |
| 7 | `lemma` | [Shrink.rec_equivShrink](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/shrink-rec-equivshrink.md) | 80 | `result-track:87a766825a2e08a1ed5065468d0a33b9270d465e019a1a083f70215a0729bfca` |
| 8 | `instance` | [small_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-self.md) | 85 | `declaration-track:5dfd09009afddd18fa85e84f1bd0fdce753d47103c5989be096cc1ece8d46ff3` |
| 9 | `theorem` | [small_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-map.md) | 88 | `result-track:32457ff5eff2cdb376a98618d2801ec21e612c2fb18cf9ede26b0ca22131ae4d` |
| 10 | `theorem` | [small_lift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-lift.md) | 92 | `result-track:44512e54a67287d9faa4dc191b305761d2b8f320b16c6f2e571f23e234d10f1d` |
| 11 | `lemma` | [small_max](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-max.md) | 99 | `result-track:26d3d682ea368e661ecb068d5e9768b131e5824feabe277c596279ed90c9da4c` |
| 12 | `instance` | [small_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-zero.md) | 102 | `declaration-track:12573444e3d9101cfd26e77700bd990589e90b8fc211160f629aae2ac0200586` |
| 13 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 104 | `declaration-track:e46345a9a116ad870323ea073dd7554d684c2e5abe07613572d84e7c7798a337` |
| 14 | `instance` | [small_ulift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-ulift.md) | 107 | `declaration-track:3f3f350664e7cecd854d3551ae481a0dc409f7a5a1c6e7f738efbb3d051ba5fb` |
| 15 | `instance` | [small_plift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-plift.md) | 110 | `declaration-track:2eb2196c25c586730d988e45c2deb5a3c09d8f428831cdfa972ec31d4d75c7eb` |
| 16 | `theorem` | [small_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-type.md) | 113 | `result-track:902780dd30cea051bca5fd8c060f73af0a844568c049f2fc85cc05561676e588` |
| 17 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/instance.md) | 116 | `declaration-track:dd37051eaf0f3eb12a63e7ce18205ec88e055ac6a864a890875db399cfcda23c` |
| 18 | `theorem` | [small_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-congr.md) | 121 | `result-track:fd476965a5bddf5fbf3ca6b12899f86aa6c3c7c73f7d03567552e89dabeb19fc` |
| 19 | `instance` | [small_sigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/small-sigma.md) | 124 | `declaration-track:427e2e699588025d7654e5d77e2a5d4a0c00567224ef06e09e63d3af9469a6d7` |
| 20 | `theorem` | [not_small_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallDefsNamespacedPublic.lean/declarations/not-small-type.md) | 129 | `result-track:43c85306a9992b16f350ce8f4120fd2ad3712bc7948ca4c37c56011aa5b25e29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c81ac40a516d5017ec459825a0ba50acdafcd282566b1e345229a8cb5a8faf89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantcfdc09671c040da75d4f2da184ea49e40b61ced802d5e604c097654e45fbd07c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantcfdc09671c040da75d4f2da184ea49e40b61ced802d5e604c097654e45fbd07c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
