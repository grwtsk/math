# Verification target: Cone Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdccfc039595c1a9730c258e69cfb2a521b65efa",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2e7cfb8e0d8538860bf995c656b1b5c67507f828ef5a3be14dc999fe1d50a1ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdccfc039595c1a9730c258e69cfb2a521b65efa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2e7cfb8e0d8538860bf995c656b1b5c67507f828ef5a3be14dc999fe1d50a1ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2e7cfb8e0d8538860bf995c656b1b5c67507f828ef5a3be14dc999fe1d50a1ae.lean.json)

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
| 1 | `class` | [AddGroupConeClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/addgroupconeclass.md) | 25 | `declaration-track:34492fdcea65fa1958bc9bc58364e5ae594ff897950d364c7b9ad3191245e5f7` |
| 2 | `class` | [GroupConeClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/groupconeclass.md) | 31 | `declaration-track:303cfb670475e3b8db3a7cf2c447d4ff4faf01c6fa312befe2266cf03bf3818d` |
| 3 | `structure` | [AddGroupCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/addgroupcone.md) | 42 | `declaration-track:d41bd2fc43d9ebfe870a9eb5db7dcca9421d5e7b47cf84c9887ae2b2fac6ab76` |
| 4 | `structure` | [GroupCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/groupcone.md) | 50 | `declaration-track:af3e4e1fea31f38c834bca1d967defa01d3440f0528d539974e00d1fb1ae0f6a` |
| 5 | `instance` | [GroupCone.instSetLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/groupcone-instsetlike.md) | 54 | `declaration-track:dff8e785e076904322100861cdb0f20045a696121f617544117154fe6374bb30` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/instance.md) | 59 | `declaration-track:2317b7d58be3bc8948bc16251c273a34ecc257789dc732c644ebb0cd90a8e6b5` |
| 7 | `instance` | [GroupCone.instGroupConeClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/groupcone-instgroupconeclass.md) | 62 | `declaration-track:1764fa68881d6f10bf0533a97b393c6151ed8e119767bb6bcf426f8452d147d2` |
| 8 | `def` | [oneLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/onele.md) | 77 | `declaration-track:b103469c280226db90f360a72b277f528b19692702d5318ea626ea6b047ea7a4` |
| 9 | `lemma` | [oneLE_toSubmonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/onele-tosubmonoid.md) | 82 | `result-track:6df6776e34ce34805a820c0aedeaa7a6d491e88eacaf376a031e50f0673ff013` |
| 10 | `lemma` | [mem_oneLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/mem-onele.md) | 84 | `result-track:ee2a26af13861c4685540b900108b6a7837c15716da82c7ad4c9ba2e35d56965` |
| 11 | `lemma` | [coe_oneLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/coe-onele.md) | 86 | `result-track:6a102bbc22ff23a62736f24859a56c0caecdccecfd525439a9f7a4bf5ae23b5c` |
| 12 | `instance` | [oneLE.hasMemOrInvMem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/onele-hasmemorinvmem.md) | 89 | `declaration-track:54d82d7db3f3ad8e07b5cb890bf2e989d7731b14c7231405f2be2018b3e50b95` |
| 13 | `abbrev` | [PartialOrder.mkOfGroupCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/partialorder-mkofgroupcone.md) | 99 | `declaration-track:338ad5fd4360af98fce279795d50c6f8488ad34dbe9deb788cc70418d65c661a` |
| 14 | `lemma` | [PartialOrder.mkOfGroupCone_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/partialorder-mkofgroupcone-le-iff.md) | 107 | `result-track:2fd6ad008f3e96a7b2884df297b82638c50eb9e84482b95534699e4bd28bb147` |
| 15 | `abbrev` | [LinearOrder.mkOfGroupCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/linearorder-mkofgroupcone.md) | 113 | `declaration-track:1fed0805db7552490324063110d02f9b37946b8e1981cd3ddbe32d496ca65aaa` |
| 16 | `lemma` | [IsOrderedMonoid.mkOfCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConePublic.lean/declarations/isorderedmonoid-mkofcone.md) | 122 | `result-track:ebdcf18de5687a147c06468a576f9a9c57dce76fee479cbc06af76da1e6a2c5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e04ab02613330d0429b9ec52900c419026d9845d75f97635f7e56cf78fe05709 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2e7cfb8e0d8538860bf995c656b1b5c67507f828ef5a3be14dc999fe1d50a1ae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2e7cfb8e0d8538860bf995c656b1b5c67507f828ef5a3be14dc999fe1d50a1ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
