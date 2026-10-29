# Verification target: Right Derived Comm Shift Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bef622d18beaf3dff4057d0720607a70a13fb460",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bef622d18beaf3dff4057d0720607a70a13fb460`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean.json)

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
| 1 | `def` | [precomposeShiftNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/declarations/precomposeshiftnattrans.md) | 52 | `declaration-track:7d34d67432ca6078554cd575080a3b3be05e478dad147c5616448c1f24b034b4` |
| 2 | `def` | [postcomposeShiftNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/declarations/postcomposeshiftnattrans.md) | 60 | `declaration-track:4e8a43b12f032533518610f443444904bd54296e8d3d7607281ab0866209a1f3` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/declarations/instance.md) | 64 | `declaration-track:088a33b393dc2d1b1bf175fd5810601c7598c40779c3a2384c0f90e64cfd635f` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:704bac0e23fbc2967af0b8ddbb8b2ab9028968aa55c54a858f747c71b23f6c98` |
| 5 | `def` | [commShift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/declarations/commshift.md) | 79 | `declaration-track:eee95b48e025bf8b9870dc7d2892577e02542598ddfa881f4ef2f4364f88a15e` |
| 6 | `lemma` | [comp_map_commShiftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/declarations/comp-map-commshiftiso-hom-app.md) | 127 | `result-track:c65cf2fd0a6b5b83789753a9db470ce8c006d6a02fe5149bfdf66112fbcffc71` |
| 7 | `instance` | [natTrans_commShift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/declarations/nattrans-commshift.md) | 137 | `declaration-track:7cb00fa074c7604f68f5abb8073114a370c7eb053e0a0214f59c6c3842fa76c7` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 143 | `declaration-track:b91b99192e86fbe0269b3f0f9599c9837980d4e2cb2cb2c0cd912bf8ef54d958` |
| 9 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RightDerivedCommShiftNamespacedPublic.lean/declarations/example.md) | 147 | `declaration-track:87c0a28302b75de8c642f12b3a05b60cda18ef15b9bb4d4d43765fd91af73a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d01550736cf8f87b7ad363ac1a79a4a2eedd160773724eb1486e095c68e21de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
