# Verification target: Grp Filtered Colimits Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e53bbdbc208cfdf63dfa0a3075800f05f64bfed7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant3cf77d75ad89752bacc053c07bbf850a3db009c2cd3d5d83a3530293f6f64d83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e53bbdbc208cfdf63dfa0a3075800f05f64bfed7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant3cf77d75ad89752bacc053c07bbf850a3db009c2cd3d5d83a3530293f6f64d83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant3cf77d75ad89752bacc053c07bbf850a3db009c2cd3d5d83a3530293f6f64d83.lean.json)

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
| 1 | `abbrev` | [G](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/g.md) | 59 | `declaration-track:8c0fcacc55f9d935a58fa513745879115148d37a4f21988578a087e84dd9bc52` |
| 2 | `abbrev` | [G.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/g-mk.md) | 64 | `declaration-track:c75ab4ed2255bfefb486295167638b454ef2b0c807ac316ab207cb1bc2339daf` |
| 3 | `theorem` | [G.mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/g-mk-eq.md) | 68 | `result-track:7d6e639fbaa14e6beb1b1a454d0837234e22287e586be670bb43fec110b2d944` |
| 4 | `theorem` | [colimit_one_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimit-one-eq.md) | 74 | `result-track:fb8297b821e26a838f6fe2301d38ce1af46b1b4760040957575bd42ff6cb9321` |
| 5 | `theorem` | [colimit_mul_mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimit-mul-mk-eq-source-edition-2.md) | 78 | `result-track:ccfe0dca162f52c7e05af938b0efdbb4f0ff016cc314b6ec9f91859edd6304ae` |
| 6 | `lemma` | [colimit_mul_mk_eq'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimit-mul-mk-eq.md) | 83 | `result-track:726c7763e433a69f1d7cced02ff068d838df8904c4a5e2b98d87086732398a8d` |
| 7 | `def` | [colimitInvAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimitinvaux.md) | 92 | `declaration-track:3e193754995f21399c4ee70a27374bcfcf8b783b3e224b3e0fc0ebba26e24955` |
| 8 | `theorem` | [colimitInvAux_eq_of_rel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimitinvaux-eq-of-rel.md) | 96 | `result-track:db92c52430ac287de58ba9f2aca8ab2124794cad189349140acd1e267c1df656` |
| 9 | `instance` | [colimitInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimitinv.md) | 107 | `declaration-track:20ad0c85b55fb967664d714175d93489e507be2618c36d18e4eeff1e8538ebab` |
| 10 | `theorem` | [colimit_inv_mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimit-inv-mk-eq.md) | 116 | `result-track:5f146b1e2348a23751fea83a62b6aa5709128aa677d8e7fa31043b6fdba2b2e5` |
| 11 | `instance` | [colimitGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimitgroup.md) | 120 | `declaration-track:b489482a9051ed84b685b7ac5e83ded00575332b2cd764220adc2c8f155d5e87` |
| 12 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimit-source-edition-2.md) | 131 | `declaration-track:d5067b6ae9b3645e8e81d4ee1ca05f39a650c9a9f9e70ef0ac4b867c74c85eb6` |
| 13 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimitcocone-source-edition-2.md) | 136 | `declaration-track:ffcb5c180de72574f8bc8ee4ce5eceb75406560fe0233a0071cd237ee0a58268` |
| 14 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimitcoconeiscolimit-source-edition-2.md) | 145 | `declaration-track:ed41aec69e89d580f7815a50b0b390faf3647db8611d36422f8bc0f6cd013036` |
| 15 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/forget-mon-preservesfilteredcolimits.md) | 150 | `declaration-track:0ab4958697311411403a9e628634980d8d549feaaf5967d9a7eccf570d5da217` |
| 16 | `instance` | [forget_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/forget-preservesfilteredcolimits.md) | 158 | `declaration-track:1e85f320d39cafad2c0a1a7c6d0eccc2a767ef23499fb413887c350541ad645d` |
| 17 | `abbrev` | [G](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/g-source-edition-2.md) | 180 | `declaration-track:d9de6b2d7864ba06c54344346ca5c4ad05b98f157b879272e827048953a5f23e` |
| 18 | `instance` | [colimitCommGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimitcommgroup.md) | 184 | `declaration-track:a7c879c5df49ced170e0da42831a2c558c92209f2419f86a9684bd0a8a2d2f5a` |
| 19 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimit.md) | 192 | `declaration-track:d1d26b12fc0687a8d4afe8dec732b8e512d8c8a846137717740944c9dd05dcbf` |
| 20 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimitcocone.md) | 197 | `declaration-track:a94a4e683cf2e086d02cf159a9045a06659851a0ba61cb82dc7cdb089b0f87a0` |
| 21 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/colimitcoconeiscolimit.md) | 206 | `declaration-track:c4361270dedc94248abc1a6a398aa1b2aef714931aec1da3c15f7d90705af780` |
| 22 | `instance` | [forget₂Group_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/forget-group-preservesfilteredcolimits.md) | 211 | `declaration-track:4956a01866a13a698375d81fc1d61b31bc153ebbd678a98d051eec97254660ba` |
| 23 | `instance` | [forget_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpFilteredColimitsNamespacedPublic.lean/declarations/forget-preservesfilteredcolimits-source-edition-2.md) | 221 | `declaration-track:fb04a855727bd1ca8ce1f49456afe0703b0a8a5f29858646a0b5671cbf10d602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56204ccf07f613a6087d1a000969298d98dc65e56be2c723c093a361198158df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant3cf77d75ad89752bacc053c07bbf850a3db009c2cd3d5d83a3530293f6f64d83.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant3cf77d75ad89752bacc053c07bbf850a3db009c2cd3d5d83a3530293f6f64d83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
