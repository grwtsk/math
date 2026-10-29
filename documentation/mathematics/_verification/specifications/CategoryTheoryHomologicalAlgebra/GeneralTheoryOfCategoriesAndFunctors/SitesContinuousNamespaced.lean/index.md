# Verification target: Sites Continuous Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9d89636315aaff22e560c5c50cfdbab3fce633e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant93f4117c23a18fe8f5ce690a84437d02adf3d2c1cabe9955ab586e2793f2dc05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9d89636315aaff22e560c5c50cfdbab3fce633e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant93f4117c23a18fe8f5ce690a84437d02adf3d2c1cabe9955ab586e2793f2dc05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant93f4117c23a18fe8f5ce690a84437d02adf3d2c1cabe9955ab586e2793f2dc05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.IsSheafOneHypercover` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/map.md) | 64 | `declaration-track:968f6f85d16bcffc3bcdaf90f5af1842110e38ca23516289f63513a384834f90` |
| 2 | `def` | [isLimitMapMultiforkEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/islimitmapmultiforkequiv.md) | 76 | `declaration-track:699dd0cb8b47ed955c339ce39975f9d060591244a1e9ddc8e3194557307b8f3d` |
| 3 | `class` | [IsPreservedBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/ispreservedby.md) | 89 | `declaration-track:a54b05297ba6d2ca24ab59c1e46686f0ff92e741849ab8634274d3d13bcfc08b` |
| 4 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/map-source-edition-2.md) | 99 | `declaration-track:e3f6bb8d9b6d4cb805435ea4b10388d29c43bdff8607edc09a9e90b45a019d07` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/instance-source-edition-2.md) | 105 | `declaration-track:dc1e50758156c0bb172a42f7b23ff0637c60d26f9d88ff3a73a072a8c682209a` |
| 6 | `abbrev` | [PreservesOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/preservesonehypercovers.md) | 120 | `declaration-track:8916f8a0e42fa821a029329bc00151e78ff2921b1217462c0202fb8a241464a5` |
| 7 | `class` | [IsContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/iscontinuous.md) | 125 | `declaration-track:3e947882e2d6cc2fb5c00faafccf21e6800a311e3d86aedff6b6815122a83780` |
| 8 | `lemma` | [op_comp_isSheaf_of_types](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/op-comp-issheaf-of-types.md) | 128 | `result-track:fa20a45bae77df9216eab11b67e964870de7f2dcedf0e17f94f7fdbf78ee7b7a` |
| 9 | `lemma` | [op_comp_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/op-comp-issheaf.md) | 134 | `result-track:026b1874ca75db8e25967a9bed181b735bebdbba36186b973c49892b9e8ffcf1` |
| 10 | `lemma` | [isContinuous_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/iscontinuous-of-iso.md) | 138 | `result-track:40406fc847411ab2722f13365a8876c9b27be510ca532d7701ba1907a2e15fab` |
| 11 | `instance` | [isContinuous_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/iscontinuous-id.md) | 145 | `declaration-track:3da64859ad13524079bda16ce174d694b2d7847b817070bfa29f122e81319c39` |
| 12 | `lemma` | [isContinuous_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/iscontinuous-comp-source-edition-2.md) | 148 | `result-track:4f91bef5a39c88647104a8d01ff9f46f1b0a942a38406178c2b1e9a77b7d3fe7` |
| 13 | `lemma` | [isContinuous_comp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/iscontinuous-comp.md) | 156 | `result-track:10ddad91fdcc705b345171a203add6f91602f92fb7820aa9749736d6e07f82c6` |
| 14 | `lemma` | [op_comp_isSheaf_of_preservesOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/op-comp-issheaf-of-preservesonehypercovers.md) | 166 | `result-track:34f0791bb2d9e1473f5305f5d38cce77bbfb3e5f8f983d8fcaafebb1429bfddf` |
| 15 | `lemma` | [isContinuous_of_preservesOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/iscontinuous-of-preservesonehypercovers.md) | 175 | `result-track:db4d3ea2e6654bb759e7acb1f4519408b4794877a80d99fbd606de327bcdea12` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/instance.md) | 185 | `declaration-track:3a3abb60c16d153f3328950c85bfa01067bea8c6ad7a2945b2822f92600f3455` |
| 17 | `def` | [sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/sheafpushforwardcontinuous.md) | 196 | `declaration-track:34295cae97351577c30529002e813773445a02e3fdc23352bdf9db420b9b7fbc` |
| 18 | `def` | [sheafPushforwardContinuousCompSheafToPresheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousNamespaced.lean/declarations/sheafpushforwardcontinuouscompsheaftopresheafiso.md) | 203 | `declaration-track:61b1c3cbe24f7d5a62d8631d3349651f363c5532e0790be6afda6ffbe405fdb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1606101c3df435de6017d6429273ab8a5612e66fa4574d4189738b5be5a144b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant93f4117c23a18fe8f5ce690a84437d02adf3d2c1cabe9955ab586e2793f2dc05.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant93f4117c23a18fe8f5ce690a84437d02adf3d2c1cabe9955ab586e2793f2dc05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
