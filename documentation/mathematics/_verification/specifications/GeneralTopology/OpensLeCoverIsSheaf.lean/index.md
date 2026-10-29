# Verification target: Opens Le Cover Is Sheaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "459205ec8eae56c93f84743db0f6fa6bb4ede1af",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/index.md) · [Full source](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `459205ec8eae56c93f84743db0f6fa6bb4ede1af`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OpensLeCover](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/openslecover.md) | 51 | `declaration-track:88550a0695785cdcbc50caddc658836784b064077551236f0822a1b766f74348` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:89dd3778168f8def8d2ed3f65720fadac5739bd2dd9195fe7cd549a8bb8cf00b` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/instance.md) | 59 | `declaration-track:884f92243dc7cc34b148de0b506e0807b96cc54033e273c25a6bcdf3bb9ab235` |
| 4 | `def` | [index](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/index.md) | 68 | `declaration-track:f34052ec44b73ef44e0e4d3f5f777c443cedb2ebd25950af57d63dd39a4b391c` |
| 5 | `def` | [homToIndex](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/homtoindex.md) | 73 | `declaration-track:685dbd9d6a0ef2508f9186d50592f8ea7f7116596ae888a3465801a99550b9a8` |
| 6 | `def` | [opensLeCoverCocone](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/openslecovercocone.md) | 82 | `declaration-track:8179f403e0d574244fa688bb712d789771897b43acd9fdd67191a16a2e635443` |
| 7 | `def` | [IsSheafOpensLeCover](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/issheafopenslecover.md) | 98 | `declaration-track:cfde7c77164d2f8c3e941134cc2fedda7732b50f7b58f762804f2e85c26502ce` |
| 8 | `def` | [generateEquivalenceOpensLe_functor'](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/generateequivalenceopensle-functor.md) | 111 | `declaration-track:694ef7d02a6ac04969abfc9b1aa557bb68e7822fc5aab4f25f25f257f67278e9` |
| 9 | `def` | [generateEquivalenceOpensLe_inverse'](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/generateequivalenceopensle-inverse.md) | 127 | `declaration-track:cbebe2561dcdfdbd0b66246d72dd67b9ddceb37a4951200b409ad9df718d0d09` |
| 10 | `def` | [generateEquivalenceOpensLe](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/generateequivalenceopensle.md) | 150 | `declaration-track:baf8124cd5eac46af6e9d28e76e4aa34163d99c1b88a6812f0ad38b1312f0137` |
| 11 | `def` | [whiskerIsoMapGenerateCocone](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/whiskerisomapgeneratecocone.md) | 166 | `declaration-track:cc1828972081c173f80edea6d8e69c39ef607c60efe639c3bed66609c5722537` |
| 12 | `def` | [isLimitOpensLeEquivGenerate₁](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/islimitopensleequivgenerate.md) | 192 | `declaration-track:411c4681318cc1dc5468847c3926af2c4e1770705e23fbabc3ba40bd474cb613` |
| 13 | `def` | [isLimitOpensLeEquivGenerate₂](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/islimitopensleequivgenerate-source-edition-2.md) | 205 | `declaration-track:7f19c1622b691e45257dc399d41975337ce4486eecc19e1ad1144e0886bd8075` |
| 14 | `theorem` | [IsSheaf.isSheafOpensLeCover](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/issheaf-issheafopenslecover.md) | 214 | `result-track:8a3785388e48b43da6bfe1718844a04d52bc171ef8d847e911f1f8a82df7e712` |
| 15 | `theorem` | [isSheaf_iff_isSheafOpensLeCover](../../../../GeneralTopology/OpensLeCoverIsSheaf.lean/declarations/issheaf-iff-issheafopenslecover.md) | 224 | `result-track:8e87688cc5a03ca3231a32502c3333613605589f99a5cfa7256c165c6845c58a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c7ddfe18f1c22f1524a1b7ace62931ad27b73ae399ae5de20e0718eeab60692 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
