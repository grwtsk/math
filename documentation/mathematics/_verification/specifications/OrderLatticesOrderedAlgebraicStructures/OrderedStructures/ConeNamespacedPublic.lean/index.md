# Verification target: Cone Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "231d5415f47c40f43c14fc93e520accbc914f2dd",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant4d4c2504f1c8723c6e50d6da0c8dd81aa363bb1c04f1b3a087ffee335324a9cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `231d5415f47c40f43c14fc93e520accbc914f2dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant4d4c2504f1c8723c6e50d6da0c8dd81aa363bb1c04f1b3a087ffee335324a9cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant4d4c2504f1c8723c6e50d6da0c8dd81aa363bb1c04f1b3a087ffee335324a9cf.lean.json)

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
| 1 | `class` | [AddGroupConeClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/addgroupconeclass.md) | 33 | `declaration-track:ae6264e39f4010b7216551a6b35f0313011a9ab3185dc833c8551072cc8e5228` |
| 2 | `class` | [GroupConeClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/groupconeclass.md) | 39 | `declaration-track:ba1d3b351aca92a74b50a0c41b9057b9dce6d91da0477ae4f7a7515418b0838b` |
| 3 | `structure` | [AddGroupCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/addgroupcone.md) | 50 | `declaration-track:0938e322f9683f534255f0b5fb3c4f796700b14caaaba3b23313fbed7b81f95d` |
| 4 | `structure` | [GroupCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/groupcone.md) | 58 | `declaration-track:8b12b72d54792da8d249597293ee8707e578f2e1990ac22748c4667f0b2edece` |
| 5 | `instance` | [GroupCone.instSetLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/groupcone-instsetlike.md) | 62 | `declaration-track:41cdf189567f3e6c2df470d1a6d88dd291b986054aa454be08bb22c990932190` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/instance.md) | 67 | `declaration-track:26c23587c951397aefaa04c60350eaf85001449c38bd2446634066b60be920bc` |
| 7 | `instance` | [GroupCone.instGroupConeClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/groupcone-instgroupconeclass.md) | 70 | `declaration-track:7def947e58f6dcb6b3cddee9ac22ddd5f9075cfc949067b38719c8820d6f6ba1` |
| 8 | `def` | [oneLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/onele.md) | 85 | `declaration-track:2d1aa4054975dedc6969d510ad4326e556e40eafed429e0141812369f42f82bb` |
| 9 | `lemma` | [oneLE_toSubmonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/onele-tosubmonoid.md) | 90 | `result-track:15ae8977bf3b035c22c81119aa210f550421797780a102d6ddad4d15952f30e6` |
| 10 | `lemma` | [mem_oneLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/mem-onele.md) | 92 | `result-track:d66de1b98c43f3c26167ced3589714f7264f8d97d51cba4eaafb83f485262ecd` |
| 11 | `lemma` | [coe_oneLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/coe-onele.md) | 94 | `result-track:3de7d82ba2423890b8df8b82575d240528217bc3bbac283c1829dbec45aadca7` |
| 12 | `instance` | [oneLE.hasMemOrInvMem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/onele-hasmemorinvmem.md) | 97 | `declaration-track:5181c7b63919ec9ed40682822439b53a1b7ea028afb722781e7f3a773595e11d` |
| 13 | `abbrev` | [PartialOrder.mkOfGroupCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/partialorder-mkofgroupcone.md) | 107 | `declaration-track:f8375af3ad33de9ce19e5efdcd5aa1f29559cc3cbe4af90edd335a253c6b0d1b` |
| 14 | `lemma` | [PartialOrder.mkOfGroupCone_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/partialorder-mkofgroupcone-le-iff.md) | 115 | `result-track:cfa5e92d31cc8923bbddcfd3306f43f61839e603a0aa3e8011b2c800b0ae88d8` |
| 15 | `abbrev` | [LinearOrder.mkOfGroupCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/linearorder-mkofgroupcone.md) | 121 | `declaration-track:ba3d696aec8d96cf063b31f0c96eac79fc2687dd77e29ba01c8b3646f30a1b20` |
| 16 | `lemma` | [IsOrderedMonoid.mkOfCone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ConeNamespacedPublic.lean/declarations/isorderedmonoid-mkofcone.md) | 130 | `result-track:51258162ddc24bcd211c8964a5fd9282daa19348cdd1c83db599a92fc6edeb94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e27ab52e757398dfee1eb5f110214f05aa34c7fde14a0f4e14c1139ce6cfd9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant4d4c2504f1c8723c6e50d6da0c8dd81aa363bb1c04f1b3a087ffee335324a9cf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant4d4c2504f1c8723c6e50d6da0c8dd81aa363bb1c04f1b3a087ffee335324a9cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
